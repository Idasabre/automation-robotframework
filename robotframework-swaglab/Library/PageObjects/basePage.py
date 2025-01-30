from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC

class BasePage:
    def __init__(self, driver):
        self.driver = driver

    def navigate_to_url(self, url):
        self.driver.get(url)

    def get_text(self, locator):
        return self.driver.find_element(By.CSS_SELECTOR, locator).text

    def set_element(self, locator, text):
        element = self.driver.find_element(By.CSS_SELECTOR, locator)
        element.clear()
        element.send_keys(text)

    def click_element(self, locator):
        self.driver.find_element(By.CSS_SELECTOR, locator).click()

    def assert_element_visible(self, locator):
        WebDriverWait(self.driver, 10).until(EC.visibility_of_element_located((By.CSS_SELECTOR, locator)))

    def assert_url(self, url):
        assert url in self.driver.current_url
