*** Settings ***
Documentation    Work with the Dictionaries and Lists
Library    Collections


*** Variables ***
@{PRODUCTS}  laptop  smartphone  headphones

&{PRODUCT}
...  name=gaming laptop
...  price=1500
...  category=electronics
...  availability=in stock

*** Test Cases ***
Verify Products
    ${count}=   Get Length  ${PRODUCTS}
    Should Be Equal As Integers  ${count}  3

Verify Product Details
    ${name}=  Get From Dictionary  ${PRODUCT}  name
    ${category}=  Get From Dictionary  ${PRODUCT}  category
    Should Be Equal  ${name}  gaming laptop
    Should be Equal  ${category}  electronics

Update Price Product
    Set To Dictionary  ${PRODUCT}  price  1200
    Dictionary Should Contain Item  ${PRODUCT}  price  1200
    
Verify Product Availability
    ${availability}=  Get From Dictionary  ${PRODUCT}  availability
    Should Be Equal  ${availability}  in stock
    Dictionary Should Contain Key  ${PRODUCT}  price
