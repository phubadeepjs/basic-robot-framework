*** Keywords ***
Click Element With Retry
    [Documentation]    ${locator} - could be any selenium locator and webelement object
    [Arguments]     ${locator}  ${retry}=4  ${only_contains}=${FALSE}
    FOR     ${i}    IN RANGE    1   ${retry}
        IF  ${only_contains}
            SeleniumLibrary.Wait until page contains element   ${locator}
        ELSE
            SeleniumLibrary.Wait until element is visible   ${locator}
        END
        ${is_success}=          Run keyword and ignore error   SeleniumLibrary.Click element   ${locator}
        ${err_msg}=             Convert to string       ${is_success[1]}
        ${is_obsecure}=         Run keyword and return status    Should not contain     ${err_msg}       Other element would receive the click
        ${is_not_stale}=        Run keyword and return status    Should not contain     ${err_msg}       element is not attached to the page document
        ${is_no_err}=           Run keyword and return status    Should be true        '${err_msg}' == '${NONE}'
        ${result}=              Evaluate    ${is_success} and ${is_obsecure} and ${is_obsecure} and ${is_not_stale} and ${is_no_err}
        Exit for loop if        ${result}
        Log     'retry clicking element for ${i} time with error: ${err_msg}'   level=WARN
    END
    Should be true  ${result}   msg="Failed to click element after ${retry} retry"
