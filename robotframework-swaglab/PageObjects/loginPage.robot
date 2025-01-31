*** Settings ***
Resource    ./BasePage.robot

*** Variables ***
${USERNAME_INPUT}    id:user-name
${PASSWORD_INPUT}    name:password
${LOGIN_BUTTON}      id:login-button    #css:input[value="Login"]

*** Keywords ***
Login
    [Arguments]    ${username}    ${password}
    Set Element    ${USERNAME_INPUT}    ${username}
    Set Element    ${PASSWORD_INPUT}    ${password}
    Wait Until Element Is Visible    ${LOGIN_BUTTON}    timeout=5s
    Click Element    ${LOGIN_BUTTON}

Verify Successful Login
    [Arguments]    ${url}
    Navigate To URL    ${url}
    Assert URL    ${url}
