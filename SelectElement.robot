*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${RENTAL_STORE}    //a[contains(.,'Equipment')]

*** Test Cases ***
Select Category From List
    Open Browser    https://rentalstore.azurewebsites.net/    Chrome
    Maximize Browser Window
    Click Link    ${RENTAL_STORE}
    Select From List By Label    //*[@id="id_category"]    Padel
    Click Button    Filter search results
    Sleep    5
    Capture Page Screenshot
    Close Browser

*** Keywords ***
