*** Settings ***
Library    SeleniumLibrary
Resource   ./variables.robot

*** Keywords ***
Test Setup
    [Documentation]    Open browser, log in, and navigate to the home page
    Open Browser    ${BASE_URL}    ${BROWSER}   headless=${HEADLESS}
    Maximize Browser Window
    Set Selenium Speed    0.5s
    Set Selenium Implicit Wait    10s


Test Teardown
    [Documentation]    close Browser
    Close Browser