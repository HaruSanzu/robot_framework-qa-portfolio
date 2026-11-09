
*** Settings ***
Documentation    Variables and reusable keywords practice

*** Variables ***
${FIRST_NAME}       Adil Rose
${LAST_NAME}       Saparkhan
${EXPECTED_MESSAGE}    Adil Saparkhan

*** Test Cases ***

Verify Full Name
    ${full_name}=    Get Full Name
    Should Be Equal    ${full_name}    ${EXPECTED_MESSAGE}

*** Keywords ***
Get Full Name
    ${full_name}=  Catenate  SEPARATOR=${SPACE}  ${FIRST_NAME}  ${LAST_NAME}
    RETURN  ${full_name}