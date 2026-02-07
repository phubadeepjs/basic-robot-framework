*** Variables ***
${facebookMain.url.th}   https://th-th.facebook.com/
${facebookMain.url.en}   https://en-gb.facebook.com/

*** Keywords ***
Open Facebook Main Page
    Open Browser   ${facebookMain.url.${LANG}}   ${config.browser}

Input Username
    [Arguments]   ${username}
    Wait Until Element Is Visible   ${facebookMain.usernameTextInput}
    Input Text   ${facebookMain.usernameTextInput}   ${username}

Input Password
    [Arguments]   ${password}
    Wait Until Element Is Visible   ${facebookMain.passwordTextInput}
    Input Text   ${facebookMain.passwordTextInput}   ${password}

Click Login Button
    Wait Until Element Is Visible   ${facebookMain.loginButton}
    Click Element With Retry   ${facebookMain.loginButton}

Verify description
    [Arguments]   ${expectedDescription}
    Wait Until Element Is Visible   ${facebookMain.description}
    Element Should Contain   ${facebookMain.description}   ${expectedDescription}
