*** Settings ***
Resource    ./BasePage.robot

*** Variables ***
${SORT_PRODUCT}      css:.product_sort_container
${ADD_TO_CART}       xpath=(//button[@class='btn btn_primary btn_small btn_inventory '])[6]
${VIEW_CART}         css:.shopping_cart_link
${PRODUCT_TITLE}     xpath=(//div[@class='inventory_item_name '])[6]

*** Keywords ***
Sort Products
    [Arguments]    ${value}
    Select Dropdown    ${SORT_PRODUCT}    ${value}

Verify Prices Are Sorted Low To High
    ${prices}=    Get WebElements    css:.inventory_item_price
    ${sorted_prices}=    Evaluate    sorted([float(price.text[1:]) for price in ${prices}])
    Should Be Equal As Numbers    ${prices}    ${sorted_prices}

Add Last Product To Cart
    Click    ${ADD_TO_CART}
    ${last_product_title}=    Get Element    ${PRODUCT_TITLE}
    RETURN    ${last_product_title}

View Cart
    Click    ${VIEW_CART}
