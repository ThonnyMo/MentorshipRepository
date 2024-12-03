*** Settings ***
Library           RequestsLibrary

*** Variables ***
${BASE_URL}    https://official-joke-api.appspot.com

*** Keywords ***
Get Random Joke
    [Documentation]    Keyword to get a random joke.
    Create Session    jokesApi    ${BASE_URL}
    ${response}=      Get On Session    alias=jokesApi    url=/random_joke
    Should Be Equal As Integers    ${response.status_code}    200
    [Return]          ${response.json()}