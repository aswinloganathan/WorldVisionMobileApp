#Application Setup variables
RemoteURL="http://127.0.0.1:4723/wd/hub"
PlatformName="Android"
PlatformVersion="9.0"
DeviceName="emulator-5554"
ApplicationPath="C:/Users/aswin/Downloads/app-debug_feb_09.apk"
ActivityName="worldvision.india.MainActivity"
PackageName="worldvision.india"

#Login Credentials
UserName="9999999995"
Password="password"

#Landing Page Login Credentials
LPUsername="logimohan@gmail.com"
LPPassword="logi"
LPUser="xpath=//android.view.View[contains(@text,'Logi')]"

InvalidUserName="6666666666"
InvalidPassword="asdhgasldhaslj"

InvUsernames=["*^$&^", "i1n2v3a4l5i6d", "test.com", "@@test.com", "@test.com", "test@test", "asdasdasd", "0000000000", "99999", "9999999999999999", " "]
ValidUsernames=["9999999995", "wv@wv.com"]

#LoginPage
SkipButton="xpath=//android.view.View[contains(@text,'Skip')]"
WvIcon='xpath=(//android.widget.TextView[@content-desc="worldvision"])[1]'
LoginButton="xpath=//android.widget.Button[contains(@text,'LOGIN')]"
UserNameField="xpath=(//*[@class='android.widget.EditText'])[1]"
PasswordField="xpath=(//*[@class='android.widget.EditText'])[2]"
OTPButton="xpath=//android.view.View[contains(@text,'Login With OTP')]"
OTPAlert="//android.app.Dialog[contains(@text,'OTP has been')]"
UserNameAlrt="xpath=//android.view.View[contains(@text,'Username is required!')]"
PasswordAlrt="xpath=//android.view.View[contains(@text,'Password is required!')]"
AltMsgUsername="Username is required!"
AltMsgPassword="Password is required!"
InvCredential="xpath=//android.view.View[contains(@text,'Invalid Credentials')]"

#HomePage
User="xpath=//android.view.View[contains(@text,'TestNameF')]"
LeftMenuBar=["Home", "Make Payment", "My Child", "My Campaign", "Tax Receipts", "Ways To Give", "Sponsor a Child", "Events", "Jeevan Sparsh", "FAQs", "Contact Us", "Cart", "Logout"]
BottomMenuBar=["HOME", "My Child", "Make Payments", "Tax Receipts"]

#Left Banner Menu
LeftMenuHome="xpath=//android.widget.Button[contains(@text,'Home')]"
LeftMenuMakePayment="xpath=//android.widget.Button[contains(@text,'Make Payment')]"
LeftMenuMyChild="xpath=//android.widget.Button[contains(@text,'My Child')]"
LeftMenuMyCampaign="xpath=//android.widget.Button[contains(@text,'My Campaign')]"
LeftMenuTax="xpath=//android.widget.Button[contains(@text,'Tax Receipts')]"
LeftMenuWaysToGIve="xpath=//android.widget.Button[contains(@text,'Ways To Give')]"
LeftMenuSponsorChild="xpath=//android.widget.Button[contains(@text,'Sponsor a Child')]"
LeftMenuEvents="xpath=//android.widget.Button[contains(@text,'Events')]"
LeftMenuJeevan="xpath=//android.widget.Button[contains(@text,'Jeevan Sparsh')]"
LeftMenuFQA="xpath=//android.widget.Button[contains(@text,'FAQs')]"
LeftMenuContacts="xpath=//android.widget.Button[contains(@text,'Contact Us')]"
LeftMenuCart="xpath=//android.widget.Button[contains(@text,'Cart')]"
LeftMenuLogout="xpath=//android.widget.Button[contains(@text,'Logout')]"

#Bottom Menu
BottomMenuHome="xpath=//android.view.View[contains(@text,'HOME')]"
BottomMenuMyChild="xpath=//android.view.View[contains(@text,'My Child')]"
BottomMenuMakePayments="xpath=//android.view.View[contains(@text,'Make Payments')]"
BottomMenuTaxReceipt="xpath=//android.view.View[contains(@text,'Tax Receipts')]"


#Logout
#LogoutButton="//android.view.View//android.view.View[2]//android.widget.Button[contains(@text,'Logout')]"
LogoutButton="xpath=//android.widget.Button[contains(@text,'Logout')]"


#Jeevan Sparsh page
JeevanBanner="xpath=//android.view.View[Contains(@text,'Jeevan Sparsh')]"
JeevanArticlesList=["1. Letter from the National Director", "2. Blessed beyond measure", "3. Weaving a new future", "4. The joy of water security", "5. Phases of Child Sponsorship", "6. Alfy’s Desk", "7. A sponsor’s commitment", "8. A former sponsored child gives back", "9. Cyclone Fani"]

#FQA Page
FQAlist=["Child sponsorship", "Worldvision india", "payments"]
NextButton="xpath=//android.widget.Button[contains(@text,'Next slide')]"

#ContactUS
ContactUs="xpath=(//android.view.View[contains(@text,'Contact Us')])[4]"
ContactUsForm=["edit-name-", "edit-email-", "edit-contact-", "edit-query-type-styled", "edit-message"]
ContactUsSponcerBtn="//android.view.View[@resource-id='edit-are-you-a-partner-']"
ContactUsSubmit="//android.widget.Button[@resource-id='edit-actions-submit']"

#FormName2="id=android.widget.EditText:id/edit-name-"

#MyProfile Page
MyProfile="xpath=//android.widget.Image[contains(@text,'avatar.png')]"
ProfileDetails=["edit-field-title-0-value", "edit-field-first-name-0-value", "edit-field-last-name-0-value", "edit-field-registeraddress-0-value", "edit-field-pin-code-0-value"]
#ProfileDetails=["edit-field-title", "edit-field-first-name", "edit-field-last-name", "edit-field-gender", "edit-field-registeraddress", "edit-field-pin-code"]
MyProfileLastName="xpath=//android.widget.EditText[@resource-id='edit-field-last-name-0-value']"
MyProfileSaveBtn="xpath=//android.widget.Button[@resource-id='edit-submit']"

#TaxReceiptPage

TaxFromDate="xpath=//android.widget.EditText[@resource-id='edit-created-min']"
TaxFromMonth="xpath=//android.view.View[@resource-id='ui-datepicker-div']//android.widget.Spinner[1]"
SelectTaxFromMonth="xpath=//android.widget.CheckedTextView[@text='Apr']"
TaxFromYear="xpath=//android.view.View[@resource-id='ui-datepicker-div']//android.widget.Spinner[2]"
SelectTaxFromYear="xpath=//android.widget.CheckedTextView[@text='2020']"
SelectTaxFromDay="xpath=//android.view.View[@text='1']"


TaxToDate="xpath=//android.widget.EditText[@resource-id='edit-created-max']"
TaxToMonth="xpath=//android.view.View[@resource-id='ui-datepicker-div']//android.widget.Spinner[1]"
TaxToYear="xpath=//android.view.View[@resource-id='ui-datepicker-div']//android.widget.Spinner[2]"

TaxSubmitBtn="xpath=//android.widget.Button[@resource-id='generate_tax']"
TaxDownloadRcpt="xpath=//android.widget.Button[@resource-id='order_download']"
TaxDownloadRcpt="xpath=//android.widget.Button[contains(@text,'Download Tax Receipt')]"

NoDataFound="xpath=//android.view.View[@text='No data found']"

#Ways To Give Campaign

EducateChildren="xpath=//android.view.View[contains(@text,'Educate Children')]"
# PledgeButton="xpath=//android.widget.Image[contains(@text,'pledge')]"
# SI_Check/Uncheck="xpath=//android.widget.CheckBox[@resource-id='ChkForSI']"
# AmountBtn="xpath=//android.view.View[contains(@text,'3 Months')]"
# AddToCart="xpath=//android.widget.Button[contains(@text,'Add to cart')]"
# ProceedToCart="xpath=//android.widget.Button[contains(@text,'Proceed to cart')]"
