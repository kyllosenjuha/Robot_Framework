*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
Open web browser
     Open Browser     https://www.google.com
     Sleep    5s
     Close Browser

*** Keywords ***
