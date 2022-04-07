*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${search_parameter}  HARMAN
${url}  https://www.google.com/
*** Test Cases ***
login page test case
    [Documentation]  login for user
    [Tags]  user
    Log  Hello

Registration page test case
    [Documentation]  registeration for user
    [Tags]  user
    Log  Welcome

Dashboard test case
    [Documentation]  Dashboard for user
    Log  Dashboard

Google test case
    [Documentation]  simple google test
    Open Browser    ${url}  chrome
    search data
    Submit form
    Close Browser


*** Keywords ***
search data
    Input Text  name:q  ${search_parameter}

