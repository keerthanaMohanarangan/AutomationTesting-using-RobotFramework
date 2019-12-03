*** Settings ***
Library     SeleniumLibrary



*** Variables ***
${browser}  chrome
${url}  https://parabank.parasoft.com/parabank/index.htm



*** Test Cases ***
Get Links anc count
    open browser    ${url}  ${browser}
    maximize browser window
    ${AllLinksCount}=   get element count   xpath://a
    log to console  ${AllLinksCount}


    @{LinkItems}    create list

       FOR     ${i}    IN RANGE    1   ${AllLinksCount}
    \   ${Linktext}=    get text    xpath:(//a)[${i}]
    \   log to console  ${Linktext}



