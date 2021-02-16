*** Settings *** 
Library    AppiumLibrary    
Library    String    
Resource    CommonFunctions.robot

*** Keywords ***

Click MyProfile
    Sleep    5s   
    Click Element    ${MyProfile}

MyProfile Details Check
    [Arguments]    @{ListOfElements}
    
    Sleep    10s    
    FOR    ${element}    IN    @{ListOfElements}                
        Sleep    5s    
        #Scroll Down    xpath=//android.widget.EditText[@resource-id='${element}']        
        ${status}=    Run Keyword And Return Status    Element Should Be Visible    xpath=//android.widget.EditText[@resource-id='${element}']
        Run Keyword If    '${status}'!='True'    Fail    ${element} is not visible    Log    ${element} is visible
        Sleep    2s            
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

Scroll Down Till Element Found
    [Arguments]    ${ScrollToElement}
    
    FOR    ${element}    IN RANGE    1    10        
        #Swipe    555    1554    570    358             
        ${status}=    Run Keyword And Return Status    Element Should Be Visible    ${ScrollToElement}    
        Run Keyword If    '${status}'!='True'    Log    Element Not Found
        Swipe    555    1554    570    358
        Exit For Loop If    '${status}'=='True'
    END