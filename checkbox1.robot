*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${browser}  chrome
${url}  https://www.dyn-web.com/tutorials/forms/examples/pizza.php


*** Test Cases ***
radio button and check box
    open browser    ${url}  ${browser}
    maximize browser window
    set selenium speed    2seconds

    select radio button    size    12
    select radio button    size    5

    select checkbox    black_olives
    select checkbox    pepperoni

    unselect checkbox    black_olives
    unselect checkbox    pepperoni
