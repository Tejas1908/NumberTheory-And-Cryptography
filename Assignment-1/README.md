# Number Theory and Cryptography (CO313): Assignment 1

**Members:**

Tejas R (16CO148)           - <tejas1908@gmail.com>

Kaushik (16CO120)           - <kaushik5699@gmail.com>

<br><br>
**Problem Statement:**

Given an input format and output format for numbers , develop a MATLAB tool to verify 
if all the numbers of the input format when squared result into numbers of the output format.
If not , display the right output format for the squares of numbers in input format.

Ex : (4m+3)^2 is of form 4m+1 , whereas
     (5m+4)^2 is not of the form 5m+3 .The correct output format is 5m+1 .
     
     

<br><br>
**Solution Approach:**

Given an input format say ak<sub>1</sub>+r<sub>1</sub> and an output format ak<sub>2</sub>+r<sub>2</sub> where 0 <= r<sub>1</sub>,r<sub>2</sub> < a.

(ak<sub>1</sub>+r<sub>1</sub>)^2 = a^2 k<sub>1</sub>^2 + r<sub>1</sub>^2 + 2ak<sub>1</sub>r<sub>1</sub> .
To find out if this number is of the form ak<sub>2</sub>+r<sub>2</sub> , consider modulo a.

(a^2 k<sub>1</sub>^2 + r<sub>1</sub>^2 + 2ak<sub>1</sub>r<sub>1</sub> ) mod a =  r<sub>1</sub>^2 mod a , since the other two terms a^2 k<sub>1</sub>^2 and 2ak<sub>1</sub>r<sub>1</sub> are divisible by a.



The following 2 cases can arise :


1.  r<sub>1</sub>^2 mod a = r<sub>2</sub> mod a     :   The specified output format is correct

2.  r<sub>1</sub>^2 mod a != r<sub>2</sub> mod a    :   The specified output format is incorrect. The correct output format is ak + (r<sub>1</sub>^2 mod a) .

