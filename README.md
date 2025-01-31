# SwagLabs Automation Testing
## Project Overview
This project contains a modular automation script using robotframework following the **Page Object Model (POM)** to automate and validate key functionalities of the SwagLabs application. The script ensures smooth end-to-end execution of product selection, cart verification, and checkout.

## Test Scenarios Covered
1. **Login** – Authenticate using valid credentials.
2. **Sort Products** – Sort the product list by price from Low to High.
3. **Add to Cart** – Add the highest-priced product (last item in the sorted list) to the cart.
4. **Verify Product in Cart** – Validate that the correct product has been added.
5. **Proceed to Checkout** – Enter checkout information.
6. **Complete Checkout** – Finalize the order and verify the success message.

## Tech Stack
- **Programming Language:** keyword-driven (core framework using Python)
- **Test Framework:** Robotframework
- **Design Pattern:** Page Object Model (POM)

## Project Structure
📦 automation-swaglab<br>
┣ 📂 Library             <br>
┣ 📂 pageObjects           <br>
┣ 📂 Resources      <br>
┣ 📂 TestData   <br>
┣ 📂 TestSuite       <br>
┣ 📂 Report        <br>

## Setup and Execution
### Prerequisites

To run this automation, ensure you have the following installed:

- **Python 3.x**: The script is compatible with Python 3.x.
- **Robot Framework**: Install Robot Framework with `pip install robotframework`.
- **Selenium Library**: Install SeleniumLibrary with `pip install robotframework-seleniumlibrary`.
- **WebDriver**: Ensure that the appropriate WebDriver (e.g., ChromeDriver) is installed and added to your system's PATH.



## Running the Test
To run the test suite, simply execute the following command:

```bash
robot TestSuite/e2e.robot
```


Author: Ida<br>
Contact: nhmsabre@gmail.com<br>
GitHub: Idasbre

