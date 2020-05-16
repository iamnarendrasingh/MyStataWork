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

*generate one missing value as our dataset does not have missing values.
replace mpg = . in 58
generate himpg = mpg > 30

* What if mpg were missing? 
* The rule is that Stata treats numeric missing values as higher than any other numeric value, 
* so missing would certainly qualify as greater than 30, 
* and any observation with mpg missing would be assigned 1 for this new variable.

drop himpg 

generate himpg = mpg > 30 if mpg < .

* The same logic would apply if you were only interested in domestic cars:
drop himpg
generate himpg = mpg > 30 if foreign == 0

* Suppose we want to create a new variable in which we will put the frequencies of mpg being greater than 30, 
* by categories of rep78:

* dropping missing values 
drop if mpg == .


*++++++++++++++++++NN++N++++++++++++++++++++++++++++++++++++++++++++
*+++++++++++++++++N+N+N+++++++++++++++++++++++++++++++++++++++++++++
*++++++++++++++++N++NN++++++++++++++++++++++++++++++++++++++++++++++
*+++++++++++++++N+++N+++++++++++++++++++++++++++++++++++++++++++++++
sort rep78
by rep78: generate nhimpg = sum(mpg > 30)
by rep78: replace nhimpg = nhimpg[_N]
* In the second statement, the function sum() produces a cumulative 
* or running sum of mpg > 30. If mpg > 30, 1 is added to the sum; otherwise, 
* 0 is added. This statement yields a running count of the number of observations for which mpg > 30. 
* In the third statement,we replace the running count with its last value, the total count

* Importance of "by"
*This process is all done within the framework of by, 
* for which data must be sorted on rep78, which is done first.
*++++++++++++++++++NN++N++++++++++++++++++++++++++++++++++++++++++++
*+++++++++++++++++N+N+N+++++++++++++++++++++++++++++++++++++++++++++
*++++++++++++++++N++NN++++++++++++++++++++++++++++++++++++++++++++++
*+++++++++++++++N+++N+++++++++++++++++++++++++++++++++++++++++++++++



* egen command 
drop nhimpg
egen nhimpg = total(mpg > 30), by(rep78)

**********************************************************************
**********************************************************************
**********************************************************************






* Rule 2: 
* 		Logical or Boolean arguments, such as the argument to if or while, 
* may take on any value, not just 0 or 1; 
* 0 is treated as false and any other numeric value as true

list mpg if foreign == 1
* Stata lists mpg for those observations for which foreign is equal to 1 
* (and does not list them if this is not so).

* list mpg if foreign is equal to list mpg if foreign == 1
* Why ? read rule 2
list mpg if foreign 


* You can always check, either interactively or in a program,
*  that a variable has only the values 0 and 1 by using assert:

assert foreign == 0 | foreign == 1
