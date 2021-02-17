*** Settings ***
Library    AppiumLibrary    
Library    String    
Resource    CommonFunctions.robot

*** Keywords ***  

Click Tax Receipt From Date    
    Sleep    15s    
    Click Element    ${TaxFromDate}
    
Click Tax Receipt From Month
    Sleep    3s    
    Click Element    ${TaxFromMonth}
    Sleep    3s    
    Click Element    ${SelectTaxFromMonth}

Click Tax Receipt From Year
    Sleep    3s    
    Click Element    ${TaxFromYear}
    Sleep    3s    
    Click Element    ${SelectTaxFromYear}    
    
Click Tax Receipt From Day
    Sleep    3s        
    Click Element    ${SelectTaxFromDay}    



Click Tax Receipt To Date
    Sleep    3s    
    Click Element    ${TaxToDate}    

Click Tax Receipt To Day
    [Arguments]    ${date}    
    
    Sleep    3s
    Click Element    xpath=//android.view.View[@text='${date}']  
    
Click Tax Receipt To Month
    [Arguments]    ${month}    

    Sleep    3s
    Click Element    ${TaxToMonth}
    Sleep    3s
    Click Element    xpath=//android.widget.CheckedTextView[@text='${month}']
    
Click Tax Receipt To Year
    [Arguments]    ${year}
    
    Sleep    3s
    Click Element    ${TaxToYear}
    Sleep    3s
    Click Element    xpath=//android.widget.CheckedTextView[@text='${year}']
  
  
Click Tax Submit Button        
    
    Sleep    3s
    Click Element    ${TaxSubmitBtn}  

Click Download Receipt Button
        
    Sleep    3s
    Click Element    ${TaxDownloadRcpt}    

Select From and To date    
    
    Click Tax Receipt From Date
    Click Tax Receipt From Year
    Click Tax Receipt From Month
    Click Tax Receipt From Day
    
    ${year}    ${month}    ${day}    Today date in strings
    
    Click Tax Receipt To Date
    Click Tax Receipt To Year    ${year}
    Click Tax Receipt To Month    ${month}
    Click Tax Receipt To Day    ${day}

Tax Receipt Elements visiblity check
    Sleep    15s    
    Element status check    ${TaxFromDate}    From Date is not visible    From Date is visible
    Element status check    ${TaxToDate}    To Date is not visible    To Date is visible
    Element status check    ${TaxSubmitBtn}    Submit Button is not visible    Submit Button is visible
    
