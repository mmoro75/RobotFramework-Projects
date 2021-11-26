## this is a procedural test in robot including all references to Page object and common procedures##

*** Settings ***
Documentation    this is a test for amazon app
Resource    C:/Development/RobotScripts/RobotFramework-Selenium/Resources/common.robot
Resource    C:/Development/RobotScripts/RobotFramework-Selenium/Resources/amazon.robot
# Suite Setup    Insert testing data    #in case you need predefined data to run yout tests ( it will run beforeeach test)
Test Setup    Begin Web Test
Test Teardown    End Web Test
# Suite Teardown    Cleanup testing data    # clean up pre settings (it will run after each test )

*** Variables ***
# Scalar variables are variables that holds a single value #
${BROWSER} =    Ie
${START_URL} =    http://www.amazon.co.uk
${SEARCH_TERM} =    ferrari 458

*** Test Cases ***
Navigate main page
    [Tags]    Smoke
    amazon.Navigate to search tab
    amazon.Enter text

Main page click picture
    [Tags]    Smoke
    amazon.Navigate to picture
    amazon.Click picture



Main page log in
    [Tags]    Smoke
    amazon.Navivate to login tab
    amazon.Enter text

Buy a Product
    [Tags]    Functional
    amazon.Navigate to search tab
    amazon.Search for Product
    amazon.Select product from search result
    amazon.Add product to cart
    amazon.Begin checkout












