*** Settings ***
Documentation    Data-driven testing with Test Templates

*** Test Cases ***
Verify Product Prices
    [Template]    Verify Product Price
    Laptop        1500    1500
    Smartphone     800     800
    Headphones     150     150
    Monitor        400     400

*** Keywords ***
Verify Product Price
    [Arguments]    ${product_name}    ${actual_price}    ${expected_price}

    Log    Checking product: ${product_name}
    Should Be Equal As Numbers    ${actual_price}    ${expected_price}
