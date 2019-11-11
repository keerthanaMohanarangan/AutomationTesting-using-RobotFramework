*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://www.toolsqa.com/iframe-practice-page/

*** Test Cases ***
Framework
    open browser    ${url}  ${browser}
    select frame    iframe1
    click element   xpath://*[@id="primary-menu"]/li[2]/ul/li[4]/ul/li[1]/a/span/span
    unselect frame
    sleep   3 seconds


    select frame    iframe2
    click link      Draggable
    unselect frame
    sleep   3 seconds


    close browser
