from basePage import BasePage
from locators import ProductPageLocators, CartPageLocators

class ProductPage(BasePage):
    def sort_product(self, sort_option):
        self.set_element(ProductPageLocators.SORT_PRODUCT, sort_option)

    def add_last_product_to_cart(self):
        products = self.driver.find_elements(By.CSS_SELECTOR, ProductPageLocators.ADD_TO_CART)
        products[-1].click()

    def view_cart(self):
        self.click_element(ProductPageLocators.VIEW_CART)
