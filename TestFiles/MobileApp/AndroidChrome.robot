*** Settings ***
Library     AppiumLibrary

*** Test Cases ***
Open_Application
    Open Application    http://localhost:4723/wd/hub    platformName=Android	deviceName=emulator-5554    appPackage=com.android.chrome   appActivity=org.chromium.chrome.browser.document.ChromeLauncherActivity - Chrome    automationName=Uiautomator2