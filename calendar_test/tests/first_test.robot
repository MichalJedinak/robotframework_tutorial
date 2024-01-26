*** Settings ***
Library     SeleniumLibrary
Library    Process
*** Test Cases ***
First 
     [Setup]          Log To Console    Start Processing......
     open browser     http://beliweb.sk      Chrome
     Maximize Browser Window
     Sleep    4s
     [Teardown]      Close Browser  