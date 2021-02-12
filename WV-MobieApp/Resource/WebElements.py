#Application Setup variables
RemoteURL="http://127.0.0.1:4723/wd/hub"
PlatformName="Android"
PlatformVersion="9.0"
DeviceName="emulator-5556"
ApplicationPath="D:/TestLeaf/Maven/WV-MobieApp/Application/app-debug_feb_09.apk"
ActivityName="worldvision.india.MainActivity"
PackageName="worldvision.india"

#Login Credentials
UserName="9999999995"
Password="password"

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
BottomMenuHome="//android.view.View[contains(@text,'HOME')]"
BottomMenuMyChild="//android.view.View[contains(@text,'My Child')]"
BottomMenuMakePayments="//android.view.View[contains(@text,'Make Payments')]"
BottomMenuTaxReceipt="//android.view.View[contains(@text,'Tax Receipts')]"


#Logout
#LogoutButton="//android.view.View//android.view.View[2]//android.widget.Button[contains(@text,'Logout')]"
LogoutButton="//android.widget.Button[contains(@text,'Logout')]"