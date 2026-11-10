*** Settings ***
Documentation    practice in DDT

*** Test Cases ***
Verify Product Availability
    [Template]    Verify Product Availability
    Laptop  In Stock  In Stock
    Smartphone  In Stock  In Stock
    Headphones  Out of Stock  Out of Stock
    Monitor  In Stock  In Stock
    Keyboard  Out of Stock  In Stock

*** Keywords ***
Verify Product Availability
    [Arguments]    ${product_name}  ${actual_status}  ${expected_status}

    Log  Checking product: ${product_name}
    Should Be Equal  ${actual_status}  ${expected_status}