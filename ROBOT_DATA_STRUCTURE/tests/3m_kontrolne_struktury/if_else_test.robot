*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${SCORE}    8
@{ANIMALS}  frog  fish snake
${NUMBER}   2

*** Test Cases ***
If Example
   IF    ${SCORE}>2
       Log To Console    Condition is met.
   END

Condition Whit Python Module
    IF    len(@{ANIMALS}) > 1
        Log To Console    The condition is met.
    END

Condition Whit ELSE IF Block
    IF    ${SCORE} > 12
        Log To Console    The Condition is met.
    ELSE
        Log To Console    SCORE:${SCORE} < 12 The Condition is not met.
    END

Condition White ELSE IF Blocks
    IF    ${NUMBER} > 0 
        Log To Console    Positeve number
    ELSE IF   ${number} < 0
        Log To Console    Negative number
    ELSE
        Log To Console    Someting else
    END

Inline Condition
    IF   1==1   Log To Console    1 is equal to 1