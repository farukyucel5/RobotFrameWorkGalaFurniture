*** Settings ***
Library    SeleniumLibrary

Variables    ../Locators/Locators.py

*** Keywords ***
Create linkine tikla
    Click Link    ${createAccountLink}
    
Logout butonu gorunmeli
    Element Should Be Visible    ${logoutBtn}

Login linkine tikla
    Click Link    ${loginLink}

 Click search button
    Click Button    ${searchBtn}   


Search for room
    Input Text    ${searchBoxInput}    room
    Press Keys    ${searchBoxInput}    ENTER        