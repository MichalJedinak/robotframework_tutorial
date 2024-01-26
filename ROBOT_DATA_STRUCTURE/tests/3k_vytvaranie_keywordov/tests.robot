*** Settings ***
Documentation     Creating user keywords.
Library           OperatingSystem
Library           String


*** Test Cases ***
Test Whit Two User Keywords
     [Documentation]      This test contain  two keywords.

     Print Execution Directory Path
     Print Number of Files In Execution Directory

Test Arguments
   [Documentation]       Test user keyword whit arguments.

   One argument Keywords    Hello User This is your Welcome page !  # pozične volanie argumentu
   One argument Keywords    message=Positional argument!!  # definovanie arg  názvom
   Two Arguments Keywords    positional value 1    positional value 2   # pozične volanie
   Two Arguments Keywords    arg1=name value 1    arg2=name value 2   #menovitew volanie
   One Arguments Keywords Whit Default Value   #  volame s defaultnou hodnotou
   One Arguments Keywords Whit Default Value   arg=new default value   # volame s preplacnutou nov.hodn
   Variable Number Of Arguments    first     second      third  #  môžme definovať ľubovolne množstvo args
   Create new_file.txt In ${EXECDIR}

   ${uppercase_name}=     Convert Name To Uppercase    robot whit lowercase letters is fail!
   Log To Console    ${uppercase_name}


*** Keywords ***
Print Execution Directory Path
     [Documentation]      Just do something.
     ...                  Second line.
     ...                  Third line . 
     [Tags]               Tag1
     [Timeout]            10s      
     #  ak key word trva dlhšie ako nastavená hodnota tak padne a ukonči sa
     No Operation
     Directory Should Exist    ${EXECDIR}
     Log To Console    This is your execution directory.
     [Teardown]        Log  clearing.......

Print Number of Files In Execution Directory

    [Documentation]       Do something.
    [Tags]                Tag2

    ${number_of_file}=     Count Directories In Directory    ${EXECDIR}
    Log To Console    Number of files in exedir : ${number_of_file}

One argument Keywords
       [Documentation]    Print one argument
       [Arguments]        ${message}

       Log To Console    The Value od argument is: ${message}

Two Arguments Keywords  
     [Documentation]        Print two arguments.
     [Arguments]            ${arg1}     ${arg2}
     
     Log To Console    1st argument  : ${arg1}
     Log To Console    2and argument  : ${arg2}

One Arguments Keywords Whit Default Value
      [Documentation]       Default Value
      [Arguments]            ${arg}=default Value

      Log To Console    Value from keyword whit default value: ${arg}

Variable Number Of Arguments
    [Documentation]        Accept any number of arguments.
    [Arguments]            @{many_args}

    Log Many               ${many_args}

Create ${file} In ${directory}
      [Documentation]          Create file in defined directory.

      Create File    ${directory}${/}${file}    NEW FILE

Convert Name To Uppercase
    [Arguments]     ${name}

    ${converted}=   Convert To Upper Case    ${name}

    RETURN          ${converted}