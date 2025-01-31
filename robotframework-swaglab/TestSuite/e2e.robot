*** Settings ***
Resource    ../PageObjects/loginPage.robot
Resource    ../PageObjects/productPage.robot
Resource    ../PageObjects/cartPage.robot
Resource    ../PageObjects/checkoutPage.robot
Resource    ../Resources/common.robot
Resource    ../Resources/variables.robot
Library     JSONLibrary
Library     Collections

*** Variables ***
${TESTDATA}    TestData/testData.json

*** Test Cases ***
[Test Setup]        Test Setup
E2E Test Case
    Load Test Data
    Login With Valid Credentials
    Sort, Add Product, Verify Cart, Checkout

*** Keywords ***
Load Test Data
    ${data}=    Load JSON From File    ${TESTDATA}
    Set Suite Variable    ${data}

Login With Valid Credentials
    ${login_data}=    Get From Dictionary    ${data}    loginData
    Login    ${login_data["username"]}    ${login_data["password"]}

Sort, Add Product, Verify Cart, Checkout
    ${sort_value}=    Get From Dictionary    ${data}    sortByPrice
    Sort Products    ${sort_value}

    ${last_product}=    Add Last Product To Cart
    productPage.View Cart

    Verify Product In Cart    ${last_product}
    Navigate To Checkout Page

    ${checkout_data}=    Get From Dictionary    ${data}    checkout
    ${your_info}=    Get From Dictionary    ${checkout_data}    yourInformation
    Enter Checkout Information    ${your_info["firstName"]}    ${your_info["lastName"]}    ${your_info["postalCode"]}

    Complete Order
    Verify Checkout Complete    ${checkout_data["complete"]}
