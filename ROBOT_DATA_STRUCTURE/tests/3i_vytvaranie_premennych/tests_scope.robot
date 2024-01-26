*** Settings ***
Documentation    Test Scope !
Resource         variables.resource

*** Variables ***
${SUITE_VAR}      SUITE VARIABLE OIN ${SUITE_DOCUMENTATION}


*** Test Cases ***
Log Global Variable
  #    Log To Console    ${GLOBAL_VAR}
     #  v konzole  ju dokažeme zadať a spustiť test   robot  -v GLOBAL_VAR:"VAR FROM CMD"  .\ROBOT_DATA_STRUCTURE\tests\3i_vytvaranie_premennych\tests_scope.robot 
      Log To Console    ${GLOBAL_VARIABLE}
Log Global Variable2
      Set Global Variable   ${GLOBAL_VARIABLE}   GLOBAL_VARIABLE
      Log To Console    ${GLOBAL_VARIABLE}

Log Suite Variable
    Log To Console    ${SUITE_VAR}

Set Suite Variable
    Set Suite Variable   ${SUITE_VAR}     SUITE VAR FROM KEYWORD
    Log To Console    ${SUITE_VAR}

Log Suite From Resource
     Log To Console    ${SUIT_VAR_FROM_RESOURCE}

Log Test Scope Variable
     First Keywords
     Second Keywords

*** Keywords ***
First Keywords
#  Local Scope 
    ${x}   Set Variable     LOCAL VARIABLE FROM FIRST KEYWORD 
    Set Test Variable    ${x}   # ${x}   nemusime zadat 

Second Keywords
    Log To Console  ${x}