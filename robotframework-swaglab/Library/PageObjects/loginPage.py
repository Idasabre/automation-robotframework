from basePage import BasePage
from locators import LoginPageLocators, ProductPageLocators
from robot.api.deco import keyword

class LoginPage(BasePage):
    @keyword
    def login_user(self, username, password):
        print(f"Logging in with {username} and {password}")
        self.set_element(LoginPageLocators.USERNAME_INPUT, username)
        self.set_element(LoginPageLocators.PASSWORD_INPUT, password)
        self.click_element(LoginPageLocators.LOGIN_BUTTON)

    def verify_successful_login(self):
        self.assert_element_visible(ProductPageLocators.SORT_PRODUCT)

    @keyword
    def log_message(self, message):
        print(f"Message from Python: {message}")
