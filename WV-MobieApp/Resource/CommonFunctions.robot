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
    
Open Application from menu
    Vertical swipe                
    Click WV app
    
Login Function
    [Arguments]    ${UserName}    ${Password}

    Sleep    5s    
    Input Text    ${UserNameField}    ${UserName}
    Input Text    ${PasswordField}    ${Password}
    Click Element    ${LoginButton}
    
Clear Username field        
    Clear Text    ${UserNameField}

Clear Password field
    Clear Text    ${PasswordField}
    
Input Username field
    [Arguments]    ${element}
    Input Text    ${UserNameField}    ${element}
    
Input password field
    [Arguments]    ${element}
    Input Text    ${PasswordField}    ${element}
    
Clear field text
    [Arguments]    ${field}
    
    Clear Text    ${field}

Logout Function       
    Left banner Swipe
    Sleep    10s    
    Click Element    ${LogoutButton}   
    
Click login button
    Sleep    5s    
    Click Element    ${LoginButton}     

Click Skip
    Sleep    15s    
    Click Element    ${SkipButton}
    
Click WV app
    Click Element    ${WvIcon}
    
Click Logout button
    Click Element    ${LogoutButton}
    
Vertical swipe
    Swipe    575    1474    565    479
    
Right Swipe
    Sleep    5s    
    Swipe    1004    1055    298    1050
    
Left Banner Swipe
    Sleep    10s    
    Swipe    0    1026    800    1026
    
Element status check
    [Arguments]    ${element}    ${fail_msg}    ${pass_msg}
    
    Sleep    5s
    ${status}=    Run Keyword And Return Status    Element Should Be Visible    ${element}    
    Run Keyword If    '${status}'!='True'    Fail    ${fail_msg}    Log    ${pass_msg}

Element Should Not Be Visible
    [Arguments]    ${element}    ${fail_msg}    ${pass_msg}
    
    Sleep    5s        
    ${status}=    Run Keyword And Return Status    Element Should Be Visible    ${element}    
    Run Keyword If    '${status}'!='False'    Fail    ${fail_msg}    Log    ${pass_msg}    
    
Element visibility
    [Arguments]    ${element}
    
    Element Should Be Visible    ${element}    60s   

Left Menubar List Check
    [Arguments]    @{ListOfElements}
    
    Sleep    10s    
    FOR    ${element}    IN    @{ListOfElements}
        ${status}=    Run Keyword And Return Status    Element Should Be Visible    xpath=//android.widget.Button[contains(@text,'${element}')]    
        Run Keyword If    '${status}'!='True'    Fail    ${element} is not visible    Log    ${element} is visible
        Sleep    2s            
    END

Bottom Menubar List Check
    [Arguments]    @{ListOfElements}
    
    Sleep    15s    
    FOR    ${element}    IN    @{ListOfElements}
        ${status}=    Run Keyword And Return Status    Element Should Be Visible    xpath=//android.view.View[contains(@text,'${element}')]    
        Run Keyword If    '${status}'!='True'    Fail    ${element} is not visible    Log    ${element} is visible
        Sleep    2s            
    END    
        
LeftMenuClick
    [Arguments]    ${element}
    
    Sleep    10s    
    Click Element    ${element}
    
BottomMenuClick
    [Arguments]    ${element}
    
    Sleep    10s    
    Click Element    ${element}  
    