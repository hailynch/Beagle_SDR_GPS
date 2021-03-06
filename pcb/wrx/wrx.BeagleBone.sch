EESchema Schematic File Version 2  date Sunday, May 10, 2015 01:16:43 PM
LIBS:wrx
LIBS:wrx-cache
EELAYER 27 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 4 7
Title "BeagleBone Interface"
Date "7 may 2015"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Label 12200 7050 0    60   ~ 0
ESCL
Text Label 12700 7150 0    60   ~ 0
ESDA
$Comp
L GND #PWR074
U 1 1 50883E8B
P 10100 7200
F 0 "#PWR074" H 10100 7200 30  0001 C CNN
F 1 "GND" H 10100 7130 30  0001 C CNN
F 2 "" H 10100 7200 60  0001 C CNN
F 3 "" H 10100 7200 60  0001 C CNN
	1    10100 7200
	1    0    0    -1  
$EndComp
NoConn ~ 11250 3100
NoConn ~ 11250 3250
NoConn ~ 11250 3400
NoConn ~ 13250 2950
NoConn ~ 13250 3100
NoConn ~ 13250 3250
NoConn ~ 11250 1750
NoConn ~ 11250 1900
NoConn ~ 13250 1750
NoConn ~ 13250 1900
NoConn ~ 7250 3400
$Comp
L GND #PWR075
U 1 1 52B50F97
P 9350 1600
F 0 "#PWR075" H 9350 1600 30  0001 C CNN
F 1 "GND" H 9350 1530 30  0001 C CNN
F 2 "" H 9350 1600 60  0000 C CNN
F 3 "" H 9350 1600 60  0000 C CNN
	1    9350 1600
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR076
U 1 1 52B50F9D
P 6650 1600
F 0 "#PWR076" H 6650 1600 30  0001 C CNN
F 1 "GND" H 6650 1530 30  0001 C CNN
F 2 "" H 6650 1600 60  0000 C CNN
F 3 "" H 6650 1600 60  0000 C CNN
	1    6650 1600
	0    1    1    0   
$EndComp
Text Label 9350 2800 0    60   ~ 0
MOSI
Text Label 3450 3900 0    60   ~ 0
G117
Text Label 7150 2800 2    60   ~ 0
CS0
Text Label 3450 2250 0    60   ~ 0
MOSI
Text Label 7150 3100 2    60   ~ 0
MISO
$Comp
L 3.3 #PWR077
U 1 1 52B5318A
P 5350 3050
F 0 "#PWR077" H 5350 3010 30  0001 C CNN
F 1 "3.3" H 5350 3160 30  0000 C CNN
F 2 "" H 5350 3050 60  0000 C CNN
F 3 "" H 5350 3050 60  0000 C CNN
	1    5350 3050
	0    1    -1   0   
$EndComp
Text Label 7150 2950 2    60   ~ 0
ESCL
Text Label 9350 2950 0    60   ~ 0
ESDA
$Comp
L 3.3 #PWR078
U 1 1 52C32EE0
P 11200 6150
F 0 "#PWR078" H 11200 6110 30  0001 C CNN
F 1 "3.3" H 11200 6260 30  0000 C CNN
F 2 "" H 11200 6150 60  0000 C CNN
F 3 "" H 11200 6150 60  0000 C CNN
	1    11200 6150
	1    0    0    -1  
$EndComp
$Comp
L R R302
U 1 1 52C333C4
P 9700 6550
F 0 "R302" V 9780 6550 40  0000 C CNN
F 1 "5K6" V 9707 6551 40  0000 C CNN
F 2 "wrx-SM0402" V 9630 6550 30  0001 C CNN
F 3 "~" H 9700 6550 30  0000 C CNN
	1    9700 6550
	1    0    0    -1  
$EndComp
$Comp
L R R301
U 1 1 52C333CA
P 9300 6550
F 0 "R301" V 9380 6550 40  0000 C CNN
F 1 "5K6" V 9307 6551 40  0000 C CNN
F 2 "wrx-SM0402" V 9230 6550 30  0001 C CNN
F 3 "~" H 9300 6550 30  0000 C CNN
	1    9300 6550
	1    0    0    -1  
$EndComp
$Comp
L EEPROM U301
U 1 1 52C32CB8
P 10600 7400
F 0 "U301" H 10550 8050 60  0000 C CNN
F 1 "EEPROM 32Kx8" H 10650 7500 60  0000 C CNN
F 2 "wrx-TSSOP8" H 10600 7400 60  0001 C CNN
F 3 "" H 10600 7400 60  0000 C CNN
	1    10600 7400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR079
U 1 1 52C331AD
P 9500 7700
F 0 "#PWR079" H 9500 7700 30  0001 C CNN
F 1 "GND" H 9500 7630 30  0001 C CNN
F 2 "" H 9500 7700 60  0001 C CNN
F 3 "" H 9500 7700 60  0001 C CNN
	1    9500 7700
	1    0    0    -1  
$EndComp
$Comp
L R R305
U 1 1 52C33CB1
P 11600 6600
F 0 "R305" V 11680 6600 40  0000 C CNN
F 1 "5K6" V 11607 6601 40  0000 C CNN
F 2 "wrx-SM0402" V 11530 6600 30  0001 C CNN
F 3 "~" H 11600 6600 30  0000 C CNN
	1    11600 6600
	1    0    0    -1  
$EndComp
$Comp
L R R303
U 1 1 52C33D21
P 12100 6600
F 0 "R303" V 12180 6600 40  0000 C CNN
F 1 "5K6" V 12107 6601 40  0000 C CNN
F 2 "wrx-SM0402" V 12030 6600 30  0001 C CNN
F 3 "~" H 12100 6600 30  0000 C CNN
	1    12100 6600
	1    0    0    -1  
$EndComp
$Comp
L C C301
U 1 1 52C35026
P 10900 6600
F 0 "C301" H 10900 6700 40  0000 L CNN
F 1 "100n" H 10906 6515 40  0000 L CNN
F 2 "wrx-SM0402" H 10938 6450 30  0001 C CNN
F 3 "~" H 10900 6600 60  0000 C CNN
	1    10900 6600
	0    -1   1    0   
$EndComp
$Comp
L GND #PWR080
U 1 1 52C350F6
P 10650 6600
F 0 "#PWR080" H 10650 6600 30  0001 C CNN
F 1 "GND" H 10650 6530 30  0001 C CNN
F 2 "" H 10650 6600 60  0001 C CNN
F 3 "" H 10650 6600 60  0001 C CNN
	1    10650 6600
	0    1    1    0   
$EndComp
NoConn ~ 9250 2200
NoConn ~ 7250 2200
Text Label 9800 6850 0    60   ~ 0
EJ1
Text Label 9800 6950 0    60   ~ 0
EJ2
Text Label 7150 2350 2    60   ~ 0
G030
Text Label 7150 2500 2    60   ~ 0
G031
Text Label 7150 2650 2    60   ~ 0
G116
Text Label 9350 2650 0    60   ~ 0
CS1
Text Label 3450 4200 0    60   ~ 0
G116
Text Label 3450 4350 0    60   ~ 0
CS1
Text GLabel 13350 2350 2    60   Input ~ 0
G112
Text GLabel 13350 2500 2    60   Input ~ 0
G026
Text GLabel 13350 2650 2    60   Input ~ 0
G114
Text GLabel 13350 2800 2    60   Input ~ 0
G201
Text GLabel 11150 2350 0    60   Input ~ 0
G113
Text GLabel 11150 2500 0    60   Input ~ 0
G023
Text GLabel 11150 2650 0    60   Input ~ 0
G115
Text GLabel 11150 2800 0    60   Input ~ 0
G027
Text GLabel 11150 2950 0    60   Input ~ 0
G022
Text Label 3450 4650 0    60   ~ 0
G031
Text Label 3450 4500 0    60   ~ 0
G030
$Comp
L XC7A35TFTG256 U1
U 2 1 54E4048F
P 3350 1850
F 0 "U1" H 3050 2100 60  0000 L BNN
F 1 "Artix-7 A35" H 3050 2000 60  0000 L BNN
F 2 "wrx-FTG256" H 3350 1850 60  0001 C CNN
F 3 "~" H 3350 1850 60  0000 C CNN
	2    3350 1850
	1    0    0    -1  
$EndComp
$Comp
L 3.3 #PWR081
U 1 1 54E40E84
P 5350 3800
F 0 "#PWR081" H 5350 3760 30  0001 C CNN
F 1 "3.3" H 5350 3910 30  0000 C CNN
F 2 "" H 5350 3800 60  0000 C CNN
F 3 "" H 5350 3800 60  0000 C CNN
	1    5350 3800
	0    1    -1   0   
$EndComp
$Comp
L 3.3 #PWR082
U 1 1 54E413EB
P 3750 2700
F 0 "#PWR082" H 3750 2660 30  0001 C CNN
F 1 "3.3" H 3750 2810 30  0000 C CNN
F 2 "" H 3750 2700 60  0000 C CNN
F 3 "" H 3750 2700 60  0000 C CNN
	1    3750 2700
	0    1    -1   0   
$EndComp
$Comp
L GND #PWR083
U 1 1 54E41961
P 5000 1850
F 0 "#PWR083" H 5000 1850 30  0001 C CNN
F 1 "GND" H 5000 1780 30  0001 C CNN
F 2 "" H 5000 1850 60  0000 C CNN
F 3 "" H 5000 1850 60  0000 C CNN
	1    5000 1850
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR084
U 1 1 54E41967
P 5000 2450
F 0 "#PWR084" H 5000 2450 30  0001 C CNN
F 1 "GND" H 5000 2380 30  0001 C CNN
F 2 "" H 5000 2450 60  0000 C CNN
F 3 "" H 5000 2450 60  0000 C CNN
	1    5000 2450
	0    -1   -1   0   
$EndComp
$Comp
L XC7A35TFTG256 U1
U 1 1 54E3FBA2
P 4950 1600
F 0 "U1" H 4650 1850 60  0000 L BNN
F 1 "Artix-7 A35" H 4650 1750 60  0000 L BNN
F 2 "wrx-FTG256" H 4950 1600 60  0001 C CNN
F 3 "~" H 4950 1600 60  0000 C CNN
	1    4950 1600
	1    0    0    -1  
$EndComp
NoConn ~ 4950 2000
NoConn ~ 4950 2150
NoConn ~ 4950 2600
NoConn ~ 4950 2750
NoConn ~ 3350 4950
NoConn ~ 3350 5100
NoConn ~ 3350 5250
NoConn ~ 3350 5400
NoConn ~ 3350 5550
NoConn ~ 3350 5700
NoConn ~ 3350 5850
NoConn ~ 3350 6000
NoConn ~ 3350 6150
NoConn ~ 3350 6300
NoConn ~ 3350 6450
NoConn ~ 3350 6600
NoConn ~ 3350 6750
NoConn ~ 3350 6900
NoConn ~ 3350 7050
NoConn ~ 3350 7200
NoConn ~ 3350 7350
NoConn ~ 3350 7500
NoConn ~ 3350 7650
NoConn ~ 3350 7800
NoConn ~ 3350 7950
NoConn ~ 3350 8100
NoConn ~ 3350 8250
NoConn ~ 3350 8400
NoConn ~ 3350 8550
NoConn ~ 3350 8700
NoConn ~ 3350 9000
NoConn ~ 3350 9150
NoConn ~ 3350 9300
$Comp
L PWR_DRV #PWR085
U 1 1 54E98A99
P 6700 1600
F 0 "#PWR085" H 6650 1700 40  0001 C CNN
F 1 "PWR_DRV" H 6650 1500 40  0001 C CNN
F 2 "~" H 6700 1600 60  0000 C CNN
F 3 "~" H 6700 1600 60  0000 C CNN
	1    6700 1600
	-1   0    0    -1  
$EndComp
$Comp
L R R304
U 1 1 54F3BC56
P 12600 6600
F 0 "R304" V 12680 6600 40  0000 C CNN
F 1 "5K6" V 12607 6601 40  0000 C CNN
F 2 "wrx-SM0402" V 12530 6600 30  0001 C CNN
F 3 "~" H 12600 6600 30  0000 C CNN
	1    12600 6600
	1    0    0    -1  
$EndComp
$Comp
L R R306
U 1 1 54F3C928
P 9300 7300
F 0 "R306" V 9380 7300 40  0000 C CNN
F 1 "0R" V 9307 7301 40  0000 C CNN
F 2 "wrx-SM0402" V 9230 7300 30  0001 C CNN
F 3 "~" H 9300 7300 30  0000 C CNN
	1    9300 7300
	1    0    0    -1  
$EndComp
$Comp
L R R307
U 1 1 54F3C949
P 9700 7300
F 0 "R307" V 9780 7300 40  0000 C CNN
F 1 "0R" V 9707 7301 40  0000 C CNN
F 2 "wrx-SM0402" V 9630 7300 30  0001 C CNN
F 3 "~" H 9700 7300 30  0000 C CNN
	1    9700 7300
	1    0    0    -1  
$EndComp
$Comp
L PWR_DRV #PWR086
U 1 1 54F3E394
P 6700 1750
F 0 "#PWR086" H 6650 1850 40  0001 C CNN
F 1 "PWR_DRV" H 6650 1650 40  0001 C CNN
F 2 "~" H 6700 1750 60  0000 C CNN
F 3 "~" H 6700 1750 60  0000 C CNN
	1    6700 1750
	-1   0    0    -1  
$EndComp
$Comp
L 3.3 #PWR087
U 1 1 54F3E39B
P 9350 1750
F 0 "#PWR087" H 9350 1710 30  0001 C CNN
F 1 "3.3" H 9350 1860 30  0000 C CNN
F 2 "" H 9350 1750 60  0000 C CNN
F 3 "" H 9350 1750 60  0000 C CNN
	1    9350 1750
	0    1    -1   0   
$EndComp
$Comp
L 3.3 #PWR088
U 1 1 54F3E4A4
P 6650 1750
F 0 "#PWR088" H 6650 1710 30  0001 C CNN
F 1 "3.3" H 6650 1860 30  0000 C CNN
F 2 "" H 6650 1750 60  0000 C CNN
F 3 "" H 6650 1750 60  0000 C CNN
	1    6650 1750
	0    -1   1    0   
$EndComp
Text Label 6850 1600 0    60   ~ 0
GND
Text Label 6850 1750 0    60   ~ 0
3.3
Text Label 6850 2050 0    60   ~ 0
5INT
NoConn ~ 13250 1600
NoConn ~ 11250 1600
Text Label 5050 3350 0    60   ~ 0
INIT
Text Label 5050 4100 0    60   ~ 0
PGM
NoConn ~ 3350 3600
NoConn ~ 3350 3750
Text Label 9350 2500 0    60   ~ 0
INIT
Text Label 9350 2350 0    60   ~ 0
PGM
NoConn ~ 3350 4800
Text Label 7150 3250 2    60   ~ 0
G117
Text Label 9350 3250 0    60   ~ 0
G015
Text Label 9350 3400 0    60   ~ 0
G014
Text GLabel 13350 3400 2    60   Input ~ 0
G129
Text Label 3450 2850 0    60   ~ 0
MISO
Text Label 3450 2550 0    60   ~ 0
G014
Text Label 3450 2400 0    60   ~ 0
G015
$Comp
L BEAGLEBONE_BLACK_26P ZB1
U 1 1 551F2993
P 10250 3250
F 0 "ZB1" H 10250 4950 60  0000 C CNN
F 1 "BEAGLEBONE_BLACK" H 10250 2900 50  0001 C CNN
F 2 "wrx-BEAGLEBONE_BLACK" H 10250 3250 60  0001 C CNN
F 3 "~" H 10250 3250 60  0000 C CNN
	1    10250 3250
	1    0    0    -1  
$EndComp
Text Label 3450 4050 0    60   ~ 0
CS0
NoConn ~ 3350 2100
NoConn ~ 3350 3000
NoConn ~ 3350 3150
NoConn ~ 3350 3300
NoConn ~ 3350 3450
NoConn ~ 3350 1950
Text GLabel 11700 6950 2    60   Input ~ 0
EWP
NoConn ~ 3350 8850
Wire Wire Line
	9250 2350 9350 2350
Wire Wire Line
	4950 4100 5050 4100
Wire Wire Line
	4950 3350 5050 3350
Wire Wire Line
	9250 1750 9350 1750
Wire Wire Line
	6700 1750 6650 1750
Wire Wire Line
	7250 1750 6750 1750
Connection ~ 12100 6200
Wire Wire Line
	12600 6200 12600 6350
Connection ~ 12600 7150
Wire Wire Line
	12600 6850 12600 7150
Connection ~ 12100 7050
Wire Wire Line
	12100 6850 12100 7050
Connection ~ 11600 6950
Wire Wire Line
	11600 6850 11600 6950
Wire Wire Line
	6700 1600 6650 1600
Wire Wire Line
	3350 4350 3450 4350
Wire Wire Line
	4950 2450 5000 2450
Wire Wire Line
	4950 1850 5000 1850
Wire Wire Line
	3350 2700 3750 2700
Wire Wire Line
	4950 3950 5350 3950
Wire Wire Line
	4950 3800 5350 3800
Wire Wire Line
	4950 3200 5350 3200
Wire Wire Line
	4950 3050 5350 3050
Wire Wire Line
	4950 2900 5050 2900
Wire Wire Line
	3350 2250 3450 2250
Wire Wire Line
	3350 2400 3450 2400
Wire Wire Line
	6750 2050 7250 2050
Wire Wire Line
	10700 6600 10650 6600
Connection ~ 11200 6600
Wire Wire Line
	11200 6600 11100 6600
Connection ~ 11600 6200
Wire Wire Line
	11600 6200 11600 6350
Wire Wire Line
	12100 6200 12100 6350
Connection ~ 11200 6200
Wire Wire Line
	11200 6150 11200 6850
Connection ~ 9500 7650
Wire Wire Line
	9500 7700 9500 7650
Wire Wire Line
	9700 7650 9700 7550
Wire Wire Line
	9300 7650 9700 7650
Wire Wire Line
	9300 7550 9300 7650
Connection ~ 10100 6200
Connection ~ 9700 6200
Wire Wire Line
	9700 6300 9700 6200
Wire Wire Line
	9300 6200 12600 6200
Wire Wire Line
	9300 6300 9300 6200
Wire Wire Line
	13250 2050 13350 2050
Wire Wire Line
	13250 2200 13350 2200
Wire Wire Line
	13250 2350 13350 2350
Wire Wire Line
	13250 2500 13350 2500
Wire Wire Line
	13250 2650 13350 2650
Wire Wire Line
	13250 2800 13350 2800
Wire Wire Line
	11150 2950 11250 2950
Wire Wire Line
	11150 2800 11250 2800
Wire Wire Line
	11150 2650 11250 2650
Wire Wire Line
	11150 2500 11250 2500
Wire Wire Line
	11150 2350 11250 2350
Wire Wire Line
	11150 2200 11250 2200
Wire Wire Line
	11150 2050 11250 2050
Wire Wire Line
	9250 2650 9350 2650
Wire Wire Line
	9250 2500 9350 2500
Wire Wire Line
	7250 2650 7150 2650
Wire Wire Line
	7150 2500 7250 2500
Wire Wire Line
	7250 2350 7150 2350
Wire Wire Line
	11100 6950 11700 6950
Wire Wire Line
	9250 2950 9350 2950
Wire Wire Line
	7150 2950 7250 2950
Wire Wire Line
	7250 3100 7150 3100
Wire Wire Line
	9350 3100 9250 3100
Wire Wire Line
	7250 2800 7150 2800
Wire Wire Line
	9350 2800 9250 2800
Wire Wire Line
	9250 1600 9350 1600
Wire Wire Line
	7250 1600 6750 1600
Wire Wire Line
	9300 6850 10150 6850
Wire Wire Line
	11100 7150 12700 7150
Wire Wire Line
	10100 7150 10100 7200
Wire Wire Line
	10150 7150 10100 7150
Wire Wire Line
	11200 6850 11100 6850
Wire Wire Line
	11100 7050 12200 7050
Wire Wire Line
	9700 6950 10150 6950
Wire Wire Line
	10100 6200 10100 7050
Wire Wire Line
	10100 7050 10150 7050
Wire Wire Line
	9700 6800 9700 7050
Connection ~ 9700 6950
Wire Wire Line
	9300 6800 9300 7050
Connection ~ 9300 6850
Wire Wire Line
	7250 3250 7150 3250
Wire Wire Line
	9250 3250 9350 3250
Wire Wire Line
	9250 3400 9350 3400
Wire Wire Line
	13250 3400 13350 3400
Wire Wire Line
	3350 2550 3450 2550
Wire Wire Line
	3350 3900 3450 3900
Wire Wire Line
	3350 2850 3450 2850
Wire Wire Line
	3350 4050 3450 4050
Wire Wire Line
	3350 4200 3450 4200
Wire Wire Line
	3350 4650 3450 4650
Wire Wire Line
	3350 4500 3450 4500
Wire Wire Line
	9250 2050 9350 2050
$Comp
L R R308
U 1 1 55370CF9
P 7850 1200
F 0 "R308" V 7930 1200 40  0000 C CNN
F 1 "0R" V 7857 1201 40  0000 C CNN
F 2 "wrx-SM0805" V 7780 1200 30  0001 C CNN
F 3 "~" H 7850 1200 30  0000 C CNN
	1    7850 1200
	0    -1   -1   0   
$EndComp
$Comp
L R R309
U 1 1 55370CFF
P 8650 1200
F 0 "R309" V 8730 1200 40  0000 C CNN
F 1 "DNL" V 8657 1201 40  0000 C CNN
F 2 "wrx-SM0805" V 8580 1200 30  0001 C CNN
F 3 "~" H 8650 1200 30  0000 C CNN
	1    8650 1200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8100 1200 8400 1200
Wire Wire Line
	8250 1200 8250 1050
Connection ~ 8250 1200
$Comp
L 5V #PWR089
U 1 1 5537102F
P 8250 950
F 0 "#PWR089" H 8250 1040 20  0001 C CNN
F 1 "5V" H 8250 1040 30  0000 C CNN
F 2 "~" H 8250 950 60  0000 C CNN
F 3 "~" H 8250 950 60  0000 C CNN
	1    8250 950 
	1    0    0    -1  
$EndComp
$Comp
L 5INT #PWR090
U 1 1 5537103E
P 7550 1150
F 0 "#PWR090" H 7550 1240 20  0001 C CNN
F 1 "5INT" H 7550 1240 30  0000 C CNN
F 2 "~" H 7550 1150 60  0000 C CNN
F 3 "~" H 7550 1150 60  0000 C CNN
	1    7550 1150
	1    0    0    -1  
$EndComp
$Comp
L 5EXT #PWR091
U 1 1 5537104D
P 8950 1150
F 0 "#PWR091" H 8950 1240 20  0001 C CNN
F 1 "5EXT" H 8950 1240 30  0000 C CNN
F 2 "~" H 8950 1150 60  0000 C CNN
F 3 "~" H 8950 1150 60  0000 C CNN
	1    8950 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 1200 7550 1200
Wire Wire Line
	7550 1200 7550 1150
Wire Wire Line
	8900 1200 8950 1200
Wire Wire Line
	8950 1200 8950 1150
$Comp
L 5INT #PWR092
U 1 1 5537115A
P 6650 2050
F 0 "#PWR092" H 6650 2140 20  0001 C CNN
F 1 "5INT" H 6650 2140 30  0000 C CNN
F 2 "~" H 6650 2050 60  0000 C CNN
F 3 "~" H 6650 2050 60  0000 C CNN
	1    6650 2050
	0    -1   -1   0   
$EndComp
$Comp
L 5INT #PWR093
U 1 1 55371161
P 9350 2050
F 0 "#PWR093" H 9350 2140 20  0001 C CNN
F 1 "5INT" H 9350 2140 30  0000 C CNN
F 2 "~" H 9350 2050 60  0000 C CNN
F 3 "~" H 9350 2050 60  0000 C CNN
	1    9350 2050
	0    1    1    0   
$EndComp
Wire Wire Line
	9250 1900 9350 1900
$Comp
L 5EXT #PWR094
U 1 1 553711D5
P 9350 1900
F 0 "#PWR094" H 9350 1990 20  0001 C CNN
F 1 "5EXT" H 9350 1990 30  0000 C CNN
F 2 "~" H 9350 1900 60  0000 C CNN
F 3 "~" H 9350 1900 60  0000 C CNN
	1    9350 1900
	0    1    1    0   
$EndComp
Wire Wire Line
	6750 1900 7250 1900
$Comp
L 5EXT #PWR095
U 1 1 553712C6
P 6650 1900
F 0 "#PWR095" H 6650 1990 20  0001 C CNN
F 1 "5EXT" H 6650 1990 30  0000 C CNN
F 2 "~" H 6650 1900 60  0000 C CNN
F 3 "~" H 6650 1900 60  0000 C CNN
	1    6650 1900
	0    -1   -1   0   
$EndComp
Text Label 6850 1900 0    60   ~ 0
5EXT
$Comp
L PWR_DRV #PWR096
U 1 1 55371EE8
P 8250 1000
F 0 "#PWR096" H 8200 1100 40  0001 C CNN
F 1 "PWR_DRV" H 8200 900 40  0001 C CNN
F 2 "~" H 8250 1000 60  0000 C CNN
F 3 "~" H 8250 1000 60  0000 C CNN
	1    8250 1000
	0    1    -1   0   
$EndComp
Wire Wire Line
	8250 1000 8250 950 
Text Label 8250 1200 0    60   ~ 0
5V
$Comp
L PWR_DRV #PWR097
U 1 1 5537278C
P 6700 1900
F 0 "#PWR097" H 6650 2000 40  0001 C CNN
F 1 "PWR_DRV" H 6650 1800 40  0001 C CNN
F 2 "~" H 6700 1900 60  0000 C CNN
F 3 "~" H 6700 1900 60  0000 C CNN
	1    6700 1900
	-1   0    0    -1  
$EndComp
$Comp
L PWR_DRV #PWR098
U 1 1 55372792
P 6700 2050
F 0 "#PWR098" H 6650 2150 40  0001 C CNN
F 1 "PWR_DRV" H 6650 1950 40  0001 C CNN
F 2 "~" H 6700 2050 60  0000 C CNN
F 3 "~" H 6700 2050 60  0000 C CNN
	1    6700 2050
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6700 2050 6650 2050
Wire Wire Line
	6700 1900 6650 1900
Text GLabel 5050 2900 2    60   Input ~ 0
SCLK
Text GLabel 9350 3100 2    60   Input ~ 0
SCLK
$Comp
L TEST_POINT TP301
U 1 1 55416156
P 5450 1700
F 0 "TP301" V 5450 1950 60  0000 C CNN
F 1 "TEST_POINT" H 5450 1500 60  0001 C CNN
F 2 "wrx-TP_VIA_600" H 5450 1700 60  0001 C CNN
F 3 "~" H 5450 1700 60  0000 C CNN
	1    5450 1700
	0    1    1    0   
$EndComp
Wire Wire Line
	4950 1700 5350 1700
Text Label 5050 1700 0    60   ~ 0
DONE
Wire Wire Line
	4950 2300 5350 2300
Text Label 5050 2300 0    60   ~ 0
TCK
Wire Wire Line
	4950 3500 5350 3500
Wire Wire Line
	4950 3650 5350 3650
Text Label 5050 3500 0    60   ~ 0
TDI
Text Label 5050 3650 0    60   ~ 0
TDO
Wire Wire Line
	4950 4250 5350 4250
Text Label 5050 4250 0    60   ~ 0
TMS
Text Label 11150 2200 2    60   ~ 0
TCK
Text Label 13350 2200 0    60   ~ 0
TMS
Text Label 11150 2050 2    60   ~ 0
TDI
Text Label 13350 2050 0    60   ~ 0
TDO
$Comp
L TEST_POINT TP302
U 1 1 554AD02A
P 5450 2300
F 0 "TP302" V 5450 2550 60  0000 C CNN
F 1 "TEST_POINT" H 5450 2100 60  0001 C CNN
F 2 "wrx-TP_1250" H 5450 2300 60  0001 C CNN
F 3 "~" H 5450 2300 60  0000 C CNN
	1    5450 2300
	0    1    1    0   
$EndComp
$Comp
L TEST_POINT TP303
U 1 1 554AD045
P 5450 3500
F 0 "TP303" V 5450 3750 60  0000 C CNN
F 1 "TEST_POINT" H 5450 3300 60  0001 C CNN
F 2 "wrx-TP_1250" H 5450 3500 60  0001 C CNN
F 3 "~" H 5450 3500 60  0000 C CNN
	1    5450 3500
	0    1    1    0   
$EndComp
$Comp
L TEST_POINT TP304
U 1 1 554AD04B
P 5450 3650
F 0 "TP304" V 5450 3900 60  0000 C CNN
F 1 "TEST_POINT" H 5450 3450 60  0001 C CNN
F 2 "wrx-TP_VIA_1250" H 5450 3650 60  0001 C CNN
F 3 "~" H 5450 3650 60  0000 C CNN
	1    5450 3650
	0    1    1    0   
$EndComp
$Comp
L TEST_POINT TP305
U 1 1 554AD065
P 5450 4250
F 0 "TP305" V 5450 4500 60  0000 C CNN
F 1 "TEST_POINT" H 5450 4050 60  0001 C CNN
F 2 "wrx-TP_VIA_1250" H 5450 4250 60  0001 C CNN
F 3 "~" H 5450 4250 60  0000 C CNN
	1    5450 4250
	0    1    1    0   
$EndComp
Text Label 3450 2700 0    60   ~ 0
PUDC
$Comp
L 3.3 #PWR099
U 1 1 554BC6AC
P 5350 3950
F 0 "#PWR099" H 5350 3910 30  0001 C CNN
F 1 "3.3" H 5350 4060 30  0000 C CNN
F 2 "" H 5350 3950 60  0000 C CNN
F 3 "" H 5350 3950 60  0000 C CNN
	1    5350 3950
	0    1    -1   0   
$EndComp
Text Label 5050 3800 0    60   ~ 0
M2
Text Label 5050 3950 0    60   ~ 0
CFGBVS
$Comp
L 3.3 #PWR0100
U 1 1 554BC6D0
P 5350 3200
F 0 "#PWR0100" H 5350 3160 30  0001 C CNN
F 1 "3.3" H 5350 3310 30  0000 C CNN
F 2 "" H 5350 3200 60  0000 C CNN
F 3 "" H 5350 3200 60  0000 C CNN
	1    5350 3200
	0    1    -1   0   
$EndComp
Text Label 5050 3200 0    60   ~ 0
M1
Text Label 5050 3050 0    60   ~ 0
M0
$EndSCHEMATC
