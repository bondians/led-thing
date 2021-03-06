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
Sheet 5 12
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 4200 800  0    60   Input ~ 0
VCC
Text HLabel 3500 2650 0    60   BiDi ~ 0
SDA
Text HLabel 3500 2750 0    60   BiDi ~ 0
SCL
Text HLabel 6700 2000 2    60   Input ~ 0
TEMP_ALERT
$Comp
L R R606
U 1 1 5935AA87
P 4000 2400
F 0 "R606" V 4080 2400 50  0000 C CNN
F 1 "2.2k" V 4000 2400 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 3930 2400 50  0001 C CNN
F 3 "" H 4000 2400 50  0000 C CNN
F 4 "Yageo" V 4000 2400 60  0001 C CNN "MFG"
F 5 "RC0603JR-072K2L" V 4000 2400 60  0001 C CNN "MPN"
	1    4000 2400
	1    0    0    1   
$EndComp
$Comp
L R R607
U 1 1 5935AA9E
P 4200 2400
F 0 "R607" V 4280 2400 50  0000 C CNN
F 1 "2.2k" V 4200 2400 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 4130 2400 50  0001 C CNN
F 3 "" H 4200 2400 50  0000 C CNN
F 4 "Yageo" V 4200 2400 60  0001 C CNN "MFG"
F 5 "RC0603JR-072K2L" V 4200 2400 60  0001 C CNN "MPN"
	1    4200 2400
	1    0    0    1   
$EndComp
Text HLabel 6700 1800 2    60   Input ~ 0
VBAT_SENSE
Text HLabel 3500 2950 0    60   Input ~ 0
PWR_IN_FAULT
Text HLabel 7700 2100 2    60   Output ~ 0
PWR_IN_SHDN
Text HLabel 6700 1900 2    60   Output ~ 0
MAIN_REG_EN
$Comp
L Crystal_Small Y601
U 1 1 59360245
P 7750 5150
F 0 "Y601" H 7750 5250 50  0000 C CNN
F 1 "16MHz" H 7750 5050 50  0000 C CNN
F 2 "Crystals:Crystal_SMD_Abracon_ABM3-2pin_5.0x3.2mm_HandSoldering" H 7750 5150 50  0001 C CNN
F 3 "" H 7750 5150 50  0000 C CNN
F 4 "Abracon" H 7750 5150 60  0001 C CNN "MFG"
F 5 "ABM3-16.000MHZ-B2-T" H 7750 5150 60  0001 C CNN "MPN"
F 6 "DNS" H 7750 4950 60  0000 C CNN "Note"
	1    7750 5150
	1    0    0    -1  
$EndComp
$Comp
L C C607
U 1 1 5936036A
P 7500 5550
F 0 "C607" H 7525 5650 50  0000 L CNN
F 1 "26p" H 7525 5450 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 7538 5400 50  0001 C CNN
F 3 "" H 7500 5550 50  0000 C CNN
F 4 "Johanson Dielectrics Inc." H 7500 5550 60  0001 C CNN "MFG"
F 5 "500R15N270KV4T" H 7500 5550 60  0001 C CNN "MPN"
	1    7500 5550
	1    0    0    -1  
$EndComp
Text Notes 1650 5700 0    60   ~ 0
TODO: tag-connect instead of/in addition to ISP header
$Comp
L C C602
U 1 1 59360F97
P 4800 1050
F 0 "C602" H 4825 1150 50  0000 L CNN
F 1 "0.1u" H 4825 950 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 4838 900 50  0001 C CNN
F 3 "" H 4800 1050 50  0000 C CNN
F 4 "Murata Electronics" H 4800 1050 60  0001 C CNN "MFG"
F 5 "GRM188R71H104KA93D" H 4800 1050 60  0001 C CNN "MPN"
	1    4800 1050
	1    0    0    -1  
$EndComp
$Comp
L CP1 C601
U 1 1 59361010
P 4500 1050
F 0 "C601" H 4525 1150 50  0000 L CNN
F 1 "10u" H 4525 950 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 4500 1050 50  0001 C CNN
F 3 "" H 4500 1050 50  0000 C CNN
F 4 "Samsung" H 4500 1050 60  0001 C CNN "MFG"
F 5 "CL21A106KOQNNNG" H 4500 1050 60  0001 C CNN "MPN"
	1    4500 1050
	1    0    0    -1  
$EndComp
$Comp
L L_Small FB601
U 1 1 593610B7
P 5900 800
F 0 "FB601" H 5930 840 50  0000 L CNN
F 1 "FB" H 5930 760 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 5900 800 50  0001 C CNN
F 3 "" H 5900 800 50  0000 C CNN
F 4 "TDK" H 5900 800 60  0001 C CNN "MFG"
F 5 "MPZ2012S102AT000" H 5900 800 60  0001 C CNN "MPN"
	1    5900 800 
	0    -1   -1   0   
$EndComp
Text Label 4450 2500 0    60   ~ 0
XTAL1
Text Label 4450 2400 0    60   ~ 0
XTAL2
Text Label 7050 5150 0    60   ~ 0
XTAL1
Text Label 8450 5150 2    60   ~ 0
XTAL2
$Comp
L GND #PWR021
U 1 1 593622D5
P 7750 5900
F 0 "#PWR021" H 7750 5650 50  0001 C CNN
F 1 "GND" H 7750 5750 50  0000 C CNN
F 2 "" H 7750 5900 50  0000 C CNN
F 3 "" H 7750 5900 50  0000 C CNN
	1    7750 5900
	1    0    0    -1  
$EndComp
Text Label 1950 6150 0    60   ~ 0
RESET
$Comp
L GND #PWR022
U 1 1 5936266D
P 3400 6250
F 0 "#PWR022" H 3400 6000 50  0001 C CNN
F 1 "GND" H 3400 6100 50  0000 C CNN
F 2 "" H 3400 6250 50  0000 C CNN
F 3 "" H 3400 6250 50  0000 C CNN
	1    3400 6250
	1    0    0    -1  
$EndComp
Text Label 3650 5950 2    60   ~ 0
VCC
Text Label 3950 700  0    60   ~ 0
VCC
Text Label 3250 2150 0    60   ~ 0
VCC
Text Label 5950 6200 0    60   ~ 0
RESET
Text Label 5950 5700 0    60   ~ 0
VCC
$Comp
L GND #PWR023
U 1 1 59364996
P 6300 7000
F 0 "#PWR023" H 6300 6750 50  0001 C CNN
F 1 "GND" H 6300 6850 50  0000 C CNN
F 2 "" H 6300 7000 50  0000 C CNN
F 3 "" H 6300 7000 50  0000 C CNN
	1    6300 7000
	1    0    0    -1  
$EndComp
Text HLabel 3500 2850 0    60   Input ~ 0
PWR_IN_GOOD
$Comp
L R R605
U 1 1 5936C836
P 3800 2400
F 0 "R605" V 3880 2400 50  0000 C CNN
F 1 "100k" V 3800 2400 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 3730 2400 50  0001 C CNN
F 3 "" H 3800 2400 50  0000 C CNN
F 4 "Yageo" V 3800 2400 60  0001 C CNN "MFG"
F 5 "RC0603JR-07100KL" V 3800 2400 60  0001 C CNN "MPN"
	1    3800 2400
	1    0    0    1   
$EndComp
Text HLabel 7700 3600 2    60   Input ~ 0
MOSI
Text HLabel 7700 3700 2    60   Output ~ 0
MISO
Text HLabel 7700 3800 2    60   Input ~ 0
SCK
Text HLabel 7700 3500 2    60   Input ~ 0
SS
Text HLabel 7700 2200 2    60   Output ~ 0
SPI_INT
Connection ~ 4000 2150
Wire Wire Line
	4200 2150 4200 2250
Connection ~ 3800 2850
Wire Wire Line
	3800 2550 3800 2850
Wire Wire Line
	3500 2850 4900 2850
Connection ~ 3800 2150
Wire Wire Line
	3600 2150 3600 2250
Connection ~ 3600 2950
Wire Wire Line
	3600 2550 3600 2950
Wire Wire Line
	3500 2950 4900 2950
Connection ~ 3600 2150
Wire Wire Line
	6300 6900 6300 7000
Wire Wire Line
	6300 5700 5950 5700
Wire Wire Line
	6300 5800 6300 5700
Connection ~ 6300 6200
Wire Wire Line
	6300 6100 6300 6300
Wire Wire Line
	5950 6200 6400 6200
Wire Wire Line
	3800 2150 3800 2250
Connection ~ 4000 2750
Wire Wire Line
	4000 2750 4000 2550
Connection ~ 4200 2650
Wire Wire Line
	4200 2550 4200 2650
Wire Wire Line
	4000 2150 4000 2250
Wire Wire Line
	3250 2150 4200 2150
Wire Wire Line
	3500 2650 4900 2650
Wire Wire Line
	3500 2750 4900 2750
Wire Wire Line
	1950 5950 2600 5950
Wire Wire Line
	3100 5950 3650 5950
Wire Wire Line
	3400 6150 3100 6150
Wire Wire Line
	3400 6250 3400 6150
Wire Wire Line
	1950 6150 2600 6150
Connection ~ 7750 5800
Wire Wire Line
	7750 5900 7750 5800
Wire Wire Line
	7500 5800 7500 5700
Wire Wire Line
	7500 5800 8000 5800
Wire Wire Line
	8000 5800 8000 5700
Connection ~ 7500 5150
Wire Wire Line
	7500 5400 7500 5150
Connection ~ 8000 5150
Wire Wire Line
	8000 5400 8000 5150
Wire Wire Line
	7050 5150 7650 5150
Wire Wire Line
	7850 5150 8450 5150
Wire Wire Line
	4450 2500 4900 2500
Wire Wire Line
	4450 2400 4900 2400
$Comp
L TEST TP601
U 1 1 593AA44A
P 6400 6200
F 0 "TP601" H 6400 6500 50  0000 C BNN
F 1 "RESET" H 6400 6450 50  0000 C CNN
F 2 "Connectors:PINTST" H 6400 6200 50  0001 C CNN
F 3 "" H 6400 6200 50  0001 C CNN
	1    6400 6200
	0    1    1    0   
$EndComp
$Comp
L R R604
U 1 1 593A329F
P 3600 2400
F 0 "R604" V 3680 2400 50  0000 C CNN
F 1 "100k" V 3600 2400 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 3530 2400 50  0001 C CNN
F 3 "" H 3600 2400 50  0000 C CNN
F 4 "Yageo" V 3600 2400 60  0001 C CNN "MFG"
F 5 "RC0603JR-07100KL" V 3600 2400 60  0001 C CNN "MPN"
	1    3600 2400
	1    0    0    1   
$EndComp
$Comp
L R R622
U 1 1 593A4899
P 6300 5950
F 0 "R622" V 6380 5950 50  0000 C CNN
F 1 "10k" V 6300 5950 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 6230 5950 50  0001 C CNN
F 3 "" H 6300 5950 50  0000 C CNN
F 4 "Vishay" V 6300 5950 60  0001 C CNN "MFG"
F 5 "CRCW060310K0FKEA" V 6300 5950 60  0001 C CNN "MPN"
	1    6300 5950
	1    0    0    -1  
$EndComp
$Comp
L CP1 C606
U 1 1 593A501B
P 6700 1050
F 0 "C606" H 6725 1150 50  0000 L CNN
F 1 "10u" H 6725 950 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 6700 1050 50  0001 C CNN
F 3 "" H 6700 1050 50  0000 C CNN
F 4 "Samsung" H 6700 1050 60  0001 C CNN "MFG"
F 5 "CL21A106KOQNNNG" H 6700 1050 60  0001 C CNN "MPN"
	1    6700 1050
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH SW601
U 1 1 593B5C51
P 6300 6600
F 0 "SW601" H 6450 6710 50  0000 C CNN
F 1 "RESET" H 6300 6520 50  0000 C CNN
F 2 "Buttons_Switches_SMD:SW_SPST_EVPBF" H 6300 6600 50  0001 C CNN
F 3 "" H 6300 6600 50  0000 C CNN
F 4 "Panasonic Electronic Components" H 6300 6600 60  0001 C CNN "MFG"
F 5 "EVP-BFAC1A000" H 6300 6600 60  0001 C CNN "MPN"
	1    6300 6600
	0    -1   -1   0   
$EndComp
$Comp
L ATXMEGA32A4U-AU U601
U 1 1 593B8575
P 5800 2800
F 0 "U601" H 5050 4000 50  0000 L BNN
F 1 "ATXMEGA32A4U-AU" H 6150 1550 50  0000 L BNN
F 2 "Housings_QFP:TQFP-44_10x10mm_Pitch0.8mm" H 5800 2800 50  0001 C CIN
F 3 "" H 5800 2800 50  0001 C CNN
F 4 "Microchip Technology" H 5800 2800 60  0001 C CNN "MFG"
F 5 "ATXMEGA32A4U-AU" H 5800 2800 60  0001 C CNN "MPN"
	1    5800 2800
	1    0    0    -1  
$EndComp
Text Label 4450 1800 0    60   ~ 0
RESET
Wire Wire Line
	4900 1800 4450 1800
Text Label 4450 1900 0    60   ~ 0
PDI_DATA
Wire Wire Line
	4450 1900 4900 1900
Text Label 1950 5950 0    60   ~ 0
PDI_DATA
$Comp
L C C603
U 1 1 593B9499
P 5100 1050
F 0 "C603" H 5125 1150 50  0000 L CNN
F 1 "0.1u" H 5125 950 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 5138 900 50  0001 C CNN
F 3 "" H 5100 1050 50  0000 C CNN
F 4 "Murata Electronics" H 5100 1050 60  0001 C CNN "MFG"
F 5 "GRM188R71H104KA93D" H 5100 1050 60  0001 C CNN "MPN"
	1    5100 1050
	1    0    0    -1  
$EndComp
$Comp
L C C604
U 1 1 593B9516
P 5400 1050
F 0 "C604" H 5425 1150 50  0000 L CNN
F 1 "0.1u" H 5425 950 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 5438 900 50  0001 C CNN
F 3 "" H 5400 1050 50  0000 C CNN
F 4 "Murata Electronics" H 5400 1050 60  0001 C CNN "MFG"
F 5 "GRM188R71H104KA93D" H 5400 1050 60  0001 C CNN "MPN"
	1    5400 1050
	1    0    0    -1  
$EndComp
$Comp
L C C605
U 1 1 593B9A1E
P 6400 1050
F 0 "C605" H 6425 1150 50  0000 L CNN
F 1 "0.1u" H 6425 950 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 6438 900 50  0001 C CNN
F 3 "" H 6400 1050 50  0000 C CNN
F 4 "Murata Electronics" H 6400 1050 60  0001 C CNN "MFG"
F 5 "GRM188R71H104KA93D" H 6400 1050 60  0001 C CNN "MPN"
	1    6400 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 700  6100 1500
Wire Wire Line
	6000 800  6700 800 
Wire Wire Line
	6700 800  6700 900 
Wire Wire Line
	5900 1400 5900 1500
Wire Wire Line
	5700 1400 5900 1400
Wire Wire Line
	5700 800  5700 1500
Wire Wire Line
	5800 1500 5800 1400
Connection ~ 5800 1400
Connection ~ 6100 800 
Wire Wire Line
	4200 800  5800 800 
Connection ~ 5700 1400
Connection ~ 5700 800 
$Comp
L GND #PWR024
U 1 1 593BA045
P 4500 1400
F 0 "#PWR024" H 4500 1150 50  0001 C CNN
F 1 "GND" H 4500 1250 50  0000 C CNN
F 2 "" H 4500 1400 50  0001 C CNN
F 3 "" H 4500 1400 50  0001 C CNN
	1    4500 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 1300 5400 1300
Wire Wire Line
	5400 1300 5400 1200
Connection ~ 4800 1300
Wire Wire Line
	5100 1300 5100 1200
Connection ~ 5100 1300
$Comp
L GND #PWR025
U 1 1 593BA4A0
P 6700 1400
F 0 "#PWR025" H 6700 1150 50  0001 C CNN
F 1 "GND" H 6700 1250 50  0000 C CNN
F 2 "" H 6700 1400 50  0001 C CNN
F 3 "" H 6700 1400 50  0001 C CNN
	1    6700 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 1200 6700 1400
Wire Wire Line
	6700 1300 6400 1300
Wire Wire Line
	6400 1300 6400 1200
Connection ~ 6700 1300
Wire Wire Line
	6400 900  6400 800 
Connection ~ 6400 800 
Wire Wire Line
	5400 900  5400 800 
Connection ~ 5400 800 
Wire Wire Line
	5100 800  5100 900 
Connection ~ 5100 800 
Wire Wire Line
	4800 900  4800 800 
Connection ~ 4800 800 
Wire Wire Line
	4500 900  4500 800 
Connection ~ 4500 800 
Wire Wire Line
	4500 1200 4500 1400
Wire Wire Line
	4800 1300 4800 1200
Connection ~ 4500 1300
Wire Wire Line
	3950 700  4300 700 
Wire Wire Line
	4300 700  4300 800 
Connection ~ 4300 800 
$Comp
L R R602
U 1 1 593BC618
P 6950 2200
F 0 "R602" V 7030 2200 50  0000 C CNN
F 1 "68" V 6950 2200 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 6880 2200 50  0001 C CNN
F 3 "" H 6950 2200 50  0001 C CNN
F 4 "Yageo" V 6950 2200 60  0001 C CNN "MFG"
F 5 "RC0603JR-0768RL" V 6950 2200 60  0001 C CNN "MPN"
	1    6950 2200
	0    1    1    0   
$EndComp
Text HLabel 4900 3800 0    60   BiDi ~ 0
USB_DP
Text HLabel 4900 3700 0    60   BiDi ~ 0
USB_DM
Text HLabel 4900 3100 0    60   Input ~ 0
LED_CLK
Text HLabel 4900 3200 0    60   Input ~ 0
LED_D0
Text HLabel 4900 3300 0    60   Input ~ 0
LED_D1
Text HLabel 4900 3400 0    60   Input ~ 0
LED_D2
Text HLabel 4900 3500 0    60   Input ~ 0
LED_D3
Text HLabel 4900 3600 0    60   Input ~ 0
LED_D4
Wire Wire Line
	7100 3800 6700 3800
Wire Wire Line
	6800 3700 6700 3700
Wire Wire Line
	6700 3600 7100 3600
Wire Wire Line
	6800 3500 6700 3500
Wire Wire Line
	6800 2200 6700 2200
Wire Wire Line
	7100 2200 7700 2200
Wire Wire Line
	7700 3600 7400 3600
Wire Wire Line
	7400 3800 7700 3800
Wire Wire Line
	7100 3500 7700 3500
Wire Wire Line
	7700 3700 7100 3700
$Comp
L CONN_02X03 J601
U 1 1 593C0D4E
P 2850 6050
F 0 "J601" H 2850 6250 50  0000 C CNN
F 1 "PDI" H 2850 5850 50  0000 C CNN
F 2 "Connectors:Tag-Connect_TC2030-IDC-NL" H 2850 4850 50  0001 C CNN
F 3 "" H 2850 4850 50  0001 C CNN
	1    2850 6050
	1    0    0    -1  
$EndComp
NoConn ~ 2600 6050
NoConn ~ 3100 6050
$Comp
L GND #PWR026
U 1 1 593C1E47
P 5800 4200
F 0 "#PWR026" H 5800 3950 50  0001 C CNN
F 1 "GND" H 5800 4050 50  0000 C CNN
F 2 "" H 5800 4200 50  0001 C CNN
F 3 "" H 5800 4200 50  0001 C CNN
	1    5800 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 4100 5650 4150
Wire Wire Line
	5650 4150 5950 4150
Wire Wire Line
	5950 4150 5950 4100
Wire Wire Line
	5800 4200 5800 4150
Connection ~ 5800 4150
Wire Wire Line
	5850 4150 5850 4100
Connection ~ 5850 4150
Wire Wire Line
	5750 4100 5750 4150
Connection ~ 5750 4150
Wire Wire Line
	7100 3400 6700 3400
Wire Wire Line
	6800 3300 6700 3300
Wire Wire Line
	6700 3200 7100 3200
Wire Wire Line
	6800 3100 6700 3100
Wire Wire Line
	7700 3200 7400 3200
Wire Wire Line
	7400 3400 7700 3400
Wire Wire Line
	7100 3100 7700 3100
Wire Wire Line
	7700 3300 7100 3300
Wire Wire Line
	7100 2950 6700 2950
Wire Wire Line
	6800 2850 6700 2850
Wire Wire Line
	6700 2750 7100 2750
Wire Wire Line
	6800 2650 6700 2650
Wire Wire Line
	7700 2750 7400 2750
Wire Wire Line
	7400 2950 7700 2950
Wire Wire Line
	7100 2650 7700 2650
Wire Wire Line
	7700 2850 7100 2850
Wire Wire Line
	7100 2500 6700 2500
Wire Wire Line
	6800 2400 6700 2400
Wire Wire Line
	6700 2300 7100 2300
Wire Wire Line
	7700 2300 7400 2300
Wire Wire Line
	7400 2500 7700 2500
Wire Wire Line
	7700 2400 7100 2400
$Comp
L R R603
U 1 1 593C7618
P 7250 2300
F 0 "R603" V 7330 2300 50  0000 C CNN
F 1 "68" V 7250 2300 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 7180 2300 50  0001 C CNN
F 3 "" H 7250 2300 50  0001 C CNN
F 4 "DNS" V 7250 2550 60  0000 C CNN "Note"
F 5 "Yageo" V 7250 2300 60  0001 C CNN "MFG"
F 6 "RC0603JR-0768RL" V 7250 2300 60  0001 C CNN "MPN"
	1    7250 2300
	0    1    1    0   
$EndComp
Text HLabel 7700 2300 2    60   BiDi ~ 0
PA5
Text HLabel 7700 2400 2    60   BiDi ~ 0
PA6
Text HLabel 7700 2500 2    60   BiDi ~ 0
PA7
Text HLabel 7700 2650 2    60   BiDi ~ 0
PB0
Text HLabel 7700 2750 2    60   BiDi ~ 0
PB1
Text HLabel 7700 2850 2    60   BiDi ~ 0
PB2
Text HLabel 7700 2950 2    60   BiDi ~ 0
PB3
Text HLabel 7700 3100 2    60   BiDi ~ 0
PC0
Text HLabel 7700 3200 2    60   BiDi ~ 0
PC1
$Comp
L PWR_FLAG #FLG027
U 1 1 593DC361
P 6100 700
F 0 "#FLG027" H 6100 775 50  0001 C CNN
F 1 "PWR_FLAG" H 6100 850 50  0000 C CNN
F 2 "" H 6100 700 50  0001 C CNN
F 3 "" H 6100 700 50  0001 C CNN
	1    6100 700 
	1    0    0    -1  
$EndComp
$Comp
L R R608
U 1 1 593CA6D2
P 6950 2400
F 0 "R608" V 7030 2400 50  0000 C CNN
F 1 "68" V 6950 2400 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 6880 2400 50  0001 C CNN
F 3 "" H 6950 2400 50  0001 C CNN
F 4 "DNS" V 6950 2650 60  0000 C CNN "Note"
F 5 "Yageo" V 6950 2400 60  0001 C CNN "MFG"
F 6 "RC0603JR-0768RL" V 6950 2400 60  0001 C CNN "MPN"
	1    6950 2400
	0    1    1    0   
$EndComp
$Comp
L R R609
U 1 1 593CA73D
P 7250 2500
F 0 "R609" V 7330 2500 50  0000 C CNN
F 1 "68" V 7250 2500 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 7180 2500 50  0001 C CNN
F 3 "" H 7250 2500 50  0001 C CNN
F 4 "DNS" V 7250 2750 60  0000 C CNN "Note"
F 5 "Yageo" V 7250 2500 60  0001 C CNN "MFG"
F 6 "RC0603JR-0768RL" V 7250 2500 60  0001 C CNN "MPN"
	1    7250 2500
	0    1    1    0   
$EndComp
$Comp
L R R610
U 1 1 593CA7AA
P 6950 2650
F 0 "R610" V 7030 2650 50  0000 C CNN
F 1 "68" V 6950 2650 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 6880 2650 50  0001 C CNN
F 3 "" H 6950 2650 50  0001 C CNN
F 4 "DNS" V 6950 2900 60  0000 C CNN "Note"
F 5 "Yageo" V 6950 2650 60  0001 C CNN "MFG"
F 6 "RC0603JR-0768RL" V 6950 2650 60  0001 C CNN "MPN"
	1    6950 2650
	0    1    1    0   
$EndComp
$Comp
L R R611
U 1 1 593CA81D
P 7250 2750
F 0 "R611" V 7330 2750 50  0000 C CNN
F 1 "68" V 7250 2750 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 7180 2750 50  0001 C CNN
F 3 "" H 7250 2750 50  0001 C CNN
F 4 "DNS" V 7250 3000 60  0000 C CNN "Note"
F 5 "Yageo" V 7250 2750 60  0001 C CNN "MFG"
F 6 "RC0603JR-0768RL" V 7250 2750 60  0001 C CNN "MPN"
	1    7250 2750
	0    1    1    0   
$EndComp
$Comp
L R R612
U 1 1 593CA891
P 6950 2850
F 0 "R612" V 7030 2850 50  0000 C CNN
F 1 "68" V 6950 2850 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 6880 2850 50  0001 C CNN
F 3 "" H 6950 2850 50  0001 C CNN
F 4 "DNS" V 6950 3100 60  0000 C CNN "Note"
F 5 "Yageo" V 6950 2850 60  0001 C CNN "MFG"
F 6 "RC0603JR-0768RL" V 6950 2850 60  0001 C CNN "MPN"
	1    6950 2850
	0    1    1    0   
$EndComp
$Comp
L R R613
U 1 1 593CA909
P 7250 2950
F 0 "R613" V 7330 2950 50  0000 C CNN
F 1 "68" V 7250 2950 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 7180 2950 50  0001 C CNN
F 3 "" H 7250 2950 50  0001 C CNN
F 4 "DNS" V 7250 3200 60  0000 C CNN "Note"
F 5 "Yageo" V 7250 2950 60  0001 C CNN "MFG"
F 6 "RC0603JR-0768RL" V 7250 2950 60  0001 C CNN "MPN"
	1    7250 2950
	0    1    1    0   
$EndComp
$Comp
L R R614
U 1 1 593CA985
P 6950 3100
F 0 "R614" V 7030 3100 50  0000 C CNN
F 1 "68" V 6950 3100 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 6880 3100 50  0001 C CNN
F 3 "" H 6950 3100 50  0001 C CNN
F 4 "DNS" V 6950 3350 60  0000 C CNN "Note"
F 5 "Yageo" V 6950 3100 60  0001 C CNN "MFG"
F 6 "RC0603JR-0768RL" V 6950 3100 60  0001 C CNN "MPN"
	1    6950 3100
	0    1    1    0   
$EndComp
$Comp
L R R615
U 1 1 593CAA07
P 7250 3200
F 0 "R615" V 7330 3200 50  0000 C CNN
F 1 "68" V 7250 3200 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 7180 3200 50  0001 C CNN
F 3 "" H 7250 3200 50  0001 C CNN
F 4 "DNS" V 7250 3450 60  0000 C CNN "Note"
F 5 "Yageo" V 7250 3200 60  0001 C CNN "MFG"
F 6 "RC0603JR-0768RL" V 7250 3200 60  0001 C CNN "MPN"
	1    7250 3200
	0    1    1    0   
$EndComp
$Comp
L R R616
U 1 1 593CAA89
P 6950 3300
F 0 "R616" V 7030 3300 50  0000 C CNN
F 1 "68" V 6950 3300 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 6880 3300 50  0001 C CNN
F 3 "" H 6950 3300 50  0001 C CNN
F 4 "Yageo" V 6950 3300 60  0001 C CNN "MFG"
F 5 "RC0603JR-0768RL" V 6950 3300 60  0001 C CNN "MPN"
	1    6950 3300
	0    1    1    0   
$EndComp
$Comp
L R R617
U 1 1 593CAB0E
P 7250 3400
F 0 "R617" V 7330 3400 50  0000 C CNN
F 1 "68" V 7250 3400 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 7180 3400 50  0001 C CNN
F 3 "" H 7250 3400 50  0001 C CNN
F 4 "Yageo" V 7250 3400 60  0001 C CNN "MFG"
F 5 "RC0603JR-0768RL" V 7250 3400 60  0001 C CNN "MPN"
	1    7250 3400
	0    1    1    0   
$EndComp
$Comp
L R R618
U 1 1 593CAC18
P 6950 3500
F 0 "R618" V 7030 3500 50  0000 C CNN
F 1 "68" V 6950 3500 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 6880 3500 50  0001 C CNN
F 3 "" H 6950 3500 50  0001 C CNN
F 4 "Yageo" V 6950 3500 60  0001 C CNN "MFG"
F 5 "RC0603JR-0768RL" V 6950 3500 60  0001 C CNN "MPN"
	1    6950 3500
	0    1    1    0   
$EndComp
$Comp
L R R619
U 1 1 593CAC9D
P 7250 3600
F 0 "R619" V 7330 3600 50  0000 C CNN
F 1 "68" V 7250 3600 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 7180 3600 50  0001 C CNN
F 3 "" H 7250 3600 50  0001 C CNN
F 4 "Yageo" V 7250 3600 60  0001 C CNN "MFG"
F 5 "RC0603JR-0768RL" V 7250 3600 60  0001 C CNN "MPN"
	1    7250 3600
	0    1    1    0   
$EndComp
$Comp
L R R620
U 1 1 593CAD1D
P 6950 3700
F 0 "R620" V 7030 3700 50  0000 C CNN
F 1 "68" V 6950 3700 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 6880 3700 50  0001 C CNN
F 3 "" H 6950 3700 50  0001 C CNN
F 4 "Yageo" V 6950 3700 60  0001 C CNN "MFG"
F 5 "RC0603JR-0768RL" V 6950 3700 60  0001 C CNN "MPN"
	1    6950 3700
	0    1    1    0   
$EndComp
$Comp
L R R621
U 1 1 593CAD9D
P 7250 3800
F 0 "R621" V 7330 3800 50  0000 C CNN
F 1 "68" V 7250 3800 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 7180 3800 50  0001 C CNN
F 3 "" H 7250 3800 50  0001 C CNN
F 4 "Yageo" V 7250 3800 60  0001 C CNN "MFG"
F 5 "RC0603JR-0768RL" V 7250 3800 60  0001 C CNN "MPN"
	1    7250 3800
	0    1    1    0   
$EndComp
$Comp
L C C608
U 1 1 593CD6F1
P 8000 5550
F 0 "C608" H 8025 5650 50  0000 L CNN
F 1 "26p" H 8025 5450 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 8038 5400 50  0001 C CNN
F 3 "" H 8000 5550 50  0000 C CNN
F 4 "Johanson Dielectrics Inc." H 8000 5550 60  0001 C CNN "MFG"
F 5 "500R15N270KV4T" H 8000 5550 60  0001 C CNN "MPN"
	1    8000 5550
	1    0    0    -1  
$EndComp
Text HLabel 7700 3300 2    60   Output ~ 0
MASTER_SYNC
Text HLabel 7700 3400 2    60   Output ~ 0
SLAVE_SYNC
$Comp
L R R601
U 1 1 59A33E51
P 7250 2100
F 0 "R601" V 7330 2100 50  0000 C CNN
F 1 "68" V 7250 2100 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 7180 2100 50  0001 C CNN
F 3 "" H 7250 2100 50  0001 C CNN
F 4 "DNS" V 7250 2350 60  0000 C CNN "Note"
F 5 "Yageo" V 7250 2100 60  0001 C CNN "MFG"
F 6 "RC0603JR-0768RL" V 7250 2100 60  0001 C CNN "MPN"
	1    7250 2100
	0    1    1    0   
$EndComp
Wire Wire Line
	7700 2100 7400 2100
Wire Wire Line
	7100 2100 6700 2100
$EndSCHEMATC
