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
	const auto left_x_forward_pin = (gpio_num_t) 32;
	const auto left_x_backward_pin = (gpio_num_t) 33;
	const auto right_x_backward_pin = (gpio_num_t) 25;
	const auto right_x_forward_pin = (gpio_num_t) 26;
	const auto z_forward_pin = (gpio_num_t) 27;
	const auto z_backward_pin = (gpio_num_t) 14;
	const auto left_bottom_bldc_pin = (gpio_num_t) 13;
	const auto left_top_bldc_pin = (gpio_num_t) 12;
	const auto right_bottom_bldc_pin = (gpio_num_t) 19;
	const auto right_top_bldc_pin = (gpio_num_t) 21;

	const mcpwm_config_t bldc_pwm_config = {
	        .frequency = 50,
	        .cmpr_a = 0,
	        .cmpr_b = 0,
	        .duty_mode = MCPWM_DUTY_MODE_0,
	        .counter_mode = MCPWM_UP_COUNTER
	};
	const float bldc_min_cycle = 5.f;
	const float bldc_max_cycle = 10.f;

	control::Actuator *left_x_driver = new control::Pwm(control::axis_mask_t::X, left_x_forward_pin,
														left_x_backward_pin, MCPWM_UNIT_0,
														MCPWM_TIMER_0, MCPWM0A, MCPWM0B);

	control::Actuator *right_x_driver = new control::Pwm(control::axis_mask_t::X, right_x_forward_pin,
														 right_x_backward_pin, MCPWM_UNIT_0,
														 MCPWM_TIMER_1, MCPWM1A, MCPWM1B);

	control::Actuator *z_driver = new control::Pwm(control::axis_mask_t::Z, z_forward_pin,
												   z_backward_pin, MCPWM_UNIT_0,
												   MCPWM_TIMER_2, MCPWM2A, MCPWM2B);

	control::Actuator *left_bottom_bldc_driver = new control::Pwm(control::axis_mask_t::X,
	        left_bottom_bldc_pin,
	        MCPWM_UNIT_1,
	        MCPWM_TIMER_0,
	        MCPWM0A,
	        MCPWM_OPR_A,
	        control::direction_t::PLUS,
	        bldc_pwm_config,
	        bldc_min_cycle,
	        bldc_max_cycle);
	control::Actuator *left_top_bldc_driver = new control::Pwm(control::axis_mask_t::X,
	        left_top_bldc_pin,
	        MCPWM_UNIT_1,
	        MCPWM_TIMER_0,
	        MCPWM0B,
	        MCPWM_OPR_B,
	        control::direction_t::MIN,
	        bldc_pwm_config,
	        bldc_min_cycle,
	        bldc_max_cycle);
	control::Actuator *right_bottom_bldc_driver = new control::Pwm(control::axis_mask_t::X,
	        right_bottom_bldc_pin,
	        MCPWM_UNIT_1,
	        MCPWM_TIMER_1,
	        MCPWM1A,
	        MCPWM_OPR_A,
	        control::direction_t::PLUS,
	        bldc_pwm_config,
	        bldc_min_cycle,
	        bldc_max_cycle);
	control::Actuator *right_top_bldc_driver = new control::Pwm(control::axis_mask_t::X,
	        right_top_bldc_pin,
	        MCPWM_UNIT_1,
	        MCPWM_TIMER_1,
	        MCPWM1B,
	        MCPWM_OPR_B,
	        control::direction_t::MIN,
	        bldc_pwm_config,
	        bldc_min_cycle,
	        bldc_max_cycle);

	control::ActuatorSet::transform_t forward_transformers[]{
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
			},
//			bldc yaw forward
            {
                    .driver = left_bottom_bldc_driver,
                    .transform_to = control::axis_mask_t::YAW,
                    .flip_direction = false,
                    .axis = control::axis_mask_t::X,
                    .speed_percentage = 100.0
            },
//            bldc yaw forward and Y forward
            {
                    .driver = right_top_bldc_driver,
                    .transform_to = (control::axis_mask_t) ((uint8_t) control::axis_mask_t::YAW | (uint8_t) control::axis_mask_t::Y),
                    .flip_direction = true,
                    .axis = control::axis_mask_t::X,
                    .speed_percentage = 100.0
            },
//            bldc yaw backward and Y backwards
            {
                    .driver = left_top_bldc_driver,
                    .transform_to = (control::axis_mask_t) ((uint8_t) control::axis_mask_t::YAW | (uint8_t) control::axis_mask_t::Y),
                    .flip_direction = false,
                    .axis = control::axis_mask_t::X,
                    .speed_percentage = 100.0
            },
//            bldc yaw backwards
            {
                    .driver = right_bottom_bldc_driver,
                    .transform_to = control::axis_mask_t::YAW,
                    .flip_direction = true,
                    .axis = control::axis_mask_t::X,
                    .speed_percentage = 100.0
            },
//          bldc Y forward
            {
                    .driver = right_bottom_bldc_driver,
                    .transform_to = control::axis_mask_t::Y,
                    .flip_direction = false,
                    .axis = control::axis_mask_t::X,
                    .speed_percentage = 100.0
            },
//            bldc Y backwards
            {
                    .driver = left_bottom_bldc_driver,
                    .transform_to = control::axis_mask_t::Y,
                    .flip_direction = true,
                    .axis = control::axis_mask_t::X,
                    .speed_percentage = 100.0
            }
	};

	control::Actuator *forward_drivers = new control::ActuatorSet(forward_transformers, 8);
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
	forward_drivers->set(control::axis_mask_t::ALL, 0, control::direction_t::BOTH);
    vTaskSuspend(NULL);
}