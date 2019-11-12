*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${browser}  chrome
${url}  http://demo.automationtesting.in/Windows.html


*** Test Cases ***
Tabbedwindow
    open browser    ${url}  ${browser}
    maximize browser window
    click element   xpath://*[@id="Tabbed"]/a/button
    select window   title=Sakinalium | Home
    click element   xpath://*[@id="container"]/header/div/div/div[2]/ul/li[4]/a
    input text      name:name   David
    sleep   1second
    input text      name:email  d.andrews@gmail.com
    sleep   1second
    input text      name:subject    Product information
    sleep   1second
    input text      name:message    Please provide the detailed info about the product
    sleep   1second


    close all browsers

Migration of windows
    open browser    https://www.pinterest.com/  chrome
    maximize browser window

    sleep   1 second

    open browser    https://www.neste.fi/   chrome
    maximize browser window

    sleep   1 second

    open browser    https://www.hel.fi/helsinki/fi    chrome
    maximize browser window

    sleep   1 second

    switch browser  1
    ${title1}=   get title
    log to console  ${title1}

    switch browser  2
    ${title1}=   get title
    log to console  ${title1}

    switch browser  3
    ${title1}=   get title
    log to console  ${title1}

    close all browsers

