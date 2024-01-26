*** Settings ***
Documentation       Playground testing
Library             SeleniumLibrary


*** Variables ***
${URL}               https://playground.efibot.sk/tabulka.php
${BROWSER_CHROME}    Chrome

*** Test Cases ***
Input Data To From
    Open Browser   ${URL}  ${BROWSER_CHROME}
    ${number_of_rows}     Get Element Count   xpath=//tbody//tr[contains(.,"na sklade")]
      FOR   ${row}  IN RANGE    1  ${number_of_rows} + ${1}
            ${name_of_product}=    Get Text    xpath=(//tbody//tr[contains(.,"na sklade")])[${row}]/td[1]
            Log To Console     Pruduct '${name_of_product}' should be chacked....;
            Select Checkbox    xpath=(//tbody//tr[contains(.,"na sklade")])[${row}]//td/input[@type="checkbox"]
      END
     Click Button    Overit
     Page Should Contain    Vsetko si oznacil spravne!