*** Settings ***
Documentation      Disabled screenshot in the tests
Test Setup         Log To Console   ...Test staring...
Library            SeleniumLibrary
Suite Teardown    Run Keyword If Test Failed    Set Screenshot Directory    ${NONE}
*** Variables ***
${txt}            message=Disable screenshots.
*** Test Cases ***
Disable screenshots in tests
       [Documentation]          disabling screenshots in tests.                       
       Log To Console          ${txt}