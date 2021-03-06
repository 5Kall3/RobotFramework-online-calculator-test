*** Settings ***
Library    SeleniumLibrary
Resource    resources/keywords.robot
Suite Setup    Start calculator
Suite Teardown    Close browser when done
Test Template    Test calculator

# Negative numbers on calculation expressed as "n" (21n = -21)
*** Test Cases ***      Calculation         Result
Addition 0              1+5                 6
Addition 1              9+10                19
Subtraction 0           20-7                13
Subtraction 1           5n-5                -10
Multiplication 0        3*5                 15
Multiplication 1        12*12               144
Division 0              14/2n               -7
Division 1              5/2                 2.5
Combination 0           1+5-3*5/2           -1.5
Combination 1           50*4/2+23           123
Combination 2           12345+98765         111110
Combination 3           (25+2)/(25+2)       1
Combination 4           234+12/2*0          234
Combination 5           4*5*4*3*7*5*8*2*4   537600
Combination 6           5*(10-2)/2          20