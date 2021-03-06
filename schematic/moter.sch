EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 5
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Driver_LED:PCA9685PW U?
U 1 1 5EF432FA
P 2400 2550
AR Path="/5EF432FA" Ref="U?"  Part="1" 
AR Path="/5EF07089/5EF432FA" Ref="U2"  Part="1" 
F 0 "U2" H 1950 3400 50  0000 C CNN
F 1 "PCA9685" H 2750 3400 50  0000 C CNN
F 2 "PCA9685:NXP_Semiconductors-SOT788-1-02_2016-0-MFG" H 2425 1575 50  0001 L CNN
F 3 "http://www.nxp.com/documents/data_sheet/PCA9685.pdf" H 2000 3250 50  0001 C CNN
F 4 "PCA9685BS,118 " H 1950 3500 50  0001 C CNN "MPN"
	1    2400 2550
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5EF43302
P 2400 1550
AR Path="/5EF43302" Ref="#PWR?"  Part="1" 
AR Path="/5EF07089/5EF43302" Ref="#PWR022"  Part="1" 
F 0 "#PWR022" H 2400 1400 50  0001 C CNN
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
AR Path="/5EF07089/5EF43308" Ref="C4"  Part="1" 
F 0 "C4" H 2515 1446 50  0000 L CNN
F 1 "0.1uF" H 2515 1355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2438 1250 50  0001 C CNN
F 3 "~" H 2400 1400 50  0001 C CNN
F 4 "C0805C104J5RACTU" H 2515 1546 50  0001 C CNN "MPN"
	1    2400 1400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EF4330F
P 2400 3650
AR Path="/5EF4330F" Ref="#PWR?"  Part="1" 
AR Path="/5EF07089/5EF4330F" Ref="#PWR023"  Part="1" 
F 0 "#PWR023" H 2400 3400 50  0001 C CNN
F 1 "GND" V 2405 3522 50  0000 R CNN
F 2 "" H 2400 3650 50  0001 C CNN
F 3 "" H 2400 3650 50  0001 C CNN
	1    2400 3650
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EF4331F
P 1700 3250
AR Path="/5EF4331F" Ref="#PWR?"  Part="1" 
AR Path="/5EF07089/5EF4331F" Ref="#PWR020"  Part="1" 
F 0 "#PWR020" H 1700 3000 50  0001 C CNN
F 1 "GND" V 1705 3122 50  0000 R CNN
F 2 "" H 1700 3250 50  0001 C CNN
F 3 "" H 1700 3250 50  0001 C CNN
	1    1700 3250
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EF43326
P 1700 2150
AR Path="/5EF43326" Ref="#PWR?"  Part="1" 
AR Path="/5EF07089/5EF43326" Ref="#PWR019"  Part="1" 
F 0 "#PWR019" H 1700 1900 50  0001 C CNN
F 1 "GND" V 1705 2022 50  0000 R CNN
F 2 "" H 1700 2150 50  0001 C CNN
F 3 "" H 1700 2150 50  0001 C CNN
	1    1700 2150
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EF4332D
P 2400 1250
AR Path="/5EF4332D" Ref="#PWR?"  Part="1" 
AR Path="/5EF07089/5EF4332D" Ref="#PWR021"  Part="1" 
F 0 "#PWR021" H 2400 1000 50  0001 C CNN
F 1 "GND" V 2405 1122 50  0000 R CNN
F 2 "" H 2400 1250 50  0001 C CNN
F 3 "" H 2400 1250 50  0001 C CNN
	1    2400 1250
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EF64F4D
P 5050 2750
AR Path="/5EF64F4D" Ref="#PWR?"  Part="1" 
AR Path="/5EF07089/5EF64F4D" Ref="#PWR025"  Part="1" 
F 0 "#PWR025" H 5050 2500 50  0001 C CNN
F 1 "GND" V 5055 2622 50  0000 R CNN
F 2 "" H 5050 2750 50  0001 C CNN
F 3 "" H 5050 2750 50  0001 C CNN
	1    5050 2750
	0    -1   -1   0   
$EndComp
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
F 4 "ERA-6AEB820V" H 5293 2950 50  0001 C CNN "MPN"
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
F 4 "ERA-6AEB820V" H 5643 3050 50  0001 C CNN "MPN"
	1    5850 2950
	0    1    1    0   
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
F 4 "ERA-6AEB820V" H 5993 3150 50  0001 C CNN "MPN"
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
F 4 "ERA-6AEB820V" H 6343 3250 50  0001 C CNN "MPN"
	1    6550 3150
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic:Conn_01x05 J4
U 1 1 5ED5189E
P 4850 1950
F 0 "J4" H 4768 1525 50  0000 C CNN
F 1 "Conn_01x05" H 4768 1616 50  0000 C CNN
F 2 "Connector_JST:JST_XH_B5B-XH-A_1x05_P2.50mm_Vertical" H 4850 1950 50  0001 C CNN
F 3 "~" H 4850 1950 50  0001 C CNN
F 4 "B5B-XH-A(LF)(SN)" H 4850 1950 50  0001 C CNN "MPN"
	1    4850 1950
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5ED56EC8
P 5050 1750
AR Path="/5ED56EC8" Ref="#PWR?"  Part="1" 
AR Path="/5EF07089/5ED56EC8" Ref="#PWR024"  Part="1" 
F 0 "#PWR024" H 5050 1500 50  0001 C CNN
F 1 "GND" V 5055 1577 50  0000 C CNN
F 2 "" H 5050 1750 50  0001 C CNN
F 3 "" H 5050 1750 50  0001 C CNN
	1    5050 1750
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x05 J5
U 1 1 5EE5CFE9
P 4850 2950
F 0 "J5" H 4768 2525 50  0000 C CNN
F 1 "Conn_01x05" H 4768 2616 50  0000 C CNN
F 2 "Connector_JST:JST_XH_B5B-XH-A_1x05_P2.50mm_Vertical" H 4850 2950 50  0001 C CNN
F 3 "~" H 4850 2950 50  0001 C CNN
F 4 "B5B-XH-A(LF)(SN)" H 4850 2950 50  0001 C CNN "MPN"
	1    4850 2950
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EED624C
P 5650 3300
AR Path="/5EED624C" Ref="#PWR?"  Part="1" 
AR Path="/5EF07089/5EED624C" Ref="#PWR026"  Part="1" 
F 0 "#PWR026" H 5650 3050 50  0001 C CNN
F 1 "GND" V 5655 3172 50  0000 R CNN
F 2 "" H 5650 3300 50  0001 C CNN
F 3 "" H 5650 3300 50  0001 C CNN
	1    5650 3300
	1    0    0    -1  
$EndComp
Text GLabel 3100 2150 2    50   Input ~ 0
BLDC_bottom_left
Text GLabel 3100 2050 2    50   Input ~ 0
BLDC_top_left
Text GLabel 3100 1850 2    50   Input ~ 0
BLDC_bottom_right
Text GLabel 3100 1950 2    50   Input ~ 0
BLDC_top_right
Text GLabel 1700 1850 0    50   Input ~ 0
I2C-SCL
Text GLabel 1700 1950 0    50   Input ~ 0
I2C-SDA
Text GLabel 5050 1850 2    50   Input ~ 0
BLDC_top_left
Text GLabel 5050 1950 2    50   Input ~ 0
BLDC_top_right
Text GLabel 5050 2050 2    50   Input ~ 0
BLDC_bottom_left
Text GLabel 5050 2150 2    50   Input ~ 0
BLDC_bottom_right
Text GLabel 6800 2850 2    50   Input ~ 0
BLDC_left_z
Text GLabel 6800 3050 2    50   Input ~ 0
BLDC_right_z
Text GLabel 6800 2950 2    50   Input ~ 0
BLDC_M4
Text GLabel 6800 2750 2    50   Input ~ 0
BLDC_M3
Text GLabel 3100 2250 2    50   Input ~ 0
PWM_custom_0
Text GLabel 3100 2350 2    50   Input ~ 0
PWM_custom_1
Text GLabel 3100 2450 2    50   Input ~ 0
PWM_custom_2
Text GLabel 3100 2550 2    50   Input ~ 0
PWM_custom_3
Wire Wire Line
	1700 2050 1700 2150
Wire Wire Line
	1700 2750 1700 2850
Wire Wire Line
	1700 2850 1700 2950
Wire Wire Line
	1700 3150 1700 3250
Wire Wire Line
	5050 2850 5300 2850
Wire Wire Line
	5300 2850 5300 2750
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
Wire Wire Line
	6350 3050 6350 3300
Wire Wire Line
	6350 3300 6000 3300
Wire Wire Line
	6700 3150 6700 3300
Wire Wire Line
	6700 3300 6350 3300
Wire Wire Line
	6400 3150 6400 3050
Wire Wire Line
	6400 3050 6800 3050
Wire Wire Line
	5700 2950 5700 2850
Wire Wire Line
	6050 3050 6050 2950
Wire Wire Line
	5300 2750 6800 2750
Wire Wire Line
	5700 2850 6800 2850
Wire Wire Line
	6050 2950 6800 2950
Wire Wire Line
	1700 3050 1700 3150
Wire Wire Line
	1700 2950 1700 3050
Connection ~ 2400 1550
Connection ~ 1700 2850
Connection ~ 1700 3250
Connection ~ 1700 2150
Connection ~ 5300 2850
Connection ~ 6000 3300
Connection ~ 6350 3300
Connection ~ 6400 3150
Connection ~ 5700 2950
Connection ~ 6050 3050
Connection ~ 5650 3300
Connection ~ 1700 3150
Connection ~ 1700 3050
Connection ~ 1700 2950
$EndSCHEMATC
