from robot.libraries.BuiltIn import BuiltIn
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions

class prepareCalculations:
    library = "SeleniumLibrary"

    def __get_library(self, lib):
        return BuiltIn().get_library_instance(lib)

    def Python_do_math_on_many_numbers(self, whole_calculation):
        whole_calculation_list = list(whole_calculation)

        for item in whole_calculation_list:
            if item == "+":
                math_thing_converted = "//button[@id='BtnPlus']"
            elif item == "-":
                math_thing_converted = "//button[@id='BtnMinus']"
            elif item == "*":
                math_thing_converted = "//button[@id='BtnMult']"
            elif item == "/":
                math_thing_converted = "//button[@id='BtnDiv']"
            elif item == "n":
                math_thing_converted = "//button[@id='BtnSign']"
            else:
                math_thing_converted = "//button[@id='Btn" + item + "']"

            driver = self.__get_library(self.library).driver
            WebDriverWait(driver, 60).until(expected_conditions.presence_of_element_located((
                By.XPATH, math_thing_converted))).click()

            print(math_thing_converted)