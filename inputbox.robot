*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${browser}  chrome
${url}  https://demo.nopcommerce.com

*** Test Cases ***
Testing input Box
    Open Browser    ${url}    ${browser}
    maximize browser window

    click link  xpath://a[@class='ico-login']
    ${"email_txt"}  set variable    id:Email
    title should be nopCommerce demo store

    element should be visible   ${"email_txt"}
    element should be enabled   ${"email_txt"}

    input text  ${"email_txt"}  scanfkeertha@gmail.com
    sleep   5
    clear element text  ${"email_txt"}
    sleep   3
    close browser

*** Keywords ***
