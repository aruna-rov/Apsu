EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 5
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
L Connector_Generic:Conn_01x02 J?
U 1 1 5EFB8F9E
P 7150 3800
AR Path="/5EFB8F9E" Ref="J?"  Part="1" 
AR Path="/5EFB4D6F/5EFB8F9E" Ref="J13"  Part="1" 
F 0 "J13" H 7230 3792 50  0000 L CNN
F 1 "Conn_01x02" H 7230 3701 50  0000 L CNN
F 2 "Connector_JST:JST_XH_B2B-XH-A_1x02_P2.50mm_Vertical" H 7150 3800 50  0001 C CNN
F 3 "~" H 7150 3800 50  0001 C CNN
	1    7150 3800
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5EFB8FA4
P 6200 4400
AR Path="/5EFB8FA4" Ref="#PWR?"  Part="1" 
AR Path="/5EFB4D6F/5EFB8FA4" Ref="#PWR073"  Part="1" 
F 0 "#PWR073" H 6200 4250 50  0001 C CNN
F 1 "+3.3V" H 6215 4573 50  0000 C CNN
F 2 "" H 6200 4400 50  0001 C CNN
F 3 "" H 6200 4400 50  0001 C CNN
	1    6200 4400
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EFB8FAA
P 6200 3500
AR Path="/5EFB8FAA" Ref="#PWR?"  Part="1" 
AR Path="/5EFB4D6F/5EFB8FAA" Ref="#PWR072"  Part="1" 
F 0 "#PWR072" H 6200 3250 50  0001 C CNN
F 1 "GND" H 6205 3327 50  0000 C CNN
F 2 "" H 6200 3500 50  0001 C CNN
F 3 "" H 6200 3500 50  0001 C CNN
	1    6200 3500
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5EFB8FB0
P 6200 3650
AR Path="/5EFB8FB0" Ref="R?"  Part="1" 
AR Path="/5EFB4D6F/5EFB8FB0" Ref="R21"  Part="1" 
F 0 "R21" H 6270 3696 50  0000 L CNN
F 1 "20K" H 6270 3605 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6130 3650 50  0001 C CNN
F 3 "~" H 6200 3650 50  0001 C CNN
	1    6200 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5EFB8FB6
P 6200 4250
AR Path="/5EFB8FB6" Ref="R?"  Part="1" 
AR Path="/5EFB4D6F/5EFB8FB6" Ref="R22"  Part="1" 
F 0 "R22" H 6270 4296 50  0000 L CNN
F 1 "20K" H 6270 4205 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6130 4250 50  0001 C CNN
F 3 "~" H 6200 4250 50  0001 C CNN
	1    6200 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 3800 6200 3800
$Comp
L power:GND #PWR?
U 1 1 5EFB8FBD
P 5400 4500
AR Path="/5EFB8FBD" Ref="#PWR?"  Part="1" 
AR Path="/5EFB4D6F/5EFB8FBD" Ref="#PWR071"  Part="1" 
F 0 "#PWR071" H 5400 4250 50  0001 C CNN
F 1 "GND" H 5405 4327 50  0000 C CNN
F 2 "" H 5400 4500 50  0001 C CNN
F 3 "" H 5400 4500 50  0001 C CNN
	1    5400 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 4100 6200 4100
Connection ~ 6200 3800
Connection ~ 6200 4100
$Comp
L Device:R R?
U 1 1 5EFB8FC6
P 6450 3450
AR Path="/5EFB8FC6" Ref="R?"  Part="1" 
AR Path="/5EFB4D6F/5EFB8FC6" Ref="R23"  Part="1" 
F 0 "R23" H 6520 3496 50  0000 L CNN
F 1 "120" H 6520 3405 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6380 3450 50  0001 C CNN
F 3 "~" H 6450 3450 50  0001 C CNN
	1    6450 3450
	1    0    0    -1  
$EndComp
Text GLabel 4050 3800 0    50   Input ~ 0
RS485-RX
Text GLabel 4050 4100 0    50   Input ~ 0
RS485-TX
Text GLabel 4050 3950 0    50   Input ~ 0
RS485-RTS
$Comp
L Device:R R?
U 1 1 5EFB8FCF
P 4750 3550
AR Path="/5EFB8FCF" Ref="R?"  Part="1" 
AR Path="/5EFB4D6F/5EFB8FCF" Ref="R20"  Part="1" 
F 0 "R20" H 4820 3596 50  0000 L CNN
F 1 "10K" H 4820 3505 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4680 3550 50  0001 C CNN
F 3 "~" H 4750 3550 50  0001 C CNN
	1    4750 3550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5EFB8FD5
P 4600 3550
AR Path="/5EFB8FD5" Ref="R?"  Part="1" 
AR Path="/5EFB4D6F/5EFB8FD5" Ref="R19"  Part="1" 
F 0 "R19" H 4670 3596 50  0000 L CNN
F 1 "10K" H 4670 3505 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4530 3550 50  0001 C CNN
F 3 "~" H 4600 3550 50  0001 C CNN
	1    4600 3550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5EFB8FDB
P 4450 3550
AR Path="/5EFB8FDB" Ref="R?"  Part="1" 
AR Path="/5EFB4D6F/5EFB8FDB" Ref="R18"  Part="1" 
F 0 "R18" H 4520 3596 50  0000 L CNN
F 1 "10K" H 4520 3505 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4380 3550 50  0001 C CNN
F 3 "~" H 4450 3550 50  0001 C CNN
	1    4450 3550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5EFB8FE1
P 4300 3550
AR Path="/5EFB8FE1" Ref="R?"  Part="1" 
AR Path="/5EFB4D6F/5EFB8FE1" Ref="R17"  Part="1" 
F 0 "R17" H 4370 3596 50  0000 L CNN
F 1 "10K" H 4370 3505 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4230 3550 50  0001 C CNN
F 3 "~" H 4300 3550 50  0001 C CNN
	1    4300 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 3800 4750 3800
Wire Wire Line
	5000 4100 4300 4100
Wire Wire Line
	4750 3700 4750 3800
Connection ~ 4750 3800
Wire Wire Line
	4750 3800 4050 3800
Wire Wire Line
	5000 3900 4600 3900
Wire Wire Line
	4600 3900 4600 3700
Wire Wire Line
	5000 4000 4450 4000
Wire Wire Line
	4450 4000 4450 3700
Wire Wire Line
	4300 3700 4300 4100
Connection ~ 4300 4100
Wire Wire Line
	4300 4100 4050 4100
Wire Wire Line
	4150 3900 4150 3950
Wire Wire Line
	4150 3950 4050 3950
Wire Wire Line
	4150 3900 4600 3900
Connection ~ 4600 3900
Wire Wire Line
	4450 4000 4150 4000
Wire Wire Line
	4150 4000 4150 3950
Connection ~ 4450 4000
Connection ~ 4150 3950
Wire Wire Line
	4300 3400 4450 3400
Wire Wire Line
	4450 3400 4550 3400
Connection ~ 4450 3400
Wire Wire Line
	4600 3400 4750 3400
Connection ~ 4600 3400
$Comp
L power:+3.3V #PWR?
U 1 1 5EFB9000
P 4550 3400
AR Path="/5EFB9000" Ref="#PWR?"  Part="1" 
AR Path="/5EFB4D6F/5EFB9000" Ref="#PWR067"  Part="1" 
F 0 "#PWR067" H 4550 3250 50  0001 C CNN
F 1 "+3.3V" H 4565 3573 50  0000 C CNN
F 2 "" H 4550 3400 50  0001 C CNN
F 3 "" H 4550 3400 50  0001 C CNN
	1    4550 3400
	1    0    0    -1  
$EndComp
Connection ~ 4550 3400
Wire Wire Line
	4550 3400 4600 3400
$Comp
L Connector:Conn_01x02_Male J?
U 1 1 5EFB9026
P 6900 3400
AR Path="/5EFB9026" Ref="J?"  Part="1" 
AR Path="/5EFB4D6F/5EFB9026" Ref="J12"  Part="1" 
F 0 "J12" H 6872 3282 50  0000 R CNN
F 1 "Conn_01x02_Male" H 6872 3373 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 6900 3400 50  0001 C CNN
F 3 "~" H 6900 3400 50  0001 C CNN
	1    6900 3400
	-1   0    0    1   
$EndComp
Wire Wire Line
	6700 3300 6450 3300
Wire Wire Line
	6700 3400 6700 3800
Connection ~ 6700 3800
Wire Wire Line
	6700 3900 6700 4100
Wire Wire Line
	6200 4100 6450 4100
Wire Wire Line
	6200 3800 6700 3800
Wire Wire Line
	6450 3600 6450 4100
Connection ~ 6450 4100
Wire Wire Line
	6450 4100 6700 4100
Text GLabel 6950 3800 1    50   Input ~ 0
RS485-A
Text GLabel 6950 3900 3    50   Input ~ 0
RS485-B
Wire Wire Line
	6700 3800 6950 3800
Wire Wire Line
	6700 3900 6950 3900
$Comp
L Device:C C?
U 1 1 5EFB900E
P 5350 2850
AR Path="/5EFB900E" Ref="C?"  Part="1" 
AR Path="/5EFB4D6F/5EFB900E" Ref="C18"  Part="1" 
F 0 "C18" H 5465 2896 50  0000 L CNN
F 1 "0.1uF" H 5465 2805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5388 2700 50  0001 C CNN
F 3 "~" H 5350 2850 50  0001 C CNN
	1    5350 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5EFB9008
P 4900 2850
AR Path="/5EFB9008" Ref="C?"  Part="1" 
AR Path="/5EFB4D6F/5EFB9008" Ref="C17"  Part="1" 
F 0 "C17" H 5015 2896 50  0000 L CNN
F 1 "10uF" H 5015 2805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4938 2700 50  0001 C CNN
F 3 "~" H 4900 2850 50  0001 C CNN
	1    4900 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 3000 5350 3000
Wire Wire Line
	4900 3000 5150 3000
Connection ~ 5150 3000
Wire Wire Line
	5150 2700 5350 2700
Wire Wire Line
	4900 2700 5150 2700
Connection ~ 5150 2700
$Comp
L power:+3.3V #PWR?
U 1 1 5EFB9014
P 5150 2700
AR Path="/5EFB9014" Ref="#PWR?"  Part="1" 
AR Path="/5EFB4D6F/5EFB9014" Ref="#PWR068"  Part="1" 
F 0 "#PWR068" H 5150 2550 50  0001 C CNN
F 1 "+3.3V" H 5165 2873 50  0000 C CNN
F 2 "" H 5150 2700 50  0001 C CNN
F 3 "" H 5150 2700 50  0001 C CNN
	1    5150 2700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EFB901A
P 5150 3000
AR Path="/5EFB901A" Ref="#PWR?"  Part="1" 
AR Path="/5EFB4D6F/5EFB901A" Ref="#PWR069"  Part="1" 
F 0 "#PWR069" H 5150 2750 50  0001 C CNN
F 1 "GND" H 5155 2827 50  0000 C CNN
F 2 "" H 5150 3000 50  0001 C CNN
F 3 "" H 5150 3000 50  0001 C CNN
	1    5150 3000
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5EFB9039
P 5400 3400
AR Path="/5EFB9039" Ref="#PWR?"  Part="1" 
AR Path="/5EFB4D6F/5EFB9039" Ref="#PWR070"  Part="1" 
F 0 "#PWR070" H 5400 3250 50  0001 C CNN
F 1 "+3.3V" H 5415 3573 50  0000 C CNN
F 2 "" H 5400 3400 50  0001 C CNN
F 3 "" H 5400 3400 50  0001 C CNN
	1    5400 3400
	1    0    0    -1  
$EndComp
$Comp
L Interface_UART:SP3485CN U8
U 1 1 5EEA53A1
P 5400 3950
F 0 "U8" H 5400 4531 50  0000 C CNN
F 1 "SP3485CN" H 5400 4440 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 6450 3600 50  0001 C CIN
F 3 "http://www.icbase.com/pdf/SPX/SPX00480106.pdf" H 5400 3950 50  0001 C CNN
	1    5400 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 3850 5800 3800
Wire Wire Line
	5800 4050 5800 4100
Wire Wire Line
	5000 4100 5000 4150
Wire Wire Line
	5000 4050 5000 4000
Wire Wire Line
	5000 3850 5000 3900
Wire Wire Line
	5000 3800 5000 3750
Wire Wire Line
	5400 3550 5400 3400
Wire Wire Line
	5400 4350 5400 4500
$EndSCHEMATC
