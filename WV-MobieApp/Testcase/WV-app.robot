*** Settings ***
Library    AppiumLibrary
Resource    ../Resource/CommonFunctions.robot
Resource    ../Resource/MyProfilePage.robot
Resource    ../Resource/TaxReceiptPage.robot
Library    DateTime    

Test Setup    Set appium details
#Test Teardown    Close Application


*** Test Cases ***

Install new application
    [Tags]    Install Application
    
    Install new application

Open WV application
    [Tags]    To verify the welcome screen  
                                
    Open Application from menu    
    Sleep    5s    
    Right to left Swipe       
    Click Skip    
    Element status check    ${LoginButton}    Application doesnt reach login page    Application reached Login Page
    

To verify the banner scroll on the welcome screen
    [Tags]    To verify the welcome screen
            
    Open Application from menu   
    Sleep    10s    
    FOR    ${element}    IN RANGE    1    4            
        Right to left Swipe
    END               
    Click login button           
    Element status check    ${LoginButton}    Application doesnt reach login page    Application reached Login Page 
    
    
To verify the Login screen 
    [Tags]    Login functionality    
                
    Open Application from menu   
    Sleep    10s    
    FOR    ${element}    IN RANGE    1    4           
        Right to left Swipe
    END            
    Click login button                
    Element status check    ${UserNameField}    Page doesnt contain username field    Page contain username field
    Element status check    ${PasswordField}    Page doesnt contain password field    Page contain password field
    Element status check    ${LoginButton}    Application doesnt reach login page    Application reached Login Page     
    
To verify login in APP by Website registered user
    [Tags]    Login functionality
            
    Open Application from menu        
    Click Skip    
    Login Function    ${UserName}    ${Password}    
    Element status check    ${User}    Username was not displayed on HomePage    Username dispalyed on HomePage
    Logout Function                
    
To verify login in APP by Landing page registered user
    [Tags]    Login functionality
            
    Open Application from menu        
    Click Skip
    Login Function    ${LPUsername}    ${LPPassword}    
    Element status check    ${LPUser}    Username was not displayed on HomePage    Username dispalyed on HomePage
    Logout Function                

To verify the Logout functionality
    [Tags]    Logout functionality
    
    Open Application from menu        
    Click Skip
    Login Function    ${UserName}    ${Password}   
    Element status check    ${User}    Username was not displayed on HomePage    Username dispalyed on HomePage            
    Logout Function      

To verify the Login functionality with invalid data
    [Tags]    Login functionality
    
    Open Application from menu       
    Click Skip    
    Login Function    ${UserName}    ${InvalidPassword}
    Element status check    ${InvCredential}    Alert message doesnt appear for Invalid credentials    Alert message appeared for Invalid credentials
    Clear Username field
    Clear Password field
    
    Login Function    ${InvalidUserName}    ${Password}
    Element status check    ${InvCredential}    Alert message doesnt appear for Invalid credentials    Alert message appeared for Invalid credentials
    Clear Username field
    Clear Password field    
    Login Function    ${InvalidUserName}    ${InvalidPassword}
    Element status check    ${InvCredential}    Alert message doesnt appear for Invalid credentials    Alert message appeared for Invalid credentials

To verify the validations of username field with valid data
    [Tags]    Login functionality
    
    Open Application from menu        
    Click Skip
    Element status check    ${LoginButton}    Application doesnt reach login page    Application reached Login Page
    FOR    ${element}    IN    @{ValidUsernames}
        Input Username field    ${element}
        Element Should Not Be Visible    ${UserNameAlrt}    Username alert appeared for invalid username     Username alert doesnt appear for invalid username
        Clear Username field        
    END

To verify the validations of the username with invalid data
    [Tags]    Login functionality
    
    Open Application from menu        
    Click Skip
    Element status check    ${LoginButton}    Application doesnt reach login page    Application reached Login Page    
    FOR    ${element}    IN    @{InvUsernames}
        Input Username field    ${element}        
        Element status check    ${UserNameAlrt}    Username alert doesnt appear for invalid username     Username alert appeared for invalid username
        Clear Username field        
    END
    
To verify the password field structure
    [Tags]    Login functionality
    
    Open Application from menu        
    Click Skip
    Element status check    ${LoginButton}    Application doesnt reach login page    Application reached Login Page
    Input password field    ${Password}
    Sleep    5s    
    ${password_got}=    Get Element Attribute    ${PasswordField}    text
    Should Not Be Equal As Strings    ${password_got}    ${Password}
    
To verify the otp functionality with invalid usename
    [Tags]    Login functionality
    
    Open Application from menu        
    Click Skip
    Element status check    ${LoginButton}    Application doesnt reach login page    Application reached Login Page
    Input Username field    ${UserName}
    Sleep    5s
    Click Element    ${OTPButton}
    Sleep    2s    
    Element status check    ${InvCredential}    Alert message doesnt appear for Invalid credentials    Alert message appeared for Invalid credentials
    
    
To verify the login functionality with invalid OTP
    [Tags]    Login functionality
    
    Open Application from menu
    Click Skip
    Element status check    ${LoginButton}    Application doesnt reach login page    Application reached Login Page
    Input Username field    ${UserName}
    Sleep    5s    
    Click Element    ${OTPButton}
    Sleep    2s
    Element status check    ${OTPAlert}    OTP alert doesnt appear    OTP alert appeared
    Input password field    123456
    Element status check    ${InvCredential}    Alert message doesnt appear for Invalid credentials    Alert message appeared for Invalid credentials
    
To verify slider menu
    [Tags]    Menu Verification
    
    Open Application from menu
    Click Skip
    Login Function    ${UserName}    ${Password}    
    Left Banner Swipe    
    Left Menubar List Check    @{LeftMenuBar}     
    Click Logout button
    
To verify Sticky Menu in home page
    [Tags]    Menu Verification
    
    Open Application from menu
    Click Skip
    Login Function    ${UserName}    ${Password}
    Bottom Menubar List Check    @{BottomMenuBar}
    Logout Function
    
To verify the navigation to home page from menu link
    [Tags]    Menu Verification
    
    Open Application from menu
    Click Skip
    Login Function    ${UserName}    ${Password}
    BottomMenuClick    ${BottomMenuTaxReceipt}
    Left Banner Swipe
    LeftMenuClick    ${LeftMenuHome}
    
    
To verify the functionality of navigating to my givings page
    [Tags]    Menu Verification
    
    Open Application from menu
    Click Skip
    Element status check    ${LoginButton}    Application doesnt reach login page    Application reached Login Page
    Login Function    ${UserName}    ${Password}        
    Left Banner Swipe
    LeftMenuClick    ${LeftMenuSponsorChild}
    
To verify the functionality of navigating to Tax receipt page
    [Tags]    Menu Verification
    
    Open Application from menu
    Click Skip
    Login Function    ${UserName}    ${Password}  
    Left Banner Swipe  
    LeftMenuClick    ${LeftMenuTax}
    

To verify the functionality of navigating to Jeevan sparsh
    [Tags]    Menu Verification
    
    Open Application from menu
    Click Skip
    Element status check    ${LoginButton}    Application doesnt reach login page    Application reached Login Page
    Login Function    ${UserName}    ${Password}    
    Left Banner Swipe
    LeftMenuClick    ${LeftMenuJeevan}
    Element status check    ${JeevanBanner}    Jeevan Sparsh banner is not visible    Jeevan Sparsh banner is visible
    Jeevan articles check    @{JeevanArticlesList}
    
To verify the functionality of navigating to faqs page
    [Tags]    Menu Verification
    
    Open Application from menu
    Click Skip
    Login Function    ${UserName}    ${Password}
    Left Banner Swipe
    LeftMenuClick    ${LeftMenuFQA}
    #need to confirm banner
    FQA menus check    @{FQAlist}
    
To verify the functionality of navigating to contact us page
    [Tags]    Menu Verification

    Open Application from menu
    Click Skip
    Login Function    ${UserName}    ${Password}
    Left Banner Swipe
    LeftMenuClick    ${LeftMenuContacts}    
    #need to confirm banner
    Element status check    ${ContactUs}    Contact us page is not visible    Contact us page is visible
    Sleep    10s    
    ContactUs Swipe to View Form
    ContactUs Form check    @{ContactUsForm}
    
    
To verify the navigation to profile page from menu
    [Tags]    Menu Verification
    
    Open Application from menu
    Click Skip
    Login Function    ${UserName}    ${Password}
    Left Banner Swipe
    Click MyProfile
    MyProfile Details Check    @{ProfileDetails}
    Edit Profile    ${MyProfileLastName}
        
To verify the uninstall functionality of mobile app
    [Tags]    Uninstall application
    
    Open Worldvision To Reset
    Reset Application
    Remove Application    ${PackageName}
    
Verifying the Tax receipt Functionality Of the Donated user
    [Tags]    Tax Functionality Page
    
    Open Application from menu
    Click Skip
    Login Function    ${UserName}    ${Password}
    Left Banner Swipe
    LeftMenuClick    ${LeftMenuTax}  
    Select From and To date
    Click Tax Submit Button
    Element status check    ${TaxDownloadRcpt}    Tax receipt Download button is not visible    Tax receipt Download button is visible        
    
    
    
    
    