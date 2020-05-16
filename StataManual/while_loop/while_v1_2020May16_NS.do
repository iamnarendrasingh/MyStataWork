*	Author	:			Narendra
*	E-Mail	:			narendraa.singhshekhawat@gmail.com
*	purpose	:			explanation of while loop 

/*
while exp {
stata commands
}
*/

/*
Braces must be specified with while, and
1. the open brace must appear on the same line as while;
2. nothing may follow the open brace, except, of course, comments; the first command to be
executed must appear on a new line;
3. the close brace must appear on a line by itself.
*/

* while evaluates exp and, if it is true (nonzero) , 
* repeats the process until exp evaluates to false (zero)


clear *
set more off
* Example 1
local a 1
local b 0
while (1) {
   display in smcl as result `a', `b' _newline(1)
   display in smcl as text "do-until/while loop"
   display in smcl as result `a', `++b'
   if (`a' <= `b') continue, break
}

local counter = 0
local N = _N

while  `counter' < `N' {
  local counter = `counter' + 1
}
display `counter'
