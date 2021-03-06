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

import excel "$inputfiledir\PMAQuiz01.xlsx", sheet("Clean_Data") firstrow allstring
rename नचअपनआईडदरजकर 			RE
rename Score			    scoreQuiz01
rename Q1कयकयलसटकरग 			quiz01Q1
rename Q2PMAकअनसरआरईकनसस 	quiz01Q2

sort Timestamp
by RE , sort: gen RE_duplicate = _n == 1
drop if RE_duplicate== 0

destring scoreQuiz01 , replace
save `CCPX'_Quiz01 , replace

cd "$output"
export delimited using "RJP1_Quiz01.csv", replace



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

sort Timestamp
by RE , sort: gen RE_duplicate = _n == 1
drop if RE_duplicate== 0

destring scoreQuiz02 , replace
save `CCPX'_Quiz02 , replace
cd "$output"
export delimited using "RJP1_Quiz02.csv", replace



**********************************************
****************Quiz03************************

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

capture import excel "$inputfiledir\PMA Quiz-03 April 15 ,2020 (Responses).xlsx", sheet("Form responses 1") firstrow allstring

rename Score 				scoreQuiz03
rename नचअपनPMAआईडदरजकर 		RE
rename मपगवलसटगकदरनएक			quiz03Q01
rename सहयगलतएकसपरवइजरआरइ 		quiz03Q02

sort Timestamp
by RE , sort: gen RE_duplicate = _n == 1
drop if RE_duplicate== 0

destring scoreQuiz03 , replace
save `CCPX'_Quiz03 , replace
cd "$output"
export delimited using "RJP1_Quiz03.csv", replace



**********************************************
****************Quiz04************************

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

capture import excel "$inputfiledir\PMA Quiz-04 April 18 ,2020 (Responses).xlsx", sheet("Form responses 1") firstrow allstring

rename Score 				scoreQuiz04
rename नचअपनPMAआईडदरजकर 		RE
rename परशन1सहयगलतवहपरतय		quiz04Q01
rename परशन2सपरवईजरकदवरगण 		quiz04Q02
rename परशन3सहयगलतएकआवसय 		quiz04Q03

sort Timestamp
by RE , sort: gen RE_duplicate = _n == 1
drop if RE_duplicate== 0

destring scoreQuiz04 , replace
save `CCPX'_Quiz04 , replace
cd "$output"
export delimited using "RJP1_Quiz04.csv", replace


**********************************************
****************Quiz05************************

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

capture import excel "$inputfiledir\PMA Quiz-05 April 21 ,2020 (Responses).xlsx", sheet("Form responses 1") firstrow allstring

rename Score 				scoreQuiz05
rename नचअपनPMAआईडदरजकर 		RE
rename परशन1सहयगलतयहबहतमह 		quiz05Q01
rename परशन2परवररसटरभरतसमय 		quiz05Q02
rename परशन3सहयगलतपरवरसर 		quiz05Q03

sort Timestamp
by RE , sort: gen RE_duplicate = _n == 1
drop if RE_duplicate== 0

destring scoreQuiz05 , replace
save `CCPX'_Quiz05 , replace
cd "$output"
export delimited using "RJP1_Quiz05.csv", replace


**********************************************
****************Quiz06************************

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

capture import excel "$inputfiledir\PMA Quiz-06 April 24 ,2020 (Responses).xlsx", sheet("Form responses 1") firstrow allstring

rename Score 				scoreQuiz06
rename नचअपनPMAआईडदरजकर 		RE
rename परशन1सहयगलतयदआरईन 		quiz06Q01
rename परशन2परवररसटरभरतस 		quiz06Q02
rename परशन3सहयगलतवटलटड		 quiz06Q03


sort Timestamp
by RE , sort: gen RE_duplicate = _n == 1
drop if RE_duplicate== 0

destring scoreQuiz06 , replace
save `CCPX'_Quiz06 , replace
cd "$output"
export delimited using "RJP1_Quiz06.csv", replace




**********************************************
****************Quiz07************************

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

capture import excel "$inputfiledir\PMA Quiz-07 April 28 ,2020 (Responses).xlsx", sheet("Form responses 1") firstrow allstring

rename Score 				scoreQuiz07
rename नचअपनPMAआईडदरजकर 		RE
rename Quiz071घरपरवरपरशनवल 	quiz07Q01
rename Quiz072नमनपरभषकलए 		quiz07Q02
rename Quiz073सहयगलतघरपरव 		quiz07Q03


sort Timestamp
by RE , sort: gen RE_duplicate = _n == 1
drop if RE_duplicate== 0

destring scoreQuiz07 , replace
save `CCPX'_Quiz07 , replace
cd "$output"
export delimited using "RJP1_Quiz07.csv", replace



**********************************************
****************Quiz08************************

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

capture import excel "$inputfiledir\PMA Quiz-08 May 01 ,2020 (Responses).xlsx", sheet("Form responses 1") firstrow allstring

rename Score 					scoreQuiz08
rename EnterPMAIDनचअपनPMAआईड 	RE
rename Quiz08Q1ओडकमएकमहलपर	    quiz08Q01
rename Quiz08Q2सहयगलतकयआरइ 	    quiz08Q02
rename Quiz08Q3यदएकमहलघरपरह 		quiz08Q03
duplicates report

destring scoreQuiz08 , replace

sort Timestamp
by RE , sort: gen RE_duplicate = _n == 1
drop if RE_duplicate== 0

save `CCPX'_Quiz08 , replace
cd "$output"
export delimited using "RJP1_Quiz08.csv", replace

/*

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
