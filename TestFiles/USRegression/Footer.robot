*** Settings ***
Documentation       Regression for Footer
Library             Selenium2Library
Library             ScreenCapLibrary
Library             Collections
Library             String
Suite Teardown      close browser
Resource            ../Resources/VariableLocators.robot
Resource            ../Resources/VariableURL.robot
Resource            ../Resources/VariableTexts.robot
Resource            ../Resources/VariableSettings.robot
Resource            ../Resources/KeywordsRegression.robot

*** Test Cases ***
Start Record Video
    Initiate Video Recording
Verify the Sale Popup appears
    Open Login Screen
    Wait and dismiss popup
#Switch version
    #Switch to Version B
    sleep               2s
Verify sale details on Timer Bar
    Check Seasonal Sale text on timer
Check Sign Up Section
    Click sign up without email address
    Click Sign up without email domain
    Click Sign up with valid email address
Check Product Section
    Check Product Section Spelling
    Check Product Section Redirection
Check Puffy Section
    Check Puffy Section Spelling
    Check Puffy Section Redirection
Check Support Section
    Check Support Section Spelling
    Check Support Section Redirection
Check Social Media Section
    Check Social Media Section Redirection
Check Auxiliary Section
    Check Auxiliary Section Spelling
    Check Auxiliary Section Redirection

Stop All Video Recordings
    Stop All Video Recordings









