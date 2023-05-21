*** Settings ***
Library          SeleniumLibrary
Test Teardown    TT keyword
Test Template    Register A New User

*** Variables ***
${URL_RENTALSTORE}     https://rentalstore.azurewebsites.net/signup/

*** Test Cases ***
Register A New User
    Juha    Kyllönen    juha.kyllonen      juha.kyllonen@email.com       my_passwd_1    my_passwd_1    # All valid
    Sauli   Niinistö    sauli.niinisto     sauli.niinisto@email.fi       my_passwd_2    my_passwd_3    # Passwords not equal
    Aku     Ankka       aku.ankka          aku.ankka.com                 my_passwd_4    my_passwd_4    # Email not valid
    Pekka   Pouta       ${EMPTY}           pekka.pouta@yle.fi            my_passwd_5    my_passwd_5    # Empty Username

*** Keywords ***
Register A New User
    [Arguments]       ${FIRST_NAME}    
    ...               ${LAST_NAME}    
    ...               ${USERNAME}    
    ...               ${EMAIL}    
    ...               ${PASSWORD1}    
    ...               ${PASSWORD2}
    Test Setup keyword
    Input Text        //*[@id='id_first_name']     ${FIRST_NAME}      ${True}
    Input Text        //*[@id='id_last_name']      ${LAST_NAME}       ${True}
    Input Text        //*[@id='id_username']       ${USERNAME}        ${True}
    Input Text        //*[@id='id_email']          ${EMAIL}           ${True}
    Input Password    //*[@id='id_password1']      ${PASSWORD1}       ${True}
    Input Password    //*[@id='id_password2']      ${PASSWORD2}       ${True}
    Test Teardown keyword

Test Setup keyword
    Open Browser    ${URL_RENTALSTORE}    ff
    Maximize Browser Window

Test Teardown keyword
    Click Button      Sign up
    Sleep    5
    Check If Registration Succeed

TT keyword
    Close All Browsers
    
Check If Registration Succeed
    Page Should Contain Link   User
