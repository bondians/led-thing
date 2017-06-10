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
Sheet 4 11
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
L TLV521 U401
U 1 1 59352BB4
P 5200 2800
F 0 "U401" H 5350 3000 60  0000 C CNN
F 1 "TLV521" H 5150 2800 60  0000 C CNN
F 2 "" H 5650 2300 60  0000 C CNN
F 3 "" H 5650 2300 60  0000 C CNN
F 4 "Texas Instruments" H 5200 2800 60  0001 C CNN "MFG"
F 5 "TLV521DCKR" H 5200 2800 60  0001 C CNN "MPN"
	1    5200 2800
	1    0    0    -1  
$EndComp
$Comp
L R R401
U 1 1 59352C09
P 4450 2450
F 0 "R401" V 4530 2450 50  0000 C CNN
F 1 "42.2M" V 4450 2450 50  0000 C CNN
F 2 "" V 4380 2450 50  0000 C CNN
F 3 "" H 4450 2450 50  0000 C CNN
	1    4450 2450
	1    0    0    -1  
$EndComp
$Comp
L R R402
U 1 1 59352C74
P 4450 2950
F 0 "R402" V 4530 2950 50  0000 C CNN
F 1 "1.33M" V 4450 2950 50  0000 C CNN
F 2 "" V 4380 2950 50  0000 C CNN
F 3 "" H 4450 2950 50  0000 C CNN
F 4 "Vishay" V 4450 2950 60  0001 C CNN "MFG"
F 5 "CRCW06031M33FKEA" V 4450 2950 60  0001 C CNN "MPN"
	1    4450 2950
	1    0    0    -1  
$EndComp
$Comp
L R R403
U 1 1 59352C9D
P 5150 3550
F 0 "R403" V 5230 3550 50  0000 C CNN
F 1 "0" V 5150 3550 50  0000 C CNN
F 2 "" V 5080 3550 50  0000 C CNN
F 3 "" H 5150 3550 50  0000 C CNN
	1    5150 3550
	0    1    1    0   
$EndComp
$Comp
L C C404
U 1 1 59352CE0
P 5150 3800
F 0 "C404" V 5200 3900 50  0000 L CNN
F 1 "C" V 5200 3650 50  0000 L CNN
F 2 "" H 5188 3650 50  0000 C CNN
F 3 "" H 5150 3800 50  0000 C CNN
F 4 "DNS" V 5350 3800 60  0000 C CNN "Note"
	1    5150 3800
	0    1    1    0   
$EndComp
$Comp
L C C402
U 1 1 59352D63
P 4200 2950
F 0 "C402" H 4225 3050 50  0000 L CNN
F 1 "1u" H 4225 2850 50  0000 L CNN
F 2 "" H 4238 2800 50  0000 C CNN
F 3 "" H 4200 2950 50  0000 C CNN
F 4 "Samsung" H 4200 2950 60  0001 C CNN "MFG"
F 5 "CL10B105KO8NNNC" H 4200 2950 60  0001 C CNN "MPN"
	1    4200 2950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR022
U 1 1 59352E84
P 5200 3150
F 0 "#PWR022" H 5200 2900 50  0001 C CNN
F 1 "GND" H 5200 3000 50  0000 C CNN
F 2 "" H 5200 3150 50  0000 C CNN
F 3 "" H 5200 3150 50  0000 C CNN
	1    5200 3150
	1    0    0    -1  
$EndComp
Text HLabel 4200 2250 0    60   Input ~ 0
V_IN
Text HLabel 4600 1900 0    60   Input ~ 0
VCC
$Comp
L C C401
U 1 1 59352EDA
P 4850 2150
F 0 "C401" H 4875 2250 50  0000 L CNN
F 1 "0.1u" H 4875 2050 50  0000 L CNN
F 2 "" H 4888 2000 50  0000 C CNN
F 3 "" H 4850 2150 50  0000 C CNN
F 4 "Murata Electronics" H 4850 2150 60  0001 C CNN "MFG"
F 5 "GRM188R71H104KA93D" H 4850 2150 60  0001 C CNN "MPN"
	1    4850 2150
	1    0    0    -1  
$EndComp
$Comp
L C C403
U 1 1 59352F5C
P 6000 3050
F 0 "C403" H 6025 3150 50  0000 L CNN
F 1 "C" H 6025 2950 50  0000 L CNN
F 2 "" H 6038 2900 50  0000 C CNN
F 3 "" H 6000 3050 50  0000 C CNN
F 4 "DNS" H 6200 2950 60  0000 C CNN "Note"
	1    6000 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 3550 4650 3550
Wire Wire Line
	4650 2900 4650 3800
Wire Wire Line
	4650 2900 4750 2900
Wire Wire Line
	4650 3800 5000 3800
Connection ~ 4650 3550
Wire Wire Line
	5750 3800 5300 3800
Wire Wire Line
	5650 2800 6600 2800
Wire Wire Line
	5300 3550 5750 3550
Connection ~ 5750 3550
Wire Wire Line
	6000 2800 6000 2900
Connection ~ 5750 2800
Wire Wire Line
	6000 3300 6000 3200
$Comp
L GND #PWR023
U 1 1 593532D3
P 6000 3300
F 0 "#PWR023" H 6000 3050 50  0001 C CNN
F 1 "GND" H 6000 3150 50  0000 C CNN
F 2 "" H 6000 3300 50  0000 C CNN
F 3 "" H 6000 3300 50  0000 C CNN
	1    6000 3300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR024
U 1 1 593532F6
P 4450 3200
F 0 "#PWR024" H 4450 2950 50  0001 C CNN
F 1 "GND" H 4450 3050 50  0000 C CNN
F 2 "" H 4450 3200 50  0000 C CNN
F 3 "" H 4450 3200 50  0000 C CNN
	1    4450 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 3100 4450 3200
Wire Wire Line
	4450 3150 4200 3150
Wire Wire Line
	4200 3150 4200 3100
Connection ~ 4450 3150
Wire Wire Line
	4450 2600 4450 2800
Wire Wire Line
	4200 2700 4750 2700
Connection ~ 4450 2700
Wire Wire Line
	4200 2700 4200 2800
Wire Wire Line
	4450 2300 4450 2250
Wire Wire Line
	4450 2250 4200 2250
Text Notes 3850 4700 0    60   ~ 0
Configured to output 1.1V when V_IN = 36V, with RC\nconstant around 1.25s.  Use relatively large resistors and make sure\nto clean flux thoroughly to maintain accurate resistance.\nEnsure divider bypass capacitor has extremely low leakage\n(just 3 nA leakage current would reduce accuracy by about 1%)
$Comp
L GND #PWR025
U 1 1 59353695
P 4850 2300
F 0 "#PWR025" H 4850 2050 50  0001 C CNN
F 1 "GND" H 4850 2150 50  0000 C CNN
F 2 "" H 4850 2300 50  0000 C CNN
F 3 "" H 4850 2300 50  0000 C CNN
	1    4850 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 1900 5200 1900
Wire Wire Line
	5200 1900 5200 2450
Wire Wire Line
	4850 2000 4850 1900
Connection ~ 4850 1900
Text HLabel 6600 2800 2    60   Output ~ 0
VBAT_SENSE
Connection ~ 6000 2800
Text Notes 5600 2350 0    60   ~ 0
Amplifier accuracy is best when it has a small load (10 kohm, for example),\nbut leaving it on all the time is wasteful.  If the microcontroller GPIOs\nhave configurable pull resistors, they can be used instead of this load\nresistor.
Text Notes 3850 5000 0    60   ~ 0
Note that this entire circuit is optional, and may be omitted if relying on\nprecise UVLO configuration of the main output regulator.
Wire Wire Line
	5750 2800 5750 3800
$EndSCHEMATC
