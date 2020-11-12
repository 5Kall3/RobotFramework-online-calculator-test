*** Settings ***
Library    SeleniumLibrary
Resource    resources/keywords.robot
Suite Teardown    Close browser when done

*** Test Cases ***
Open calculator website
    Open calculator in browser
    Agree to terms popup

Calculate more test
# Template = first argument: calculation    second argument: result
# Negative numbers on calculation expressed as "n" at end of number (21n = -21)
    [Template]    Test calculator
    1+5                 6
    20-7                13
    3*5                 15
    14/2                7
    1+5-3*5/2           -1.5
    50*4/2+23           123
    12345+98765         111110
    25/25               1
    234+12/2*0          234
    4*5*4*3*7*5*8*2*4   537600