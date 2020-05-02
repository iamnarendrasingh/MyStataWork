
*Dataset Read
use "https://stats.idre.ucla.edu/stat/stata/webbooks/reg/elemapi"

*change directory 
cd "E:\Self_GitKraken\Working_Repo_GitHub\MyStataWork\UCLA_online\Regression\SIMPLE AND MULTIPLE REGRESSION\dataset"

*saving dataset
save elemapi.dta , replace

*using dataset again
use elemapi

*1.1 A First Regression Analysis
*  api00, acs_k3, meals and full

* academic performance of the school (api00)
* average class size in kindergarten through 3rd grade (acs_k3)
* percentage of students receiving free meals – which is an indicator of poverty,
* the percentage of teachers who have full teaching credentials (full)

regress api00 acs_k3 meals full 

*The average class size (acs_k3, b=-2.68), is not statistically significant at the 0.05 level (p=0.055), but only just so. The coefficient is negative which would indicate that larger class size is related to lower academic performance — which is what we would expect.
*Next, the effect of meals (b=-3.70, p=.000) is significant and its coefficient is negative indicating that the greater the proportion students receiving free meals, the lower the academic performance.
*Finally, the percentage of teachers with full credentials (full, b=0.11, p=.232) seems to be unrelated to academic performance. This would seem to indicate that the percentage of teachers with full credentials is not an important factor in predicting academic performance — this result was somewhat unexpected.

