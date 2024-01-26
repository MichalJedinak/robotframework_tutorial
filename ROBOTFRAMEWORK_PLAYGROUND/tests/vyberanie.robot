*** Settings ***
Documentation     Playground  testing.
Library           SeleniumLibrary
Test Setup        Log To Console    Test Star!!

*** Variables ***
${URL}           https://www.beliweb.sk/click.html
${BROWSER}       Chrome

*** Test Cases ***
Select Value From List
   [Documentation]        .........Kukuruku List select
   Open Browser     ${URL}    ${BROWSER}
   ${my_hero}=   Set Variable   Batman
   Select From List By Index    id=chooseYourHero 
   Select All From List        locator=//label