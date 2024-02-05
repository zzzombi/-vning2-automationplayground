Then Create customer by feeding in data and Submitting
        [Documentation]     skapar ny kund
        [Tags]              add customer + submit
        Click Button        //[@id="loginform"]/div/div/div/div/form/div[6]/input[1]
        Input Text          //[@id="EmailAddress"]    ${Email}
        Input Text          //[@id="FirstName"]       ${Name}
        Input Text          //[@id="LastName"]        ${Lastname}
        Input Text          //[@id="City"]            ${City}
        Click Element       //[@id="StateOrRegion"]/option[13]
        Click Button        //[@id="loginform"]/div/div/div/div/form/div[7]/input
        Sleep    5s
        Click Button        //[@id="loginform"]/div/div/div/div/form/button
        Sleep    3s
        Close Browser


        123