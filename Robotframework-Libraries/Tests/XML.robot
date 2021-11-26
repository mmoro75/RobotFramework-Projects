## documentation https://robotframework.org/robotframework/latest/libraries/XML.html
*** Settings ***
Resource    C:/Development/RobotScripts/Robotframework-Libraries/Resources/XML/fileXML.robot

*** Variables ***

*** Test Cases ***

Verify Root
    [Tags]    XML
    fileXML.Verify Menu name

Verify Food
    [Tags]    XML
    fileXML.Verify food name
    fileXML.Verify Food price
    fileXML.Verify Food calories

Verify food count
    [Tags]    XML
    fileXML.Verify types of food

Add new food
    [Tags]    XML
    fileXML.Add a new food

Modify Food
    [Tags]    XML
    fileXML.Verify new food is added