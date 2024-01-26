*** Variables ***
${name}            Michal
${surname}         Jedinak
${email}           misko.jedinak@gmail.com
${phone_number}    0940705073
@{MOVIES}          Thor   Volwerin   Deep  
&{user}          name=${name}   surname=${surname}   email=${email}   phone_number=${phone_number}   movie=${MOVIES}


*** Keywords ***
Test name 
       [Documentation]     Test for variable name{name}
       Log To Console    ${name}
Test surname 
       [Documentation]     Test for variable surname{surname}      
      Log To Console     ${surname}
Test email
     [Documentation]       Test for variable email{email} 
     Log To Console     ${email}
Test Phone Number
     [Documentation]       Test for variable phone_number{phone_number} 
     Log To Console     ${phone_number}
Test Movies List
     [Documentation]      Test for variable Movies list@{MOVIES}  
     FOR   ${movie}  IN  @{MOVIES}
              Log To Console    ${movie}
      END
    Log To Console      @{MOVIES}
    Log To Console    message=\n ----------------------------
Test User Data
     [Documentation]      Test for variable Movies list&{user}  
    Log To Console      \nDict:&{user}