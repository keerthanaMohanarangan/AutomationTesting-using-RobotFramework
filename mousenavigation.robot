*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${browser}  chrome
${url}  https://swisnl.github.io/jQuery-contextMenu/demo.html


*** Test Cases ***
Mouse Navigation
#right click
    open browser    ${url}  ${browser}
    maximize browser window
    open context menu   xpath:/html/body/div/section/div/div/div/p/span
    sleep   3

#double click
    go to   http://testautomationpractice.blogspot.com/
    maximize browser window
    double click element    //*[@id="HTML10"]/div[1]/button
    sleep   2 seconds


#drag and drop
    go to   http://dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html
    maximize browser window
    drag and drop   id:box6     id:box106
    sleep   2 seconds

    close all browser

