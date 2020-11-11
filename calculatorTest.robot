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
    2+2                  4
    5-2                  3
    5n-5                -10
    5*5                 25
    54/9                6
    1+5-3*5/2           -1.5
    55*26/14-3+123      222.1428571428571429
    1/0                 Error: DivByZero