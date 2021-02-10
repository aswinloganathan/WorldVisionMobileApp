*** Settings *** 
#Test Setup    Open Worldvision
Library           AppiumLibrary
Variables    WebElements.py

*** Keywords ***

Open Worldvision
    Open Application   ${RemoteURL}
    ...    platformName=${PlatformName}
    ...    platformVersion=${PlatformVersion}
    ...    deviceName=${DeviceName}
    ...    automationName=UiAutomator2
    ...    newCommandTimeout=2500
    ...    appActivity=${ActivityName}
    ...    appPackage=${PackageName}

Set appium details
    Open Application   ${REMOTE_URL}
    ...    platformName=${PLATFORM_NAME}
    ...    platformVersion=${PLATFORM_VERSION}
    ...    deviceName=${DEVICE_NAME}
    ...    automationName=UiAutomator2
    ...    newCommandTimeout=2500

Install new application    
    Install App    ${ApplicationPath}    ${PackageName}
    
Login Function
    Input Text    ${UserNameField}    ${UserName}
    Input Text    ${PasswordField}    ${Password}
    Click Element    ${Login}
    
Click Skip
    Click Element    ${SkipButton}
    
Click WV app
    Click Element    ${WvIcon}
    
Vertical swipe
    Swipe    575    1474    565    479
    
Right Swipe
    Swipe    1004    1055    298    1050
    
Element status check
    [Arguments]    ${element}    ${fail_msg}    ${pass_msg}
    
    ${status}=    Run Keyword And Return Status    Element Should Be Visible    ${element}    
    Run Keyword If    '${status}'!='True'    Fail    ${fail_msg}    Log    ${pass_msg}
    