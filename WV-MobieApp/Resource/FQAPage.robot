*** Settings *** 
Library    AppiumLibrary    
Library    String    
Resource    CommonFunctions.robot

*** Keywords ***

FQA Menus Check    
    [Arguments]    @{FQAlist}
    
    Sleep    10s    
    FOR    ${ElementOfList}    IN    @{FQAlist}        
        #Click Element    ${NextButton}
        Sleep    5s    
        ${status}=    Run Keyword And Return Status    Element Should Be Visible    xpath=//android.view.View[@resource-id='${ElementOfList}']
        Run Keyword If    '${status}'!='True'    Fail    ${ElementOfList} is not visible    ELSE    Log    ${ElementOfList} is visible         
        FQA Menu Swipe
        #Run Keyword If    '${status}'!='True'    FQA Swipe and search    ${ElementOfList}    ELSE    Log    ${ElementOfList} is visible
        Sleep    2s            
    END

FQA Swipe and search
    [Arguments]    ${ElementOfList}    
    
    FOR    ${element}    IN RANGE    1    4
       FQA Menu Swipe
       ${status}=    Run Keyword And Return Status    Element Should Be Visible    xpath=//android.view.View[@resource-id='${ElementOfList}']          
       Run Keyword If    '${status}'!='True'    Log    ${ElementOfList} is not visible
       Exit For Loop If    '${status}'=='True'
    END    

FQA Menu Swipe
    Sleep    3s    
    Swipe    797    585    267    585