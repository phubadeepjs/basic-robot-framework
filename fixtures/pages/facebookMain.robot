*** Variables ***
${facebookMain.url.th}   https://th-th.facebook.com/
${facebookMain.url.en}   https://en-gb.facebook.com/

*** Keywords ***
Open Facebook Main Page
    Open Browser   ${facebookMain.url.${LANG}}   ${config.browser}

Input Username
    [Arguments]   ${username}
    Input Text   ${facebookMain.usernameTextInput}   ${username}

Input Password
    [Arguments]   ${password}
    Input Text   ${facebookMain.passwordTextInput}   ${password}

Click Login Button
    Click Button   ${facebookMain.loginButton}

Verify description
    [Arguments]   ${expectedDescription}
    Element Should Contain   ${facebookMain.description}   ${expectedDescription}