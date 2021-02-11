#Application Setup variables
RemoteURL="http://127.0.0.1:4723/wd/hub"
PlatformName="Android"
PlatformVersion="9.0"
DeviceName="emulator-5556"
ApplicationPath="D:/TestLeaf/Maven/WV-MobieApp/Application/app-debug_feb_09.apk"
ActivityName="worldvision.india.MainActivity"
PackageName="worldvision.india"

#Login Credentials
UserName="9999999996"
Password="password"

InvalidUserName="6666666666"
InvalidPassword="asdhgasldhaslj"

InvUsernames=["*^$&^", "i1n2v3a4l5i6d", "test.com", "@@test.com", "@test.com", "test@test", "asdasdasd", "0000000000", "99999", "9999999999999999", " "]
ValidUsernames=["9999999995", "wv@wv.com"]

#LoginPage
SkipButton="xpath=//android.view.View[contains(@text,'Skip')]"
WvIcon='xpath=(//android.widget.TextView[@content-desc="worldvision"])[1]'
Login="xpath=//android.widget.Button[contains(@text,'LOGIN')]"
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

#Logout
#LogoutButton="//android.view.View//android.view.View[2]//android.widget.Button[contains(@text,'Logout')]"
LogoutButton="//android.widget.Button[contains(@text,'Logout')]"