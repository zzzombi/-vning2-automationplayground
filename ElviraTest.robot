**** Keywords ***
Open Login interface
        [Documentation]     testar öppning av webbsidan och login interface
        [Tags]              Test open browser
        Open Browser        browser=Chrome
        Go To    ${url}
        Click Link          //a[@id='SignIn']

When User is logged in
        [Documentation]     Testar logga in
        [Tags]   Test Login
        Input Text          //[@id="email-id"]    ${username}
        Input Text          //[@id="password"]    ${password}
        Click Button        //[@id="submit-id"]
And Click add new customer
        [Documentation]     skapar ny kund
        [Tags]              add customer
        Click Link          //[@id="new-customer"]