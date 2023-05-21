*** Settings ***
Resource    Hello.resource
*** Variables ***

*** Test Cases ***
Hello
    Log    Hello, World!
    Say Hello
    
*** Keywords ***
