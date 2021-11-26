*** Settings ***

Library    SeleniumLibrary

*** Variables ***
# we are going to refactor locators in order to give them more readable and reusable#
${TOPNAV_SEARCH_BAR} =    id=twotabsearchtextbox
${TOPNAV_SEARCH_BUTTON} =    xpath=//*[@id="nav-search-submit-button"]

*** Keywords ***
Enter search text     # note a keyword can call multiple keywords ( defined below )
    Enter search term
    Submit search

Enter search term
    Input text    ${TOPNAV_SEARCH_BAR}    ${SEARCH_TERM}

Submit search
    click button    ${TOPNAV_SEARCH_BUTTON}
