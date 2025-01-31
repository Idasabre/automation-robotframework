*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Navigate To URL
    [Arguments]    ${url}
    Go To    ${url}

Set Element
    [Arguments]    ${locator}    ${text}
    Input Text    ${locator}    ${text}

Click
    [Arguments]    ${locator}
    Click Element    ${locator}

Get Element
    [Arguments]    ${locator}
    ${text}=    Get Text    ${locator}
    RETURN    ${text}

Select Dropdown
    [Arguments]    ${locator}    ${value}
    Select From List By Value    ${locator}    ${value}

Assert Element Should Be Visible
    [Arguments]    ${locator}
    Element Should Be Visible    ${locator}

Assert URL
    [Arguments]    ${url}
    Location Should Contain    ${url}
