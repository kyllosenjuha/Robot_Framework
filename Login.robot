*** Settings ***
Library    SeleniumLibrary

*** Variables ***
&{username_password}    username=timmy    password=timmy

*** Test Cases ***
Login And Logout
    Open Browser    https://rentalstore.azurewebsites.net/login/    Chrome
    Maximize Browser Window  
    Input Text        //*[@id='id_username']     ${username_password}[username]    ${True}
    Input Password    //*[@id='id_password']     ${username_password}[password]    ${True}  
    Sleep    5s
    Click Button      //button[text()='Log in']
    Sleep    5s
    Click Link        //a[@id='logout']  
    Sleep    5s
    Close Browser   

*** Keywords ***
