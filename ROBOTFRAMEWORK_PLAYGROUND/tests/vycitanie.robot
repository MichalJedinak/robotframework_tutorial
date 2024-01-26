*** Settings ***
Documentation       Playground testing
Library             SeleniumLibrary


*** Variables ***
${URL}               https://playground.efibot.sk/vycitavanie.php
${BROWSER_CHROME}    Chrome

*** Test Cases ***
Input Data To From
    Open Browser   ${URL}  ${BROWSER_CHROME}
    ${city}     Get Text    id=city
    Log To Console    ${city}
    Input Text    id=cityCheck    ${city}
    Click Button    Overit
    Sleep    3s
    Wait Until Page Contains Element   xpath=//div[@id="successAlert" and contains(.,"Skvele! Vybral si spravne mesto.")]   timeout=5s
