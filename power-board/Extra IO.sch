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
Sheet 10 11
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 3400 2550 0    60   BiDi ~ 0
PA5
Text HLabel 3400 2650 0    60   BiDi ~ 0
PA6
Text HLabel 3400 2750 0    60   BiDi ~ 0
PA7
Text HLabel 3400 3000 0    60   BiDi ~ 0
PB0
Text HLabel 3400 3100 0    60   BiDi ~ 0
PB1
Text HLabel 3400 3200 0    60   BiDi ~ 0
PB2
Text HLabel 3400 3300 0    60   BiDi ~ 0
PB3
Text HLabel 3400 3550 0    60   BiDi ~ 0
PC0
Text HLabel 3400 3650 0    60   BiDi ~ 0
PC1
Text HLabel 3400 3750 0    60   BiDi ~ 0
PC2
Text HLabel 3400 3850 0    60   BiDi ~ 0
PC3
$Comp
L CONN_01X03 J1001
U 1 1 593D1604
P 3600 2650
F 0 "J1001" H 3600 2850 50  0000 C CNN
F 1 "PA[5..7]" V 3700 2650 50  0000 C CNN
F 2 "" H 3600 2650 50  0001 C CNN
F 3 "" H 3600 2650 50  0001 C CNN
	1    3600 2650
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X04 J1002
U 1 1 593D164B
P 3600 3150
F 0 "J1002" H 3600 3400 50  0000 C CNN
F 1 "PB[0..3]" V 3700 3150 50  0000 C CNN
F 2 "" H 3600 3150 50  0001 C CNN
F 3 "" H 3600 3150 50  0001 C CNN
	1    3600 3150
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X04 J1003
U 1 1 593D1677
P 3600 3700
F 0 "J1003" H 3600 3950 50  0000 C CNN
F 1 "PC[0..3]" V 3700 3700 50  0000 C CNN
F 2 "" H 3600 3700 50  0001 C CNN
F 3 "" H 3600 3700 50  0001 C CNN
	1    3600 3700
	1    0    0    -1  
$EndComp
$EndSCHEMATC
