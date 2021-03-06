/*
--------------------------------------------------------------------------------
This library is free software; you can redistribute it and/or
modify it under the terms of the GNU Library General Public
License as published by the Free Software Foundation; either
version 2 of the License, or (at your option) any later version.
This library is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
Library General Public License for more details.
You should have received a copy of the GNU Library General Public
License along with this library; if not, write to the
Free Software Foundation, Inc., 51 Franklin St, Fifth Floor,
Boston, MA  02110-1301, USA.
--------------------------------------------------------------------------------
*/

// Copyright (c) 2014 John Seamons, ZL/KF6VO

struct dx_t {
	float freq;
	const char *mode;
	const char *text;
	const char *notes;
};

// fixme: read from file, database etc.
// fixme: display depending on rx time-of-day

dx_t dx[] = {
	{    11.9,	"CWN",	"Alpha NAV" },
	{    12.65,	"CWN",	"Alpha NAV" },
	{    14.88,	"CWN",	"Alpha NAV" },
	{    15.25,	"LSB",	"Alpha WB" },
//	{    16.1,	"CW",	"MSK?", "1PM lasted one day; wide signal" },
	{    16.3,	"CW",	"VTX1 IND" },
	{    17.0,	"CW",	"VTX2 IND" },
	{    18.1,	"CWN",	"RDL RUS", "fsk" },
	{    18.2,	"CWN",	"VTX3 IND" },
//	{    19.1,	"CW",	"JJI2? JPN", "5PM" },
	{    19.8,	"CW",	"NWC AUS <br> (daytime QRM)" },
	{    20.27,	"CWN",	"ICV IT <br> (morning)", "morning before 7AM QRM" },
	{    20.5,	"CWN",	"3SA/3SB? CHN fsk <br> Beta TS" },
	{    21.1,	"CWN",	"RDL RUS", "Vladivostok?" },
	{    21.4,	"CW",	"NPM HI" },
//	{    21.5,	"CWN",	"? fsk <br> (1900Z)" },
//	{    21.6,	"CWN",	"carrier <br> (10PM)" },
	{    22.2,	"CWN",	"JJI JPN" },
	{    22.4,	"CWN",	"MSK?", "11PM" },
	{    22.6,	"CW",	"HWU FR <br> (trace)", "huge sig on WebSDR" },
	{    23.4,	"CW",	"DHO38 GER <br> (trace)" },
	{    24.0,	"CW",	"NAA MA" },
	{    24.1,	"CWN",	"? fsk", "no listing, 24.05/24.1, RU-style" },
//	{    24.5,	"CWN",	"? weak fsk" },
	{    24.8,	"CWN",	"NLK WA" },
	{    25.0,	"CWN",	"3SA/3SB? CHN fsk <br> Beta TS" },
	{    25.2,	"CW",	"NLM4 ND" },
	{    26.0,	"CWN",	"? fsk <br> (morning)" },
	{    26.7,	"CWN",	"? fsk <br> (morning)" },
	{    28.0,	"CW",	"3SB/3SQ? CHN msk <br> (morning)" },
	{    29.7,	"CW",	"? fsk <br> (morning)", "WebSDR hears it" },
//	{    31.5,	"CW",	"? fsk RY", "2PM" },

	{    40.0,	"CWN",	"JJY JPN <br> (night, pre-dawn, ID @xx:15&45:40)" },
//	{    50.0,	"CWN",	"RTZ RUS <br> (xx:59:00-xx:05:00)"},	// Meinberg says "alive", but we've never heard it
	{    54.0,	"CW",	"NDI JPN <br> (night, pre-dawn)" },
	{    60.0,	"CWN",	"JJY JPN <br> (night, pre-dawn, ID @xx:15&45:40)" },
	{    68.5,	"CW",	"BPC CHN <br> (night, pre-dawn)" },

	{   136.0,	"USB",	"WSPR" },
	{   224.4,	"CWN",	"West Maitland <br> \"WMD\" AUS" },
	{   227.0,	"CWN",	"KeriKeri \"KK\" <br> Ferry \"FY\"" },
	{   231.0,	"CWN",	"Taupo <br> \"AP\"" },
	{   239.0,	"CWN",	"Kaitaia <br> \"KT\"" },
	{   241.0,	"CWN",	"Paraparaumu <br> \"PP\"" },
	{   247.0,	"CWN",	"Wairoa <br> \"WO\"" },
	{   255.0,	"CWN",	"Waiuku <br> \"WI\"" },
	{   259.6,	"CWN",	"Norfolk Island <br> \"NF\" AUS" },
	{   264.4,	"CWN",	"Cloncurry <br> \"CCY\" AUS" },
	{   269.4,	"CWN",	"Charleville <br> \"CV\" AUS" },
	{   272.4,	"CWN",	"Lord Howe Island <br> \"LHI\" AUS" },
	{   275.0,	"CWN",	"Great Barrier Island <br> \"(dit) GB\"" },
	{   277.0,	"CWN",	"Westport <br> \"WS\"" },
	{   277.6,	"CWN",	"Coolangatta <br> \"CG\" AUS" },
	{   285.0,	"CWN",	"Cape Campbell <br> \"CC\"" },
	{   290.4,	"CWN",	"Singleton <br> \"SGT\" AUS" },
	{   293.4,	"CWN",	"Cooma <br> \"COM\" AUS" },
	{   295.57,	"CWN",	"Point Lookout <br> \"PLO\" AUS" },
	{   302.4,	"CWN",	"Bundaberg <br> \"BUD\" AUS" },
	{   306.0,	"CWN",	"Nausori <br> \"NA\" Fiji" },
	{   309.0,	"CWN",	"Hokitika <br> \"HK\"" },
	{   311.4,	"CWN",	"Coffs Harbour <br> \"CFS\" AUS" },
	{   315.0,	"CWN",	"Miranda <br> \"RD\"" },
	{   323.04,	"CWN",	"Chatham Islands <br> \"CI\"" },
	{   327.05,	"CWN",	"Whangarei <br> \"WR\"" },
	{   329.4,	"CWN",	"Narrandera <br> \"NAR\" AUS" },
	{   335.4,	"CWN",	"Yass <br> \"YAS\" AUS" },
	{   338.4,	"CWN",	"Mallacoota <br> \"MCO\" AUS" },
	{   341.4,	"CWN",	"Tamworth <br> \"TW\" AUS" },
	{   346.0,	"AMN",	"Tauranga <br> \"TG\" (spurs)" },
	{   348.97,	"CWN",	"Surrey \"SY\" <br> Kaikoura \"KI\"" },
	{   353.0,	"CWN",	"Rarotonga <br> \"RG\" Cook Islands" },
	{   353.4,	"CWN",	"Longreach <br> \"LRE\" AUS" },
	{   354.4,	"CWN",	"La Tontouta <br> \"FND\" New Caledonia" },
	{   356.93,	"CWN",	"Newlands <br> \"NL\"" },
	{   360.0,	"CWN",	"Bauerfield <br> \"BA\" Vanuatu" },
	{   363.03,	"CWN",	"Whakatane <br> \"WK\" (spurs)" },
	{   364.94,	"CWN",	"Springfield <br> \"SF\"" },	// near carrier
	{   365.05,	"CWN",	"Momi <br> \"MI\" Fiji" },		// car=364, near carrier
	{   377.4,	"CWN",	"Roma <br> \"ROM\"" },
	{   379.6,	"CWN",	"Corowa <br> \"COR\" AUS" },
	{   380.4,	"CWN",	"Sunshine Coast <br> \"SU\"" },
	{   380.95,	"CWN",	"Wanganui <br> \"WU\"" },
	{   383.98,	"CWN",	"Malolo <br> \"AL\" Fiji" },
//	{   389.4,	"CWN",	"? <br> \"?N\" AUS" },		// faded out
	{   391.0,	"CWN",	"Hamilton <br> \"HN\"" },
	{   395.4,	"CWN",	"Port MacQuarie <br> \"PMQ\" AUS" },
	{   400.6,	"CWN",	"Armidale <br> \"ARM\" AUS" },
	{   403.6,	"CWN",	"Coen <br> \"COE\" AUS" },
	{   404.0,	"CWN",	"Pago Pago <br> \"TUT\" American Samoa" },
	{   406.0,	"CWN",	"Nadi <br> \"VK\" Fiji" },
	{   406.6,	"CWN",	"Gunnedah \"GDH\" AUS <br> Goulburn \"GLB\" AUS" },
	{   413.0,	"CWN",	"Santo <br> \"SON\" Vanuatu" },
	{   444.97,	"CWN",	"Thangool <br> \"(dit dit) TNG\" AUS" },
	{   474.2,	"USB",	"WSPR" },

	// post July 15, 2014 change to 540/1107 frequencies
//	{   531.0,	"AM",	"Radio 531 PI <br> 1XPI Auckland"},		// was in the clear during 540 transition
	{   540.0,	"AM",	"Rhema <br> 1XC Maketu" },
	{   576.0,	"AM",	"Southern Star <br> 1XLR Hamilton" },
	{   585.0,	"AM",	"Radio Ngati <br> 2XR Ruatoria" },
	{   603.0,	"AM",	"Radio Waatea <br> Auckland" },
	{   630.0,	"AM",	"RNZ National <br> 2YZ Napier" },
	{   657.0,	"AM",	"Southern Star <br> Paengaroa" },
	{   702.0,	"AM",	"Radio Live <br> 1XP Auckland" },
	{   747.0,	"AM",	"Newstalk ZB <br> Rotorua" },
	{   765.0,	"AM",	"Radio Kahungunu <br> 2XT Napier" },
	{   792.0,	"AM",	"Radio Sport <br> 1XSR Hamilton" },
	{   819.0,	"AM",	"RNZ National <br> Paengaroa" },
	{   873.0,	"AM",	"LiveSPORT <br> Matapihi" },
	{  1008.0,	"AM",	"Newstalk ZB <br> 1ZD Paengaroa" },
	{  1107.0,	"AM",	"Radio Live <br> Maketu" },
	{  1242.0,	"AM",	"One Double X <br> 1XX Whakatane" },
	{  1296.0,	"AM",	"Newstalk ZB <br> 1ZH Hamilton" },
	{  1368.0,	"AM",	"Village Radio <br> 1XT Tauranga" },
	{  1440.0,	"AM",	"Te Reo <br> 1XK Matapihi" },
	{  1521.0,	"AM",	"Good Time Oldies <br> 1XTR Matapihi" },

	{  1836.6,	"USB",	"WSPR" },
	{  1838.15,	"USB",	"PSK31" },

	{  3580.15,	"USB",	"PSK31" },
	{  3592.6,	"USB",	"WSPR" },

	{  4146.0,	"USB",	"ZLM weather", "Taupo marine radio 6AM" },
	{  4177.0,	"USB",	"fsk", "6PM RY testing +/- freq" },
	{  4249.0,	"USB",	"STANAG" },

	{  5287.2,	"USB",	"WSPR" },

	{  6843.0,	"USB",	"STANAG" },

	{  7035.15,	"USB",	"PSK31" },
	{  7038.6,	"USB",	"WSPR" },
	{  7080.15,	"USB",	"PSK31" },

	{  8144.0,	"USB",	"STANAG" },
	{  8226.65,	"CWN",	"6.5s beeper", "10PM" },
	{  8310.0,	"CW",	"SITOR", "10PM" },
	{  8313.0,	"USB",	"slot machine JPN", "" },
	{  8425.5,	"CW",	"XSG CHN", "" },
	{  8433.0,	"CW",	"XSG CHN", "" },
	{  8435.0,	"CW",	"XSG CHN", "" },
	{  8537.0,	"USB",	"fsk", "" },
	{  8551.0,	"USB",	"mpx", "" },
	{  8564.0,	"USB",	"fsk", "9PM" },
	{  8588.0,	"USB",	"slot machine JPN", "" },
	{  8600.0,	"CW",	"cw ?", },
	{  8625.0,	"USB",	"STANAG (FUM Tahiti?)" },
	{  8636.0,	"CW",	"HLW KOR", "cw" },
	{  8646.5,	"USB",	"STANAG" },
	{  8653.0,	"USB",	"fsk", "" },
	{  8657.0,	"USB",	"fax JPN", "" },
	{  8675.0,	"USB",	"fsk", "6PM" },
	{  8677.0,	"USB",	"STANAG", "9PM" },
	{  8681.0,	"USB",	"fax NMC USA" },
	{  8693.0,	"USB",	"fsk", "10PM" },
	{  8703.5,	"USB",	"slot machine JPN", "" },
	{  8743.0,	"USB",	"HSW Bangkok?", "voice" },
	{  8764.0,	"USB",	"USCG weather", "" },
	{  8828.0,	"USB",	"VOLMET Honolulu", "5PM" },
	{  8867.0,	"USB",	"Auckland ATC", "5PM" },

	{  9006.0,	"USB",	"LINK-11", "10PM" },
	{  9056.0,	"USB",	"STANAG", "6PM" },
	{  9073.5,	"USB",	"fsk", "9PM" },
	{  9074.0,	"CW",	"?CW", "cw" },
	{  9084.0,	"USB",	"fsk", "5PM" },
	{  9094.0,	"USB",	"STANAG", "9PM" },
	{  9111.0,	"USB",	"fsk", "5PM" },
	{  9121.5,	"USB",	"LINK-11", "6PM" },
	{  9139.0,	"USB",	"fsk", "9PM" },
	{  9164.0,	"USB",	"fax HLL2 KOR", "" },
	{  9155.0,	"AM",	"HM01 CUB", "10PM" },
	{  9240.0,	"AM",	"HM01 CUB", "9PM" },
	{  9326.0,	"CW",	"?CW", "cw" },
	{  9330.0,	"AM",	"HM01 CUB", "9PM" },
	{  9354.0,	"CW",	"?CW", "cw" },
	{  9580.0,	"AM",	"R. Australia", "sat AM 20Z, off 21Z" },
	{  9780.0,	"USB",	"DRM", "5PM" },
	{  9911.0,	"USB",	"STANAG", "9PM" },
	{  9959.0,	"USB",	"fsk", "9PM" },
	{  9981.5,	"USB",	"fax", "6PM" },

	{ 10000.0,	"AM",	"WWVH <br> WWV", "6PM" },
	{ 10138.7,	"USB",	"WSPR" },
	{ 10152.0,	"USB",	"fsk", "" },
	{ 10142.15,	"USB",	"PSK31" },
	{ 10345.0,	"AM",	"HM01 CUB", "6PM" },
	{ 10373.5,	"USB",	"STANAG", "5PM" },
	{ 10429.0,	"USB",	"fsk", "9PM" },

	{ 11029.0,	"USB",	"fax", "10PM" },
	{ 11089.0,	"USB",	"fax", "10PM" },
	{ 11469.5,	"USB",	"fsk", "10PM" },
	{ 11474.5,	"USB",	"fsk", "10PM" },
	{ 11945.0,	"AM",	"R. Australia" },

	{ 12145.0,	"USB",	"STANAG", "12PM" },
	{ 12581.0,	"USB",	"XSV CHN <br> WLO USA", "10PM" },
	{ 12612.0,	"USB",	"XSQ CHN", "10PM" },
	{ 12621.5,	"CW",	"SITOR", "coastal radio" },
	{ 12629.0,	"CW",	"TAH TUR", "8PM" },
	{ 12636.5,	"USB",	"XSG CHN", "10PM" },
	{ 12647.5,	"USB",	"XSQ CHN", "10PM" },
	{ 12654.0,	"CW",	"TAH TUR", "8PM" },
	{ 12700.0,	"USB",	"fsk", "6PM" },
	{ 12724.5,	"USB",	"STANAG", "5PM" },
	{ 12766.75,	"USB",	"STANAG", "8PM" },
	{ 12785.0,	"USB",	"fax", "9PM" },
	{ 12843.0,	"CW",	"HLO KOR", "coastal radio" },
	{ 12916.5,	"CW",	"HLF KOR", "coastal radio" },
	{ 12923.0,	"CW",	"HLW2 KOR", "coastal radio" },
	{ 12935.0,	"CW",	"HLG KOR", "coastal radio" },

	{ 13630.0,	"AM",	"R. Australia" },
	{ 13869.0,	"USB",	"fsk", "4PM" },
	{ 13919.3,	"USB",	"fax", "12PM" },
	{ 13987.5,	"USB",	"fax", "10PM" },

	{ 14070.15,	"USB",	"PSK31" },
	{ 14076.0,	"USB",	"JT65" },
	{ 14095.6,	"USB",	"WSPR" },
	{ 14100.0,	"CW",	"NCDXF", "propagation beacons" },
	{ 14433.0,	"USB",	"fsk", "" },

	{ 15000.0,	"AM",	"WWVH <br> WWV <br> BPM", "6PM" },
	{ 15160.0,	"AM",	"R. Australia" },
	{ 15720.0,	"AM",	"R. New Zealand" },
	{ 15745.0,	"USB",	"STANAG", "10AM" },

	{ 16546.0,	"USB",	"marine weather VMC AUS" },

	{ 17750.0,	"AM",	"R. Australia" },
	{ 17795.0,	"AM",	"R. Australia" },
	{ 17840.0,	"AM",	"R. Australia" },
	{ 17860.0,	"AM",	"R. Australia" },

	{ 18100.15,	"USB",	"PSK31" },
	{ 18104.6,	"USB",	"WSPR" },

	{ 19000.0,	"AM",	"R. Australia" },

	{ 21094.6,	"USB",	"WSPR" },

//	{ 16368.0,	"AM",	"spur", "GPS clock spur" },
	{ 00000.0,	"",	"" },
};
