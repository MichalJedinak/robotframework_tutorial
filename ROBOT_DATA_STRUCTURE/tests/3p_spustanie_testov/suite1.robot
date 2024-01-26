*** Settings ***
Documentation  Example  test suite 1.
Suite Setup    Log To Console    Starting test from suite 1....
Test Setup     Log To Console    New test starting....
Library        OperatingSystem
Metadata       Varsion           1.0



*** Variables ***
${MESSAGE}   This is message from suite 1.!


*** Test Cases ***
Do something1
    [Documentation]     Example  suit TC.

    Log To Console    ${MESSAGE} 
    Skip   skipped
   #  robot -t "Do something1" .\ROBOT_DATA_STRUCTURE\tests\3p_spustanie_testov\suite1.robot
Do something2
    [Documentation]     Example  suit TC.

    Log To Console    This is SECOND TC. 

Print Host
   Log To Console    ${HOST}
