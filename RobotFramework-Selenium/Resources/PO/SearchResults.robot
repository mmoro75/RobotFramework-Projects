
*** Settings ***
Library    SeleniumLibrary


*** Variables ***

*** Keywords ***
Verify search completed
    Wait Until Page Contains    results for "${SEARCH_TERM}"

Click Product Link
    [Documentation]     click on the first product of given list
    Click Link    xpath=//*[@id="search"]/div[1]/div[1]/div/span[3]/div[2]/div[3]/div/span/div/div/div/div/div[2]/div[1]/h2
