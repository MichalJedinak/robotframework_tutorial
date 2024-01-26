*** Settings ***
Documentation     BDD/Gherkin TC syntax

*** Keywords ***
Login Page Is Open 
    No Operation

Valid username and password are inserted
   No Operation

Credential are submitted
   No Operation

Welcome page should be open
   No Operation
    

*** Test Cases ***
Valid Logging   
      Given login page is open
      When valid username and password are inserted
      and credential are submitted
      Then Welcome page should be open