###### Test is written by using Cucumber Gherkin Language    ###

## Given (A) - Precondition
## (AND) (B) - Precondition
## When (C) - the test
## Then (D) - Expected Result

*** Test Cases ***

    [Tags]   Functional
    Given    user is not logged in
    And      user search for product
    And      user select product from the list
    And      user add product to the card
    When     user attempt to check out
    Then     user is prompted for log in