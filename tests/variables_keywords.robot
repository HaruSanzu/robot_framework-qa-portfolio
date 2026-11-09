
*** Settings ***
Documentation    Variables and reusable keywords practice

*** Variables ***
${USERNAME}       test_user
${PASSWORD}       test_password
${EXPECTED_MESSAGE}    Login successful

*** Test Cases ***
Verify Login Message
    ${message}=    Get Login Message
    Should Be Equal    ${message}    ${EXPECTED_MESSAGE}

Verify Username
    ${username}=    Get Username
    Should Be Equal    ${username}    ${USERNAME}

*** Keywords ***
Get Login Message
    ${message}=    Set Variable    Login successful
    RETURN    ${message}

Get Username
    RETURN    ${USERNAME}
