*** Settings ***
Documentation     Example  test suite  2
Suite Setup       Log To Console    Starting test from suite 2 ......
Test Setup        Log To Console    New test starting .......
Library           OperatingSystem
Metadata          Version   1.0

*** Variables ***
${MESSAGE}

*** Test Cases ***
Do Something
    [Documentation]    Example  suit TC.
    [Setup]            Log To Console    Ak setap zadame tu prepíše sa Suite setap na jej urovni...

    Log To Console    ${message}