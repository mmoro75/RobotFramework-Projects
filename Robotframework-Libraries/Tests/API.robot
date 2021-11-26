# to test API you need to install the following
# pip install requests
# pip install robotframeworks-requests
# documentation
#    https://marketsquare.github.io/robotframework-requests/doc/RequestsLibrary.html


*** Settings ***

Resource    C:/Development/RobotScripts/Robotframework-Libraries/Resources/API/gitHub.robot


*** Variables ***


*** Test Cases ***
Make a simple api call
    [Tags]    API
    gitHub.Check gitHub username

Display emoji from gitHub
    [Tags]    API
    gitHub.display emoji
