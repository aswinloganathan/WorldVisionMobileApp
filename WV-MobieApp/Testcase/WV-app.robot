*** Settings ***
Library    AppiumLibrary    
Resource    ../Resource/CommonFunctions.robot
Suite Setup    Set appium details
Suite Teardown    Close Application
#Test Teardown    Close Application


*** Test Cases ***

Install new application
    [Tags]    Install Application
    
    Install new application

Open WV application
    [Tags]    To verify the welcome screen    
                        
    Vertical swipe                
    Click WV app    
    Sleep    10s    
    Right Swipe
    Sleep    10s    
    Click Skip    
    Element status check    ${Login}    Application doesnt reach login page    Application reached Login Page        

To verify the banner scroll on the welcome screen
    [Tags]    To verify the welcome screen
            
    Vertical swipe    
    Click WV app    
    Sleep    10s    
    FOR    ${element}    IN RANGE    1    4
        Sleep    2s    
        Right Swipe
    END        
    Sleep    5s    
    Click Element    ${Login}    
    Sleep    5s    
    Element status check    ${Login}    Application doesnt reach login page    Application reached Login Page 
    
To verify the Login screen 
    [Tags]    Login functionality    
                
    Vertical swipe    
    Click WV app    
    Sleep    10s    
    FOR    ${element}    IN RANGE    1    4
        Sleep    2s    
        Right Swipe
    END        
    Sleep    5s    
    Click Element    ${Login}    
    Sleep    5s        
    Element status check    ${UserNameField}    Page doesnt contain username field    Page contain username field
    Element status check    ${PasswordField}    Page doesnt contain password field    Page contain password field
    Element status check    ${Login}    Application doesnt reach login page    Application reached Login Page     
    
To verify login in APP by Website registered user
    [Tags]    Login functionality
            
    Vertical swipe    
    Click WV app    
    Sleep    10s
    Click Skip
    Sleep    5s
    Login Function
    Sleep    10s    
    Element status check    ${User}    Username was displayed on HomePage    Username dispalyed on HomePage                

To verify the Logout functionality
    [Tags]    Logout functionality
    
    Vertical swipe
    Click WV app    
    Sleep    10s
    Click Skip
    Sleep    5s
    Login Function
    Sleep    10s    
    Element status check    ${User}    Username was displayed on HomePage    Username dispalyed on HomePage            
    Left banner Swipe  
    Logout Function
    Sleep    10        

# To verify login in APP by Landing page registered user
    # [Tags]    Login Screen
    
    