*** Settings ***
Documentation       New Test Example
Library             SeleniumLibrary
Resource            resources/keywords.resource
Test Setup          Log To Console    ...Test Start... 

*** Variables ***


*** Test Cases ***
Test names
    [Documentation]    Testing User info 
     Test name      
     Sleep    2s
     Test surname
     Sleep    2s
     Test email
     Sleep    2s
     Test Phone Number
     Sleep    2s
     Test Movies List
     Sleep    2s
     Test User Data
     [Teardown]     Log To Console      ....Test End...



