*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Keywords ***

Load
    go to    ${START_URL}

#Verify page load
 #    wait until page contains    Your Amazon.co.uk
