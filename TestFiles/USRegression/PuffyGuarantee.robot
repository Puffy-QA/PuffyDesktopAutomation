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
Check the details in first section of Puffy Guarantee page
    Go To Puffy Guarantee page
    Check if page banner image is showing
    Check if page banner title and description is showing with correct content
Check the Details in Get Puffy 100% Risk free block
    Check if the 100% Risk Free block is showing the title with correct content
    Check if the block is showing the description with correct content
    Check if the 3 USP images are showing
    Check if the 3 USP texts are showing with correct content
Check the details in Puffy Lifetime warranty block
    Check if the Lifetime warranty block is showing the title with correct content
    Check if the Lifetime warranty block featured text is showing with correct content
Check the details in 101-Night Sleep Trial Block
    Check if the 101-Night Sleep Trial block is showing the title with correct content
    Check if the 101-Night Sleep Trial block featured text is showing with correct content
    #Check if Puffy Mattress hyperlink is clickable and landing to correct page
#Verify the Order Your Puffy Now section
    #Check if the section is showing
    #Check if the Product Bar title is showing with correct content
    #Check if the first product bar box is showing (Icon and text desc)
    #Check if product bar icon arrow is showing
    #Check if the second product bar box is showing (Icon and text desc)
    #Check if product bar text at the bottom is showing with correct content
    #Check if the product bar CTA is showing with correct label and functionality