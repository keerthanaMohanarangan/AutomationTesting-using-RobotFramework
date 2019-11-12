*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${browser}  chrome
${url}  https://www.tnebnet.org/awp/login;jsessionid=KBDCgy8g9G2PWkbs8nSyavSW


*** Test Cases ***
Navigation
    open browser    ${url}  ${browser}
    maximize browser window
    input text  id:userName     admin
    input text  id:password     pass1223

    capture element screenshot  //*[@id="j_idt60"]  C:/Users/Dishan/Desktop/testing/barcode.png
    capture page screenshot     C:/Users/Dishan/Desktop/testing/page.png