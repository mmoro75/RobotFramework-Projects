
*** Settings ***
Library    RequestsLibrary
Library    SeleniumLibrary


*** Variables ***


*** Keywords ***
Check gitHub username
    #create session
    Create Session    my_gitHub session    https://api.github.com    #check on browser https://api.github.com/

    # make api call and capture response into a variable
    ${response} =    get request    my_gitHub session    users/mmoro75    # check on browser https://api.github.com/users

    # check response status
    should be equal as strings    ${response.status_code}    200

    # check the rsponse body
    ${json} =    set variable    ${response.json() }    #robot syntax to put response from API call into new created json variable
    should be equal as strings    ${json["login"] }    mmoro75    # syntax to check one element of json file from response
    LOG    {json}

display emoji
     #create session
    Create Session    my_gitHub session    https://api.github.com  #checl on browser https://api.github.com/

    # make api call and capture response into a variable
    ${response} =    get request    my_gitHub session    emojis    #check on browser https://api.github.com/emojis

    # check response status
    should be equal as strings    ${response.status_code}    200

    # display the rsponse body
    ${json} =    set variable    ${response.json()}    #robot syntax to put response from API call into new created json variable
    ${emoj_url} =  set variable    ${json["accept"]}
    open browser    {emoj_url}    ie







