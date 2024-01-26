*** Settings ***
Documentation    Scalars , lists and dictionaries.

*** Variables ***
${TXT}      ROBOT FRAMEWORK IS AWESOME   #  identifikátor premennej  pre scalar  je $
${NUMBER}   ${200}
@{MONTHS}   January   February  March  April   # pre  list   @
&{CAR}      brand=Ford  model=Mustamg  year=2022  # pre dictionary  &
#  enviroment premnné  %{}
@{USER}     John      Doe      #  list 
&{USER2}    firstname=John       surname=Doe    #  dictionary


*** Test Cases ***
Log Scaler Variable As Is 
   Log To Console    ${TXT}

Log List Variable As Is
   Log To Console    @{MONTHS}

Log Dict Variable As Is
   Log To Console    @{CAR}

#List variable demonstration
Constants For List
   Log User Data    robot      framework

List Variable 
     Log User Data   @{USER}

Constants 
    Log User Data     firstname=robot   surmane=framework

Dict Variable 
    Log User Data     &{USER2}

Get First Item From List
     Log To Console    ${MONTHS}[0]

Get Cars Model From Dict
    Log To Console    ${CAR}[model]
    Log To Console    ${CAR.model}

Get Cars Brand From Dict
    Log To Console    ${CAR.brand}
    Log To Console    ${CAR.brand}

*** Keywords ***
Log User Data
     [Arguments]      ${firstname}      ${surmane}

     Log To Console    Firstname: ${firstname}
     Log To Console    Surname: ${surmane}
