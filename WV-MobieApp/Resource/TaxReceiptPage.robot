*** Settings ***
Library    AppiumLibrary    
Library    String    
Resource    CommonFunctions.robot

*** Keywords ***  

Click Tax Receipt From Date
    Click Element    ${TaxFromDate}
    
Click Tax Receipt From Month
    Click Element    ${TaxFromMonth}
    Sleep    3s    
    Click Element    ${SelectTaxFromMonth}

Click Tax Receipt From Year
    Click Element    ${TaxFromYear}
    Sleep    3s    
    Click Element    ${SelectTaxFromYear}    
    
Click Tax Receipt From Day    
    Click Element    ${SelectTaxFromDay}    



Click Tax Receipt To Date
    Click Element    ${TaxToDate}    

Click Tax Receipt To Day
    [Arguments]    ${date}    
    
    Click Element    xpath=//android.view.View[@text='${date}']  
    
Click Tax Receipt To Month
    [Arguments]    ${month}    

    Click Element    ${TaxToMonth}
    Click Element    xpath=//android.widget.CheckedTextView[@text='${month}']
    
Click Tax Receipt To Year
    [Arguments]    ${year}
    
    Click Element    ${TaxToYear}
    Click Element    xpath=//android.widget.CheckedTextView[@text='${year}']
  
  
Click Tax Submit Button        
    Click Element    ${TaxSubmitBtn}  

Click Download Receipt Button
    Click Element    ${TaxDownloadRcpt}
    

Select From and To date    
    
    Click Tax Receipt From Date
    Click Tax Receipt From Year
    Click Tax Receipt From Month
    Click Tax Receipt From Day
    
    ${todayDate.day}    ${todayDate.month}    ${todayDate.year}    Today date

    Click Tax Receipt To Date
    Click Tax Receipt To Year    ${todayDate.year}
    Click Tax Receipt To Month    ${todayDate.month}
    Click Tax Receipt To Day    ${todayDate.day}

    

    
