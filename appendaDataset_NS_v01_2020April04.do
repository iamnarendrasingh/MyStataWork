clear
clear matrix
clear mata
capture log close
set maxvar 15000
set more off
numlabel, add


clear matrix
clear
set more off

*date set for
local today=c(current_date)
local c_today= "`today'"
local date=subinstr("`c_today'", " ", "",.)
di "`date'"

global date=subinstr("`c_today'", " ", "",.)
*date set code ends 

local Country RJ

local CCPX RJP1

local Phase Phase1


global output 		"E:\Dropbox (Gates Institute)\PMA2020_INDIA\Performance Monitoring for Action\quiz\GoogleFormQuiz\Combined\OutputDataset"
global inputfiledir "E:\Dropbox (Gates Institute)\PMA2020_INDIA\Performance Monitoring for Action\quiz\GoogleFormQuiz\Combined"

cd "$output"

*Added second csv file for multiple versions
tempfile tempList


import excel "$inputfiledir\PMAQuiz01.xlsx", sheet("Clean_Data") firstrow allstring
rename नचअपनआईडदरजकर 			RE
rename Score			    scoreQuiz01
rename Q1कयकयलसटकरग 			quiz01Q1
rename Q2PMAकअनसरआरईकनसस 	quiz01Q2

duplicates report

destring scoreQuiz01 , replace
save `CCPX'_Quiz01_$date, replace

*Importing Quiz 02

clear
capture import excel "E:\Dropbox (Gates Institute)\PMA2020_INDIA\Performance Monitoring for Action\quiz\GoogleFormQuiz\Combined\PMAQuiz02.xlsx", sheet("Form responses 1") firstrow allstring

rename Score 				scoreQuiz02
rename नचअपनPMAआईडदरजकर 		RE
rename एसडपकलसटगकदर 			quiz02Q1
rename मपगवलसटगकदरनन 			quiz02Q2
rename लसटगकलएआरइकनमन 		squiz02Q3

duplicates report

destring scoreQuiz02 , replace
save `CCPX'_Quiz02_$date, replace

clear 
use RJP1_Quiz01_29Apr2020.dta 


merge 1:1 RE using RJP1_Quiz02_29Apr2020


*this should in last
sort RE
order RE score*
	
/*	
	if _rc==0 {
	tostring *, replace force
	save `tempList', replace
	use `CCPX'_Quiz01_$date.dta
	append using `tempList', force
	save `CCPX'_Quiz01_$date.dta, replace	
}
