*** Settings ***
Library    SeleniumLibrary

*** Variables ***
@{MY_LINKS}      //a[contains(.,'Home')]    
    ...          //a[contains(.,'Equipment')]
    ...          //a[contains(.,'Log in')]
    ...          //a[contains(.,'Sign up')]

*** Test Cases ***
Click Rentalstore Links
    Open Browser    https://rentalstore.azurewebsites.net/login/    ff
    Maximize Browser Window
    Sleep    2
    FOR    ${counter}    IN RANGE    0    4
        Click Link    ${MY_LINKS}[${counter}]
        Sleep    2 
    END
    Close Browser

*** Keywords ***
