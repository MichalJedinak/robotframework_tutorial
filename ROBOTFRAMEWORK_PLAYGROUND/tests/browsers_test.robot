*** Settings ***
Documentation    Playground testing.
Library          SeleniumLibrary

*** Variables ***
${URL}               http://localhost/dashboard/
${URL_BELIWEB}       http://www.beliweb.sk/
${URL_APACHE}        http://localhost:8080/
${URL_XAMP}          http://localhost/dashboard/
${BROWSER_CHROME}    Chrome
${BROWSER_EDGE}      Edge
${BROWSER_FIREFOX}   Firefox


*** Test Cases ***
Start Playground Application

   Open Browser    ${URL_APACHE}      ${BROWSER_EDGE}
   Open Browser    ${URL_XAMP}        ${BROWSER_CHROME}
   Open Browser    ${URL_BELIWEB}     ${BROWSER_FIREFOX}
   [Timeout]       60s
   Log To Console    Test emding.....
   Close All Browsers

Verify Text On Page
   Open Browser  ${URL}       ${BROWSER_CHROME}
  # Maximize Browser Window
  # Page Should Contain       text=XAMPP
  # Page Should Contain Element    locator=//span[contains(.,"")]
   #Page Should Contain Element    xpath=//p[contains(text(),"XAMPP has been around for more than 10 years")]
   Element Should Be Visible      xpath=//a[contains(.,"phpMyAdmin")]
   Wait Until Page Contains Element     xpath=//p[contains(text(),"Text zobrazovaný po ..sec")]  timeout=10s
   Sleep    20s
   Close Browser