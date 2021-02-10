#Application Setup variables
RemoteURL="http://127.0.0.1:4723/wd/hub"
PlatformName="Android"
PlatformVersion="9.0"
DeviceName="emulator-5556"
ApplicationPath="D:/TestLeaf/Maven/WV-MobieApp/Application/app-debug_feb_09.apk"
ActivityName="worldvision.india.MainActivity"
PackageName="worldvision.india"
UserName="9999999996"
Password="password"

#LoginPage
SkipButton="xpath=//android.view.View[contains(@text,'Skip')]"
WvIcon='xpath=(//android.widget.TextView[@content-desc="worldvision"])[1]'
Login="xpath=//android.widget.Button[contains(@text,'LOGIN')]"
UserNameField="xpath=(//*[@class='android.widget.EditText'])[1]"
PasswordField="xpath=(//*[@class='android.widget.EditText'])[2]"

#HomePage
User="xpath=//android.view.View[contains(@text,'TestNameF')]"