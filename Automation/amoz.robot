*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    Chrome
${URL}        https://business.dev.pandosima.org/
${EMAIL}          dothithuyuyen0601@gmail.com
${PASSWORD}       thuyuyen
${NAME}     abcdfe
${DESCRIPTION}      12345
${SEARCH}   abcdfe
*** Test Cases ***
Test Amoz
    Login Test
Test Leave
    Leave Types Test
Delete
    Delete Leave
Search
    Search Leave

*** Keywords ***
Login Test
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Click Element    xpath:/html/body/div[1]/div/div[3]/main/div[1]/div[1]/main/div/form/div[1]/div/div[1]/div/input
    input text  xpath:/html/body/div[1]/div/div[3]/main/div[1]/div[1]/main/div/form/div[1]/div/div[1]/div/input     ${EMAIL}
    Wait Until Page Contains Element    xpath:/html/body/div[1]/div/div[3]/main/div[1]/div[1]/main/div/form/div[2]/div/div[1]/div/input    10
    Input Text    xpath:/html/body/div[1]/div/div[3]/main/div[1]/div[1]/main/div/form/div[2]/div/div[1]/div/input    ${PASSWORD}
    Click Button  xpath:/html/body/div[1]/div/div[3]/main/div[1]/div[1]/main/div/div/button
    sleep   5

Leave Types Test
    Click Element   xpath:/html/body/div[1]/div/div[3]/div/div[1]/div[1]/div[2]/div/div/div[3]/a/span
    Wait Until Element Is Enabled   xpath:/html/body/div[1]/div/div/div[2]/aside/div/div[2]/div/ul/li[6]/div    10
    Click Element   xpath:/html/body/div[1]/div/div/div[2]/aside/div/div[2]/div/ul/li[6]/div
    sleep   3
    Click Element   xpath:/html/body/div[1]/div/div/div[2]/aside/div/div[2]/div/ul/li[6]/ul/li[1]
    sleep   3
    Click Button    xpath:/html/body/div[1]/div/div/div[2]/div/div[2]/div/div[3]/button
    sleep   3
    Click Element   xpath:/html/body/div[1]/div/div/div[2]/div/div[2]/div/div[2]/div[1]/div[3]/div/div[1]/div/table/tbody/tr[4]/td[2]/div/div/div/input
    sleep   3
    input text  xpath:/html/body/div[1]/div/div/div[2]/div/div[2]/div/div[2]/div[1]/div[3]/div/div[1]/div/table/tbody/tr[4]/td[2]/div/div/div/input         ${NAME}
    sleep   3
    Click Element   xpath:/html/body/div[1]/div/div/div[2]/div/div[2]/div/div[2]/div[1]/div[3]/div/div[1]/div/table/tbody/tr[4]/td[3]/div/div/textarea
    sleep   3
    input text  xpath:/html/body/div[1]/div/div/div[2]/div/div[2]/div/div[2]/div[1]/div[3]/div/div[1]/div/table/tbody/tr[4]/td[3]/div/div/textarea         ${DESCRIPTION}
    sleep   3
    Click Element   xpath:/html/body/div[1]/div/div/div[2]/div/div[2]/div/div[2]/div[1]/div[3]/div/div[1]/div/table/tbody/tr[4]/td[6]/div/div/div
    sleep   3
    Click Element   xpath:/html/body/div[3]/div[5]/div/div/div[1]/ul/li[1]
    sleep   3
    Click button    xpath:/html/body/div[1]/div/div/div[2]/div/div[2]/div/div[1]/button[3]
    sleep   3

Delete Leave
    click Element   xpath:/html/body/div[1]/div/div/div[2]/div/div[2]/div/div[2]/div[1]/div[3]/div/div[1]/div/table/tbody/tr[3]/td[8]/div/button
    sleep   3
    click Element   xpath:/html/body/div[1]/div/div/div[2]/div/div[2]/div/div[1]/button[3]
    sleep   5

Search Leave
    Click Element   xpath:/html/body/div[1]/div/div/div[2]/div/div[2]/div/div[1]/div/div[1]/input
    sleep   3
    input text  xpath:/html/body/div[1]/div/div/div[2]/div/div[2]/div/div[1]/div/div[1]/input     ${SEARCH}
    sleep   5


