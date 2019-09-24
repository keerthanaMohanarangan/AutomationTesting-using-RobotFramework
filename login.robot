***Settings***
Library     Selenium2Library

***Variables***
${URL}  https://demo.nopcommerce.com
${Browser}  chrome

***Test Cases***
Open the website to check the login
   Open Browser   ${URL}       ${BROWSER}
   Login Test
   Close Browser


***Keywords***
Login Test
    Click Link  xpath=//a[@class='ico-login']
    Input Text  id=Email  scanfkeertha@gmail.com
    Input Text  id=Password   keerthanasuomi
    Click Element   xpath=//input[@class='button-1 login-button']
    