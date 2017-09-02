EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:project
LIBS:power-board-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 11 12
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 3700 2450 2    60   Input ~ 0
V_IN
Text HLabel 5550 2450 2    60   BiDi ~ 0
SHARE
Text HLabel 3700 2750 2    60   Input ~ 0
SYNC
Text HLabel 4750 2450 0    60   Output ~ 0
5V_OUT
Text HLabel 2800 2450 0    60   Input ~ 0
ENABLE
$Comp
L CONN_02X04 J1102
U 1 1 5956D35F
P 3250 2600
F 0 "J1102" H 3250 2850 50  0000 C CNN
F 1 "CSHARE_IN" H 3250 2350 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x04_Pitch2.54mm" H 3250 1400 50  0001 C CNN
F 3 "" H 3250 1400 50  0001 C CNN
	1    3250 2600
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR046
U 1 1 5956D38A
P 2900 2850
F 0 "#PWR046" H 2900 2600 50  0001 C CNN
F 1 "GND" H 2900 2700 50  0000 C CNN
F 2 "" H 2900 2850 50  0001 C CNN
F 3 "" H 2900 2850 50  0001 C CNN
	1    2900 2850
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X04 J1103
U 1 1 5956D39F
P 5200 2600
F 0 "J1103" H 5200 2850 50  0000 C CNN
F 1 "CSHARE_OUT" H 5200 2350 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x04_Pitch2.54mm" H 5200 1400 50  0001 C CNN
F 3 "" H 5200 1400 50  0001 C CNN
	1    5200 2600
	1    0    0    1   
$EndComp
$Comp
L GND #PWR047
U 1 1 5956D3DE
P 5550 2850
F 0 "#PWR047" H 5550 2600 50  0001 C CNN
F 1 "GND" H 5550 2700 50  0000 C CNN
F 2 "" H 5550 2850 50  0001 C CNN
F 3 "" H 5550 2850 50  0001 C CNN
	1    5550 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 2750 3000 2750
Wire Wire Line
	2900 2550 2900 2850
Wire Wire Line
	3000 2650 2900 2650
Connection ~ 2900 2750
Wire Wire Line
	3000 2550 2900 2550
Connection ~ 2900 2650
Wire Wire Line
	3700 2750 3500 2750
Wire Wire Line
	3500 2450 3700 2450
Wire Wire Line
	3600 2450 3600 2650
Wire Wire Line
	3600 2650 3500 2650
Connection ~ 3600 2450
Wire Wire Line
	3500 2550 3600 2550
Connection ~ 3600 2550
Wire Wire Line
	3000 2450 2800 2450
Wire Wire Line
	5550 2550 5550 2850
Wire Wire Line
	5550 2550 5450 2550
Wire Wire Line
	5550 2650 5450 2650
Connection ~ 5550 2650
Wire Wire Line
	5550 2750 5450 2750
Connection ~ 5550 2750
Wire Wire Line
	5450 2450 5550 2450
Wire Wire Line
	4850 2650 4950 2650
Wire Wire Line
	4950 2550 4850 2550
Connection ~ 4850 2550
Wire Wire Line
	4750 2450 4950 2450
Connection ~ 4850 2450
Wire Wire Line
	4850 2750 4950 2750
Connection ~ 4850 2650
Wire Wire Line
	4850 2450 4850 2750
$EndSCHEMATC
