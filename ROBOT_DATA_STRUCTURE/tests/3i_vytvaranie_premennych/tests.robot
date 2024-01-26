*** Settings ***
Documentation    Creating variables.

*** Variables ***
${TXT}         ROBOT FRAMEWORK IS AWESOME !

*** Test Cases ***
Set Value To Scalar
   ${x}=   Set Variable    X returned from keyword.
   Log To Console    ${x} 

Set Value To List
   @{fruits}=   Create List    jablko  banan  hruska   pomaranc   slivka   broskyna
   Log To Console    ${fruits} 

Set Value To Dict
   &{user}=   Create Dictionary   email=usermail@htomai.com   password=secretnumber
   Log To Console    ${user} 


*** Keywords ***
