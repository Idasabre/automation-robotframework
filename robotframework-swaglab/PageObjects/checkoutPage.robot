*** Settings ***
Resource    ./BasePage.robot

*** Variables ***
${FIRST_NAME}       id:first-name
${LAST_NAME}        id:last-name
${POSTAL_CODE}      id:postal-code
${CONTINUE}         id:continue
${FINISH}           id:finish
${COMPLETE_HEADER}  css:.complete-header

*** Keywords ***
Enter Checkout Information
    [Arguments]    ${fname}    ${lname}    ${pcode}
    Set Element    ${FIRST_NAME}    ${fname}
    Set Element    ${LAST_NAME}    ${lname}
    Set Element    ${POSTAL_CODE}    ${pcode}
    Click    ${CONTINUE}

Complete Order
    Click    ${FINISH}

Verify Checkout Complete
    [Arguments]    ${expected_message}
    ${message}=    Get Text    ${COMPLETE_HEADER}
    Should Be Equal    ${message}    ${expected_message}
