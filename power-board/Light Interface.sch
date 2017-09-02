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
Sheet 8 12
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 3600 900  2    60   Input ~ 0
5V_OUT
Text HLabel 1500 1400 0    60   Input ~ 0
CLK
$Comp
L CONN_01X04 J901
U 1 1 593A4988
P 2300 2950
F 0 "J901" H 2300 3200 50  0000 C CNN
F 1 "CONN_01X04" V 2400 2950 50  0000 C CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_Pheonix_PT-3.5mm_4pol" H 2300 2950 50  0001 C CNN
F 3 "" H 2300 2950 50  0001 C CNN
	1    2300 2950
	1    0    0    -1  
$EndComp
$Comp
L C C904
U 1 1 593A49E6
P 1400 2950
F 0 "C904" H 1425 3050 50  0000 L CNN
F 1 "10u" H 1425 2850 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 1438 2800 50  0001 C CNN
F 3 "" H 1400 2950 50  0001 C CNN
F 4 "Samsung" H 1400 2950 60  0001 C CNN "MFG"
F 5 "CL21A106KOQNNNG" H 1400 2950 60  0001 C CNN "MPN"
	1    1400 2950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR031
U 1 1 593A4A49
P 1700 3300
F 0 "#PWR031" H 1700 3050 50  0001 C CNN
F 1 "GND" H 1700 3150 50  0000 C CNN
F 2 "" H 1700 3300 50  0001 C CNN
F 3 "" H 1700 3300 50  0001 C CNN
	1    1700 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 3100 1400 3200
Wire Wire Line
	2100 2900 1700 2900
Text Notes 7250 6700 0    60   ~ 0
TODO: ESD Protection
Text HLabel 900  900  0    60   Input ~ 0
3V_REF
$Comp
L CD4504B U901
U 1 1 593C5912
P 1700 800
F 0 "U901" H 2300 850 60  0000 R CNN
F 1 "CD4504B" H 1700 850 60  0000 L CNN
F 2 "Housings_SOIC:SOIC-16_3.9x9.9mm_Pitch1.27mm" H 1750 950 60  0001 C CNN
F 3 "" H 1750 950 60  0001 C CNN
F 4 "Texas Instruments" H 1700 800 60  0001 C CNN "MFG"
F 5 "CD4504BM96" H 1700 800 60  0001 C CNN "MPN"
	1    1700 800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  900  1500 900 
Text Label 3000 1400 2    60   ~ 0
CLK_OUT
Text Label 3000 1100 2    60   ~ 0
D0_OUT
Text Label 3000 1200 2    60   ~ 0
D1_OUT
Text Label 3000 1300 2    60   ~ 0
D2_OUT
Text Label 3000 1600 2    60   ~ 0
D3_OUT
Text Label 3000 1500 2    60   ~ 0
D4_OUT
Wire Wire Line
	2500 900  3600 900 
Text Label 3350 900  0    60   ~ 0
5V
Wire Wire Line
	2100 2800 1700 2800
Wire Wire Line
	1700 2800 1700 2700
Wire Wire Line
	1700 2700 850  2700
Wire Wire Line
	2100 3100 1700 3100
Wire Wire Line
	1700 3100 1700 3300
Wire Wire Line
	1100 3200 1700 3200
Connection ~ 1700 3200
Wire Wire Line
	1100 3200 1100 3100
Connection ~ 1400 3200
Wire Wire Line
	1100 2800 1100 2700
Connection ~ 1100 2700
Wire Wire Line
	1400 2800 1400 2700
Connection ~ 1400 2700
Text Label 1700 2900 0    60   ~ 0
CLK_OUT
Wire Wire Line
	2100 3000 1700 3000
Text Label 850  2700 0    60   ~ 0
5V
Text Label 1700 3000 0    60   ~ 0
D0_OUT
Text HLabel 1500 1100 0    60   Input ~ 0
D0
Text HLabel 1500 1200 0    60   Input ~ 0
D1
Text HLabel 1500 1300 0    60   Input ~ 0
D2
Text HLabel 1500 1600 0    60   Input ~ 0
D3
Text HLabel 1500 1500 0    60   Input ~ 0
D4
$Comp
L GND #PWR032
U 1 1 593C6AA7
P 1400 1900
F 0 "#PWR032" H 1400 1650 50  0001 C CNN
F 1 "GND" H 1400 1750 50  0000 C CNN
F 2 "" H 1400 1900 50  0001 C CNN
F 3 "" H 1400 1900 50  0001 C CNN
	1    1400 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 1900 1400 1800
Wire Wire Line
	1400 1800 1500 1800
$Comp
L GND #PWR033
U 1 1 593C6B4C
P 1050 1400
F 0 "#PWR033" H 1050 1150 50  0001 C CNN
F 1 "GND" H 1050 1250 50  0000 C CNN
F 2 "" H 1050 1400 50  0001 C CNN
F 3 "" H 1050 1400 50  0001 C CNN
	1    1050 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 1400 1050 1300
Wire Wire Line
	1050 1000 1050 900 
Connection ~ 1050 900 
$Comp
L GND #PWR034
U 1 1 593C6C0E
P 3200 1400
F 0 "#PWR034" H 3200 1150 50  0001 C CNN
F 1 "GND" H 3200 1250 50  0000 C CNN
F 2 "" H 3200 1400 50  0001 C CNN
F 3 "" H 3200 1400 50  0001 C CNN
	1    3200 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 1400 3200 1300
Wire Wire Line
	3200 1000 3200 900 
Connection ~ 3200 900 
Wire Wire Line
	3000 1100 2500 1100
Wire Wire Line
	3000 1200 2500 1200
Wire Wire Line
	3000 1300 2500 1300
Wire Wire Line
	3000 1400 2500 1400
Wire Wire Line
	3000 1500 2500 1500
Wire Wire Line
	3000 1600 2500 1600
$Comp
L CONN_01X04 J902
U 1 1 593C76E0
P 4400 2950
F 0 "J902" H 4400 3200 50  0000 C CNN
F 1 "CONN_01X04" V 4500 2950 50  0000 C CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_Pheonix_PT-3.5mm_4pol" H 4400 2950 50  0001 C CNN
F 3 "" H 4400 2950 50  0001 C CNN
	1    4400 2950
	1    0    0    -1  
$EndComp
$Comp
L C C906
U 1 1 593C76E8
P 3500 2950
F 0 "C906" H 3525 3050 50  0000 L CNN
F 1 "10u" H 3525 2850 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 3538 2800 50  0001 C CNN
F 3 "" H 3500 2950 50  0001 C CNN
F 4 "Samsung" H 3500 2950 60  0001 C CNN "MFG"
F 5 "CL21A106KOQNNNG" H 3500 2950 60  0001 C CNN "MPN"
	1    3500 2950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR035
U 1 1 593C76F6
P 3800 3300
F 0 "#PWR035" H 3800 3050 50  0001 C CNN
F 1 "GND" H 3800 3150 50  0000 C CNN
F 2 "" H 3800 3300 50  0001 C CNN
F 3 "" H 3800 3300 50  0001 C CNN
	1    3800 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 3100 3500 3200
Wire Wire Line
	4200 2900 3800 2900
Wire Wire Line
	4200 2800 3800 2800
Wire Wire Line
	3800 2800 3800 2700
Wire Wire Line
	3800 2700 2950 2700
Wire Wire Line
	4200 3100 3800 3100
Wire Wire Line
	3800 3100 3800 3300
Wire Wire Line
	3200 3200 3800 3200
Connection ~ 3800 3200
Wire Wire Line
	3200 3200 3200 3100
Connection ~ 3500 3200
Wire Wire Line
	3200 2800 3200 2700
Connection ~ 3200 2700
Wire Wire Line
	3500 2800 3500 2700
Connection ~ 3500 2700
Text Label 3800 2900 0    60   ~ 0
CLK_OUT
Wire Wire Line
	4200 3000 3800 3000
Text Label 2950 2700 0    60   ~ 0
5V
Text Label 3800 3000 0    60   ~ 0
D1_OUT
$Comp
L CONN_01X04 J903
U 1 1 593C797D
P 6500 2950
F 0 "J903" H 6500 3200 50  0000 C CNN
F 1 "CONN_01X04" V 6600 2950 50  0000 C CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_Pheonix_PT-3.5mm_4pol" H 6500 2950 50  0001 C CNN
F 3 "" H 6500 2950 50  0001 C CNN
	1    6500 2950
	1    0    0    -1  
$EndComp
$Comp
L C C908
U 1 1 593C7985
P 5600 2950
F 0 "C908" H 5625 3050 50  0000 L CNN
F 1 "10u" H 5625 2850 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 5638 2800 50  0001 C CNN
F 3 "" H 5600 2950 50  0001 C CNN
F 4 "Samsung" H 5600 2950 60  0001 C CNN "MFG"
F 5 "CL21A106KOQNNNG" H 5600 2950 60  0001 C CNN "MPN"
	1    5600 2950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR036
U 1 1 593C7993
P 5900 3300
F 0 "#PWR036" H 5900 3050 50  0001 C CNN
F 1 "GND" H 5900 3150 50  0000 C CNN
F 2 "" H 5900 3300 50  0001 C CNN
F 3 "" H 5900 3300 50  0001 C CNN
	1    5900 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 3100 5600 3200
Wire Wire Line
	6300 2900 5900 2900
Wire Wire Line
	6300 2800 5900 2800
Wire Wire Line
	5900 2800 5900 2700
Wire Wire Line
	5900 2700 5050 2700
Wire Wire Line
	6300 3100 5900 3100
Wire Wire Line
	5900 3100 5900 3300
Wire Wire Line
	5300 3200 5900 3200
Connection ~ 5900 3200
Wire Wire Line
	5300 3200 5300 3100
Connection ~ 5600 3200
Wire Wire Line
	5300 2800 5300 2700
Connection ~ 5300 2700
Wire Wire Line
	5600 2800 5600 2700
Connection ~ 5600 2700
Text Label 5900 2900 0    60   ~ 0
CLK_OUT
Wire Wire Line
	6300 3000 5900 3000
Text Label 5050 2700 0    60   ~ 0
5V
Text Label 5900 3000 0    60   ~ 0
D2_OUT
$Comp
L CONN_01X04 J904
U 1 1 593C79B0
P 8600 2950
F 0 "J904" H 8600 3200 50  0000 C CNN
F 1 "CONN_01X04" V 8700 2950 50  0000 C CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_Pheonix_PT-3.5mm_4pol" H 8600 2950 50  0001 C CNN
F 3 "" H 8600 2950 50  0001 C CNN
	1    8600 2950
	1    0    0    -1  
$EndComp
$Comp
L C C910
U 1 1 593C79B8
P 7700 2950
F 0 "C910" H 7725 3050 50  0000 L CNN
F 1 "10u" H 7725 2850 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 7738 2800 50  0001 C CNN
F 3 "" H 7700 2950 50  0001 C CNN
F 4 "Samsung" H 7700 2950 60  0001 C CNN "MFG"
F 5 "CL21A106KOQNNNG" H 7700 2950 60  0001 C CNN "MPN"
	1    7700 2950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR037
U 1 1 593C79C6
P 8000 3300
F 0 "#PWR037" H 8000 3050 50  0001 C CNN
F 1 "GND" H 8000 3150 50  0000 C CNN
F 2 "" H 8000 3300 50  0001 C CNN
F 3 "" H 8000 3300 50  0001 C CNN
	1    8000 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 3100 7700 3200
Wire Wire Line
	8400 2900 8000 2900
Wire Wire Line
	8400 2800 8000 2800
Wire Wire Line
	8000 2800 8000 2700
Wire Wire Line
	8000 2700 7150 2700
Wire Wire Line
	8400 3100 8000 3100
Wire Wire Line
	8000 3100 8000 3300
Wire Wire Line
	7400 3200 8000 3200
Connection ~ 8000 3200
Wire Wire Line
	7400 3200 7400 3100
Connection ~ 7700 3200
Wire Wire Line
	7400 2800 7400 2700
Connection ~ 7400 2700
Wire Wire Line
	7700 2800 7700 2700
Connection ~ 7700 2700
Text Label 8000 2900 0    60   ~ 0
CLK_OUT
Wire Wire Line
	8400 3000 8000 3000
Text Label 7150 2700 0    60   ~ 0
5V
Text Label 8000 3000 0    60   ~ 0
D3_OUT
$Comp
L CONN_01X04 J905
U 1 1 593C7ADB
P 10700 2950
F 0 "J905" H 10700 3200 50  0000 C CNN
F 1 "CONN_01X04" V 10800 2950 50  0000 C CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_Pheonix_PT-3.5mm_4pol" H 10700 2950 50  0001 C CNN
F 3 "" H 10700 2950 50  0001 C CNN
	1    10700 2950
	1    0    0    -1  
$EndComp
$Comp
L C C912
U 1 1 593C7AE3
P 9800 2950
F 0 "C912" H 9825 3050 50  0000 L CNN
F 1 "10u" H 9825 2850 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 9838 2800 50  0001 C CNN
F 3 "" H 9800 2950 50  0001 C CNN
F 4 "Samsung" H 9800 2950 60  0001 C CNN "MFG"
F 5 "CL21A106KOQNNNG" H 9800 2950 60  0001 C CNN "MPN"
	1    9800 2950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR038
U 1 1 593C7AF1
P 10100 3300
F 0 "#PWR038" H 10100 3050 50  0001 C CNN
F 1 "GND" H 10100 3150 50  0000 C CNN
F 2 "" H 10100 3300 50  0001 C CNN
F 3 "" H 10100 3300 50  0001 C CNN
	1    10100 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 3100 9800 3200
Wire Wire Line
	10500 2900 10100 2900
Wire Wire Line
	10500 2800 10100 2800
Wire Wire Line
	10100 2800 10100 2700
Wire Wire Line
	10100 2700 9250 2700
Wire Wire Line
	10500 3100 10100 3100
Wire Wire Line
	10100 3100 10100 3300
Wire Wire Line
	9500 3200 10100 3200
Connection ~ 10100 3200
Wire Wire Line
	9500 3200 9500 3100
Connection ~ 9800 3200
Wire Wire Line
	9500 2800 9500 2700
Connection ~ 9500 2700
Wire Wire Line
	9800 2800 9800 2700
Connection ~ 9800 2700
Text Label 10100 2900 0    60   ~ 0
CLK_OUT
Wire Wire Line
	10500 3000 10100 3000
Text Label 9250 2700 0    60   ~ 0
5V
Text Label 10100 3000 0    60   ~ 0
D4_OUT
$Comp
L R R901
U 1 1 593B6E24
P 2850 1800
F 0 "R901" V 2930 1800 50  0000 C CNN
F 1 "0" V 2850 1800 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 2780 1800 50  0001 C CNN
F 3 "" H 2850 1800 50  0001 C CNN
F 4 "DNS" V 2750 1800 60  0000 C CNN "Note"
	1    2850 1800
	0    1    1    0   
$EndComp
$Comp
L R R902
U 1 1 593B6EB2
P 2850 2000
F 0 "R902" V 2930 2000 50  0000 C CNN
F 1 "0" V 2850 2000 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 2780 2000 50  0001 C CNN
F 3 "" H 2850 2000 50  0001 C CNN
	1    2850 2000
	0    1    1    0   
$EndComp
Wire Wire Line
	3000 1800 3200 1800
Wire Wire Line
	3000 2000 3100 2000
Wire Wire Line
	3100 2000 3100 2100
Wire Wire Line
	2700 2000 2600 2000
Wire Wire Line
	2600 2000 2600 1800
Wire Wire Line
	2500 1800 2700 1800
Connection ~ 2600 1800
$Comp
L GND #PWR039
U 1 1 593B71E9
P 3100 2100
F 0 "#PWR039" H 3100 1850 50  0001 C CNN
F 1 "GND" H 3100 1950 50  0000 C CNN
F 2 "" H 3100 2100 50  0001 C CNN
F 3 "" H 3100 2100 50  0001 C CNN
	1    3100 2100
	1    0    0    -1  
$EndComp
Text Label 1150 800  0    60   ~ 0
VCC
Wire Wire Line
	1400 900  1400 800 
Wire Wire Line
	1400 800  1150 800 
Connection ~ 1400 900 
Text Label 3200 1800 2    60   ~ 0
VCC
$Comp
L C C901
U 1 1 593E1B7D
P 1050 1150
F 0 "C901" H 1075 1250 50  0000 L CNN
F 1 "0.1u" H 1075 1050 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 1088 1000 50  0001 C CNN
F 3 "" H 1050 1150 50  0000 C CNN
F 4 "Murata Electronics" H 1050 1150 60  0001 C CNN "MFG"
F 5 "GRM188R71H104KA93D" H 1050 1150 60  0001 C CNN "MPN"
	1    1050 1150
	1    0    0    -1  
$EndComp
$Comp
L C C902
U 1 1 593E1F45
P 3200 1150
F 0 "C902" H 3225 1250 50  0000 L CNN
F 1 "0.1u" H 3225 1050 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 3238 1000 50  0001 C CNN
F 3 "" H 3200 1150 50  0000 C CNN
F 4 "Murata Electronics" H 3200 1150 60  0001 C CNN "MFG"
F 5 "GRM188R71H104KA93D" H 3200 1150 60  0001 C CNN "MPN"
	1    3200 1150
	1    0    0    -1  
$EndComp
$EndSCHEMATC
