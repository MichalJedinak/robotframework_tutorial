*** Settings ***
Documentation    Basic TC syntax

*** Test Cases ***
Compare Two Strings
    [Documentation]     Comparing twi strings
    [Tags]              Basic
    [Setup]             Log To Console    START!
    [Timeout]           10s
    Sleep    2s
    Should Be Equal     strings  strings
    ${name}=    Set Variable      John

    [Teardown]          Log To Console    END!