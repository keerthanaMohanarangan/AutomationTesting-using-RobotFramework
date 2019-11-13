*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${browser}  chrome
${url}  https://en.wikipedia.org/wiki/Lists_of_countries_and_territories


*** Test Cases ***
Mouse Navigation
#right click
    open browser    ${url}  ${browser}
    maximize browser window
    #execute javascript  window.scrollTo(0,5000)                             #to a particular pixel
    scroll element into view    xpath://*[@id="Geography"]                 # TO SCROLL to a deseired position
    #execute javascript  window.scrollTo(0,document.body.scrollHeight)     #end of the page
    #execute javascript  window.scrollTo(0,document.body.scrollHeight)      #START OF THE PAGE

