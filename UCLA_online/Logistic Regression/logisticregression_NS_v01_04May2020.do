clear
clear matrix
clear mata
capture log close
set maxvar 15000
set more off
numlabel, add


*Link : https://stats.idre.ucla.edu/stata/dae/logistic-regression/

*Logistic regression,
*also called a logit model, is used to model dichotomous outcome variables.
*log odds of the outcome is modeled as a linear combination of the predictor variables.

*Example2


*load datset 
use https://stats.idre.ucla.edu/stat/stata/dae/binary.dta, clear

cd "E:\Self_GitKraken\Working_Repo_GitHub\MyStataWork\UCLA_online\Logistic Regression\dataset"

save binary.dta , replace 

