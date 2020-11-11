*** Settings ***
Library    SeleniumLibrary
Resource    resources/keywords.robot
#Suite Teardown    Close browser when done

*** Test Cases ***
Open calculator website
    Open calculator in browser
    Agree to terms popup

Calculate tests
    Add two numbers