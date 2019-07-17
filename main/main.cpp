//
// Created by noeel on 4-7-19.
//

#include <esp_log.h>
#include <aruna.h>
using namespace aruna;
drivers::comm::CommDriver* uart_driver;

extern "C" void app_main(void) {
    xTaskCreate(blinky::start_blinky_task, "blink", 2000, NULL, NULL, NULL);
    aruna::blinky::set_led(aruna::blinky::LED_ON);
    uart_driver = new drivers::comm::UART();
    comm::register_candidate_driver(uart_driver);
    comm::start();
    ESP_LOGI("MAIN", "hello world!");
}