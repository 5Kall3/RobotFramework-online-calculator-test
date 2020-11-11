*** Settings ***
Library    SeleniumLibrary
Resource    resources/keywords.robot
Suite Teardown    Close browser when done

*** Test Cases ***
Open calculator website
    Open calculator in browser
    Agree to terms popup

Calculate tests
    [Template]    Do math on two numbers
    2        +    2        4
    12       +    12       24
    3        -    2        1
    21       -    20       1
    3        *    3        9
    10       *    10       100
    6        /    3        2
    21       /    3        7
    12345    *    12345    152399025
    1        /    0        Error: DivByZero