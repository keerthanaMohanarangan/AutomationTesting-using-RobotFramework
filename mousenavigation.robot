*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${browser}  chrome
${url}  https://swisnl.github.io/jQuery-contextMenu/demo.html


*** Test Cases ***
Mouse Navigation
    open browser    ${url}  ${browser}
    maximize browser window
    open context menu   xpath:/html/body/div/section/div/div/div/p/span
    sleep   3

    go to   http://testautomationpractice.blogspot.com/
    maximize browser window
    double click element    //*[@id="HTML10"]/div[1]/button
    sleep   2 seconds

    close browser
