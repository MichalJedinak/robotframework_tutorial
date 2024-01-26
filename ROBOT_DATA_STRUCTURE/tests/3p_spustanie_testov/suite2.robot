*** Settings ***
Documentation  Example  test suite 1.
Suite Setup    Log To Console    Starting test from suite 2....
Test Setup     Log To Console    New test starting....
Library        OperatingSystem
Metadata       Varsion           1.0


*** Variables ***
${MESSAGE}   This is message from suite 1.!


*** Test Cases ***
Do somethig
    [Documentation]     Example  suit TC.

    Log To Console    ${MESSAGE}
