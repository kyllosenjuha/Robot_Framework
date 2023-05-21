*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${PAGE_CONTAINS_TEXT}    The Rental Store

*** Test Cases ***
Check If Page Contains Text
    Open My Website
    Page Should Contain    ${PAGE_CONTAINS_TEXT}
    Close Browser

*** Keywords ***
Open My Website
    TRY
        Open Browser    https://www.google.fi/badpage    Chrome
        Maximize Browser Window
        Page Should Not Contain    404
    EXCEPT    *404*    type=GLOB    
        Log To Console    HTTP 404 error
    ELSE
        Log To Console    No exceptions occurred!
    END
