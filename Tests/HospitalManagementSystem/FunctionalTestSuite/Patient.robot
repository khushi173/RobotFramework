*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  http://127.0.0.1:5000/


*** Test Cases ***
Admin Login
    [Documentation]  admin login
    [Tags]  Staff
    Open Browser  ${url}  chrome
    maximize browser window
    Input Text  name:username  admin
    sleep  1s
    Input Text  name:pass  12345
    sleep  1s
    click button  xpath=//html/body/div/div/form/table/tbody/tr[3]/td[2]/button
    sleep  2s
Registration page
    [Documentation]  Register patient
    [Tags]  Patient
    Input Text  name:name  Ram
    sleep  1s
    Input Text  name:mobno  9876543210
    sleep  1s
    Input Text  name:age  21
    sleep  1s
    Input Text  name:add  sector 7
    sleep  1s
    Input Text  name:dob  01-01-2000
    sleep  1s
    Input Text  name:place  Chandigarh
    sleep  1s
    Input Text  name:pin  123456
    sleep  1s
    click button  xpath=//html/body/div/div/form/table/tbody/tr[8]/td[2]/button
    sleep  2s
Search page
    [Documentation]  search patient
    [Tags]  staff
    click element  xpath=//html/body/nav/div/div/ul/li[3]/a
    sleep  2s
    Input Text  name:mobno  9876543210
    sleep  2s
    click button  xpath=//html/body/div[1]/div/form/table/tbody/tr[2]/td[2]/button
    sleep  2s
Delete page
    [Documentation]  delete patient
    [Tags]  staff
    click element  xpath=//html/body/nav/div/div/ul/li[5]/a
    sleep  2s
    Input Text  name:mobno  9876543210
    sleep  2s
    click button  xpath=//html/body/div/div/div/form/table/tbody/tr[3]/td[2]/button
    sleep  2s

Update page
    [Documentation]  update patient
    [Tags]  staff
    click element  xpath=//html/body/nav/div/div/ul/li[4]/a
    sleep  2s
    Input Text  name:mobno  8492020867
    sleep  2s
    click button  xpath=//html/body/div/div/div/form/table/tbody/tr[3]/td[2]/button
    sleep  2s
    Input Text  name:name  Khushi Jamwal
    sleep  1s
    Input Text  name:mobno  8492020867
    sleep  1s
    Input Text  name:age  22
    sleep  1s
    Input Text  name:add  sector 8
    sleep  1s
    Input Text  name:dob  01-01-2000
    sleep  1s
    Input Text  name:place  Chandigarh
    sleep  1s
    Input Text  name:pin  123457
    sleep  1s
    click button  xpath=//html/body/div/div/form/table/tbody/tr[8]/td[2]/button
    sleep  10s
    Close Browser







*** Keywords ***


