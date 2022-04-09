*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${search_flipkart}  Flipkart
${url}  https://www.google.com/
${search_product}  iphone13

*** Keywords ***
start test case
    Open Browser  ${url}  chrome
    maximize browser window
flipkart search
    Input Text  name:q  ${search_product}
    click button  class:L0Z3Pu
stop test case
    Close Browser