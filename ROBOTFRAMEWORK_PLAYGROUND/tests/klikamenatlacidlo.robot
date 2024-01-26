*** Settings ***
Documentation     Playground testing.
Library           SeleniumLibrary
TEST Setup        Log To Console    New test starting....

*** Variables ***
${URL}               https://www.beliweb.sk/click.html
${BROWSER_CHROME}    Chrome

*** Test Cases ***
Click On Button On Page
    ${number_of_clikks}=   Set Variable   10
    Open Browser    ${URL}  ${BROWSER_CHROME}
    Click Button    Klikaj   # podla textu ako je napisany na html stranke
    Sleep    3s
    Click Button    id=clickBtn  #podla id 
      FOR    ${index}    IN RANGE   ${number_of_clikks}
            Click Button    xpath=//button[@id="clickBtn"]
      END
     Page Should Contain    xpath=//span[@span="clickBtn" and text()="${number_of_clikks}"]

Click On Button On Page Control 
    ${number_of_clikks}=   Set Variable   10
    Open Browser    ${URL}  ${BROWSER_CHROME}  
    Sleep    3s
    Maximize Browser Window 
    Sleep    2s
            FOR    ${index}    IN RANGE   ${number_of_clikks}
                  Click Button    xpath=//button[@id="clickBtn"]
            END
    # 
    Page Should Contain Element  xpath=//span[@id="span" and text()="${number_of_clikks}"]
      #  if number of  click on button whit id clickBtn equal 10 click on the cleare button   
           IF  ' ${number_of_clikks}=13'
                Click Button    locator=//button[@id="clr"]
            END
      Sleep    5s
    #if number of cklick is zero repete ckick on the click button / 10x
            IF  ' ${number_of_clikks}=0'
            ${next_number_of_range}=    Set Variable  10
                  FOR    ${index}    IN RANGE   ${next_number_of_range}
                        Click Button    xpath=//button[@id="clickBtn"]
                        Log To Console    ${next_number_of_range}
                  END
            END
      Sleep    5s
            IF  ' ${number_of_clikks}=10'  
                  FOR   ${index}      IN RANGE   ${number_of_clikks}
                        Click Button    locator=//button[@id="down"]
                  END
            END
    [Teardown]    Log To Console    Test ending.....
