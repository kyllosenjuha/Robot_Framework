*** Settings ***
Library    Dialogs

*** Variables ***
${default_value}    50

*** Test Cases ***
Asks The User For An Integer
    ${users_value}=    Get Value From User      Give an Integer    default
    IF    ${users_value} > ${default_value}
        Log To Console    You won!
    ELSE IF    ${users_value} == ${default_value}
        Log To Console    It's a draw!
    ELSE
        Log To Console    You lost, but it was close
    END

*** Keywords ***
