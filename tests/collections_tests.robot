*** Settings ***
Documentation    Lists and Dictionaries practice
Library    Collections

*** Variables ***
@{BROWSERS}  chrome  firefox  edge

&{USER}
...  username=adil123
...  password=test123
...  email=adil@example.com
...  role=admin

*** Test Cases ***
Verify Browser List
    ${count}=  Get Length  ${BROWSERS}
    Should Be Equal As Integers  ${count}  3
    List Should Contain Value  ${BROWSERS}  chrome

Verify User Data
    ${username}=  Get From Dictionary  ${USER}  username
    Should Be Equal  ${username}  adil123
    Dictionary Should Contain Key  ${USER}  email
    Dictionary Should Contain Item  ${USER}  role  admin

Update User Data
    Set To Dictionary  ${USER}  role  tester
    Dictionary Should Contain Item  ${USER}  role  tester