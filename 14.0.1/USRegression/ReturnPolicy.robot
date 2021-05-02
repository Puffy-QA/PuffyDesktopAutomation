*** Settings ***
Documentation       Regression for Return Policy Page
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
    #Switch to Version A
    Wait and dismiss popup
#Switch version
    #Switch to Version A
    sleep               2s
Verify sale details on Timer Bar
    Check Seasonal Sale text on timer
Verify the content in Return Policy Section
    Go to Return Policy Page
    Check Return Policy Title if showing with correct content
    Read and check the Return Policy Description content if showing and correct
Verify the Why Buy Puffy? section
    Check if the title Why Buy Puffy? is showing with correct content
    Read and check the Why Buy Puffy? description content if showing and correct
    Check if Puffy hyperlink is clickable and redirected to correct page
Verify the PUFFY MATTRESS RETURNS section
    Check if the title PUFFY MATTRESS RETURNS is showing with correct content
    Read and check the PUFFY MATTRESS RETURNS description content if showing and correct
    Check if Puffy Mattress hyperlink is clickable and landing to correct page
Verify the PUFFY PRODUCT RETURNS section
    Check if the title PUFFY PRODUCT RETURNS is showing with correct content
    Read and check the PUFFY PRODUCT RETURNS description content if showing and correct
    Check if 101-night sleep trial hyperlink is clickable and landing to correct page
    Check if Puffy.com hyperlink is clickable and landing to correct page
Verify the Order Your Puffy Now section
    Check if the section is showing
    Check if the Product Bar title is showing with correct content
    Check if the first product bar box is showing (Icon and text desc)
    Check if product bar icon arrow is showing
    Check if the second product bar box is showing (Icon and text desc)
    Check if product bar text at the bottom is showing with correct content
    Check if the product bar CTA is showing with correct label and functionality