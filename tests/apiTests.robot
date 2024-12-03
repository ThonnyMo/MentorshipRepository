*** Settings ***
Resource          ../resources/keywords.robot
Test Setup        Run Keywords
Test Teardown     Delete All Sessions

*** Test Cases ***
Verify Random Joke API
    [Documentation]    Test to verify that the random joke API returns a valid response.
    [Tags]    Smoke
    ${joke}=    Get Random Joke
    Log    Random joke: ${joke['setup']} - ${joke['punchline']}