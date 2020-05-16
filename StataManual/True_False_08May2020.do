*Resource
*https://www.stata.com/support/faqs/data-management/true-and-false/

clear
clear matrix
clear mata
capture log close
set maxvar 15000
set more off
numlabel, add

/*
Stata follows two rules,
Rule 1: Logical or Boolean expressions evaluate to 0 if false, 1 if true.
Rule 2: Logical or Boolean arguments, such as the argument to if or while, may take on any value, 
not just 0 or 1; 0 is treated as false and any other numeric value as true.
*/

**********************************************************************
**********************************************************************
**********************************************************************
*Rule 1: Logical or Boolean expressions evaluate to 0 if false, 1 if true

* In Stata, these expressions use one or more various relational and logical operators. 
* The operators ==, ~=, !=, >, >=, <, and <= are used to test equality or inequality.

* The operators 
* &  used to indicate  "and"
* |  used to indicate   "or"
* ~  used to indicate   "not"
* !  used to indicate	"not"
* It is a matter of taste whether you use ~ or ! to indicate negation.
cd "E:\Self_GitKraken\Working_Repo_GitHub\MyStataWork\StataManual\True_False\output"

sysuse auto , clear


* The double equal sign == is used whenever you wish to test for equality

* How many cars are foreign and has value 4 in rep78?

putexcel set auto_result.xlsx, modify

*putexcel formatting  
putexcel (A1:B1), bold border("bottom", "medium", "black")
putexcel (A1:A2), border("right", "medium", "black")
*formatting ends

*putexcel values
putexcel A1=("This is about auto dataset")
putexcel B1=("Result")

putexcel A2=("foreign cars with 4 rep78")
count if foreign == 1 & rep78 == 4
putexcel B2=`r(N)'
* values ends here

* One of most import command
return list

* In Stata, the rule is that false logical expressions have value 0 and true logical expressions have value 1 
* Thus logical expressions may be used to generate indicator variables 
* (also often called binary, dichotomous, dummy, logical, or Boolean, depending on tribal jargon), 
* which have values 0 or 1. 
* The command

generate himpg = mpg > 30






**********************************************************************
**********************************************************************
**********************************************************************
