*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}  chrome
${url}  http://demowebshop.tricentis.com/register

*** Test Cases ***
Timercheck
    ${speed}=   get selenium speed
    log to console  ${speed}
    open browser    ${url}     ${browser}
    maximize browser window
    set selenium timeout    10 seconds
    wait until page contains   Register
    set selenium speed  2 seconds
    ${implicit}=    get selenium implicit wait
    log to console  ${implicit}                 #checking implicit time
    set selenium implicit wait  10 seconds      #setting implicit time
    ${implicit}=    get selenium implicit wait  #checking the implicit time
    log to console  ${implicit}
    select radio button     Gender  F
    input text  name:FirstName  Keerthana
    input text  name:LastName   Mohanarangan
    input text  name:Email  keerthana.Mohanarangan@yahoo.com
    input text  name:Password   helloworld
    input text  name:ConfirmPassword    helloworld
    ${spead}=   get selenium speed
    log to console  ${speed}