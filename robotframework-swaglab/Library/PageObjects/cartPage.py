from basePage import BasePage
from locators import CartPageLocators

class CartPage(BasePage):
    def verify_product_title_in_cart(self, product_titles):
        cart_items = self.driver.find_elements(By.CSS_SELECTOR, CartPageLocators.CART_TABLE)
        for index, item in enumerate(cart_items):
            cart_title = item.find_element(By.CSS_SELECTOR, CartPageLocators.PRODUCT_TITLE).text
            assert cart_title == product_titles[index]

    def navigate_to_checkout(self):
        self.click_element(CartPageLocators.CHECKOUT)
