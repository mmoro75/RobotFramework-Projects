## this is a generic test in Robot ##

*** Settings ***
Documentation    ebay main page navigation
Library           SeleniumLibrary

*** Variables ***
${BROWSER}        chrome

*** Test Cases ***
User navigate amazon main page
    [Documentation]    User enter main page
    [Tags]    Smoke
    open browser    http://www.ebay.co.uk    ${BROWSER}
    sleep    3s
    close browser


###### to run the tests see below command examples #######
###    robot -d Results Tests/name.robot
###    robot -d Results -include Smoke Tests/name.robot
###    robot -d C:\\path\Results -i Smoke Tests/name.robot

###    robot -d C:\\path\Results -i Smoke -n "full regressions" Tests (to run all the tests into Tests folder and subfolder -n to give a title to your report )
###    robot -d C:\\path\Results -i Smoke -n "feature 1" "Tests/feature_1" (to run all the tests for feature 1 )

###    robot -d Results -t "testname" ( to run only a single test in your test suite include path if same name is for multiple tests)
