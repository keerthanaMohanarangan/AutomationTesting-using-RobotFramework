*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${browser}  chrome
${url}  http://demo.automationtesting.in/Windows.html


*** Test Cases ***
Navigation
    open browser    ${url}  ${browser}
    maximize browser window
    ${loc}=     get location
    log to console  ${loc}

    go to    https://www.hel.fi/helsinki/fi
    maximize browser window
    ${loc}=     get location
    log to console  ${loc}

    go back
    maximize browser window
    ${loc}=     get location
    log to console  ${loc}

    close all browsers
