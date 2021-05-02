*** Settings ***
Documentation    Regression for Size & Weight Information Page
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
Switch version
    #Switch to Version A
    sleep               2s
Verify sale details on Timer Bar
    Check Seasonal Sale text on timer
Check the details in first section of Size & Weight Information page
    Go to Size & Weight information page
    Verify page banner title is correct
    Verify page banner image is showing
    Verify page banner CTA has correct text and redirecting to correct page
Check the details for Memory Foam Mattress Weights and Hybrid Mattress Weights
    Verify the text content if correct
    Verify Memory Foam Mattress Weights Title
    Verify Memory Foam Mattress Weights table titles
    #Verify Puffy size and weight
    #Verify Puffy Lux size and weight
    #Verify Puffy Royal size and weight

