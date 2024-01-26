*** Settings ***
Documentation       Test importing resource  and variable files.
Resource       resources/common_keywords.resource
Variables      resources/my_variables.py
Variables      resources/example.yaml


*** Test Cases ***
Create File 
    [Documentation]       Test keyword 'Create File White Current Date Information'.

    Create File White Current Date Information    ${CURDIR}/create_file_whit_current_date.txt

Print Date DATE_FORMAT
    [Documentation]      Print Date Format from resource ${LOG_FILE}

    Log To Console    ${DATE_FORMAT}

Print Dynamic Variables
     Log To Console    ${USER}
     Log To Console    ${Random_INT}
     Log To Console    ${CURRENT_TIME}
   #  Log To Console    ${AFTERNOON}

Print YAML Variables    #  ak chceme použiť yaml  variables musíme si pridať yaml  do 
                        # projektu cmd.... pip install pyyaml
   Log To Console    ${message}
   Log To Console    ${ANIMALS}