from basePage import BasePage
from locators import CheckoutPageLocators

class CheckoutPage(BasePage):
    def enter_checkout_information(self, first_name, last_name, postal_code):
        self.set_element(CheckoutPageLocators.FIRST_NAME, first_name)
        self.set_element(CheckoutPageLocators.LAST_NAME, last_name)
        self.set_element(CheckoutPageLocators.POSTAL_CODE, postal_code)
        self.click_element(CheckoutPageLocators.CONTINUE)

    def complete_order(self):
        self.click_element(CheckoutPageLocators.FINISH)

    def verify_checkout_complete(self, message):
        self.assert_element_visible(CheckoutPageLocators.COMPLETE_HEADER)
        complete_message = self.get_text(CheckoutPageLocators.COMPLETE_HEADER)
        assert complete_message.strip() == message
