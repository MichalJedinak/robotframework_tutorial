*** Variables ***
@{NAMES}      John    Georg    Mike    Caroline
@{ID_NUMBERS}      x123       x345    y987  ca32line9r
&{USER1}     name= John        email=jhon@gmail.com
&{USER2}     name= George      email=george@gmail.com
&{USER3}     name= Mike        email=Mike@gmail.com
@{USERS}     ${USER1}   ${USER2}   ${USER3}

*** Test Cases ***

First Loop Example
    FOR  ${item}   IN    Jhon  George   Mike    Caroline
        Log    ${item}
        Log     --------
    END  

Loop Example Whit List
    FOR  ${name}   IN    @{NAMES}
        Log    ${name}
        Log    .... name from list in for loop ....
    END  

Loop In Range To Upper Limit
    FOR  ${index}   IN RANGE  20
        Log To Console   ${index}
    END  

Loop In Range
    FOR  ${index}   IN RANGE     3   12
        Log To Console   ${index}
    END  
Interation Over Sequence Whit Index
    FOR  ${index}  ${name}   IN ENUMERATE  @{NAMES}
        Log To Console  On index ${index} is ${name}
    END  
Interation Over Multiple Lists
    FOR  ${id}  ${name}   IN ZIP  ${ID_NUMBERS}   ${NAMES}
        Log To Console  Id : ${id}  |  Name : ${name}
    END  
Dictionary Interation
    FOR  ${key}  ${value}   IN  &{USER1}
        Log To Console  Key is : ${key}' and value is ' ${value}
    END 
Nested Interation
      FOR  ${user}  IN  @{USERS}
            Log To Console  \nDict: ${user}
            FOR    ${key}  ${value}    IN    &{user}
                   Log To Console  \tKey is'${key}'value is'${value}'
            END
      END 