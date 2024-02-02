*** Settings ***
Documentation   test for selenium.com # Just info text
Library     SeleniumLibrary
*** Variables ***
${username}     Carmelitooandmoa@gamool.com
${password}     123
${url}      https://automationplayground.com/crm/
${Submit}
${State}
${Name}
${Lastname}
${City}
${Email}
*** Test Cases ***
Open Browser Click Login
        [Documentation]     testar öppning av webbsidan och login interface
        [Tags]      Test open browser
        Open Browser        browser=Chrome
        Go To    ${url}
        Click Link    //a[@id='SignIn']

Login with Username and Password
        [Documentation]     Testar logga in
        [Tags]   Test Login
        Input Text          //*[@id="email-id"]    ${username}
        Input Text          //*[@id="password"]    ${password}
        Click Button       //*[@id="submit-id"]
Add customer Interface
        [Documentation]     skapar ny kund
        [Tags]              add customer
        Click Link        //*[@id="new-customer"]
Create customer
        [Documentation]     skapar ny kund
        [Tags]              add customer


        Click Element        //*[@id="new-customer"]