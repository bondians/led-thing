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
Sheet 7 12
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 3500 2850 0    60   Output ~ 0
SS
Text HLabel 5850 2650 2    60   Input ~ 0
5V_OUT
Text HLabel 3500 3150 0    60   Output ~ 0
SCK
Text HLabel 3500 2750 0    60   Input ~ 0
MISO
Text HLabel 3500 2950 0    60   Output ~ 0
MOSI
Text HLabel 3500 3050 0    60   Input ~ 0
SPI_INT
$Comp
L CONN_02X05 J801
U 1 1 593A3868
P 3750 2950
F 0 "J801" H 3750 3250 50  0000 C CNN
F 1 "CONN_02X05" H 3750 2650 50  0000 C CNN
F 2 "Connectors:IDC_Header_Straight_10pins" H 3750 1750 50  0001 C CNN
F 3 "" H 3750 1750 50  0001 C CNN
F 4 "3M Electronic Solutions Division" H 3750 2950 60  0001 C CNN "MFG"
F 5 "N2510-6002RB" H 3750 2950 60  0001 C CNN "MPN"
	1    3750 2950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR030
U 1 1 593A38A7
P 4100 3450
F 0 "#PWR030" H 4100 3200 50  0001 C CNN
F 1 "GND" H 4100 3300 50  0000 C CNN
F 2 "" H 4100 3450 50  0001 C CNN
F 3 "" H 4100 3450 50  0001 C CNN
	1    4100 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 3050 4000 3050
Wire Wire Line
	4100 3150 4000 3150
Connection ~ 4100 3150
Wire Wire Line
	4100 2850 4000 2850
Wire Wire Line
	4100 2650 4100 2850
Connection ~ 4100 2750
$Comp
L CP1 C804
U 1 1 593A43AA
P 5600 3000
F 0 "C804" H 5625 3100 50  0000 L CNN
F 1 "10u" H 5625 2900 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 5600 3000 50  0001 C CNN
F 3 "" H 5600 3000 50  0001 C CNN
F 4 "DNS" H 5750 2800 60  0000 C CNN "Note"
F 5 "Samsung" H 5600 3000 60  0001 C CNN "MFG"
F 6 "CL21A106KOQNNNG" H 5600 3000 60  0001 C CNN "MPN"
	1    5600 3000
	1    0    0    -1  
$EndComp
$Comp
L C C803
U 1 1 593A43D3
P 5300 3000
F 0 "C803" H 5325 3100 50  0000 L CNN
F 1 "1u" H 5325 2900 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 5338 2850 50  0001 C CNN
F 3 "" H 5300 3000 50  0001 C CNN
F 4 "DNS" H 5400 2800 60  0000 C CNN "Note"
F 5 "Samsung" H 5300 3000 60  0001 C CNN "MFG"
F 6 "CL10B105KO8NNNC" H 5300 3000 60  0001 C CNN "MPN"
	1    5300 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 3250 5600 3250
Wire Wire Line
	5600 3250 5600 3150
Connection ~ 4100 3250
Wire Wire Line
	5300 3150 5300 3250
Connection ~ 5300 3250
Wire Wire Line
	5300 2850 5300 2750
Connection ~ 5300 2750
Wire Wire Line
	5600 2850 5600 2750
Connection ~ 5600 2750
Text Notes 3250 2400 0    60   ~ 0
TODO: ESD protection
Text HLabel 5850 2750 2    60   Input ~ 0
3.3V_OUT
Wire Wire Line
	4100 3050 4100 3450
$Comp
L CP1 C802
U 1 1 593B8723
P 4700 3000
F 0 "C802" H 4725 3100 50  0000 L CNN
F 1 "10u" H 4725 2900 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 4700 3000 50  0001 C CNN
F 3 "" H 4700 3000 50  0001 C CNN
F 4 "DNS" H 4850 2800 60  0000 C CNN "Note"
F 5 "Samsung" H 4700 3000 60  0001 C CNN "MFG"
F 6 "CL21A106KOQNNNG" H 4700 3000 60  0001 C CNN "MPN"
	1    4700 3000
	1    0    0    -1  
$EndComp
$Comp
L C C801
U 1 1 593B872C
P 4400 3000
F 0 "C801" H 4425 3100 50  0000 L CNN
F 1 "1u" H 4425 2900 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 4438 2850 50  0001 C CNN
F 3 "" H 4400 3000 50  0001 C CNN
F 4 "DNS" H 4500 2800 60  0000 C CNN "Note"
F 5 "Samsung" H 4400 3000 60  0001 C CNN "MFG"
F 6 "CL10B105KO8NNNC" H 4400 3000 60  0001 C CNN "MPN"
	1    4400 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 2950 4200 2950
Wire Wire Line
	4100 2650 5850 2650
Wire Wire Line
	4100 2750 4000 2750
Wire Wire Line
	4200 2950 4200 2750
Wire Wire Line
	4200 2750 5850 2750
Wire Wire Line
	4700 3150 4700 3250
Connection ~ 4700 3250
Wire Wire Line
	4400 3150 4400 3250
Connection ~ 4400 3250
Wire Wire Line
	4400 2850 4400 2650
Connection ~ 4400 2650
Wire Wire Line
	4700 2850 4700 2650
Connection ~ 4700 2650
$EndSCHEMATC
