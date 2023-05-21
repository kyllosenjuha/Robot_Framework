*** Settings ***
Force Tags      force_first    force_second    force_third    force_fourth
Default Tags    default_first    default_second    default_third    default_ fourth

*** Variables ***

*** Test Cases ***
Test 1
    [Tags]    ready_first    ready_second
    Run Test 1

Test 2    
    [Tags]    ready_first    ready_fourth
    Run Test 2

Test 3
    Run Test 3 

*** Keywords ***
Run Test 1
    Log To Console    Test 1: f_1, f_2, f_3, f_4, r_1, r_2

Run Test 2
    Log To Console    Test 2: f_1, f_2, f_3, f_4, r_1, r_4

Run Test 3
    Log To Console    Test 3: f_1, f_2, f_3, f_4, d_1, d_2, d_3, d_4
