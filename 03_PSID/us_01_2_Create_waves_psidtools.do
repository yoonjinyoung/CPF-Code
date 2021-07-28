*
**|=========================================================================|
**|	    ####	CPF			####											|
**|		>>>	PSID						 									|
**|		>>	Edit datasets with 'psidtools'									|
**|-------------------------------------------------------------------------|
**|		Konrad Turek 	| 	2020	|	turek@nidi.nl						|			
**|=========================================================================|
* 


*############################
*#							#
*#	Install psidtools		#
*#							#
*############################

// ssc install psidtools



*############################
*#							#
*#	PSIDtools - install		#
*#							#
*############################
**--------------------------------------
** Unpack and prepare 
**--------------------------------------
clear

psid install using "${psid_downl}", to("${psidtools_in}")

// !del "${psid_downl}\*" /q	// remove packed files 




*____________________________________________________________________________
*--->	END	OF FILE <---