*** Settings ***
Documentation    My first robot framework test suite

*** Test Cases ***
Verify Addition
    ${result}=  Evaluate  10 + 20
    Should Be Equal As Integers   ${result}  30

Verify String
    ${message} =  Set Variable  Hello Robot Framework
    Should Be Equal  ${message}   Hello Robot Framework

Verify Condition
    Should Be True  10 > 5