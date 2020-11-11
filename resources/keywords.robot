*** Settings ***
Library    SeleniumLibrary
Library    ../libraries/prepareCalculations.py
Variables    ../locators/locators.py

*** Variables ***
${SELENIUM_TIMEOUT_TIME}    10 seconds
${URL_FOR_BROWSER}    https://web2.0calc.com/
${BROWSER_NAME}    chrome

*** Keywords ***
Open calculator in browser
    Set Selenium Timeout    ${SELENIUM TIMEOUT TIME}
    Open browser    ${URL FOR BROWSER}    ${BROWSER NAME}
    Wait Until Element Is Visible    ${TERMS AGREE BUTTON}

Agree to terms popup
    Wait Until Element Is Visible    ${PRIVACY TITLE}
    Click Button    ${TERMS AGREE BUTTON}
    Wait Until Element Is Visible    ${BUTTON CALCULATE}

Test calculator
    [Arguments]    ${CALCULATION}    ${RESULT}
    Python do math on many numbers    ${CALCULATION}
    Calculate the whole thing    ${RESULT}

Calculate the whole thing
    [Arguments]    ${RESULT}
    Click Button    ${BUTTON CALCULATE}
    Wait Until Element Is Visible    //input[@class="loading"]
    Wait Until Element Is Not Visible    //input[@class="loading"]
    ${MATH RESULT} =    Get Value    ${RESULT TEXT}
    Should Be Equal As Strings    ${MATH RESULT}    ${RESULT}
    Click Button    ${BUTTON CLEAR}

Close browser when done
    Close Browser