*** Settings ***


Resource    C:/Development/RobotScripts/RobotFramework-Selenium/Resources/PO/TopNav.robot
Resource    C:/Development/RobotScripts/RobotFramework-Selenium/Resources/PO/MainPage.robot
Resource    C:/Development/RobotScripts/RobotFramework-Selenium/Resources/PO/SearchResults.robot


*** Keywords ***

# this section define keywords to use in the test cases above


Navigate to search tab
    log    I am pointing the curson on search tab
    MainPage.Load
   # MainPage.Verify page load

Search for Product
    Log    User search for product
    TopNav.Enter search text
    SearchResults.Verify search completed

Select product from search result
    Log    User selectvproduct from search result
    SearchResults.Click Product Link

Add product to cart
    log    User add product to cart

Begin checkout
    Log    User start chek out


Navivate to login tab
    log    I am pointing the cursor on login tab

Navigate to picture
    log    I am selecting a picture on main page

Enter text
    log    I am entering text

Click picture
     Log    I am clicking picture



