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
    Sleep    5s    
    Input Text    ${UserNameField}    ${UserName}
    Input Text    ${PasswordField}    ${Password}
    Click Element    ${Login}
    
Logout Function       
    Left banner Swipe
    Sleep    10s    
    Click Element    ${LogoutButton}   
    
Click login button
    Sleep    5s    
    Click Element    ${Login}     

Click Skip
    Sleep    10s    
    Click Element    ${SkipButton}
    
Click WV app
    Click Element    ${WvIcon}
    
Click Logout
    Click Element    ${LogoutButton}
    
Vertical swipe
    Swipe    575    1474    565    479
    
Right Swipe
    Sleep    5s    
    Swipe    1004    1055    298    1050
    
Left banner Swipe
    Sleep    10s    
    Swipe    0    1026    800    1026
    
Element status check
    [Arguments]    ${element}    ${fail_msg}    ${pass_msg}
    
    Sleep    5s        
    ${status}=    Run Keyword And Return Status    Element Should Be Visible    ${element}    
    Run Keyword If    '${status}'!='True'    Fail    ${fail_msg}    Log    ${pass_msg}
    