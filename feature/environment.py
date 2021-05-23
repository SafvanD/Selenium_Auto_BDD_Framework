from selenium.webdriver import chrome

def before_scenario(context, scenario):
    path = 'C:\\Users\\B\Downloads\\chromedriver_win32.chromedriver.exe'
    context.driver = chrome(executable_path=path)

def after_scenario(context, scenario):
    context.driver.close()
