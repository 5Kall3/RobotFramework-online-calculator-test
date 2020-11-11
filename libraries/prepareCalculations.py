from robot.libraries.BuiltIn import BuiltIn
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions

class prepareCalculations:
    library = "SeleniumLibrary"

    def __get_library(self, lib):
        """
        Returns the library instance. It is required in order to instantiate
        a driver object (library.webdriver.browser).
        """
        return BuiltIn().get_library_instance(lib)

    def number1_convert_and_click(self, number1):
        list_of_numbers = list(number1)

        for item in list_of_numbers:
            number_converted = "//button[@id='Btn" + item + "']"

            driver = self.__get_library(self.library).driver
            WebDriverWait(driver, 60).until(expected_conditions.presence_of_element_located((
                By.XPATH, number_converted))).click()

            print(number_converted)

    def number2_convert_and_click(self, number2):
        list_of_numbers = list(number2)

        for item in list_of_numbers:
            number_converted = "//button[@id='Btn" + item + "']"

            driver = self.__get_library(self.library).driver
            WebDriverWait(driver, 60).until(expected_conditions.presence_of_element_located((
                By.XPATH, number_converted))).click()

            print(number_converted)

    def math_symbol_convert(self, math_symbol):
        if math_symbol == "+":
            symbol_converted = "//button[@id='BtnPlus']"
        elif math_symbol == "-":
            symbol_converted = "//button[@id='BtnMinus']"
        elif math_symbol == "*":
            symbol_converted = "//button[@id='BtnMult']"
        elif math_symbol == "/":
            symbol_converted = "//button[@id='BtnDiv']"

        print(symbol_converted)
        return symbol_converted