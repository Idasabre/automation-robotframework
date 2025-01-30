*** Settings ***
Resource    ./BasePage.robot

*** Variables ***
${VIEW_CART}         css:.shopping_cart_link
${CART_PRODUCT_TITLE}     css:.inventory_item_name
${CHECKOUT}               css:#checkout

*** Keywords ***
View Cart
    Click    ${VIEW_CART}

Verify Product In Cart
    [Arguments]     ${last_product}
    ${productName}=    Get Element    ${CART_PRODUCT_TITLE} 
    Should Be Equal    ${last_product}    ${productName}

Navigate To Checkout Page
    Click  ${CHECKOUT}
