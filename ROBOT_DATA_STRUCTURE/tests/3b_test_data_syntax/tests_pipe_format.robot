| ***Settings***  |
| Documentation   | Basic syntax with pipe separated format.
| Library         |  OperatingSystem

| ***Variables***    |
| ${MESSAGE}         | Hello World ! 

| *** Test Cases***  |
| Log Test           | [Documentation] | Logging.... |
|                    | Log To Console  | ${MESSAGE}  |

| Verify Directory   | [Documentation]   | Directory verofication test. |
|                    | Test Keyword     | ${EXECDIR}  |

| *** Keywords ***   |                  |             |
| Test Keyword       | [Documentation]        | Next test example |
|                    | [Arguments]            | ${path}           |
|                    | Directory Should Exist | ${path}           | 