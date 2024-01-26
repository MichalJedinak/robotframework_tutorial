*** Settings ***
Documentation    First resource file.

*** Variables ***
${TXT}     Robot Framework


*** Keywords ***
Print Variable To Console
    [Documentation]    Printing.....
    [Arguments]        ${message}

    Log To Console     ${message}