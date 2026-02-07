***Settings***
Resource   ${CURDIR}/../config/import.robot

***Test Cases***
Test Facebook Login
    Open Facebook Main Page
    Input Username   ${account.username}
    Input Password   ${account.password}
    Verify Description   ${facebookMainLocalization.description}
    Sleep   3s
    Click Login Button
    Close Browser