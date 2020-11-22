*** Settings ***
Library     SeleniumLibrary
Variables     ../Config/Setups.Yaml

*** Variables ***
${number}    Xpath=//div[label[span[contains(text(),'Enter Email/Mobile number')]]]/input
${Password}    Xpath=//div[label[span[contains(text(),'Enter Password')]]]/input
${LoginBtn}    Xpath=//button//span[contains(text(),'Login')]


*** Keywords ***
Launch browser
    [Arguments]    ${setup}=Flipkart    ${Browser}=chrome
    Open Browser    ${NetCore.${setup}}    ${Browser}
    Maximize Browser Window

Enter email address
    [Arguments]    ${emailaddress}=Flipkart
    Wait Until Page Contains Element    ${number}    10s
    Clear Element Text    ${number}
    Input Text    ${number}     ${D_UserEmail.${emailaddress}}

Enter password
    [Arguments]    ${credentials}=Flipkart
    Clear Element Text   ${Password}
    Input Text    ${Password}    ${D_Password.${credentials}}

Click on Login button
    Click Element    ${LoginBtn}