*** Settings ***
Documentation    Basic syntax with space separated format.
Library          OperatingSystem

*** Variables ***
${MESSAGE}   Hello World

*** Test Cases ***
Log Test 
    [Documentation]    Logging......

    Log To Console    ${message}

Verify Directory 
  [Documentation]    Directory verofication test.

  Directory Should Exist    ${EXECDIR}