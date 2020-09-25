//
// Created by noeel on 21-08-20.
//

#ifndef APSU_MAP_H
#define APSU_MAP_H

enum class I2C_address: uint8_t {
    ADS1015     = 0b1001000,
    LSM6DSOX    = 0b1101010,
    BME280      = 0b1110110,
    IIS2MDL     = 0b0011110,
    PCA9685     = 0b1000000,
    INA219      = 0b1000111,
};

enum class IO {
    ESP_TXD     = 1,
    ESP_RXD     = 3,
    SPI_MISO    = 4,
    SPI_SCLK    = 5,
    I2C_SDA     = 16,
    I2C_SCL     = 17,
    RS485_RTS   = 18,
    DS18B20     = 19,
    SPI_SS0     = 21,
    RS485_RX    = 22,
    RS485_TX    = 23,
    SPI_SS1     = 25,
    SPI_SS2     = 26,
    BLDC_M3     = 27,
    BLDC_RIGHT_Z= 32,
    BLDC_LEFT_Z = 33,
    SPI_MOSI    = 34,
    BLDC_M4     = 35,
};

enum class PCA9685_LED {
    BLDC_bottom_right = 15,
    BLDC_top_right = 13,
    BLDC_top_left = 12,
    BLDC_bottom_left = 14,
};
#endif //APSU_MAP_H
