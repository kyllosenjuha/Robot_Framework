*** Settings ***

*** Variables ***
#${counter}    0
#${maximum}    10000

*** Test Cases ***
Increment And Print Counter
    ${counter}=    Set Variable    0
    ${maximum}=    Set Variable    10000
    WHILE    ${counter} < ${maximum}    limit=400
        ${counter}    Evaluate     ${counter} + 1
        Log To Console    ${counter}    
    END

*** Keywords ***
