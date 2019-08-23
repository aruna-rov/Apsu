//
// Created by noeel on 4-7-19.
//

#include <esp_log.h>
#include <aruna.h>
#include <driver/mcpwm.h>

using namespace aruna;
comm::Link *rs485_driver;
log::channel_t *log_m;
extern "C" void app_main(void) {
	err_t comm_err = err_t::OK;
	err_t con_err = err_t::OK;
	xTaskCreate(blinky::start_blinky_task, "blink", 2000, NULL, NULL, NULL);
	log_m = new log::channel_t("main", log::level_t::VERBOSE);

//	comm setup
	uart_config_t rs485_config = {
			.baud_rate = 921600,
			.data_bits = UART_DATA_8_BITS,
			.parity = UART_PARITY_DISABLE,
			.stop_bits = UART_STOP_BITS_1,
			.flow_ctrl = UART_HW_FLOWCTRL_DISABLE,
			.rx_flow_ctrl_thresh = 122,
			.use_ref_tick = false
	};
	rs485_driver = new aruna::comm::UART((char *) "RS485",
												  UART_NUM_1,
												  23,
												  22,
												  18,
												  UART_PIN_NO_CHANGE,
												  rs485_config,
												  UART_MODE_RS485_HALF_DUPLEX,
												  256,
												  512);

	comm_err = comm::start(rs485_driver);
	if ((uint8_t) comm_err) {
		log_m->error("failed to start comm: %s", err_to_char.at(comm_err));
	}

//	control setup
	const gpio_num_t left_x_forward_pin = (gpio_num_t) 32;
	const gpio_num_t left_x_backward_pin = (gpio_num_t) 33;
	const gpio_num_t right_x_backward_pin = (gpio_num_t) 25;
	const gpio_num_t right_x_forward_pin = (gpio_num_t) 26;
	const gpio_num_t z_forward_pin = (gpio_num_t) 27;
	const gpio_num_t z_backward_pin = (gpio_num_t) 14;

	control::Actuator *left_x_driver = new control::Pwm(control::axis_mask_t::X, left_x_forward_pin,
														left_x_backward_pin, MCPWM_UNIT_0,
														MCPWM_TIMER_0, MCPWM0A, MCPWM0B);

	control::Actuator *right_x_driver = new control::Pwm(control::axis_mask_t::X, right_x_forward_pin,
														 right_x_backward_pin, MCPWM_UNIT_0,
														 MCPWM_TIMER_1, MCPWM1A, MCPWM1B);

	control::Actuator *z_driver = new control::Pwm(control::axis_mask_t::Z, z_forward_pin,
												   z_backward_pin, MCPWM_UNIT_0,
												   MCPWM_TIMER_2, MCPWM2A, MCPWM2B);

	control::ActuatorSet::transform_t forward_transformers[2]{
			{
					.driver = right_x_driver,
					.transform_to = control::axis_mask_t::YAW,
					.flip_direction = true,
					.axis = control::axis_mask_t::X,
					.speed_percentage = 100.0
			},
			{
					.driver = left_x_driver,
					.transform_to = control::axis_mask_t::YAW,
					.flip_direction = false,
					.axis = control::axis_mask_t::X,
					.speed_percentage = 100.0
			}
	};

	control::Actuator *forward_drivers = new control::ActuatorSet(forward_transformers, 2);
	con_err = control::register_driver(forward_drivers);
	if((uint8_t) con_err) {
		log_m->error("failed to register forward drivers: %s", err_to_char.at(con_err));
	}
	con_err = control::register_driver(z_driver);
	if((uint8_t) con_err) {
		log_m->error("failed to register z driver: %s", err_to_char.at(con_err));
	}
	if((uint8_t)control::start()) {
		log_m->error("failed to start control");
	}
	vTaskSuspend(NULL);
}