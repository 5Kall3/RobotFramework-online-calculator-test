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
    Click Button    ${TERMS AGREE BUTTON}
    Wait Until Element Is Visible    ${BUTTON CALCULATE}

Add two numbers
    ${FIRTS NUMBER} =
    ${SECOND NUMBER} =
    Click Button    ${FIRST NUMBER}
    Click Button    ${BUTTON PLUS}
    Click Button    ${SECOND NUMBER}
    Click Button    ${BUTTON CALCULATE}

Press all buttons
    Click Button    ${BUTTON 1}
    Click Button    ${BUTTON 2}
    Click Button    ${BUTTON 3}
    Click Button    ${BUTTON 4}
    Click Button    ${BUTTON 5}
    Click Button    ${BUTTON 6}
    Click Button    ${BUTTON 7}
    Click Button    ${BUTTON 8}
    Click Button    ${BUTTON 9}
    Click Button    ${BUTTON 0}
    Click Button    ${BUTTON PLUS}
    Click Button    ${BUTTON MINUS}
    Click Button    ${BUTTON MULTIPLY}
    Click Button    ${BUTTON DIVIDE}
    Click Button    ${BUTTON CALCULATE}

Close browser when done
    Close Browser