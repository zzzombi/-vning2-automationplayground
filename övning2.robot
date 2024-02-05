*** Settings ***
Documentation               Testing automized setup for accessing website and creatin customer
Library                     SeleniumLibrary
Suite Setup                 Open Login interface
*** Variables ***
${username}                 Carmelitooandmoa@gamool.com
${password}                 123
${url}                      https://automationplayground.com/crm/
${Submit}                   puro
${State}                    orkanen
${Name}                     dag
${Lastname}                 fre
${City}                     abra
${Email}                    ham@sås.dagis
*** Test Cases ***
BDD Test
        When User is logged in
        And Click add new customer
        Then Create customer by feeding in data and Submitting
*** Keywords ***
Open Login interface
        [Documentation]     testar öppning av webbsidan och login interface
        [Tags]              Test open browser
        Open Browser        browser=Chrome
        Go To    ${url}
        Click Link          //a[@id='SignIn']

When User is logged in
        [Documentation]     Testar logga in
        [Tags]   Test Login
        Input Text          //*[@id="email-id"]    ${username}
        Input Text          //*[@id="password"]    ${password}
        Click Button        //*[@id="submit-id"]
And Click add new customer
        [Documentation]     skapar ny kund
        [Tags]              add customer
        Click Link          //*[@id="new-customer"]
Then Create customer by feeding in data and Submitting
        [Documentation]     skapar ny kund
        [Tags]              add customer + submit
        Click Button        //*[@id="loginform"]/div/div/div/div/form/div[6]/input[1]
        Input Text          //*[@id="EmailAddress"]    ${Email}
        Input Text          //*[@id="FirstName"]       ${Name}
        Input Text          //*[@id="LastName"]        ${Lastname}
        Input Text          //*[@id="City"]            ${City}
        Click Element       //*[@id="StateOrRegion"]/option[13]
        Click Button        //*[@id="loginform"]/div/div/div/div/form/div[7]/input
        Sleep    5s
        Click Button        //*[@id="loginform"]/div/div/div/div/form/button
        Sleep    3s
        Close Browser