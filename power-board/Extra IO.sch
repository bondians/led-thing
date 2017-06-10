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
Sheet 10 10
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
L GND #PWR?
U 1 1 593BF90E
P 5750 3850
F 0 "#PWR?" H 5750 3600 50  0001 C CNN
F 1 "GND" H 5750 3700 50  0000 C CNN
F 2 "" H 5750 3850 50  0001 C CNN
F 3 "" H 5750 3850 50  0001 C CNN
	1    5750 3850
	0    1    1    0   
$EndComp
$Comp
L TEST TP?
U 1 1 593BF914
P 5750 3850
F 0 "TP?" H 5750 4150 50  0000 C BNN
F 1 "GND" H 5750 4100 50  0000 C CNN
F 2 "" H 5750 3850 50  0001 C CNN
F 3 "" H 5750 3850 50  0001 C CNN
	1    5750 3850
	0    1    1    0   
$EndComp
$Comp
L TEST TP?
U 1 1 593BF91B
P 5750 3550
F 0 "TP?" H 5750 3850 50  0000 C BNN
F 1 "ADC" H 5750 3800 50  0000 C CNN
F 2 "" H 5750 3550 50  0001 C CNN
F 3 "" H 5750 3550 50  0001 C CNN
	1    5750 3550
	0    1    1    0   
$EndComp
$Comp
L TEST TP?
U 1 1 593BF922
P 5750 3250
F 0 "TP?" H 5750 3550 50  0000 C BNN
F 1 "GPIO1" H 5750 3500 50  0000 C CNN
F 2 "" H 5750 3250 50  0001 C CNN
F 3 "" H 5750 3250 50  0001 C CNN
	1    5750 3250
	0    1    1    0   
$EndComp
$Comp
L TEST TP?
U 1 1 593BF929
P 5750 2950
F 0 "TP?" H 5750 3250 50  0000 C BNN
F 1 "GPIO0" H 5750 3200 50  0000 C CNN
F 2 "" H 5750 2950 50  0001 C CNN
F 3 "" H 5750 2950 50  0001 C CNN
	1    5750 2950
	0    1    1    0   
$EndComp
Text HLabel 5750 3550 0    60   Output ~ 0
ADC
Text HLabel 5750 3250 0    60   BiDi ~ 0
GPIO1
Text HLabel 5750 2950 0    60   BiDi ~ 0
GPIO0
$EndSCHEMATC
