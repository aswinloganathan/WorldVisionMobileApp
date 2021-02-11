*** Settings ***
Library    AppiumLibrary    
Resource    ../Resource/CommonFunctions.robot
Test Setup    Set appium details
Test Teardown    Close Application


*** Test Cases ***

Install new application
    [Tags]    Install Application
    
    Install new application

Open WV application
    [Tags]    To verify the welcome screen    
                                
    Open Application from menu    
    Sleep    5s    
    Right Swipe        
    Click Skip    
    Element status check    ${Login}    Application doesnt reach login page    Application reached Login Page
    

To verify the banner scroll on the welcome screen
    [Tags]    To verify the welcome screen
            
    Open Application from menu   
    Sleep    10s    
    FOR    ${element}    IN RANGE    1    4            
        Right Swipe
    END               
    Click login button           
    Element status check    ${Login}    Application doesnt reach login page    Application reached Login Page 
    
    
To verify the Login screen 
    [Tags]    Login functionality    
                
    Open Application from menu   
    Sleep    10s    
    FOR    ${element}    IN RANGE    1    4           
        Right Swipe
    END            
    Click login button                
    Element status check    ${UserNameField}    Page doesnt contain username field    Page contain username field
    Element status check    ${PasswordField}    Page doesnt contain password field    Page contain password field
    Element status check    ${Login}    Application doesnt reach login page    Application reached Login Page     
    
To verify login in APP by Website registered user
    [Tags]    Login functionality
            
    Open Application from menu        
    Click Skip    
    Login Function    ${UserName}    ${Password}    
    Element status check    ${User}    Username was displayed on HomePage    Username dispalyed on HomePage
    Logout Function                

To verify the Logout functionality
    [Tags]    Logout functionality
    
    Open Application from menu        
    Click Skip    
    Login Function    ${UserName}    ${Password}
    Element status check    ${User}    Username was displayed on HomePage    Username dispalyed on HomePage            
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
    Element status check    ${Login}    Application doesnt reach login page    Application reached Login Page
    FOR    ${element}    IN    @{ValidUsernames}
        Input Username field    ${element}
        Element should not be visible    ${UserNameAlrt}    Username alert appeared for invalid username     Username alert doesnt appear for invalid username
        Clear Username field        
    END

To verify the validations of the username with invalid data
    [Tags]    Login functionality
    
    Open Application from menu        
    Click Skip
    Element status check    ${Login}    Application doesnt reach login page    Application reached Login Page    
    FOR    ${element}    IN    @{InvUsernames}
        Input Username field    ${element}        
        Element status check    ${UserNameAlrt}    Username alert doesnt appear for invalid username     Username alert appeared for invalid username
        Clear Username field        
    END
    
To verify the password field structure
    [Tags]    Login functionality
    
    Open Application from menu        
    Click Skip
    Element status check    ${Login}    Application doesnt reach login page    Application reached Login Page
    Input password field    ${Password}
    Sleep    5s    
    ${password_got}=    Get Element Attribute    ${PasswordField}    text
    Should Not Be Equal As Strings    ${password_got}    ${Password}
    
To verify the login functionality with invalid OTP
    [Tags]    Login functionality
    
    Open Application from menu
    Click Skip
    Element status check    ${Login}    Application doesnt reach login page    Application reached Login Page
    Input Username field    ${UserName}
    Sleep    5s    
    Click Element    ${OTPButton}
    Sleep    2s
    Element status check    ${OTPAlert}    OTP alert doesnt appear    OTP alert appeared
    Input password field    123456
    Element status check    ${InvCredential}    Alert message doesnt appear for Invalid credentials    Alert message appeared for Invalid credentials
    
    
    




    