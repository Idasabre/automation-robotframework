class LoginPageLocators:
    USERNAME_INPUT = "//input[@id='user-name']"
    PASSWORD_INPUT = "//input[@name='password']"
    LOGIN_BUTTON = "//input[@value='Login']"

class ProductPageLocators:
    SORT_PRODUCT = "css=.product_sort_container"
    ADD_TO_CART = "css=.btn.btn_primary.btn_small.btn_inventory"
    VIEW_CART = "css=.shopping_cart_link"
    PRODUCT_TITLE = "css=.inventory_item_name"

class CartPageLocators:
    CART_TABLE = "css=.cart_item"
    PRODUCT_TITLE = "css=.inventory_item_name"
    CHECKOUT = "id=checkout"

class CheckoutPageLocators:
    FIRST_NAME = "id=first-name"
    LAST_NAME = "id=last-name"
    POSTAL_CODE = "id=postal-code"
    CONTINUE = "id=continue"
    FINISH = "id=finish"
    COMPLETE_HEADER = "css=.complete-header"
