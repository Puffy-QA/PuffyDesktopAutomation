*** Settings ***
Documentation       Regression for Footer
Library             Selenium2Library
Library             ScreenCapLibrary
Library             Collections
Library             String
#Suite Teardown      close browser
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
    #Switch to Version A
    Wait and dismiss popup
#Switch version
    #Switch to Version A
    sleep               2s
Verify sale details on Timer Bar
    Check Seasonal Sale text on timer
Check if landed to correct URL and title is showing with correct content
    Go to FAQ
    Check if the FAQ title is showing and with correct content

    Verify if the search is showing
