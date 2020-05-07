clear
clear matrix
clear mata
capture log close
set maxvar 15000
set more off
numlabel, add

*date set for
local today=c(current_date)
local c_today= "`today'"
local date=subinstr("`c_today'", " ", "",.)
di "`date'"

global date=subinstr("`c_today'", " ", "",.)
*date set code ends 


*Macro Code start here
local Country RJ

global CCPX RJP1

local Phase Phase1
*Macro Code ends here

*File path start here
global output 		"E:\Dropbox (Gates Institute)\PMA2020_INDIA\Performance Monitoring for Action\quiz\GoogleFormQuiz\Combined\OutputDataset"
global inputfiledir "E:\Dropbox (Gates Institute)\PMA2020_INDIA\Performance Monitoring for Action\quiz\GoogleFormQuiz\Combined\Response"
*File path ends here

*Macro Code ends here

cd "$output"

import excel "$inputfiledir\PMAQuiz01.xlsx", sheet("Clean_Data") firstrow allstring
rename नचअपनआईडदरजकर 			RE
rename Score			    scoreQuiz01
rename Q1कयकयलसटकरग 			quiz01Q1
rename Q2PMAकअनसरआरईकनसस 	quiz01Q2

duplicates report

destring scoreQuiz01 , replace
save "$CCPX_Quiz01_$date", replace

**********************************************
****************Quiz02************************

clear
clear matrix
clear mata
capture log close
set maxvar 15000
set more off
numlabel, add

*date set for
local today=c(current_date)
local c_today= "`today'"
local date=subinstr("`c_today'", " ", "",.)
di "`date'"

global date=subinstr("`c_today'", " ", "",.)
*date set code ends 


*Macro Code start here
local Country RJ

local CCPX RJP1

local Phase Phase1
*Macro Code ends here

*File path start here
global output 		"E:\Dropbox (Gates Institute)\PMA2020_INDIA\Performance Monitoring for Action\quiz\GoogleFormQuiz\Combined\OutputDataset"
global inputfiledir "E:\Dropbox (Gates Institute)\PMA2020_INDIA\Performance Monitoring for Action\quiz\GoogleFormQuiz\Combined\Response"
*File path ends here

*Macro Code ends here

cd "$output"

capture import excel "$inputfiledir\PMAQuiz02.xlsx", sheet("Form responses 1") firstrow allstring

rename Score 				scoreQuiz02
rename नचअपनPMAआईडदरजकर 		RE
rename एसडपकलसटगकदर 			quiz02Q1
rename मपगवलसटगकदरनन 			quiz02Q2
rename लसटगकलएआरइकनमन 		squiz02Q3

duplicates report

destring scoreQuiz02 , replace
save "`CCPX'_Quiz02_$date" , replace

cd "$output"
use "`CCPX'_Quiz01_$date" 

merge 1:1 RE using RJP1_Quiz02_29Apr2020
rename _merge mergeQ1Q2
cd "$output"
save "`CCPX'_Quiz01_02_$date" , replace

***************************************************
******************Quiz02 ends here*****************





 window manage restore
 beep
