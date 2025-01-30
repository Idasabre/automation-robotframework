*** Settings ***
Library    SeleniumLibrary
Library    Collections
Library    OperatingSystem
Library    ../Library/PageObjects/loginPage.py
Library    ../Library/PageObjects/productPage.py
Library    ../Library/PageObjects/cartPage.py
Library    ../Library/PageObjects/checkoutPage.py
Resource   ../Resources/common.robot
Resource   ../Resources/variables.robot

*** Variables ***

*** Test Cases ***
[Test Setup]        Test Setup
Debug Test
    Log Message    This is a test
Login And Checkout Test
    Login User      ${LOGIN_USERNAME}    ${LOGIN_PASSWORD}  
    # Product Page.Sort Product    ${SORT_OPTION}
    # Product Page.Add Last Product To Cart
    # Product Page.View Cart
    # Cart Page.Verify Product Title In Cart    ${product_titles}
    # Cart Page.Navigate To Checkout
    # Checkout Page.Enter Checkout Information    user    test1    12345
    # Checkout Page.Complete Order
    # Checkout Page.Verify Checkout Complete    ${CHECKOUT_COMPLETE_MSG}
#[Test Teardown]     Test Teardown
