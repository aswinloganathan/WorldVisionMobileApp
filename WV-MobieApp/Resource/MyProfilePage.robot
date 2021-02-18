*** Settings *** 
Library    AppiumLibrary    
Library    String    
Resource    CommonFunctions.robot


*** Keywords ***

Click MyProfile
    Sleep    5s   
    Click Element    ${MyProfile}

MyProfile Fields Check
    [Arguments]    @{ListOfElements}
    
    Sleep    10s    
    FOR    ${element}    IN    @{ListOfElements}                
        Sleep    5s    
        #Scroll Down    xpath=//android.widget.EditText[@resource-id='${element}']        
        ${status}=    Run Keyword And Return Status    Element Should Be Visible    xpath=//android.widget.EditText[@resource-id='${element}']
        Run Keyword If    '${status}'!='True'    Fail    ${element} is not visible    ELSE    Log    ${element} is visible
        Sleep    2s            
    END
    
MyProfile Details Check
    [Arguments]    @{ListOfElements}
    
    Sleep    10s    
    FOR    ${element}    IN    @{ListOfElements}                
        Sleep    5s                 
        ${status}=    Run Keyword And Return Status    Element Should Be Visible    xpath=//android.widget.EditText[@resource-id='${element}']
        Run Keyword If    '${status}'!='True'    Fail      Field is not visible in my profile page    ELSE    Log    Field is visible in my profile page      
        ${element_text}=    Get Text    xpath=//android.widget.EditText[@resource-id='${element}']
        MyProfile Details Check nested loop    ${element_text}            
        Sleep    2s                           
    END

MyProfile Details Check nested loop
    [Arguments]    ${element_text}    @{ProfileDetails}

    FOR    ${element}    IN    @{ProfileDetails}
        Run Keyword If    '${element_text}'!='${element}'    Fail    website details doesnt match with app data    ELSE    Log    website details matching with app data
    END    
    
Edit Profile
    [Arguments]    ${element}        
            
    ${LastName}=    Generate Random String    length=8    chars=[LETTERS]    
    Clear and Input Text    ${element}    ${LastName}  

    Scroll Down Till Element Found    ${MyProfileSaveBtn}
    Click Element    ${MyProfileSaveBtn}
    
    Sleep    10s    
    
    ${lastNameAfter}=    Get Text    ${element}    
    Should Be Equal    ${LastName}    ${lastNameAfter}

