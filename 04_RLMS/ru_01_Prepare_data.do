*
**|=============================================|
**|	    ####	CPF v1.5 / CRITEVENTS	####	|
**|		>>>	RLMS								|
**|		>>	Prepare data - Merge				|
**|---------------------------------------------|
**|		Konrad Turek 	| 	2023				|			
**|=============================================|
*



*############################
*#							#
*#	Merged dataset			#
*#							#
*############################
* Data already merged into one file (long)
// RLMS_IND_1994_2021_2022_08_21_1_v2_eng_DTA.dta
// RLMS_HH_1994_2021_eng_DTA.dta

use "${rlms_in}//${rlms_dataIND}", clear
disp "vars: " c(k) "   N: " _N

* Add HH variables
merge m:1 id_h id_w using "${rlms_in}//${rlms_dataHH}" , ///
	keep(1 3) nogen keepusing(f14 nfm ///  
	b1_5 b2_5 b3_5 b4_5 b5_5 b6_5 b7_5 b8_5 b9_5 b10_5 b11_5 b12_5 b13_5 ///  
	b14_5 b15_5 b16_5 b17_5 b18_5 b19_5 b20_5 b21_5 b22_5 b23_5 b24_5    ///
	)

disp "vars: " c(k) "   N: " _N

*
save "${rlms_out}/ru_01.dta", replace  	



*---
*eof
