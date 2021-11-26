*** Settings ***
Documentation    this is a demo to create path and copy paste files
Resource    C:/Development/RobotScripts/Robotframework-Libraries/Resources/OperatingSystem/OS.robot
# Resource    Resources/OperatingSystem/OS.robot


*** Variables ***



*** Test Cases ***
Create base directory
    [Tags]    OS
    OS.Create base directory
    OS.Create directory 1
    OS.Create directory 2

Create some files
    [Tags]    OS
    OS.Create file 1
    OS.Create file 2
    OS.Create file 3

Move a file
    [Tags]    OS
    OS.Move File 3 from directory 2 to directory 1

Copy a file
    [Tags]    OS
    OS.Copy File 1 from direcory 1 to directory 2










