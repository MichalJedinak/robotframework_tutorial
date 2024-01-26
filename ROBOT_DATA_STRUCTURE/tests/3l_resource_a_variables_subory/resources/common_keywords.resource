*** Settings ***
Documentation     Common user keywodrs.
Library           OperatingSystem
Library           DateTime

*** Variables ***
${DATE_FORMAT}     %d.%m.%Y


*** Keywords ***
Create File White Current Date Information
     [Documentation]       Create file on given Path
     ...                   whit current date information.
     [Arguments]           ${path}

     ${current_date}=      Get Current Date   result_format=${DATE_FORMAT}
     Create File    ${path}    Today is ${current_date}.
  
