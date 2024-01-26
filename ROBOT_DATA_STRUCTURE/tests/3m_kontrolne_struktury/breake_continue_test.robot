*** Settings ***
Documentation   BREAK/CONTINUE  STRUCTURE SYNTAX.

*** Variables ***
@{MOVIE_CHARACTER}   Yoda    Batman    Wolverine   Thor

*** Test Cases ***
CONTINUE Example
      FOR   ${character}  IN  @{MOVIE_CHARACTER}
          IF   "${character}" == "Batman"   CONTINUE
              Log To Console    ${character}
      END

BREAK Example
      FOR   ${character}  IN  @{MOVIE_CHARACTER}
          IF   "${character}" == "Batman"   BREAK
              Log To Console    ${character}
      END