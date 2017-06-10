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
Sheet 7 9
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
L AT30TS74-XM U5
U 1 1 59359173
P 5500 3650
F 0 "U5" H 5600 3700 60  0000 C CNN
F 1 "AT30TS74-XM" H 5800 3100 60  0000 C CNN
F 2 "" H 5500 3650 60  0000 C CNN
F 3 "" H 5500 3650 60  0000 C CNN
F 4 "Microchip Technology" H 5500 3650 60  0001 C CNN "MFG"
F 5 "AT30TS74-XM8M-B" H 5500 3650 60  0001 C CNN "MPN"
	1    5500 3650
	1    0    0    -1  
$EndComp
Text HLabel 4200 3250 0    60   Input ~ 0
VCC
Text HLabel 6300 3750 2    60   BiDi ~ 0
SDA
Text HLabel 6300 3850 2    60   BiDi ~ 0
SCL
Text HLabel 6300 3950 2    60   Output ~ 0
ALERT
$Comp
L GND #PWR34
U 1 1 5935935B
P 6400 4150
F 0 "#PWR34" H 6400 3900 50  0001 C CNN
F 1 "GND" H 6400 4000 50  0000 C CNN
F 2 "" H 6400 4150 50  0000 C CNN
F 3 "" H 6400 4150 50  0000 C CNN
	1    6400 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 4050 6400 4050
Wire Wire Line
	6400 4050 6400 4150
$Comp
L C C28
U 1 1 59359380
P 4500 4000
F 0 "C28" H 4525 4100 50  0000 L CNN
F 1 "C" H 4525 3900 50  0000 L CNN
F 2 "" H 4538 3850 50  0000 C CNN
F 3 "" H 4500 4000 50  0000 C CNN
F 4 "Murata Electronics" H 4500 4000 60  0001 C CNN "MFG"
F 5 "GRM188R71H104KA93D" H 4500 4000 60  0001 C CNN "MPN"
	1    4500 4000
	1    0    0    -1  
$EndComp
$Comp
L R R37
U 1 1 593595A6
P 5200 4300
F 0 "R37" V 5280 4300 50  0000 C CNN
F 1 "0" V 5200 4300 50  0000 C CNN
F 2 "" V 5130 4300 50  0000 C CNN
F 3 "" H 5200 4300 50  0000 C CNN
	1    5200 4300
	-1   0    0    1   
$EndComp
$Comp
L R R36
U 1 1 59359612
P 5000 4300
F 0 "R36" V 5080 4300 50  0000 C CNN
F 1 "0" V 5000 4300 50  0000 C CNN
F 2 "" V 4930 4300 50  0000 C CNN
F 3 "" H 5000 4300 50  0000 C CNN
	1    5000 4300
	-1   0    0    1   
$EndComp
$Comp
L R R35
U 1 1 59359639
P 4800 4300
F 0 "R35" V 4880 4300 50  0000 C CNN
F 1 "0" V 4800 4300 50  0000 C CNN
F 2 "" V 4730 4300 50  0000 C CNN
F 3 "" H 4800 4300 50  0000 C CNN
	1    4800 4300
	-1   0    0    1   
$EndComp
$Comp
L R R32
U 1 1 593597EF
P 4800 3500
F 0 "R32" V 4880 3500 50  0000 C CNN
F 1 "R" V 4800 3500 50  0001 C CNN
F 2 "" V 4730 3500 50  0000 C CNN
F 3 "" H 4800 3500 50  0000 C CNN
F 4 "DNS" V 4800 3500 60  0000 C CNN "Note"
	1    4800 3500
	-1   0    0    1   
$EndComp
Wire Wire Line
	5300 3850 4800 3850
Wire Wire Line
	4800 3650 4800 4150
Connection ~ 4800 3850
Wire Wire Line
	5300 3950 5000 3950
Wire Wire Line
	5000 3650 5000 4150
Connection ~ 5000 3950
Wire Wire Line
	5300 4050 5200 4050
Wire Wire Line
	5200 3650 5200 4150
Connection ~ 5200 4050
Wire Wire Line
	5200 4550 5200 4450
Wire Wire Line
	4500 4550 5200 4550
Wire Wire Line
	4800 4550 4800 4450
Connection ~ 5000 4550
Wire Wire Line
	4800 3250 4800 3350
Wire Wire Line
	4200 3250 5200 3250
Wire Wire Line
	5200 3250 5200 3350
Wire Wire Line
	5000 3350 5000 3250
Connection ~ 5000 3250
Connection ~ 4800 3250
Wire Wire Line
	5300 3750 4500 3750
Wire Wire Line
	4500 3250 4500 3850
Connection ~ 4500 3250
Connection ~ 4500 3750
Wire Wire Line
	4500 4150 4500 4650
Connection ~ 4800 4550
Connection ~ 4500 4550
Wire Wire Line
	5000 4550 5000 4450
$Comp
L GND #PWR35
U 1 1 59359C4C
P 4500 4650
F 0 "#PWR35" H 4500 4400 50  0001 C CNN
F 1 "GND" H 4500 4500 50  0000 C CNN
F 2 "" H 4500 4650 50  0000 C CNN
F 3 "" H 4500 4650 50  0000 C CNN
	1    4500 4650
	1    0    0    -1  
$EndComp
$Comp
L R R33
U 1 1 59359E6E
P 5000 3500
F 0 "R33" V 5080 3500 50  0000 C CNN
F 1 "R" V 5000 3500 50  0001 C CNN
F 2 "" V 4930 3500 50  0000 C CNN
F 3 "" H 5000 3500 50  0000 C CNN
F 4 "DNS" V 5000 3500 60  0000 C CNN "Note"
	1    5000 3500
	-1   0    0    1   
$EndComp
$Comp
L R R34
U 1 1 59359E9C
P 5200 3500
F 0 "R34" V 5280 3500 50  0000 C CNN
F 1 "R" V 5200 3500 50  0001 C CNN
F 2 "" V 5130 3500 50  0000 C CNN
F 3 "" H 5200 3500 50  0000 C CNN
F 4 "DNS" V 5200 3500 60  0000 C CNN "Note"
	1    5200 3500
	-1   0    0    1   
$EndComp
Text Notes 4600 5100 0    60   ~ 0
Configured for address 0.  A[0..2] have internal pull-down resistors,\nso the external ones are optional but recommended by the datasheet.
$EndSCHEMATC
