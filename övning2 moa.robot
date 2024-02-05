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