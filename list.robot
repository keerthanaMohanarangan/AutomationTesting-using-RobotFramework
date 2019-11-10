*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}  chrome
${url}  http://www.practiceselenium.com/practice-form.html

*** Test Cases ***
dropdown n Listbox
    open browser    ${url}     ${browser}
    maximize browser window
    set selenium speed    2seconds

#dropdown
    select from list by label    continents    Asia
    sleep    3seconds
    select from list by index    continents    3



#list

    select from list by label   selenium_commands   Switch Commands
    select from list by label   selenium_commands   WebElement Commands
    sleep   4seconds
    unselect from list by label     selenium_commands   Switch Commands
