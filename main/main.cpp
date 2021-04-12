//
// Created by noeel on 4-7-19.
//

#include <esp_log.h>
#include <aruna.h>
#include <driver/mcpwm.h>
#include "driver/i2c.h"
#include "apsu_map.h"

using namespace aruna;
comm::Link *rs485_driver;
log::channel_t *log_m;
extern "C" void app_main(void) {
    err_t comm_err = err_t::OK;
    err_t con_err = err_t::OK;
    log_m = new log::channel_t("main", log::level_t::VERBOSE);

//	start I2C
    const i2c_config_t config = {
            .mode = I2C_MODE_MASTER,
            .sda_io_num = static_cast<gpio_num_t>(IO::I2C_SDA),
            .scl_io_num = static_cast<gpio_num_t>(IO::I2C_SCL),
            .sda_pullup_en = GPIO_PULLUP_DISABLE,
            .scl_pullup_en = GPIO_PULLUP_DISABLE,
            {.master = {.clk_speed = 10000,}}
    };
    driver::ESP32_I2C_master i2c(I2C_NUM_0, &config);

    //	sis
    pthread_mutex_t I2C_mutex;
    pthread_mutex_init(&I2C_mutex, NULL);
    sis::reporter::start();

    driver::ADC *water_adc = new driver::ADS101x(driver::ADS101x::MUX::AINp2_AINnGND, &i2c,
                                                 static_cast<uint8_t>(I2C_address::ADS1015));
    sis::Performer *water_sensor = new sensor::Rain40x16(water_adc);
//	comm setup
    uart_config_t rs485_config = {
            .baud_rate = 115200,
            .data_bits = UART_DATA_8_BITS,
            .parity = UART_PARITY_DISABLE,
            .stop_bits = UART_STOP_BITS_1,
            .flow_ctrl = UART_HW_FLOWCTRL_DISABLE,
            .rx_flow_ctrl_thresh = 122,
            .use_ref_tick = false
    };
    rs485_driver = new driver::ESP32_UART(UART_NUM_0, static_cast<int>(IO::RS485_TX), static_cast<int>(IO::RS485_RX),
                                          static_cast<int>(IO::RS485_RTS), UART_PIN_NO_CHANGE, rs485_config,
                                          UART_MODE_RS485_HALF_DUPLEX, 256, 512);

    comm_err = comm::start(rs485_driver);
    if ((uint8_t) comm_err) {
        log_m->error("failed to start comm: %s", err_to_char.at(comm_err));
    }

    const auto left_z_bldc_pin = (gpio_num_t) 33;
    const auto right_z_bldc_pin = (gpio_num_t) 32;

    const float bldc_min_cycle = 5.f;
    const float bldc_max_cycle = 10.f;

    driver::ESP32_RMT_Dshot *drivers[3];

    drivers[0] = new driver::ESP32_RMT_Dshot(RMT_CHANNEL_0,
                                             static_cast<gpio_num_t>(IO::BLDC_LEFT_Z));

    drivers[1] = new driver::ESP32_RMT_Dshot(RMT_CHANNEL_1,
                                             static_cast<gpio_num_t>(IO::BLDC_RIGHT_Z));

    drivers[2] = new driver::ESP32_RMT_Dshot(RMT_CHANNEL_2,
                                             static_cast<gpio_num_t>(IO::BLDC_M3));

//    drivers[3] = new driver::ESP32_RMT_Dshot(RMT_CHANNEL_3,
//                                             static_cast<gpio_num_t>(IO::BLDC_M4));
// TODO pin 35 is input only!

    for (int i = 0; i < 3; ++i) {
        drivers[i]->set_axis(movement::axis_mask_t::X);
        drivers[i]->set_bidirectional(true);
        drivers[i]->arm_ESC();
        con_err = movement::register_driver(drivers[i]);
        if ((uint8_t) con_err) {
            log_m->error("failed to register driver: %s", err_to_char.at(con_err));
        }

    }

    if ((uint8_t) movement::start()) {
        log_m->error("failed to start movement");
    }
    movement::set_speed(movement::axis_mask_t::X, 65535);
    vTaskSuspend(NULL);
}
