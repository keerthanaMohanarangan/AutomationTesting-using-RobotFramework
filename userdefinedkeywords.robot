*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${browser}  chrome
${url}  http://www.newtours.demoaut.com/


*** Test Cases ***
keywords

    ${get_title}=     Launch browser  ${url}  ${browser}
    log to console   ${get_title}
    log     ${get_title}
    input text      name:userName   keerthana
    input text      name:password   keerthana

*** Keywords ***
Launch browser
    [Arguments]     ${app_url}  ${app_browser}
    open browser    ${app_url}  ${app_browser}
    maximize browser window
    ${title}=   get title
    [return]    ${title}
