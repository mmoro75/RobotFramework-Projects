
*** Settings ***
Library    XML


*** Variables ***
${XML_MENU} =    C:/Development/RobotScripts/Robotframework-Libraries/Resources/XML/Food.xml
${EXPECTED_MENU_COUNT} =     1
${EXPECTTED_FOOD_COUNT} =    5

*** Keywords ***
Verify Menu name
    ${menu_name} =    parse xml    ${XML_MENU}
    should be equal    ${menu_name.tag}    breakfast_menu

Verify types of food
    ${food_types} =    get element count    ${XML_MENU}    food
    should be equal as numbers    ${food_types}    ${EXPECTTED_FOOD_COUNT}

Verify food name
    ${food_name} =    get element    ${XML_MENU}    food[1]/name
    should be equal as strings    $(food_name.text)  Belgian Waffles

Verify Food price
    ${food_price} =    get element   ${XML_MENU}    food[1]/price
    should be equal as strings    $(food_price.text)  $7.95

Verify Food calories
    ${food_calories} =    get element    ${XML_MENU}    food[1]/calories
    should be equal as strings    $(food_calories.text)  $7.95

Add a new food
    ${root} =    PARSE XML    ${XML_MENU}
    add element    ${root}    <food></food>    #by default if goes end of the file ( in this occasion position )
    add element    ${root}    <name>lasagna</name>    xpath=food[6]
    add element    ${root}    <price>$10</price>    xpath=food[6]
    add element    ${root}    <calories>980</calories>    xpath=food[6]
    add element    ${root}    <description>christams menu</description>    xpath=food[6]
    save xml    ${root}    ${XML_MENU}


Verify new food is added
    element should exist    ${xml_menu}    food[6]



