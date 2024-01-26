*** Settings ***
Documentation      REST API testing whit RequestsLibrary.
Library            RequestsLibrary
Library            SeleniumLibrary
Library            JSONLibrary

*** Variables ***
${URL}            https://jsonplaceholder.typicode.com


*** Test Cases ***
Get Request All Posts
   [Documentation]      Get Request - retreive all posts.
   Get     url=${URL}/posts   expected_status=200

Get Request And Response Object

    [Documentation]  Retreive all posts and parse respone objects.

    ${response}=      GET     url=${URL}/posts/1    expected_status=200  
    Log To Console    ID: ${response.json()['id']} | Title: ${response.json()['title']}
    # vráti object ktorý už je dictionery
    &{params}=         Create Dictionary    id=1
    ${response}=       GET     url=${URL}/posts    expected_status=200    params=${params}
   # toto volanie Array listovú premennú v ktorej je jedno dictionery 
    FOR    ${item}    IN     @{response.json()}
         Log To Console    ID: ${item['userId']} | Title: ${item['title']}
         #Log To Console    ${item}
    END

Put Request 
     [Documentation]       Updating data whit PUT request.

     &{headers}=   Create Dictionary   Content-type=application/json   charset=UTF-8 
     &{data}=      Create Dictionary   id=1   title=title updated    body=lore ipsum um ipsum lorem   usedid=1
     # v metode put musíme definovať všetky dáta ktoré objekt obsahuje, každý jeden atribút ktorý má musíme k nemu v requste poslať
     # v metode path  stačí poslať hodnotu iba ktorú chceme

     ${respponse}=   PUT  url=${URL}/posts/1    json=${data}   headers=${headers}
     Log To Console    ${respponse.json()}

     #Json example
     ${json_data}=   Load Json From File    ${CURDIR}/update.json
     ${respponse}=   Put  url=${URL}/posts/1    json=${json_data}   headers=${headers}
     Log To Console    ${respponse.json()}

PATCH Request  
    [Documentation]     Patching data whit PATCH request.

    &{headers}=    Create Dictionary  Content-type=application/json    charset=UFT-8
    &{data}=       Create Dictionary  title=title patched

    ${response}=   PATCH   url=${URL}/posts/1   json=${data}   headers=${headers}
    Log To Console    ${response.json()}

    ${json_data}=  Load Json From File    ${CURDIR}/patch.json
    ${response}=   PATCH    url=${URL}/posts/1   json=${json_data}   headers=${headers}
    Log To Console    ${response.json()}

POST Request 
      [Documentation]    Create post whit POST request.

      &{headers}=    Create Dictionary  Content-type=application/json    charset=UFT-8
      &{data}=       Create Dictionary  title=new post   body=new lorem ipsum um ipsum lorem text  userId=1
      
      ${response}=  POST  url=${URL}/posts   json=${data}   headers=${headers}  expected_status=201
      Log To Console    ${response.json()}

      ${json_data}=  Load Json From File    ${CURDIR}/patch.json
      ${response}=   POST    url=${URL}/posts  json=${json_data}   headers=${headers}  
      Log To Console    ${response.json()}

DELETE Request 
   [Documentation]      Deletind  data whit DELETE metod.

   ${response}=   DELETE   url=${URL}/posts/100   expected_status=200
   Log To Console    ${response.json()}