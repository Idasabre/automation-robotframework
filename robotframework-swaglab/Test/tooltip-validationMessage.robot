*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://automationexercise.com/login
${EMAIL_FIELD}    //input[@data-qa="login-email"]
${PASSWORD_FIELD}    //input[@data-qa="login-password"]
${LOGIN_BUTTON}    //button[@data-qa="login-button"]
${VALIDATION_MESSAGE}    Please fill out this field.

*** Test Cases ***
Tooltip Error Event 1
    Open Browser    ${URL}    chrome
    Maximize Browser Window   
    Click Element    ${LOGIN_BUTTON}
    ${validation_message}=    Get Element Attribute    ${EMAIL_FIELD}    validationMessage
    Should Be Equal As Strings    ${validation_message}    ${VALIDATION_MESSAGE}
    Log To Console    Validation Message: ${VALIDATION_MESSAGE}
    Close Browser
