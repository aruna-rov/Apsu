EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 6
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 3100 2150 2    50   Input ~ 0
BLDC_bottom_left
Text GLabel 3100 2050 2    50   Input ~ 0
BLDC_top_left
Text GLabel 3100 1850 2    50   Input ~ 0
BLDC_bottom_right
Text GLabel 3100 1950 2    50   Input ~ 0
BLDC_top_right
$Comp
L Driver_LED:PCA9685PW U?
U 1 1 5EF432FA
P 2400 2550
AR Path="/5EF432FA" Ref="U?"  Part="1" 
AR Path="/5EF07089/5EF432FA" Ref="U3"  Part="1" 
F 0 "U3" H 1950 3400 50  0000 C CNN
F 1 "PCA9685PW" H 2750 3400 50  0000 C CNN
F 2 "Package_SO:TSSOP-28_4.4x9.7mm_P0.65mm" H 2425 1575 50  0001 L CNN
F 3 "http://www.nxp.com/documents/data_sheet/PCA9685.pdf" H 2000 3250 50  0001 C CNN
	1    2400 2550
	1    0    0    -1  
$EndComp
Text GLabel 1700 1850 0    50   Input ~ 0
I2C-SCL
Text GLabel 1700 1950 0    50   Input ~ 0
I2C-SDA
$Comp
L power:+3.3V #PWR?
U 1 1 5EF43302
P 2400 1550
AR Path="/5EF43302" Ref="#PWR?"  Part="1" 
AR Path="/5EF07089/5EF43302" Ref="#PWR031"  Part="1" 
F 0 "#PWR031" H 2400 1400 50  0001 C CNN
F 1 "+3.3V" V 2415 1678 50  0000 L CNN
F 2 "" H 2400 1550 50  0001 C CNN
F 3 "" H 2400 1550 50  0001 C CNN
	1    2400 1550
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C?
U 1 1 5EF43308
P 2400 1400
AR Path="/5EF43308" Ref="C?"  Part="1" 
AR Path="/5EF07089/5EF43308" Ref="C6"  Part="1" 
F 0 "C6" H 2515 1446 50  0000 L CNN
F 1 "0.1uF" H 2515 1355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2438 1250 50  0001 C CNN
F 3 "~" H 2400 1400 50  0001 C CNN
	1    2400 1400
	1    0    0    -1  
$EndComp
Connection ~ 2400 1550
$Comp
L power:GND #PWR?
U 1 1 5EF4330F
P 2400 3650
AR Path="/5EF4330F" Ref="#PWR?"  Part="1" 
AR Path="/5EF07089/5EF4330F" Ref="#PWR032"  Part="1" 
F 0 "#PWR032" H 2400 3400 50  0001 C CNN
F 1 "GND" V 2405 3522 50  0000 R CNN
F 2 "" H 2400 3650 50  0001 C CNN
F 3 "" H 2400 3650 50  0001 C CNN
	1    2400 3650
	0    1    1    0   
$EndComp
Wire Wire Line
	1700 2050 1700 2150
Wire Wire Line
	1700 2750 1700 2850
Wire Wire Line
	1700 2850 1700 2950
Connection ~ 1700 2850
Wire Wire Line
	1700 2950 1700 3050
Connection ~ 1700 2950
Wire Wire Line
	1700 3050 1700 3150
Connection ~ 1700 3050
Wire Wire Line
	1700 3150 1700 3250
Connection ~ 1700 3150
$Comp
L power:GND #PWR?
U 1 1 5EF4331F
P 1700 3250
AR Path="/5EF4331F" Ref="#PWR?"  Part="1" 
AR Path="/5EF07089/5EF4331F" Ref="#PWR029"  Part="1" 
F 0 "#PWR029" H 1700 3000 50  0001 C CNN
F 1 "GND" V 1705 3122 50  0000 R CNN
F 2 "" H 1700 3250 50  0001 C CNN
F 3 "" H 1700 3250 50  0001 C CNN
	1    1700 3250
	0    1    1    0   
$EndComp
Connection ~ 1700 3250
$Comp
L power:GND #PWR?
U 1 1 5EF43326
P 1700 2150
AR Path="/5EF43326" Ref="#PWR?"  Part="1" 
AR Path="/5EF07089/5EF43326" Ref="#PWR028"  Part="1" 
F 0 "#PWR028" H 1700 1900 50  0001 C CNN
F 1 "GND" V 1705 2022 50  0000 R CNN
F 2 "" H 1700 2150 50  0001 C CNN
F 3 "" H 1700 2150 50  0001 C CNN
	1    1700 2150
	0    1    1    0   
$EndComp
Connection ~ 1700 2150
$Comp
L power:GND #PWR?
U 1 1 5EF4332D
P 2400 1250
AR Path="/5EF4332D" Ref="#PWR?"  Part="1" 
AR Path="/5EF07089/5EF4332D" Ref="#PWR030"  Part="1" 
F 0 "#PWR030" H 2400 1000 50  0001 C CNN
F 1 "GND" V 2405 1122 50  0000 R CNN
F 2 "" H 2400 1250 50  0001 C CNN
F 3 "" H 2400 1250 50  0001 C CNN
	1    2400 1250
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x04_Male J?
U 1 1 5EF64F3D
P 4850 1950
AR Path="/5EF64F3D" Ref="J?"  Part="1" 
AR Path="/5EF07089/5EF64F3D" Ref="J8"  Part="1" 
F 0 "J8" H 4958 2231 50  0000 C CNN
F 1 "Conn_01x04_Male" H 4958 2140 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 4850 1950 50  0001 C CNN
F 3 "~" H 4850 1950 50  0001 C CNN
	1    4850 1950
	1    0    0    -1  
$EndComp
Text GLabel 5050 1850 2    50   Input ~ 0
BLDC_top_left
Text GLabel 5050 1950 2    50   Input ~ 0
BLDC_top_right
Text GLabel 5050 2050 2    50   Input ~ 0
BLDC_bottom_left
Text GLabel 5050 2150 2    50   Input ~ 0
BLDC_bottom_right
$Comp
L Connector:Conn_01x08_Male J?
U 1 1 5EF64F47
P 4850 2750
AR Path="/5EF64F47" Ref="J?"  Part="1" 
AR Path="/5EF07089/5EF64F47" Ref="J9"  Part="1" 
F 0 "J9" H 4958 3231 50  0000 C CNN
F 1 "Conn_01x08_Male" H 4958 3140 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 4850 2750 50  0001 C CNN
F 3 "~" H 4850 2750 50  0001 C CNN
	1    4850 2750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EF64F4D
P 5050 2650
AR Path="/5EF64F4D" Ref="#PWR?"  Part="1" 
AR Path="/5EF07089/5EF64F4D" Ref="#PWR033"  Part="1" 
F 0 "#PWR033" H 5050 2400 50  0001 C CNN
F 1 "GND" V 5055 2522 50  0000 R CNN
F 2 "" H 5050 2650 50  0001 C CNN
F 3 "" H 5050 2650 50  0001 C CNN
	1    5050 2650
	0    -1   -1   0   
$EndComp
Text GLabel 6800 2850 2    50   Input ~ 0
BLDC_left_z
Text GLabel 6800 3050 2    50   Input ~ 0
BLDC_right_z
$Comp
L Device:R R?
U 1 1 5EF64F55
P 5500 2850
AR Path="/5EF64F55" Ref="R?"  Part="1" 
AR Path="/5EF07089/5EF64F55" Ref="R8"  Part="1" 
F 0 "R8" V 5293 2850 50  0000 C CNN
F 1 "83" V 5384 2850 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5430 2850 50  0001 C CNN
F 3 "~" H 5500 2850 50  0001 C CNN
	1    5500 2850
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5EF64F5B
P 5850 2950
AR Path="/5EF64F5B" Ref="R?"  Part="1" 
AR Path="/5EF07089/5EF64F5B" Ref="R9"  Part="1" 
F 0 "R9" V 5643 2950 50  0000 C CNN
F 1 "83" V 5734 2950 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5780 2950 50  0001 C CNN
F 3 "~" H 5850 2950 50  0001 C CNN
	1    5850 2950
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5EF64F61
P 5650 3300
AR Path="/5EF64F61" Ref="#PWR?"  Part="1" 
AR Path="/5EF07089/5EF64F61" Ref="#PWR034"  Part="1" 
F 0 "#PWR034" H 5650 3150 50  0001 C CNN
F 1 "+3.3V" H 5665 3473 50  0000 C CNN
F 2 "" H 5650 3300 50  0001 C CNN
F 3 "" H 5650 3300 50  0001 C CNN
	1    5650 3300
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5EF64F67
P 6200 3050
AR Path="/5EF64F67" Ref="R?"  Part="1" 
AR Path="/5EF07089/5EF64F67" Ref="R10"  Part="1" 
F 0 "R10" V 5993 3050 50  0000 C CNN
F 1 "83" V 6084 3050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6130 3050 50  0001 C CNN
F 3 "~" H 6200 3050 50  0001 C CNN
	1    6200 3050
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5EF64F6D
P 6550 3150
AR Path="/5EF64F6D" Ref="R?"  Part="1" 
AR Path="/5EF07089/5EF64F6D" Ref="R11"  Part="1" 
F 0 "R11" V 6343 3150 50  0000 C CNN
F 1 "83" V 6450 3150 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6480 3150 50  0001 C CNN
F 3 "~" H 6550 3150 50  0001 C CNN
	1    6550 3150
	0    1    1    0   
$EndComp
Wire Wire Line
	5050 2850 5300 2850
Wire Wire Line
	5300 2850 5300 2750
Connection ~ 5300 2850
Wire Wire Line
	5300 2850 5350 2850
Wire Wire Line
	5650 2850 5650 3300
Wire Wire Line
	5050 2950 5700 2950
Wire Wire Line
	5050 3050 6050 3050
Wire Wire Line
	5050 3150 6400 3150
Wire Wire Line
	6000 2950 6000 3300
Wire Wire Line
	6000 3300 5650 3300
Connection ~ 5650 3300
Wire Wire Line
	6350 3050 6350 3300
Wire Wire Line
	6350 3300 6000 3300
Connection ~ 6000 3300
Wire Wire Line
	6700 3150 6700 3300
Wire Wire Line
	6700 3300 6350 3300
Connection ~ 6350 3300
Wire Wire Line
	6400 3150 6400 3050
Wire Wire Line
	6400 3050 6800 3050
Connection ~ 6400 3150
Text GLabel 6800 2950 2    50   Input ~ 0
BLDC_M4
Text GLabel 6800 2750 2    50   Input ~ 0
BLDC_M3
Wire Wire Line
	5700 2950 5700 2850
Connection ~ 5700 2950
Wire Wire Line
	6050 3050 6050 2950
Connection ~ 6050 3050
Wire Wire Line
	5300 2750 6800 2750
Wire Wire Line
	5700 2850 6800 2850
Wire Wire Line
	6050 2950 6800 2950
$Comp
L Connector:Conn_01x04_Male J?
U 1 1 5EF64F90
P 6150 1900
AR Path="/5EF64F90" Ref="J?"  Part="1" 
AR Path="/5EF07089/5EF64F90" Ref="J10"  Part="1" 
F 0 "J10" H 6258 2181 50  0000 C CNN
F 1 "Conn_01x04_Male" H 6258 2090 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 6150 1900 50  0001 C CNN
F 3 "~" H 6150 1900 50  0001 C CNN
	1    6150 1900
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male J?
U 1 1 5EF64F96
P 7000 1900
AR Path="/5EF64F96" Ref="J?"  Part="1" 
AR Path="/5EF07089/5EF64F96" Ref="J11"  Part="1" 
F 0 "J11" H 7108 2181 50  0000 C CNN
F 1 "Conn_01x04_Male" H 7108 2090 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 7000 1900 50  0001 C CNN
F 3 "~" H 7000 1900 50  0001 C CNN
	1    7000 1900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EF64F9C
P 7200 2100
AR Path="/5EF64F9C" Ref="#PWR?"  Part="1" 
AR Path="/5EF07089/5EF64F9C" Ref="#PWR036"  Part="1" 
F 0 "#PWR036" H 7200 1850 50  0001 C CNN
F 1 "GND" H 7205 1927 50  0000 C CNN
F 2 "" H 7200 2100 50  0001 C CNN
F 3 "" H 7200 2100 50  0001 C CNN
	1    7200 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 2150 7200 2100
Connection ~ 7200 2100
Wire Wire Line
	7200 2100 7200 2000
Wire Wire Line
	7200 2000 7200 1900
Connection ~ 7200 2000
Wire Wire Line
	7200 1900 7200 1800
Connection ~ 7200 1900
$Comp
L power:+5V #PWR?
U 1 1 5EF64FA9
P 6350 2100
AR Path="/5EF64FA9" Ref="#PWR?"  Part="1" 
AR Path="/5EF07089/5EF64FA9" Ref="#PWR035"  Part="1" 
F 0 "#PWR035" H 6350 1950 50  0001 C CNN
F 1 "+5V" H 6365 2273 50  0000 C CNN
F 2 "" H 6350 2100 50  0001 C CNN
F 3 "" H 6350 2100 50  0001 C CNN
	1    6350 2100
	-1   0    0    1   
$EndComp
Wire Wire Line
	6350 2100 6350 2000
Connection ~ 6350 2100
Wire Wire Line
	6350 2000 6350 1900
Connection ~ 6350 2000
Wire Wire Line
	6350 1900 6350 1800
Connection ~ 6350 1900
$EndSCHEMATC
