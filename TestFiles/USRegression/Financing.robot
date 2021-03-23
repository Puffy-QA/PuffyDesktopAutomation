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
Check the details in first section of Finance page
    Go to Financing Page
    Check if top-banner__image is showing
    Check if the Top Banner title is showing and with correct content
    Check if the Top Banner description is showing and with correct content
    Check if Top Banner CTA button is showing and with correct text and functionality
Check the details in Financing option section
    Check if Financing option title is showing and with correct content
    Check if Klarna image is showing
    Check if Klarna Summary is showing and with correct content
    Check if See Details in Klarna is showing and redirecting to correct section
    Check if Splitit image is showing
    Check if Splitit Summary is showing with correct content
    Check if See Details in Splitit is showing and redirecting to correct section
Check the details in Klarna section
    Click See Details in Klarna
    Check if Klarna image in finance is showing
    Check if Klarna section title is showing and with correct content
    Check if Klarna featured financing is showing with correct content (Including the amount per month)
    Check if Klarna Financing Icon is Showing
    Check if Klarna Financing feature title is showing with correct content
    Check if Klarna Financing feature Description is showing with correct content
    Check if Klarna Apply in Minutes icon is showing
    Check if Klarna Apply in Minutes Title is showing and with correct content
    Check if Klarna Apply in Minutes description is showing and with correct content
    Check if Klarna Simple repayment icon is showing
    Check if Klarna Simple repayment Title is showing and with correct content
    Check if Klarna Simple repayment description is showing and with correct content
    Check if Select Klarna at checkout is showing
    Check Klarna Section CTA button is showing with correct content and functionality
Check Details in Klarna Financing FAQs
    Check the first question in the list if showing and with correct content (Klarna)
    Click first question to see if it will expand (Klarna)
    Check if the first answer will show with correct content (Klarna)
    Click the first question to see if it will collapse (Klarna)
    Check the second question in the list if showing and with correct content (Klarna)
    Click second question to see if it will expand (Klarna)
    Check if the second answer will show with correct content (Klarna)
    Click the second question to see if it will collapse (Klarna)
    Check the third question in the list if showing and with correct content (Klarna)
    Click third question to see if it will expand (Klarna)
    Check if the third answer will show with correct content (Klarna)
    Click the third question to see if it will collapse (Klarna)
    Check if the disclaimer is showing with correct content (Klarna)
    Check if the CTA for Klarna financing is showing with correct content and functionality (Klarna)
Check the details in Splitit section
    Click See Details in Splitit
    Check if Splitit image in finance is showing
    Check if Splitit section title is showing and with correct content
    Check if Splitit featured financing is showing with correct content (Including the amount per month)
    Check if Splitit Split your payment Icon is Showing
    Check if Splitit Split your payment feature title is showing with correct content
    Check if Splitit Split your payment feature Description is showing with correct content
    Check if Splitit No Application or CC icon is showing
    Check if Splitit No Application or CC Title is showing and with correct content
    Check if Splitit No Application or CC description is showing and with correct content
    Check if Splitit Take Advantage icon is showing
    Check if Splitit Take Advantage Title is showing and with correct content
    Check if Splitit Take Advantage description is showing and with correct content
    Check if Select Splitit at checkout is showing
    Check Splitit Section CTA button is showing with correct content and functionality
Check Details in Splitit Payment Plan FAQs
    Check the first question in the list if showing and with correct content (Splitit)
    Click first question to see if it will expand (Splitit)
    Check if the first answer will show with correct content (Splitit)
    Click the first question to see if it will collapse (Splitit)
    Check the second question in the list if showing and with correct content (Splitit)
    Click second question to see if it will expand (Splitit)
    Check if the second answer will show with correct content (Splitit)
    Click the second question to see if it will collapse (Splitit)
    Check the third question in the list if showing and with correct content (Splitit)
    Click third question to see if it will expand (Splitit)
    Check if the third answer will show with correct content (Splitit)
    Click the third question to see if it will collapse (Splitit)
    Check if the disclaimer is showing with correct content (Splitit)
    Check if the CTA for Klarna financing is showing with correct content and functionality (Splitit)