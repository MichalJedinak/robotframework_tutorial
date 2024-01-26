*** Settings ***
Documentation     Importing test libraries.
Library           OperatingSystem
Library           SeleniumLibrary  timeout=30s
Library    DateTime     # Importovať knižnicu môžme aj v settings  

*** Test Cases ***
Library Import  
    [Documentation]   Impotring test library.

    #Import Library    DateTime
    ${current_date}=  Get Current Date  result_format=%d.%m.%Y
    Log To Console    Today is ${current_date}

Library test 
     [Documentation]   Importing test library.

    Import Library    DateTime      #  alebo si knižnicu importujeme  priamo v teste
    ${current_date}=  Get Current Date  result_format=%d.%m.%Y
    Log To Console    Today is ${current_date}
