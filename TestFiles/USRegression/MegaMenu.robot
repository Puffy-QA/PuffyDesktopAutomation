*** Settings ***
Documentation       Regression for Mega Menu
Library             Selenium2Library
#Library             SeleniumLibrary
Library             ScreenCapLibrary
Library             Collections
Library             String
Suite Teardown      close browser
Resource            ../Resources/VariableURL.robot
Resource            ../Resources/VariableSettings.robot
Resource            ../Resources/VariableLocators.robot
Resource            ../Resources/KeywordsRegression.robot
Resource            ../Resources/VariableTexts.robot

*** Test Cases ***
Start Record Video
    Initiate Video Recording
Verify the Sale Popup appears
    Open Login Screen
    Wait and dismiss popup
#Switch version
    #Switch to Version C
    sleep               2s
Verify sale details on Timer Bar
    Check Seasonal Sale text on timer

Hover to MATTRESSES MEGA MENU
    Mouse over the MATTRESSES in Mega Menu
Verify if the Spelling is correct in MATTRESSES mega menu (Puffy Mattress)
    Look at the MATTRESSES mega menu spelling for Puffy Mattress
Verify if the Spelling is correct in MATTRESSES mega menu (Puffy Lux Mattress)
    Look at the MATTRESSES mega menu spelling for Puffy Lux Mattress
Verify if the Spelling is correct in MATTRESSES mega menu (Puffy Royal Mattress)
    Look at the MATTRESSES mega menu spelling for Puffy Royal Mattress
Hover to BASES MEGA MENU
    Mouse over the BASES in Mega Menu
Verify if the Spelling is correct in BASES mega menu (Foundation)
    Look at the BASES mega menu spelling for Puffy Foundation
Verify if the Spelling is correct in BASES mega menu (Adjustable Base)
    Look at the BASES mega menu spelling for Puffy Adjustable Base
Verify if the Spelling is correct in BASES mega menu (Bed Frame)
    Look at the BASES mega menu spelling for Puffy Bed Frame
Hover to BEDDING MEGA MENU
    Mouse over the BEDDING in Mega Menu
Verify if the Spelling is correct in BEDDING mega menu (Comforter)
    Look at the BEDDING mega menu spelling for Comforter
Verify if the Spelling is correct in BEDDING mega menu (Pillow)
    Look at the BEDDING mega menu spelling for Puffy Pillow
Verify if the Spelling is correct in BEDDING mega menu (Body Pillow)
    Look at the BEDDING mega menu spelling for Puffy Body Pillow
Verify if the Spelling is correct in BEDDING mega menu (Mattress Pad)
    Look at the BEDDING mega menu spelling for Puffy Mattress Pad
Verify if the Spelling is correct in BEDDING mega menu (Mattress Protector)
    Look at the BEDDING mega menu spelling for Puffy Mattress Protector
Verify if the Spelling is correct in BEDDING mega menu (Mattress Topper)
    Look at the BEDDING mega menu spelling for Puffy Mattress Topper
Verify if the Spelling is correct in BEDDING mega menu (Blanket)
    Look at the BEDDING mega menu spelling for Puffy Blanket
Verify if the Spelling is correct in BEDDING mega menu (Weighted Blanket)
    Look at the BEDDING mega menu spelling for Puffy Weighted Blanket
Verify if the Spelling is correct in BEDDING mega menu (Sheets)
    Look at the BEDDING mega menu spelling for Puffy Sheets
Hover to BEDROOM MEGA MENU
    Mouse over the BEDROOM in Mega Menu
Verify if the Spelling is correct in BEDROOM mega menu (Dog Bed)
    Look at the BEDROOM mega menu spelling for Puffy Dog Bed
Verify if the Spelling is correct in BEDROOM mega menu (Rug)
    Look at the BEDROOM mega menu spelling for Puffy Rug
Hover to REVIEWS MEGA MENU
    Mouse over the Reviews in Mega Menu
Verify if the Spelling is correct in REVIEWS mega menu (Customer Reviews)
    Look at the REVIEWS mega menu spelling for Customer Reviews
Verify if the Spelling is correct in REVIES mega menu (Video Reviews)
    Look at the REVIEWS mega menu spelling for Video Reviews
Verify if the Spelling is correct in REVIES mega menu (Awards)
    Look at the REVIEWS mega menu spelling for Awards

Hover to SUPPORT MEGA MENU
    Mouse over the SUPPORT in Mega Menu
Verify if the Spelling is correct in SUPPORT mega menu (Contact Us)
    Look at the SUPPORT mega menu spelling for Contact Us
Verify if the Spelling is correct in SUPPORT mega menu (FAQs)
    Look at the SUPPORT mega menu spelling for FAQs
Verify if the Spelling is correct in SUPPORT mega menu (Financing)
    Look at the SUPPORT mega menu spelling for Financing
Verify if the Spelling is correct STORE button
    Look at the store mega menu spelling for STORE
Verify if by clicking the images it will redirect to correct page (Puffy Mattress)
    Click on Mega Menu Image (Puffy Mattress)
Verify if by clicking the images it will redirect to correct page (Puffy Lux Mattress)
    Click on Mega Menu Image (Puffy Lux Mattress)
Verify if by clicking the images it will redirect to correct page (Puffy Royal Mattress)
    Click on Mega Menu Image (Puffy Royal Mattress)
Verify if by clicking the images it will redirect to correct page (Foundation)
    Click on Mega Menu Image (Foundation)
Verify if by clicking the images it will redirect to correct page (Adjustable Base)
    Click on Mega Menu Image (Adjustable Base)
Verify if by clicking the images it will redirect to correct page (Bed Frame)
    Click on Mega Menu Image (Bed Frame)
Verify if by clicking the images it will redirect to correct page (Comforter)
    Click on Mega Menu Image (Comforter)
Verify if by clicking the images it will redirect to correct page (Pillow)
    Click on Mega Menu Image (Pillow)
Verify if by clicking the images it will redirect to correct page (Body Pillow)
    Click on Mega Menu Image (Body Pillow)
Verify if by clicking the images it will redirect to correct page (Mattress Pad)
    Click on Mega Menu Image (Mattress Pad)
Verify if by clicking the images it will redirect to correct page (Mattress Protector)
    Click on Mega Menu Image (Mattress Protector)
Verify if by clicking the images it will redirect to correct page (Mattress Topper)
    Click on Mega Menu Image (Mattress Topper)
Verify if by clicking the images it will redirect to correct page (Blanket)
    Click on Mega Menu Image (Blanket)
Verify if by clicking the images it will redirect to correct page (Weighted Blanket)
    Click on Mega Menu Image (Weighted Blanket)
Verify if by clicking the images it will redirect to correct page (Sheets)
    Click on Mega Menu Image (Sheets)
Verify if by clicking the images it will redirect to correct page (Dog Bed)
    Click on Mega Menu Image (Dog Bed)
Verify if by clicking the images it will redirect to correct page (Rug)
    Click on Mega Menu Image (Rug)
#Verify if by clicking the images it will redirect to correct page (Customer Reviews)
    #Click on Mega Menu Image (Customer Reviews)
#Verify if by clicking the images it will redirect to correct page (Video Reviews)
    #Click on Mega Menu Image (Video Reviews)
#Verify if by clicking the images it will redirect to correct page (Awards)
    #Click on Mega Menu Image (Awards)
#Verify if by clicking the images it will redirect to correct page (Contact Us)
    #Click on Mega Menu Image (Contact Us)
#Verify if by clicking the images it will redirect to correct page (FAQs)
    #Click on Mega Menu Image (FAQs)
#Verify if by clicking the images it will redirect to correct page (Financing)
    #Click on Mega Menu Image (Financing)
Verify if by clicking the STORE button it will redirect to correct page (STORE)
    Click on STORE button from Mega Menu section
Verify if by clicking the Puffy Logo it will redirect to homepage
    Click on Puffy Logo
    sleep                               5s
Verify if by clicking on text names will Redirect to correect pages (Puffy Mattress)
    Click on text name (Puffy Mattress)
Verify if by clicking on text names will Redirect to correect pages (Puffy Lux Mattress)
    Click on text name (Puffy Lux Mattress)
Verify if by clicking on text names will Redirect to correect pages (Puffy Royal Mattress)
    Click on text name (Puffy Royal Mattress)
Verify if by clicking on text names will Redirect to correect pages (Foundation)
    Click on text name (Foundation)
Verify if by clicking on text names will Redirect to correect pages (Adjustable Base)
    Click on text name (Adjustable Base)
Verify if by clicking on text names will Redirect to correect pages (Bed Frame)
    Click on text name (Bed Frame)
Verify if by clicking on text names will Redirect to correect pages (Comforter)
    Click on text name (Comforter)
Verify if by clicking on text names will Redirect to correect pages (Pillow)
    Click on text name (Pillow)
Verify if by clicking on text names will Redirect to correect pages (Body Pillow)
    Click on text name (Body Pillow)
Verify if by clicking on text names will Redirect to correect pages (Mattress Pad)
    Click on text name (Mattress Pad)
Verify if by clicking on text names will Redirect to correect pages (Mattress Protector)
    Click on text name (Mattress Protector)
Verify if by clicking on text names will Redirect to correect pages (Mattress Topper)
    Click on text name (Mattress Topper)
Verify if by clicking on text names will Redirect to correect pages (Blanket)
    Click on text name (Blanket)
Verify if by clicking on text names will Redirect to correect pages (Weighted Blanket)
    Click on text name (Weighted Blanket)
Verify if by clicking on text names will Redirect to correect pages (Sheets)
    Click on text name (Sheets)
Verify if by clicking on text names will Redirect to correect pages (Dog Bed)
    Click on text name (Dog Bed)
Verify if by clicking on text names will Redirect to correect pages (Rug)
    Click on text name (Rug)
Verify if by clicking on text names will Redirect to correect pages (Customer Reviews)
    Click on text name (Customer Reviews)
Verify if by clicking on text names will Redirect to correect pages (Video Reviews)
    Click on text name (Video Reviews)
Verify if by clicking on text names will Redirect to correect pages (Awards)
    Click on text name (Awards)
Verify if by clicking on text names will Redirect to correect pages (Contact Us)
    Click on text name (Contact Us)
Verify if by clicking on text names will Redirect to correect pages (FAQs)
    Click on text name (FAQs)
Verify if by clicking on text names will Redirect to correect pages (Financing)
    Click on text name (Financing)
    sleep                               5s
Verify if by clicking on MATTRESSES menu it will redirect to correct page
    Click on Main Menu text (MATTRESSES)
Verify if by clicking on BASES menu it will redirect to correct page
    Click on Main Menu text (BASES)
Verify if by clicking on BEDDING menu it will redirect to correct page
    Click on Main Menu text (BEDDING)
Verify if by clicking on BEDROOM menu it will redirect to correct page
    Click on Main Menu text (BEDROOM)
Verify if by clicking on REVIEWS menu it will redirect to correct page
    Click on Main Menu text (REVIEWS)
Verify if by clicking on SUPPORT menu it will redirect to correct page
    Click on Main Menu text (SUPPORT)
Stop All Video Recordings
    Stop All Video Recordings