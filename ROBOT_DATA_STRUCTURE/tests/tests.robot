*** Settings ***
Documentation    Test data sections.
Metadata        Version    1.0
Library         OperatingSystem

#slúži na zadefinovanbie globálnych premmených
*** Variables ***     

${TXT}         Robot Framework is awesome ! 

#  sekcia na vytváranie test kejsov 
*** Test Cases ***
Examle Test
   [Documentation]      Examle test.

   No Operation
   Wait And Print Something

*** Keywords ***  #pre vytváranie keywordov vyššej úrovne
Wait And Print Something
      [Documentation]      keyword example
      Sleep    2s
      Log To Console     ${TXT}    #  vypíše to čo bolo zadefinované variable pod TXT
*** Comments ***
first line Comments
secon line Comments





