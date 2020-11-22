*** Settings ***
Resource    ../Resources/config/GlobalResourceFile.robot

#robot -d ../Results LoginTestSuite.robot
*** Test Cases ***
To verify Successful login with valid credentials
    launch browser     Flipkart
    Enter email address
    Enter password
    Click on Login button
    Close browser

To Verify login with incorrect email
    launch browser     Flipkart
    Enter email address    incorrect
    Enter password
    Click on Login button
    Verify invalid credentials error message
    Close browser

To Verify login with incorrect password
    launch browser     Flipkart
    Enter email address
    Enter password     incorrect
    Click on Login button
    Verify invalid credentials error message
    Close browser