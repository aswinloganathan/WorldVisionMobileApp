*** Settings *** 
Library    AppiumLibrary   
Library    String    
Library    DateTime       
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
    ...    unicodeKeyboard=true
    ...    resetKeyboard=true

Open Worldvision To Reset
    Open Application   ${RemoteURL}
    ...    platformName=${PlatformName}
    ...    platformVersion=${PlatformVersion}
    ...    deviceName=${DeviceName}
    ...    automationName=UiAutomator2
    ...    newCommandTimeout=2500
    ...    appActivity=${ActivityName}
    ...    appPackage=${PackageName}
    ...    app=${ApplicationPath}
    ...    noReset=false

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
    
Right to left Swipe
    Sleep    5s    
    Swipe    1004    1055    298    1050
    
Left Banner Swipe
    Sleep    12s    
    Swipe    0    1026    800    1026        
    
Element status check
    [Arguments]    ${element}    ${fail_msg}    ${pass_msg}
    
    Sleep    10s
    ${status}=    Run Keyword And Return Status    Element Should Be Visible    ${element}    
    Run Keyword If    '${status}'!='True'    Fail    ${fail_msg}    ELSE    Log   ${pass_msg}

Element Should Not Be Visible
    [Arguments]    ${element}    ${fail_msg}    ${pass_msg}
    
    Sleep    5s        
    ${status}=    Run Keyword And Return Status    Element Should Be Visible    ${element}    
    Run Keyword If    '${status}'!='False'    Fail    ${fail_msg}    ELSE    Log    ${pass_msg}    
    
Element visibility
    [Arguments]    ${element}
    
    Element Should Be Visible    ${element}    60s   

Left Menubar List Check
    [Arguments]    @{ListOfElements}
    
    Sleep    10s    
    FOR    ${element}    IN    @{ListOfElements}
        ${status}=    Run Keyword And Return Status    Element Should Be Visible    xpath=//android.widget.Button[contains(@text,'${element}')]    
        Run Keyword If    '${status}'!='True'    Fail    ${element} is not visible    ELSE    Log    ${element} is visible
        Sleep    2s            
    END

Bottom Menubar List Check
    [Arguments]    @{ListOfElements}
    
    Sleep    15s    
    FOR    ${element}    IN    @{ListOfElements}
        ${status}=    Run Keyword And Return Status    Element Should Be Visible    xpath=//android.view.View[contains(@text,'${element}')]    
        Run Keyword If    '${status}'!='True'    Fail    ${element} is not visible    ELSE    Log    ${element} is visible
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
    

Jeevan articles check    
    [Arguments]    @{ListOfElements}
    
    Sleep    10s    
    FOR    ${element}    IN    @{ListOfElements}
        Right to left Swipe        
        ${status}=    Run Keyword And Return Status    Element Should Be Visible    xpath=//android.view.View[contains(@text,'${element}')]    
        Run Keyword If    '${status}'!='True'    Fail    ${element} is not visible    ELSE    Log    ${element} is visible
        Sleep    2s            
    END
    
ContactUs Form check
    [Arguments]    @{ListOfElements}
    
    Sleep    15s    
    FOR    ${element}    IN    @{ListOfElements}
        ${status}=    Run Keyword And Return Status    Element Should Be Visible    xpath=//android.widget.EditText[@resource-id='${element}']    
        Run Keyword If    '${status}'!='True'    Fail    ${element} is not visible    ELSE    Log    ${element} is visible
        Sleep    2s            
    END
    Element status check    ${ContactUsSponcerBtn}    Donor/Sponsor radio button is not visible    Donor/Sponsor radio button is visible
    
    
ContactUs Swipe to View Form
    Swipe    515    1731    545    262
    Sleep    15s        
    Swipe    535    1393    530    257    
    
Clear and Input Text
    [Arguments]    ${Field}    ${Data}
        
    Sleep    2s    
    Clear Text    ${Field}  
    Input Text    ${Field}    ${Data}

Today date in Numbers
   
    ${CurrentDate}=    Get Current Date    result_format=%Y-%m-%d
    ${todayDate}=    Convert Date    ${CurrentDate}    datetime
    
    [Return]    ${todayDate.day}    ${todayDate.month}    ${todayDate.year}
    
Today date in strings
    
    ${CurrentDate}=    Get Current Date    result_format=%Y-%b-%d    
    ${year}=    Get Substring    ${CurrentDate}    0    4
    ${month}=    Get Substring    ${CurrentDate}    5    8
    ${day}=    Get Substring    ${CurrentDate}    9    12
    
    Log    Year: ${year}
    Log    Month: ${month}    
    Log    Day: ${day}
    
    [Return]    ${year}    ${month}    ${day}
    

Ways To Give Campaigns
    [Arguments]    ${Submenu}
    
    Left Banner Swipe
    Click Element    ${LeftMenuWaysToGIve}
    Sleep    30s
    Click Element    ${Submenu}
    Element status check    ${Submenu}    Did not redirected to Educate Children page    Redirected to Educate Children page
    
Click Cart Icon
    
    Click Element    ${CartTopIcon}

Scroll Down Till Element Found
    [Arguments]    ${ScrollToElement}
    
    FOR    ${element}    IN RANGE    1    10        
        #Swipe    555    1554    570    358             
        ${status}=    Run Keyword And Return Status    Element Should Be Visible    ${ScrollToElement}    
        Run Keyword If    '${status}'!='True'    Log    Element Not Found
        Swipe    555    1554    570    358
        Exit For Loop If    '${status}'=='True'
    END
    
I Pledge to Support Click
    Sleep    5s    
    Click Element    ${PledgeButton}
    
SIPaymentCheckBox Click
    Sleep    5s
    Click Element    ${SICheckUncheck}
    
Add To Cart Click
    Sleep    5s
    Click Element    ${AddToCart}
    
Proceed To Cart Click
    Sleep    5s
    Click Element    ${ProceedToCart}
    
Select Price button
    Sleep    5s    
    Click Element    ${AmountBtn}
    
Proceed To AutoPay Click
    Sleep    5s    
    Click Element    ${ProceedToAutoPay}
    
Is Checked
    [Arguments]    ${element}
    
    ${status}=    Get Element Attribute    ${element}   checked
    Run Keyword If    '${status}'!='true'    Fail    Element is not checked    ELSE    Log    Element is Checked

Payment gateways list Check
    [Arguments]    @{list}
    
    Sleep    10s    
    FOR    ${element}    IN    @{list}
        ${status}=    Run Keyword And Return Status    Element Should Be Visible    xpath=//android.view.View[contains(@text,'${element}')]    
        Run Keyword If    '${status}'!='True'    Fail    ${element} is not visible    ELSE    Log    ${element} is visible
        Sleep    2s            
    END     
    
    
        
    

    