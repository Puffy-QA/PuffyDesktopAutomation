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
    #Switch to Version A
    sleep               2s
Verify sale details on Timer Bar
    Check Seasonal Sale text on timer

Mega Menu Spelling checks
    Check the spelling of MATTRESSES items in main menu
    Check the spelling of BASES items in main menu
    Check the spelling of BEDDING items in main menu
    Check the spelling of BEDROOM items in main menu
    #REVIEWS menu spelling checks
    #SUPPORT menu spelling checks
    Check the spelling of STORE button the header

Page Redirection checks using images
    MATTRESSES Submenu redirection checks
    BASES Submenu redirection checks
    BEDDING Submenu redirection checks
    BEDROOM Submenu redirection checks
    REVIEWS Submenu redirection checks
    SUPPORT Submenu redirection checks
    STORE button redirection checks
    Puffy Logo redirection checks
    sleep                               5s

Page Redirection checks using text names
    MATTRESSES Submenu redirection checks using name text
    BASES Submenu redirection checks using name text
    BEDDING Submenu redirection checks using name text
    BEDROOM Submenu redirection checks using name text
    sleep                               5s

Main Menus click checks
    Main Menu click checks

Stop All Video Recordings
    Stop All Video Recordings