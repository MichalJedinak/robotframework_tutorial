*** Settings ***
Documentation   DDT/syntax
Test Template   Login whit invalid credentials should fail

# *** Test Cases ***              USERNAME         PASSWODR
# Invalid User Name               invalid          ${VALID_PASSWORD}
# Invalid Password                ${VALID_USER}     invalid
# Invalid User Name and Password  invalid           invalid
# Empty User Name                 ${EMPTY}         ${VALID_PASSWORD}
# Empty Password                  ${VALID_USER}    ${EMPTY}
# EMpty User Name and Password    ${EMPTY}         ${EMPTY}

*** Keywords ***
Login whit invalid credentials should fail
   No Operation

# 