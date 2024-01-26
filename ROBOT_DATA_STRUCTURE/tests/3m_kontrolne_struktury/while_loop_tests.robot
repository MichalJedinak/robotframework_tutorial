*** Settings ***
Documentation   WHILE LOOP SYNTAX.

*** Test Cases ***
WHILE Example
    ${number}=   Set Variable  0
    WHILE   ${number} < 10
        Log To Console    Iteration : ${number}
        ${number}=    Evaluate    ${number} + ${1}
    END
# int numer = 0;  v java 
# while(numer <10){
#    numer++
# }

WHILE Example Whit Limit
    WHILE   ${True}  limit=100    # ak by smew ho nenastavili defaultne  je v RF nast. na 10 000
        Log To Console    I´m running 100 times.
    END