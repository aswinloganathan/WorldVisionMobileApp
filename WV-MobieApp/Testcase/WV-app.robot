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
    [Tags]    Login Screen    
                
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
    [Tags]    Login Screen
            
    Vertical swipe    
    Click WV app    
    Sleep    10s
    Click Skip
    Sleep    5s
    Login Function
    Sleep    10s    
    Element status check    ${User}    Username was displayed on HomePage    Username dispalyed on HomePage
    

    
# To verify login in APP by Landing page registered user
    # [Tags]    Login Screen
    
    
    
    
    

# Login and Logout
    
    # Open Worldvision
    # Wait Until Element Is Visible   xpath=//android.view.View[contains(@text,'Skip')]    20s
    # Click Element        xpath=//android.view.View[contains(@text,'Skip')]
    
    # Wait Until Element Is Visible    xpath=(//*[@class='android.widget.EditText'])[1]    20s
    # Input Text    xpath=(//*[@class='android.widget.EditText'])[1]    ${USERNAME}
    # Input Password    xpath=(//*[@class='android.widget.EditText'])[2]    ${PASSWORD}
    # Click Element    xpath=//android.widget.Button[contains(@text,'LOGIN')]
    
    # Sleep    20s
    # Swipe    0    1026    800    1026  
    # Wait Until Page Contains Element    //android.view.View//android.view.View[2]//android.widget.Button[contains(@text,'Logout')]    25s
    # Click Element    //android.view.View//android.view.View[2]//android.widget.Button[contains(@text,'Logout')]
    
    # Sleep    10s    
    # Close Application
    
    