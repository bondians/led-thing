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
Sheet 6 12
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
L AT30TS74-XM U701
U 1 1 59359173
P 6300 3700
F 0 "U701" H 6400 3750 60  0000 C CNN
F 1 "Main Reg" H 6600 3150 60  0000 C CNN
F 2 "Housings_SSOP:MSOP-8_3x3mm_Pitch0.65mm" H 6300 3700 60  0001 C CNN
F 3 "" H 6300 3700 60  0000 C CNN
F 4 "Microchip Technology" H 6300 3700 60  0001 C CNN "MFG"
F 5 "AT30TS74-XM8M-B" H 6300 3700 60  0001 C CNN "MPN"
	1    6300 3700
	1    0    0    -1  
$EndComp
Text HLabel 5000 3300 0    60   Input ~ 0
VCC
Text HLabel 7100 3800 2    60   BiDi ~ 0
SDA
Text HLabel 7100 3900 2    60   BiDi ~ 0
SCL
Text HLabel 7100 4000 2    60   Output ~ 0
ALERT
$Comp
L GND #PWR028
U 1 1 5935935B
P 7200 4200
F 0 "#PWR028" H 7200 3950 50  0001 C CNN
F 1 "GND" H 7200 4050 50  0000 C CNN
F 2 "" H 7200 4200 50  0000 C CNN
F 3 "" H 7200 4200 50  0000 C CNN
	1    7200 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 4100 7200 4100
Wire Wire Line
	7200 4100 7200 4200
$Comp
L R R706
U 1 1 593595A6
P 6000 4350
F 0 "R706" V 6080 4350 50  0000 C CNN
F 1 "0" V 6000 4350 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 5930 4350 50  0001 C CNN
F 3 "" H 6000 4350 50  0000 C CNN
	1    6000 4350
	-1   0    0    1   
$EndComp
$Comp
L R R705
U 1 1 59359612
P 5800 4350
F 0 "R705" V 5880 4350 50  0000 C CNN
F 1 "0" V 5800 4350 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 5730 4350 50  0001 C CNN
F 3 "" H 5800 4350 50  0000 C CNN
	1    5800 4350
	-1   0    0    1   
$EndComp
$Comp
L R R704
U 1 1 59359639
P 5600 4350
F 0 "R704" V 5680 4350 50  0000 C CNN
F 1 "0" V 5600 4350 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 5530 4350 50  0001 C CNN
F 3 "" H 5600 4350 50  0000 C CNN
	1    5600 4350
	-1   0    0    1   
$EndComp
$Comp
L R R701
U 1 1 593597EF
P 5600 3550
F 0 "R701" V 5680 3550 50  0000 C CNN
F 1 "R" V 5600 3550 50  0001 C CNN
F 2 "Resistors_SMD:R_0603" V 5530 3550 50  0001 C CNN
F 3 "" H 5600 3550 50  0000 C CNN
F 4 "DNS" V 5600 3550 60  0000 C CNN "Note"
	1    5600 3550
	-1   0    0    1   
$EndComp
Wire Wire Line
	6100 3900 5600 3900
Wire Wire Line
	5600 3700 5600 4200
Connection ~ 5600 3900
Wire Wire Line
	6100 4000 5800 4000
Wire Wire Line
	5800 3700 5800 4200
Connection ~ 5800 4000
Wire Wire Line
	6100 4100 6000 4100
Wire Wire Line
	6000 3700 6000 4200
Connection ~ 6000 4100
Wire Wire Line
	6000 4600 6000 4500
Wire Wire Line
	5300 4600 6000 4600
Wire Wire Line
	5600 4600 5600 4500
Connection ~ 5800 4600
Wire Wire Line
	5600 3300 5600 3400
Wire Wire Line
	5000 3300 6000 3300
Wire Wire Line
	6000 3300 6000 3400
Wire Wire Line
	5800 3400 5800 3300
Connection ~ 5800 3300
Connection ~ 5600 3300
Wire Wire Line
	6100 3800 5300 3800
Wire Wire Line
	5300 3300 5300 3900
Connection ~ 5300 3300
Connection ~ 5300 3800
Wire Wire Line
	5300 4200 5300 4700
Connection ~ 5600 4600
Connection ~ 5300 4600
Wire Wire Line
	5800 4600 5800 4500
$Comp
L GND #PWR029
U 1 1 59359C4C
P 5300 4700
F 0 "#PWR029" H 5300 4450 50  0001 C CNN
F 1 "GND" H 5300 4550 50  0000 C CNN
F 2 "" H 5300 4700 50  0000 C CNN
F 3 "" H 5300 4700 50  0000 C CNN
	1    5300 4700
	1    0    0    -1  
$EndComp
$Comp
L R R702
U 1 1 59359E6E
P 5800 3550
F 0 "R702" V 5880 3550 50  0000 C CNN
F 1 "R" V 5800 3550 50  0001 C CNN
F 2 "Resistors_SMD:R_0603" V 5730 3550 50  0001 C CNN
F 3 "" H 5800 3550 50  0000 C CNN
F 4 "DNS" V 5800 3550 60  0000 C CNN "Note"
	1    5800 3550
	-1   0    0    1   
$EndComp
$Comp
L R R703
U 1 1 59359E9C
P 6000 3550
F 0 "R703" V 6080 3550 50  0000 C CNN
F 1 "R" V 6000 3550 50  0001 C CNN
F 2 "Resistors_SMD:R_0603" V 5930 3550 50  0001 C CNN
F 3 "" H 6000 3550 50  0000 C CNN
F 4 "DNS" V 6000 3550 60  0000 C CNN "Note"
	1    6000 3550
	-1   0    0    1   
$EndComp
Text Notes 4600 5100 0    60   ~ 0
Configured for address 0.  A[0..2] have internal pull-down resistors,\nso the external ones are optional but recommended by the datasheet.
$Comp
L C C701
U 1 1 593E171E
P 5300 4050
F 0 "C701" H 5325 4150 50  0000 L CNN
F 1 "0.1u" H 5325 3950 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 5338 3900 50  0001 C CNN
F 3 "" H 5300 4050 50  0000 C CNN
F 4 "Murata Electronics" H 5300 4050 60  0001 C CNN "MFG"
F 5 "GRM188R71H104KA93D" H 5300 4050 60  0001 C CNN "MPN"
	1    5300 4050
	1    0    0    -1  
$EndComp
$EndSCHEMATC
