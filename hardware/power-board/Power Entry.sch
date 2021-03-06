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
Sheet 2 12
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
L CONN_01X02 J301
U 1 1 5934B3F8
P 2950 3050
F 0 "J301" H 2950 3200 50  0000 C CNN
F 1 "CONN_01X02" V 3050 3050 50  0000 C CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_Pheonix_PT-3.5mm_2pol" H 2950 3050 50  0001 C CNN
F 3 "" H 2950 3050 50  0001 C CNN
F 4 "Phoenix Contact" H 2950 3050 60  0001 C CNN "MFG"
F 5 "1984617" H 2950 3050 60  0001 C CNN "MPN"
	1    2950 3050
	-1   0    0    1   
$EndComp
$Comp
L D_TVS D302
U 1 1 5934B400
P 4000 3250
F 0 "D302" H 4000 3350 50  0000 C CNN
F 1 "36V" H 4000 3150 50  0000 C CNN
F 2 "Diodes_SMD:D_SMA_Standard" H 4000 3250 50  0001 C CNN
F 3 "" H 4000 3250 50  0001 C CNN
F 4 "Wurth Electronics Inc." H 4000 3250 60  0001 C CNN "MFG"
F 5 "824501361" H 4000 3250 60  0001 C CNN "MPN"
	1    4000 3250
	0    1    1    0   
$EndComp
$Comp
L CP1 C301
U 1 1 5934B408
P 7050 3250
F 0 "C301" H 7075 3350 50  0000 L CNN
F 1 "330u, 50V" H 7100 3150 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D10.0mm_P5.00mm" H 7050 3250 50  0001 C CNN
F 3 "" H 7050 3250 50  0001 C CNN
F 4 "Panasonic Electronic Components" H 7050 3250 60  0001 C CNN "MFG"
F 5 "ECA-1HM331" H 7050 3250 60  0001 C CNN "MPN"
	1    7050 3250
	1    0    0    -1  
$EndComp
$Comp
L Fuse F301
U 1 1 5934B417
P 3750 3000
F 0 "F301" V 3830 3000 50  0000 C CNN
F 1 "4.5A" V 3675 3000 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 3680 3000 50  0001 C CNN
F 3 "" H 3750 3000 50  0001 C CNN
F 4 "Littelfuse" V 3750 3000 60  0001 C CNN "MFG"
F 5 "0603SFS450F/32-2" V 3750 3000 60  0001 C CNN "MPN"
F 6 "OPT" V 3600 3000 60  0000 C CNN "Note"
	1    3750 3000
	0    1    1    0   
$EndComp
$Comp
L SPARK_GAP E301
U 1 1 5934B425
P 3500 3300
F 0 "E301" H 3500 3380 50  0000 C CNN
F 1 "SPARK_GAP" H 3500 3225 50  0000 C CNN
F 2 "project:Spark_Gap_8mil" H 3500 3230 50  0001 C CNN
F 3 "" V 3500 3300 50  0001 C CNN
	1    3500 3300
	0    1    1    0   
$EndComp
$Comp
L RT1720 U301
U 1 1 5934B434
P 5500 3300
F 0 "U301" H 5550 3350 60  0000 C CNN
F 1 "RT1720" H 5950 3350 60  0000 C CNN
F 2 "Housings_SSOP:MSOP-10_3x3mm_Pitch0.5mm" H 5500 3300 60  0001 C CNN
F 3 "" H 5500 3300 60  0001 C CNN
F 4 "Richtek USA Inc." H 5500 3300 60  0001 C CNN "MFG"
F 5 "RT1720GF" H 5500 3300 60  0001 C CNN "MPN"
	1    5500 3300
	1    0    0    -1  
$EndComp
$Comp
L R R302
U 1 1 5934B43B
P 4600 3450
F 0 "R302" V 4680 3450 50  0000 C CNN
F 1 "100k" V 4600 3450 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 4530 3450 50  0001 C CNN
F 3 "" H 4600 3450 50  0001 C CNN
F 4 "Yageo" V 4600 3450 60  0001 C CNN "MFG"
F 5 "RC0603JR-07100KL" V 4600 3450 60  0001 C CNN "MPN"
	1    4600 3450
	1    0    0    -1  
$EndComp
$Comp
L C C302
U 1 1 5934B442
P 4600 4150
F 0 "C302" H 4625 4250 50  0000 L CNN
F 1 "1uF" H 4625 4050 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 4638 4000 50  0001 C CNN
F 3 "" H 4600 4150 50  0001 C CNN
F 4 "Yageo" H 4600 4150 60  0001 C CNN "MFG"
F 5 "CC0805ZRY5V7BB105" H 4600 4150 60  0001 C CNN "MPN"
	1    4600 4150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 5934B449
P 4600 4500
F 0 "#PWR02" H 4600 4250 50  0001 C CNN
F 1 "GND" H 4600 4350 50  0000 C CNN
F 2 "" H 4600 4500 50  0001 C CNN
F 3 "" H 4600 4500 50  0001 C CNN
	1    4600 4500
	1    0    0    -1  
$EndComp
$Comp
L R R301
U 1 1 5934B456
P 5050 3000
F 0 "R301" V 5130 3000 50  0000 C CNN
F 1 "10m" V 5050 3000 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 4980 3000 50  0001 C CNN
F 3 "" H 5050 3000 50  0001 C CNN
F 4 "Samsung" V 5050 3000 60  0001 C CNN "MFG"
F 5 "RU3216FR010CS" V 5050 3000 60  0001 C CNN "MPN"
	1    5050 3000
	0    1    1    0   
$EndComp
$Comp
L R R303
U 1 1 5934B45D
P 6750 3800
F 0 "R303" V 6830 3800 50  0000 C CNN
F 1 "105k" V 6750 3800 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 6680 3800 50  0001 C CNN
F 3 "" H 6750 3800 50  0001 C CNN
F 4 "Yageo" V 6750 3800 60  0001 C CNN "MFG"
F 5 "RC0805FR-07105KL" V 6750 3800 60  0001 C CNN "MPN"
	1    6750 3800
	1    0    0    -1  
$EndComp
$Comp
L R R304
U 1 1 5934B464
P 6750 4200
F 0 "R304" V 6830 4200 50  0000 C CNN
F 1 "4.02k" V 6750 4200 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 6680 4200 50  0001 C CNN
F 3 "" H 6750 4200 50  0001 C CNN
F 4 "Yageo" V 6750 4200 60  0001 C CNN "MFG"
F 5 "RC0805FR-074K02L" V 6750 4200 60  0001 C CNN "MPN"
	1    6750 4200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 5934B46B
P 6750 4500
F 0 "#PWR03" H 6750 4250 50  0001 C CNN
F 1 "GND" H 6750 4350 50  0000 C CNN
F 2 "" H 6750 4500 50  0001 C CNN
F 3 "" H 6750 4500 50  0001 C CNN
	1    6750 4500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 5934B473
P 7050 3550
F 0 "#PWR04" H 7050 3300 50  0001 C CNN
F 1 "GND" H 7050 3400 50  0000 C CNN
F 2 "" H 7050 3550 50  0001 C CNN
F 3 "" H 7050 3550 50  0001 C CNN
	1    7050 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 3600 4000 3600
Wire Wire Line
	3250 3100 3250 3700
Wire Wire Line
	3150 3100 3250 3100
Connection ~ 3500 3000
Wire Wire Line
	3500 3000 3500 3100
Wire Wire Line
	3500 3600 3500 3500
Wire Wire Line
	4000 3600 4000 3400
Connection ~ 4000 3000
Wire Wire Line
	4000 2450 4000 3100
Wire Wire Line
	3900 3000 4100 3000
Wire Wire Line
	3150 3000 3600 3000
Wire Wire Line
	7050 3400 7050 3550
Connection ~ 7050 3000
Wire Wire Line
	7050 3000 7050 3100
Wire Wire Line
	6400 4400 6400 4550
Wire Wire Line
	6300 4400 6400 4400
Wire Wire Line
	6550 4300 6550 4550
Wire Wire Line
	6300 4300 6550 4300
Wire Wire Line
	6750 4350 6750 4500
Connection ~ 6750 3600
Connection ~ 6750 4000
Wire Wire Line
	6300 4000 7900 4000
Wire Wire Line
	6750 3950 6750 4050
Connection ~ 4600 4400
Wire Wire Line
	4600 3900 4600 4000
Wire Wire Line
	6750 3600 6300 3600
Connection ~ 5250 3000
Wire Wire Line
	5250 3400 5250 3000
Wire Wire Line
	5300 3400 5250 3400
Wire Wire Line
	5200 3000 6250 3000
Connection ~ 6750 3000
Wire Wire Line
	6750 2750 6750 3650
Wire Wire Line
	6450 3400 6300 3400
Wire Wire Line
	6450 3300 6450 3500
Connection ~ 4800 3000
Wire Wire Line
	4600 4300 4600 4500
Wire Wire Line
	5300 4400 4600 4400
Wire Wire Line
	4100 3900 5300 3900
Wire Wire Line
	4600 3600 4600 3700
Wire Wire Line
	4450 3700 5300 3700
Connection ~ 4600 3000
Wire Wire Line
	4600 3000 4600 3300
Wire Wire Line
	4400 3000 4900 3000
Wire Wire Line
	4800 3500 4800 3000
Wire Wire Line
	5300 3500 4800 3500
$Comp
L GND #PWR05
U 1 1 5934B4B9
P 3250 3700
F 0 "#PWR05" H 3250 3450 50  0001 C CNN
F 1 "GND" H 3250 3550 50  0000 C CNN
F 2 "" H 3250 3700 50  0001 C CNN
F 3 "" H 3250 3700 50  0001 C CNN
	1    3250 3700
	1    0    0    -1  
$EndComp
Connection ~ 3250 3600
Text HLabel 7250 3000 2    60   Output ~ 0
V_IN
Text HLabel 6400 4550 3    60   Output ~ 0
PWR_IN_GOOD
Text HLabel 6550 4550 3    60   Output ~ 0
PWR_IN_FAULT
Text Notes 7100 6850 0    60   ~ 0
Power entry, overvoltage/overcurrent/reverse-voltage protection,\ninrush current limiting
Text Notes 700  5500 0    60   ~ 0
C1 controls the time delay between detecting a fault\nand disconnecting the load.  Specifically:\nt_FAULT = C1 * 1.4V / 25uA\nFor example, a 1uF capacitor sets the fault timer to 56ms.
Text Notes 700  6050 0    60   ~ 0
R2 sets the input current limit:\nI_LIM = 50 mV / R2\nFor example, a 5 mOhm R2 would set the input current limit to 10A.\nThis should mainly target inrush current limiting; the LMZ devices\nwill limit steady-state current themselves.
Text Notes 700  6800 0    60   ~ 0
R3 and R4 set the output overvoltage threshold.  Any time the FB\nterminal is over 1.25V (typical), an OV fault condition will be detected.\nQ1 will be used to regulate the output voltage in this case, and if the\ncondition persists long enough the fault timer will shut the output off.\n\nFB pin will sink 0.3 uA typical / 1 uA max, so the divider will need\nto have low enough impedance to limit error to an acceptable level.
Text Notes 700  7050 0    60   ~ 0
Q1 should be selected carefully based on criteria listed in the RT1720\ndatasheet and the requirements of the end application
Text Notes 700  7700 0    60   ~ 0
FLT and PGOOD outputs are open-drain and may safely be pulled\nup to about 12V.  Leakage currents are 2 uA max.\n\nIf SHDN is used, be aware that it is normally pulled up to the full input\nvoltage.  If limiting its voltage externally, ensure the on-state is over\n2.5V and the off state is below 0.5V.  Typical input current at 3V is 0.4 uA.
Text HLabel 4450 3700 0    60   Input ~ 0
PWR_IN_SHDN
Connection ~ 4600 3700
Text HLabel 4750 2800 2    60   Output ~ 0
V_IN_UNLIM
Wire Wire Line
	4500 2750 4500 3000
Wire Wire Line
	4500 2800 4750 2800
Connection ~ 4500 3000
Wire Wire Line
	6700 3000 7250 3000
Text Notes 7100 5500 0    60   ~ 0
R3/R4 recommended values (based on 1% resistors):\nThere is a lot of variation in the specified performance of the voltage\nlimiting, so if targeting a highly accurate limit, you will likely have to\nhand-pick parts based on the FB performance of the particular unit.\n\nThese pre-calculated figures err on the low side, to ensure safe\noperation under worst-case device parameters.\n\n20V limit (LMZ220xx): R3 = 97.6k, R4 = 6.81k\n36V limit (LMZ36xx): R3 = 105k, R4 = 4.02k
$Comp
L PWR_FLAG #FLG06
U 1 1 593A6C03
P 6750 2750
F 0 "#FLG06" H 6750 2825 50  0001 C CNN
F 1 "PWR_FLAG" V 6800 3050 50  0000 C CNN
F 2 "" H 6750 2750 50  0001 C CNN
F 3 "" H 6750 2750 50  0001 C CNN
	1    6750 2750
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG07
U 1 1 593A7194
P 3200 3350
F 0 "#FLG07" H 3200 3425 50  0001 C CNN
F 1 "PWR_FLAG" H 3200 3500 50  0000 C CNN
F 2 "" H 3200 3350 50  0001 C CNN
F 3 "" H 3200 3350 50  0001 C CNN
	1    3200 3350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3250 3350 3200 3350
Connection ~ 3250 3350
Connection ~ 3500 3600
$Comp
L PWR_FLAG #FLG08
U 1 1 593A7954
P 4500 2750
F 0 "#FLG08" H 4500 2825 50  0001 C CNN
F 1 "PWR_FLAG" H 4500 2900 50  0000 C CNN
F 2 "" H 4500 2750 50  0001 C CNN
F 3 "" H 4500 2750 50  0001 C CNN
	1    4500 2750
	1    0    0    -1  
$EndComp
Connection ~ 4500 2800
$Comp
L D_Schottky D301
U 1 1 593E5446
P 4250 3000
F 0 "D301" H 4250 3100 50  0000 C CNN
F 1 "5A" H 4250 2900 50  0000 C CNN
F 2 "Diodes_SMD:D_SMC_Standard" H 4250 3000 50  0001 C CNN
F 3 "" H 4250 3000 50  0001 C CNN
F 4 "SMC Diode Solutions" H 4250 3000 60  0001 C CNN "MFG"
F 5 "SK520TR" H 4250 3000 60  0001 C CNN "MPN"
	1    4250 3000
	-1   0    0    1   
$EndComp
$Comp
L Q_NMOS_SSSGD Q301
U 1 1 593DA327
P 6450 3100
F 0 "Q301" H 6650 3150 50  0000 L CNN
F 1 "Q_NMOS_SSSGD" H 6650 3050 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-669_LFPAK_ThermalVias-1" H 6650 3200 50  0001 C CNN
F 3 "" H 6450 3100 50  0001 C CNN
F 4 "Nexperia USA Inc." H 6450 3100 60  0001 C CNN "MFG"
F 5 "PSMN019-100YLX" H 6450 3100 60  0001 C CNN "MPN"
	1    6450 3100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6700 2900 6750 2900
Wire Wire Line
	6700 2800 6750 2800
Connection ~ 6750 2900
Connection ~ 6750 2800
Text Label 4700 2350 2    60   ~ 0
V_IN_UNFUSED
Wire Wire Line
	4700 2350 3250 2350
Wire Wire Line
	3250 2350 3250 3000
Connection ~ 3250 3000
Text Label 4700 2450 2    60   ~ 0
V_IN_FUSED
Wire Wire Line
	4700 2450 4000 2450
Text Label 5400 3000 0    60   ~ 0
V_IN_SENSE
Text Label 7900 3500 2    60   ~ 0
V_IN_GATE_DRV
Wire Wire Line
	6450 3500 7900 3500
Connection ~ 6450 3400
Text Label 7900 4000 2    60   ~ 0
V_IN_LIM_FB
Text Label 4100 3900 0    60   ~ 0
V_IN_TMR
Connection ~ 4600 3900
$EndSCHEMATC
