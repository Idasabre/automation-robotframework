*** Settings ***
Library    SeleniumLibrary
Resource   ../Lubrary/Locators.py

*** Keywords ***
Logout
    [Arguments]    ${name}
    Element Should Contain    xpath=//*[contains(text(), "Logged in as ${name}")]
    Click Element    ${homePage["logoutButton"]}
