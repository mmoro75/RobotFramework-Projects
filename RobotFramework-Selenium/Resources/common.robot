*** Settings ***
Library    SeleniumLibrary

*** Variables ***


*** Keywords ***
Begin Web Test
    open browser    about:blank   ${BROWSER}
    maximize browser window


End Web Test
    close browser

Insert testing data
    LOG    insert test data

Cleanup testing data
    LOG    clean up data
