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
Switch version
    #Switch to Version A
    sleep               2s
Verify sale details on Timer Bar
    Check Seasonal Sale text on timer
Verify if Awards page is opening
    Click on text name (Awards)
Verify the Top Banner if showing properly
    Verify if the Awards page Top banner block is showing
    Verify Awards page image of Top Banner is showing
    Verify Awards page Top Banner text is showing with correct content
Verify if the RANKED BEST MATTRESS is showing with correct content
    Verify RANKED BEST MATTRESS TITLE is showing with correct content
    verify RANKED BEST MATTRESS desc is showing with correct content
#Verify SLEEP MATTERS is showing correctly with correct content
    #Verify SLEEP MATTERS image is showing
    #Verify SLEEP MATTERS title is showing with correct content
    #Verify SLEEP MATTERS desc is showing with correct content
    #Verify SLEEP MATTERS redirection and if Puffy is visible on their page
#Verify Our Sleep Guide is showing correctly with correct content
    #Verify Our Sleep Guide image is showing
    #Verify Our Sleep Guide title is showing with correct content
    #Verify Our Sleep Guide desc is showing with correct content
    #Verify Our Sleep Guide redirection and if Puffy is visible on their page
#Verify SLEEPOLIS is showing correctly with correct content
    #Verify SLEEPOLIS image is showing
    #Verify SLEEPOLIS title is showing with correct content
    #Verify SLEEPOLIS desc is showing with correct content
    #Verify SLEEPOLIS redirection and if Puffy is visible on their page
#Verify Health is showing correctly with correct content
    #Verify Health image is showing
    #Verify Health title is showing with correct content
    #Verify Health desc is showing with correct content
    #Verify Health redirection and if Puffy is visible on their page
#Verify Best Mattress Guide is showing correctly with correct content
    #Verify Best Mattress Guide image is showing
    #Verify Best Mattress Guide title is showing with correct content
    #Verify Best Mattress Guide desc is showing with correct content
    #Verify Best Mattress Guide redirection and if Puffy is visible on their page
#Verify Mattress Clarity is showing correctly with correct content
    #Verify Mattress Clarity image is showing
    #Verify Mattress Clarity title is showing with correct content
    #Verify Mattress Clarity desc is showing with correct content
    #Verify Mattress Clarity redirection and if Puffy is visible on their page
#Verify The Mattress Nerd is showing correctly with correct content
    #Verify The Mattress Nerd image is showing
    #Verify The Mattress Nerd title is showing with correct content
    #Verify The Mattress Nerd desc is showing with correct content
    #Verify The Mattress Nerd redirection and if Puffy is visible on their page
#Verify healthline is showing correctly with correct content
    #Verify healthline image is showing
    #Verify healthline title is showing with correct content
    #Verify healthline desc is showing with correct content
    #Verify healthline redirection and if Puffy is visible on their page
#Verify MATTRESS ADVISOR is showing correctly with correct content
    #Verify MATTRESS ADVISOR image is showing
    #Verify MATTRESS ADVISOR title is showing with correct content
    #Verify MATTRESS ADVISOR desc is showing with correct content
    #Verify MATTRESS ADVISOR redirection and if Puffy is visible on their page
#Verify BEST MATTRESS PICKS is showing correctly with correct content
    #Verify BEST MATTRESS PICKS image is showing
    #Verify BEST MATTRESS PICKS title is showing with correct content
    #Verify BEST MATTRESS PICKS desc is showing with correct content
    #Verify BEST MATTRESS PICKS redirection and if Puffy is visible on their page


