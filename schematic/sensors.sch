EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 6
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 3700 1350 0    50   Input ~ 0
SIS_water
$Comp
L Connector:Conn_01x03_Female J?
U 1 1 5EFAB04C
P 4350 1350
AR Path="/5EFAB04C" Ref="J?"  Part="1" 
AR Path="/5EF89400/5EFAB04C" Ref="J?"  Part="1" 
F 0 "J?" H 4378 1376 50  0000 L CNN
F 1 "Conn_01x03_Female" H 4378 1285 50  0000 L CNN
F 2 "" H 4350 1350 50  0001 C CNN
F 3 "~" H 4350 1350 50  0001 C CNN
	1    4350 1350
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5EFAB052
P 4150 1250
AR Path="/5EFAB052" Ref="#PWR?"  Part="1" 
AR Path="/5EF89400/5EFAB052" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4150 1100 50  0001 C CNN
F 1 "+3.3V" V 4165 1378 50  0000 L CNN
F 2 "" H 4150 1250 50  0001 C CNN
F 3 "" H 4150 1250 50  0001 C CNN
	1    4150 1250
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EFAB058
P 3700 1650
AR Path="/5EFAB058" Ref="#PWR?"  Part="1" 
AR Path="/5EF89400/5EFAB058" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3700 1400 50  0001 C CNN
F 1 "GND" V 3705 1522 50  0000 R CNN
F 2 "" H 3700 1650 50  0001 C CNN
F 3 "" H 3700 1650 50  0001 C CNN
	1    3700 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5EFAB05E
P 3700 1500
AR Path="/5EFAB05E" Ref="C?"  Part="1" 
AR Path="/5EF89400/5EFAB05E" Ref="C?"  Part="1" 
F 0 "C?" H 3815 1546 50  0000 L CNN
F 1 "0.1uF" H 3815 1455 50  0000 L CNN
F 2 "" H 3738 1350 50  0001 C CNN
F 3 "~" H 3700 1500 50  0001 C CNN
	1    3700 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 1350 3700 1350
Wire Wire Line
	3700 1650 4150 1650
Wire Wire Line
	4150 1650 4150 1450
Connection ~ 3700 1650
Text GLabel 3450 2500 0    50   Input ~ 0
SIS_water
Text GLabel 4450 2700 2    50   Input ~ 0
I2C-SDA
Text GLabel 4450 2600 2    50   Input ~ 0
I2C-SCL
$Comp
L power:GND #PWR?
U 1 1 5EFAB06B
P 3950 3200
AR Path="/5EFAB06B" Ref="#PWR?"  Part="1" 
AR Path="/5EF89400/5EFAB06B" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3950 2950 50  0001 C CNN
F 1 "GND" V 3955 3072 50  0000 R CNN
F 2 "" H 3950 3200 50  0001 C CNN
F 3 "" H 3950 3200 50  0001 C CNN
	1    3950 3200
	1    0    0    -1  
$EndComp
Text GLabel 3450 2600 0    50   Input ~ 0
water_temp
Text GLabel 3450 2700 0    50   Input ~ 0
water_pressure
Connection ~ 3950 2300
$Comp
L power:+3.3V #PWR?
U 1 1 5EFAB074
P 3950 2300
AR Path="/5EFAB074" Ref="#PWR?"  Part="1" 
AR Path="/5EF89400/5EFAB074" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3950 2150 50  0001 C CNN
F 1 "+3.3V" V 3965 2428 50  0000 L CNN
F 2 "" H 3950 2300 50  0001 C CNN
F 3 "" H 3950 2300 50  0001 C CNN
	1    3950 2300
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C?
U 1 1 5EFAB07A
P 3950 2150
AR Path="/5EFAB07A" Ref="C?"  Part="1" 
AR Path="/5EF89400/5EFAB07A" Ref="C?"  Part="1" 
F 0 "C?" H 4065 2196 50  0000 L CNN
F 1 "0.1uF" H 4065 2105 50  0000 L CNN
F 2 "" H 3988 2000 50  0001 C CNN
F 3 "~" H 3950 2150 50  0001 C CNN
	1    3950 2150
	1    0    0    -1  
$EndComp
$Comp
L Analog_ADC:MAX11613 U?
U 1 1 5EFAB080
P 3950 2700
AR Path="/5EFAB080" Ref="U?"  Part="1" 
AR Path="/5EF89400/5EFAB080" Ref="U?"  Part="1" 
F 0 "U?" H 4200 3050 50  0000 C CNN
F 1 "MAX11613" H 4400 3100 50  0000 C CNN
F 2 "Package_SO:MSOP-8_3x3mm_P0.65mm" H 4400 2350 50  0001 L CNN
F 3 "https://datasheets.maximintegrated.com/en/ds/MAX11612-MAX11617.pdf" H 4050 3200 50  0001 C CNN
	1    3950 2700
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J?
U 1 1 5EFAB086
P 4700 3800
AR Path="/5EFAB086" Ref="J?"  Part="1" 
AR Path="/5EF89400/5EFAB086" Ref="J?"  Part="1" 
F 0 "J?" H 4618 3475 50  0000 C CNN
F 1 "Conn_01x03" H 4618 3566 50  0000 C CNN
F 2 "" H 4700 3800 50  0001 C CNN
F 3 "~" H 4700 3800 50  0001 C CNN
	1    4700 3800
	-1   0    0    1   
$EndComp
Text GLabel 4900 3900 2    50   Input ~ 0
DS18B20
$Comp
L power:+3.3V #PWR?
U 1 1 5EFAB08D
P 4900 3800
AR Path="/5EFAB08D" Ref="#PWR?"  Part="1" 
AR Path="/5EF89400/5EFAB08D" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4900 3650 50  0001 C CNN
F 1 "+3.3V" V 4900 4050 50  0000 C CNN
F 2 "" H 4900 3800 50  0001 C CNN
F 3 "" H 4900 3800 50  0001 C CNN
	1    4900 3800
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EFAB093
P 4900 3700
AR Path="/5EFAB093" Ref="#PWR?"  Part="1" 
AR Path="/5EF89400/5EFAB093" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4900 3450 50  0001 C CNN
F 1 "GND" V 4905 3572 50  0000 R CNN
F 2 "" H 4900 3700 50  0001 C CNN
F 3 "" H 4900 3700 50  0001 C CNN
	1    4900 3700
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J?
U 1 1 5EFAB099
P 4700 4350
AR Path="/5EFAB099" Ref="J?"  Part="1" 
AR Path="/5EF89400/5EFAB099" Ref="J?"  Part="1" 
F 0 "J?" H 4618 4025 50  0000 C CNN
F 1 "Conn_01x03" H 4618 4116 50  0000 C CNN
F 2 "" H 4700 4350 50  0001 C CNN
F 3 "~" H 4700 4350 50  0001 C CNN
	1    4700 4350
	-1   0    0    1   
$EndComp
Text GLabel 4900 4450 2    50   Input ~ 0
DS18B20
$Comp
L power:+3.3V #PWR?
U 1 1 5EFAB0A0
P 4900 4350
AR Path="/5EFAB0A0" Ref="#PWR?"  Part="1" 
AR Path="/5EF89400/5EFAB0A0" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4900 4200 50  0001 C CNN
F 1 "+3.3V" V 4900 4600 50  0000 C CNN
F 2 "" H 4900 4350 50  0001 C CNN
F 3 "" H 4900 4350 50  0001 C CNN
	1    4900 4350
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EFAB0A6
P 4900 4250
AR Path="/5EFAB0A6" Ref="#PWR?"  Part="1" 
AR Path="/5EF89400/5EFAB0A6" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4900 4000 50  0001 C CNN
F 1 "GND" V 4905 4122 50  0000 R CNN
F 2 "" H 4900 4250 50  0001 C CNN
F 3 "" H 4900 4250 50  0001 C CNN
	1    4900 4250
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J?
U 1 1 5EFAB0AC
P 4700 4850
AR Path="/5EFAB0AC" Ref="J?"  Part="1" 
AR Path="/5EF89400/5EFAB0AC" Ref="J?"  Part="1" 
F 0 "J?" H 4618 4525 50  0000 C CNN
F 1 "Conn_01x03" H 4618 4616 50  0000 C CNN
F 2 "" H 4700 4850 50  0001 C CNN
F 3 "~" H 4700 4850 50  0001 C CNN
	1    4700 4850
	-1   0    0    1   
$EndComp
Text GLabel 4900 4950 2    50   Input ~ 0
DS18B20
$Comp
L power:+3.3V #PWR?
U 1 1 5EFAB0B3
P 4900 4850
AR Path="/5EFAB0B3" Ref="#PWR?"  Part="1" 
AR Path="/5EF89400/5EFAB0B3" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4900 4700 50  0001 C CNN
F 1 "+3.3V" V 4900 5100 50  0000 C CNN
F 2 "" H 4900 4850 50  0001 C CNN
F 3 "" H 4900 4850 50  0001 C CNN
	1    4900 4850
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EFAB0B9
P 4900 4750
AR Path="/5EFAB0B9" Ref="#PWR?"  Part="1" 
AR Path="/5EF89400/5EFAB0B9" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4900 4500 50  0001 C CNN
F 1 "GND" V 4905 4622 50  0000 R CNN
F 2 "" H 4900 4750 50  0001 C CNN
F 3 "" H 4900 4750 50  0001 C CNN
	1    4900 4750
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J?
U 1 1 5EFAB0BF
P 2500 4150
AR Path="/5EFAB0BF" Ref="J?"  Part="1" 
AR Path="/5EF89400/5EFAB0BF" Ref="J?"  Part="1" 
F 0 "J?" H 2418 3825 50  0000 C CNN
F 1 "Conn_01x03" H 2418 3916 50  0000 C CNN
F 2 "" H 2500 4150 50  0001 C CNN
F 3 "~" H 2500 4150 50  0001 C CNN
	1    2500 4150
	-1   0    0    1   
$EndComp
Text GLabel 2800 4700 0    50   Input ~ 0
water_pressure
$Comp
L power:GND #PWR?
U 1 1 5EFAB0C6
P 2700 4150
AR Path="/5EFAB0C6" Ref="#PWR?"  Part="1" 
AR Path="/5EF89400/5EFAB0C6" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2700 3900 50  0001 C CNN
F 1 "GND" V 2705 3977 50  0000 C CNN
F 2 "" H 2700 4150 50  0001 C CNN
F 3 "" H 2700 4150 50  0001 C CNN
	1    2700 4150
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5EFAB0CC
P 2700 4050
AR Path="/5EFAB0CC" Ref="#PWR?"  Part="1" 
AR Path="/5EF89400/5EFAB0CC" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2700 3900 50  0001 C CNN
F 1 "+5V" V 2715 4223 50  0000 C CNN
F 2 "" H 2700 4050 50  0001 C CNN
F 3 "" H 2700 4050 50  0001 C CNN
	1    2700 4050
	0    1    1    0   
$EndComp
Text GLabel 3450 2800 0    50   Input ~ 0
BAT_volt
$Comp
L power:GND #PWR?
U 1 1 5EFAB0D3
P 2800 5000
AR Path="/5EFAB0D3" Ref="#PWR?"  Part="1" 
AR Path="/5EF89400/5EFAB0D3" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2800 4750 50  0001 C CNN
F 1 "GND" H 2805 4827 50  0000 C CNN
F 2 "" H 2800 5000 50  0001 C CNN
F 3 "" H 2800 5000 50  0001 C CNN
	1    2800 5000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5EFAB0D9
P 2800 4550
AR Path="/5EFAB0D9" Ref="R?"  Part="1" 
AR Path="/5EF89400/5EFAB0D9" Ref="R?"  Part="1" 
F 0 "R?" H 2870 4596 50  0000 L CNN
F 1 "1370" H 2870 4505 50  0000 L CNN
F 2 "" V 2730 4550 50  0001 C CNN
F 3 "~" H 2800 4550 50  0001 C CNN
	1    2800 4550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5EFAB0DF
P 2800 4850
AR Path="/5EFAB0DF" Ref="R?"  Part="1" 
AR Path="/5EF89400/5EFAB0DF" Ref="R?"  Part="1" 
F 0 "R?" H 2870 4896 50  0000 L CNN
F 1 "2670" H 2870 4805 50  0000 L CNN
F 2 "" V 2730 4850 50  0001 C CNN
F 3 "~" H 2800 4850 50  0001 C CNN
	1    2800 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 4250 2800 4250
Wire Wire Line
	2800 4250 2800 4400
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 5EFAB0E7
P 3500 4150
AR Path="/5EFAB0E7" Ref="J?"  Part="1" 
AR Path="/5EF89400/5EFAB0E7" Ref="J?"  Part="1" 
F 0 "J?" H 3418 3825 50  0000 C CNN
F 1 "Conn_01x02" H 3418 3916 50  0000 C CNN
F 2 "" H 3500 4150 50  0001 C CNN
F 3 "~" H 3500 4150 50  0001 C CNN
	1    3500 4150
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5EFAB0ED
P 3700 4300
AR Path="/5EFAB0ED" Ref="R?"  Part="1" 
AR Path="/5EF89400/5EFAB0ED" Ref="R?"  Part="1" 
F 0 "R?" H 3770 4346 50  0000 L CNN
F 1 "R" H 3770 4255 50  0000 L CNN
F 2 "" V 3630 4300 50  0001 C CNN
F 3 "~" H 3700 4300 50  0001 C CNN
	1    3700 4300
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5EFAB0F3
P 3700 4450
AR Path="/5EFAB0F3" Ref="#PWR?"  Part="1" 
AR Path="/5EF89400/5EFAB0F3" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3700 4300 50  0001 C CNN
F 1 "+3.3V" V 3715 4578 50  0000 L CNN
F 2 "" H 3700 4450 50  0001 C CNN
F 3 "" H 3700 4450 50  0001 C CNN
	1    3700 4450
	-1   0    0    1   
$EndComp
Text GLabel 3700 4050 2    50   Input ~ 0
water_temp
$Comp
L power:GND #PWR?
U 1 1 5EFAB0FA
P 3950 2000
AR Path="/5EFAB0FA" Ref="#PWR?"  Part="1" 
AR Path="/5EF89400/5EFAB0FA" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3950 1750 50  0001 C CNN
F 1 "GND" V 3955 1872 50  0000 R CNN
F 2 "" H 3950 2000 50  0001 C CNN
F 3 "" H 3950 2000 50  0001 C CNN
	1    3950 2000
	0    1    1    0   
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 5EFBD258
P 1950 2900
AR Path="/5EFBD258" Ref="#PWR?"  Part="1" 
AR Path="/5EEC6D97/5EFBD258" Ref="#PWR?"  Part="1" 
AR Path="/5EF89400/5EFBD258" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1950 2750 50  0001 C CNN
F 1 "+12V" H 1965 3073 50  0000 C CNN
F 2 "" H 1950 2900 50  0001 C CNN
F 3 "" H 1950 2900 50  0001 C CNN
	1    1950 2900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EFBD25E
P 1950 3500
AR Path="/5EFBD25E" Ref="#PWR?"  Part="1" 
AR Path="/5EEC6D97/5EFBD25E" Ref="#PWR?"  Part="1" 
AR Path="/5EF89400/5EFBD25E" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1950 3250 50  0001 C CNN
F 1 "GND" H 1955 3327 50  0000 C CNN
F 2 "" H 1950 3500 50  0001 C CNN
F 3 "" H 1950 3500 50  0001 C CNN
	1    1950 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5EFBD264
P 1950 3050
AR Path="/5EFBD264" Ref="R?"  Part="1" 
AR Path="/5EEC6D97/5EFBD264" Ref="R?"  Part="1" 
AR Path="/5EF89400/5EFBD264" Ref="R?"  Part="1" 
F 0 "R?" H 2020 3096 50  0000 L CNN
F 1 "30900" H 2020 3005 50  0000 L CNN
F 2 "" V 1880 3050 50  0001 C CNN
F 3 "~" H 1950 3050 50  0001 C CNN
	1    1950 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5EFBD26A
P 1950 3350
AR Path="/5EFBD26A" Ref="R?"  Part="1" 
AR Path="/5EEC6D97/5EFBD26A" Ref="R?"  Part="1" 
AR Path="/5EF89400/5EFBD26A" Ref="R?"  Part="1" 
F 0 "R?" H 2020 3396 50  0000 L CNN
F 1 "9530" H 2020 3305 50  0000 L CNN
F 2 "" V 1880 3350 50  0001 C CNN
F 3 "~" H 1950 3350 50  0001 C CNN
	1    1950 3350
	1    0    0    -1  
$EndComp
Text GLabel 1950 3200 2    50   Input ~ 0
BAT_volt
$EndSCHEMATC
