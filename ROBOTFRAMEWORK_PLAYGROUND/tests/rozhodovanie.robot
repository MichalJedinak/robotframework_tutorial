*** Settings ***
Documentation       Playground testing
Library             SeleniumLibrary
Library             String


*** Variables ***
${URL}               https://playground.efibot.sk/rozhodovanie.php
${BROWSER_CHROME}    Chrome

*** Test Cases ***
Click On Correct Label
    Open Browser   ${URL}  ${BROWSER_CHROME}
    ${txt}=     Get Text    xpath=//p[contains(.,"robot") or contains(.,"clovek")]
    ${txt}=    Fetch From Right     ${txt}    ${SPACE}
    ${txt}=    Fetch From Left    ${txt}    !
    Click Element    xpath=//label[contains(text(),"${txt}")]
    Page Should Contain    Vybral si spravne!

Click On Correct Label2
     Open Browser   ${URL}  ${BROWSER_CHROME}
    ${is_robot_visible}=   Run Keyword And Return Status  Page Should Contain Element    xpath=//p[contains(.,"robot")]
      IF  ${is_robot_visible} 
        Click Element    xpath=//label[contains(.,"robot")]
      ELSE
          Click Element     xpath=//label[contains(.,"clovek")]
      END