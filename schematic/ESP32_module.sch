EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 6
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	2550 5700 2550 5950
$Comp
L power:+3.3V #PWR?
U 1 1 5EE7A7AB
P 2550 1900
F 0 "#PWR?" H 2550 1750 50  0001 C CNN
F 1 "+3.3V" H 2565 2073 50  0000 C CNN
F 2 "" H 2550 1900 50  0001 C CNN
F 3 "" H 2550 1900 50  0001 C CNN
	1    2550 1900
	1    0    0    -1  
$EndComp
Text GLabel 3150 4000 2    50   Input ~ 0
JTAG-TDO
Text GLabel 3150 3700 2    50   Input ~ 0
JTAG-TDI
Text GLabel 3150 3800 2    50   Input ~ 0
JTAG-TCK
Text GLabel 3150 3900 2    50   Input ~ 0
JTAG-TMS
$Comp
L power:GND #PWR?
U 1 1 5EE7A7B5
P 2550 5950
F 0 "#PWR?" H 2550 5700 50  0001 C CNN
F 1 "GND" H 2555 5777 50  0000 C CNN
F 2 "" H 2550 5950 50  0001 C CNN
F 3 "" H 2550 5950 50  0001 C CNN
	1    2550 5950
	1    0    0    -1  
$EndComp
Text GLabel 3150 3100 2    50   Input ~ 0
ESP_BOOT
Text GLabel 1700 3100 1    50   Input ~ 0
ESP_EN
Text GLabel 3150 3200 2    50   Input ~ 0
ESP_TXD
Text GLabel 3150 3400 2    50   Input ~ 0
ESP_RXD
Text GLabel 3150 5200 2    50   Input ~ 0
BLDC_left_z
Text GLabel 3150 5100 2    50   Input ~ 0
BLDC_right_z
Text GLabel 3150 4700 2    50   Input ~ 0
RS485-TX
Text GLabel 3150 4600 2    50   Input ~ 0
RS485-RX
Text GLabel 3150 4300 2    50   Input ~ 0
RS485-RTS
Text GLabel 3150 5000 2    50   Input ~ 0
BLDC_M3
Text GLabel 3150 5400 2    50   Input ~ 0
BLDC_M4
$Comp
L RF_Module:ESP32-WROOM-32 U?
U 1 1 5EE7A7C6
P 2550 4300
F 0 "U?" H 2700 5800 50  0000 C CNN
F 1 "ESP32-WROOM-32" H 3000 5700 50  0000 C CNN
F 2 "RF_Module:ESP32-WROOM-32" H 2550 2800 50  0001 C CNN
F 3 "https://www.espressif.com/sites/default/files/documentation/esp32-wroom-32_datasheet_en.pdf" H 2250 4350 50  0001 C CNN
	1    2550 4300
	1    0    0    -1  
$EndComp
Text GLabel 4400 4100 2    50   Input ~ 0
I2C-SDA
Text GLabel 4400 4200 2    50   Input ~ 0
I2C-SCL
$Comp
L Device:R R?
U 1 1 5EE7A7CF
P 3900 3800
F 0 "R?" H 3970 3846 50  0000 L CNN
F 1 "10k" H 3970 3755 50  0000 L CNN
F 2 "" V 3830 3800 50  0001 C CNN
F 3 "~" H 3900 3800 50  0001 C CNN
	1    3900 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5EE7A7D6
P 4250 3800
F 0 "R?" H 4320 3846 50  0000 L CNN
F 1 "10k" H 4320 3755 50  0000 L CNN
F 2 "" V 4180 3800 50  0001 C CNN
F 3 "~" H 4250 3800 50  0001 C CNN
	1    4250 3800
	1    0    0    -1  
$EndComp
Text GLabel 3150 5300 2    50   Input ~ 0
SPI-MOSI
Text GLabel 3150 3500 2    50   Input ~ 0
SPI-MISO
Text GLabel 3150 3600 2    50   Input ~ 0
SPI-SCLK
Text GLabel 3150 3300 2    50   Input ~ 0
SPI-UART_SS
Text GLabel 3150 4400 2    50   Input ~ 0
DS18B20
$Comp
L power:+3.3V #PWR?
U 1 1 5EE96C0B
P 4100 3550
AR Path="/5EE96C0B" Ref="#PWR?"  Part="1" 
AR Path="/5ED629AF/5EE96C0B" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4100 3400 50  0001 C CNN
F 1 "+3.3V" V 4115 3678 50  0000 L CNN
F 2 "" H 4100 3550 50  0001 C CNN
F 3 "" H 4100 3550 50  0001 C CNN
	1    4100 3550
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5EEBC763
P 5650 2400
AR Path="/5EEBC763" Ref="#PWR?"  Part="1" 
AR Path="/5ED629AF/5EEBC763" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5650 2250 50  0001 C CNN
F 1 "+3.3V" V 5665 2528 50  0000 L CNN
F 2 "" H 5650 2400 50  0001 C CNN
F 3 "" H 5650 2400 50  0001 C CNN
	1    5650 2400
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EEBC769
P 5650 2500
AR Path="/5EEBC769" Ref="#PWR?"  Part="1" 
AR Path="/5ED629AF/5EEBC769" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5650 2250 50  0001 C CNN
F 1 "GND" V 5655 2372 50  0000 R CNN
F 2 "" H 5650 2500 50  0001 C CNN
F 3 "" H 5650 2500 50  0001 C CNN
	1    5650 2500
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EEBC76F
P 5650 2600
AR Path="/5EEBC76F" Ref="#PWR?"  Part="1" 
AR Path="/5ED629AF/5EEBC76F" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5650 2350 50  0001 C CNN
F 1 "GND" V 5655 2472 50  0000 R CNN
F 2 "" H 5650 2600 50  0001 C CNN
F 3 "" H 5650 2600 50  0001 C CNN
	1    5650 2600
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EEBC775
P 5650 2800
AR Path="/5EEBC775" Ref="#PWR?"  Part="1" 
AR Path="/5ED629AF/5EEBC775" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5650 2550 50  0001 C CNN
F 1 "GND" V 5655 2672 50  0000 R CNN
F 2 "" H 5650 2800 50  0001 C CNN
F 3 "" H 5650 2800 50  0001 C CNN
	1    5650 2800
	0    1    1    0   
$EndComp
Text GLabel 6150 2400 2    50   Input ~ 0
JTAG-TMS
Text GLabel 6150 2500 2    50   Input ~ 0
JTAG-TCK
Text GLabel 6150 2600 2    50   Input ~ 0
JTAG-TDO
Text GLabel 6150 2700 2    50   Input ~ 0
JTAG-TDI
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J?
U 1 1 5EEBC77F
P 5850 1750
AR Path="/5EEBC77F" Ref="J?"  Part="1" 
AR Path="/5ED629AF/5EEBC77F" Ref="J?"  Part="1" 
F 0 "J?" H 5900 2067 50  0000 C CNN
F 1 "Conn_02x03_Odd_Even" H 5900 1976 50  0000 C CNN
F 2 "" H 5850 1750 50  0001 C CNN
F 3 "~" H 5850 1750 50  0001 C CNN
	1    5850 1750
	1    0    0    -1  
$EndComp
Text GLabel 5650 1650 0    50   Input ~ 0
ESP_EN
Text GLabel 5650 1750 0    50   Input ~ 0
ESP_TXD
Text GLabel 5650 1850 0    50   Input ~ 0
ESP_RXD
Text GLabel 6150 1850 2    50   Input ~ 0
ESP_BOOT
$Comp
L power:+3.3V #PWR?
U 1 1 5EEBC789
P 6150 1650
AR Path="/5EEBC789" Ref="#PWR?"  Part="1" 
AR Path="/5ED629AF/5EEBC789" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6150 1500 50  0001 C CNN
F 1 "+3.3V" V 6165 1778 50  0000 L CNN
F 2 "" H 6150 1650 50  0001 C CNN
F 3 "" H 6150 1650 50  0001 C CNN
	1    6150 1650
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EEBC78F
P 6150 1750
AR Path="/5EEBC78F" Ref="#PWR?"  Part="1" 
AR Path="/5ED629AF/5EEBC78F" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6150 1500 50  0001 C CNN
F 1 "GND" V 6155 1622 50  0000 R CNN
F 2 "" H 6150 1750 50  0001 C CNN
F 3 "" H 6150 1750 50  0001 C CNN
	1    6150 1750
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J?
U 1 1 5EEBC795
P 5850 2600
AR Path="/5EEBC795" Ref="J?"  Part="1" 
AR Path="/5ED629AF/5EEBC795" Ref="J?"  Part="1" 
F 0 "J?" H 5900 3017 50  0000 C CNN
F 1 "Conn_02x05_Odd_Even" H 5900 2926 50  0000 C CNN
F 2 "" H 5850 2600 50  0001 C CNN
F 3 "~" H 5850 2600 50  0001 C CNN
	1    5850 2600
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J?
U 1 1 5EF14A1B
P 5850 3600
AR Path="/5EF14A1B" Ref="J?"  Part="1" 
AR Path="/5ED629AF/5EF14A1B" Ref="J?"  Part="1" 
F 0 "J?" H 5900 4017 50  0000 C CNN
F 1 "Conn_02x05_Odd_Even" H 5900 3926 50  0000 C CNN
F 2 "" H 5850 3600 50  0001 C CNN
F 3 "~" H 5850 3600 50  0001 C CNN
	1    5850 3600
	1    0    0    -1  
$EndComp
Text GLabel 5650 3400 0    50   Input ~ 0
I2C-SDA
Text GLabel 6150 3400 2    50   Input ~ 0
I2C-SCL
$Comp
L power:GND #PWR?
U 1 1 5EF14A23
P 5650 3700
AR Path="/5EF14A23" Ref="#PWR?"  Part="1" 
AR Path="/5ED629AF/5EF14A23" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5650 3450 50  0001 C CNN
F 1 "GND" H 5655 3527 50  0000 C CNN
F 2 "" H 5650 3700 50  0001 C CNN
F 3 "" H 5650 3700 50  0001 C CNN
	1    5650 3700
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5EF14A29
P 6150 3700
AR Path="/5EF14A29" Ref="#PWR?"  Part="1" 
AR Path="/5ED629AF/5EF14A29" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6150 3550 50  0001 C CNN
F 1 "+3.3V" V 6165 3828 50  0000 L CNN
F 2 "" H 6150 3700 50  0001 C CNN
F 3 "" H 6150 3700 50  0001 C CNN
	1    6150 3700
	0    1    1    0   
$EndComp
Text GLabel 5650 3800 0    50   Input ~ 0
RS485-A
Text GLabel 6150 3800 2    50   Input ~ 0
RS485-B
Text GLabel 5650 3500 0    50   Input ~ 0
SPI-MOSI
Text GLabel 5650 3600 0    50   Input ~ 0
SPI-MISO
Text GLabel 6150 3500 2    50   Input ~ 0
SPI-SCLK
Text GLabel 6150 3600 2    50   Input ~ 0
SPI-UART_SS
$Comp
L Device:R R?
U 1 1 5EFCC7D9
P 1350 2950
F 0 "R?" H 1280 2904 50  0000 R CNN
F 1 "10K" H 1280 2995 50  0000 R CNN
F 2 "" V 1280 2950 50  0001 C CNN
F 3 "~" H 1350 2950 50  0001 C CNN
	1    1350 2950
	-1   0    0    1   
$EndComp
$Comp
L Device:C C?
U 1 1 5EFCCDA6
P 1350 3250
F 0 "C?" H 1465 3296 50  0000 L CNN
F 1 "0.1uF" H 1465 3205 50  0000 L CNN
F 2 "" H 1388 3100 50  0001 C CNN
F 3 "~" H 1350 3250 50  0001 C CNN
	1    1350 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 3100 1950 3100
Connection ~ 1350 3100
$Comp
L power:+3.3V #PWR?
U 1 1 5EFCF3D2
P 1350 2800
F 0 "#PWR?" H 1350 2650 50  0001 C CNN
F 1 "+3.3V" H 1365 2973 50  0000 C CNN
F 2 "" H 1350 2800 50  0001 C CNN
F 3 "" H 1350 2800 50  0001 C CNN
	1    1350 2800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EFCFF39
P 1350 3400
F 0 "#PWR?" H 1350 3150 50  0001 C CNN
F 1 "GND" H 1355 3227 50  0000 C CNN
F 2 "" H 1350 3400 50  0001 C CNN
F 3 "" H 1350 3400 50  0001 C CNN
	1    1350 3400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5EFDBEF7
P 2350 2200
F 0 "C?" V 2602 2200 50  0000 C CNN
F 1 "22uF" V 2511 2200 50  0000 C CNN
F 2 "" H 2388 2050 50  0001 C CNN
F 3 "~" H 2350 2200 50  0001 C CNN
	1    2350 2200
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C?
U 1 1 5EFDC800
P 2350 2650
F 0 "C?" V 2602 2650 50  0000 C CNN
F 1 "0.1uF" V 2511 2650 50  0000 C CNN
F 2 "" H 2388 2500 50  0001 C CNN
F 3 "~" H 2350 2650 50  0001 C CNN
	1    2350 2650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2550 2900 2550 2650
Wire Wire Line
	2500 2200 2550 2200
Connection ~ 2550 2200
Wire Wire Line
	2550 2200 2550 1900
Wire Wire Line
	2500 2650 2550 2650
Connection ~ 2550 2650
Wire Wire Line
	2550 2650 2550 2200
Wire Wire Line
	2200 2650 2150 2650
Wire Wire Line
	2150 2650 2150 2450
Wire Wire Line
	2150 2200 2200 2200
$Comp
L power:GND #PWR?
U 1 1 5EFF548E
P 2150 2450
F 0 "#PWR?" H 2150 2200 50  0001 C CNN
F 1 "GND" H 2155 2277 50  0000 C CNN
F 2 "" H 2150 2450 50  0001 C CNN
F 3 "" H 2150 2450 50  0001 C CNN
	1    2150 2450
	0    1    1    0   
$EndComp
Connection ~ 2150 2450
Wire Wire Line
	2150 2450 2150 2200
Wire Wire Line
	3150 4100 4250 4100
Wire Wire Line
	3150 4200 3900 4200
Wire Wire Line
	3900 3950 3900 4200
Connection ~ 3900 4200
Wire Wire Line
	3900 4200 4400 4200
Wire Wire Line
	4250 3950 4250 4100
Connection ~ 4250 4100
Wire Wire Line
	4250 4100 4400 4100
Wire Wire Line
	3900 3650 4100 3650
Wire Wire Line
	4100 3550 4100 3650
Connection ~ 4100 3650
Wire Wire Line
	4100 3650 4250 3650
$EndSCHEMATC
