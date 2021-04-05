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
    Switch to Version A
    Wait and dismiss popup
#Switch version
    #Switch to Version A
    sleep               2s
Verify sale details on Timer Bar
    Check Seasonal Sale text on timer
Go to Contact Us Page
    Click on text name (Contact Us)
Verify the if Landed to correct URL
    Check the URL for Contact Us if it is correct
Verify if the title is showing
    Check if the Contact us title is showing
Verify if the title is correctly spelled
    Look at the Title Content for Contact US
Verify if the title description is showing
    Check if the Contact us title description is showing
Verify if the title description content is correct
    Look at the Title description Content for Contact US
Verify if the Email icon is showing
    Check if the email icon in Contact Us is showing
Verify if the Send us an email is showing and correctly spelled
    Look at the Email icon content for Contact US
Verify if the email address is showing and correct
    Look for the email address and see if it showing correct email address
#Verify if email address is clicked it will open email app
Verify if the Phone icon is showing
    Check if the Phone icon in Contact Us is showing
Verify if the Give us a call is showing and correctly spelled
    Look at the Phone icon content for Contact US
Verify if Phone number is showing and correct
    Look for the Phone Number and see if it showing correct details
#Verify if the phone number is clicked there will be popup
#Cancel the popup
Verify if the Contact Us form title is showing and correctly spelled
    Look for Contact Us form subject and see if it is showing correct text and spelling
Verify if the Name label is showing and correct
    Look for NAME textbox and check the label if it is showing and correctly spelled
Verify if the name textbox is showing
    Check if the Name Textbox is showing
Verify if the Email label is showing and correct
    Look for EMAIL textbox and check the label if it is showing and correctly spelled
Verify if the Email textbox is showing
    Check if the Email Textbox is showing
Verify if the Reason label is correct
    Look for REASON dropdown box and check the label if it is showing and correctly spelled
Verify if the Reason Dropdown is showing
    Check if the Reason Dropdown is showing
Verify if the Message label is correct
    Look for MESSAGE textbox and check the label if it is showing and correctly spelled
Verify if Message textbox is showing
    Check if the Message Textbox is showing
Verify if the Send Message button is showing
    Check if the Send Message action button is showing
Complete the Send Message Proccess
    Check if the field validation is working in contact us form
    Fill out Contact Us form