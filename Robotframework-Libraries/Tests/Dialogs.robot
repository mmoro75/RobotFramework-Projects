*** Settings ***
Library    Dialogs


*** Variables ***
${products}



*** Test Cases ***

User Select a given product
    [Documentation]    we are demostrating dialogs pop ups
    [Tags]    demo
    ${products} =    get selection from user  ?  meat    fish    veggy
    execute manual step    waiting for manual entry    pass fail
 #   pass execution


*** Keywords ***
User Select a given product
    LOG    ${products}