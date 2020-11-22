*** Settings ***
Library     SeleniumLibrary
Variables     ../Config/Setups.Yaml

*** Variables ***
${incorrectmessage}    xpath=//span[contains(text(),'Your username or password is incorrect')]
${loginattempts}     xpath=//div[contains(text(),'Maximum login attempts reached. Retry in 24 hours.')]

*** Keywords ***
Verify invalid credentials error message
    wait until page contains element   ${incorrectmessage}
    page should contain element    ${incorrectmessage}