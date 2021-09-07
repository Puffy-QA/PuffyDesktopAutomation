*** Settings ***
Documentation       Regression for Giftshop Page regression
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
Resource            ../Resources/GiftShopKeywords.robot

*** Test Cases ***
Start Record Video
    Initiate Video Recording
Verify the Sale Popup appears
    Open Login Screen
    #Open Login Screen Variation A
    #Open Login Screen Variation B
    #Open Login Screen Variation C
    Wait and dismiss popup
Verify sale details on Timer Bar
    Check Seasonal Sale text on timer
Check Hero section
    Go To Giftshop page
    Verify if the Hero title is displaying correctly
    Verify if the Hero Subtitle is displaying correctly
    Verify if the Hero image is showing
    Verify Hero Section CTA if showing and redirected to correct URL
Check "The Best Gifts Are Always Comfortable" section
    Verify if the "The Best Gifts Are Always Comfortable..." title is displaying correctly
    Verify if the "The Best Gifts Are Always Comfortable..." title description is displaying correctly
    Verify if the "The Best Gifts" first product is showing correctly and redirect to correct PDP
    Verify if the "The Best Gifts" second product is showing correctly and redirect to correct PDP
    Verify if the "The Best Gifts" third product is showing correctly and redirect to correct PDP
    Verify if the "The Best Gifts" fourth product is showing correctly and redirect to correct PDP
    Verify if the "The Best Gifts" fifth product is showing correctly and redirect to correct PDP
    Verify if the "The Best Gifts" sixth product is showing correctly and redirect to correct PDP
#Check "Latest Comfy Product" section
#    Verify if the "Latest Comfy Product" title is displaying correctly
#    Verify if the "Latest Comfy Product" title description is displaying correctly
#    Verify if the "Latest Comfy Product" first product is showing correctly and redirect to correct PDP
#    Verify if the "Latest Comfy Product" second product is showing correctly and redirect to correct PDP
#    Verify if the "Latest Comfy Product" third product is showing correctly and redirect to correct PDP
#Check "Gift Ideas..." section
#    Verify if the "Gift Ideas..." title is displaying correctly
#    Verify if the "Gift Ideas..." title description is displaying correctly
#    Verify if the "Gift Ideas..." first product is showing correctly and redirect to correct PDP
#    Verify if the "Gift Ideas..." second product is showing correctly and redirect to correct PDP
#    Verify if the "Gift Ideas..." third product is showing correctly and redirect to correct PDP
#Check "Help Someone Redecorate..." section
#    Verify if the "Help Someone Redecorate..." title is displaying correctly
#    Verify if the "Help Someone Redecorate..." title description is displaying correctly
#    Verify if the "Help Someone Redecorate..." first product is showing correctly and redirect to correct PDP
#    Verify if the "Help Someone Redecorate..." second product is showing correctly and redirect to correct PDP
#    Verify if the "Help Someone Redecorate..." third product is showing correctly and redirect to correct PDP
#Check "We Have More To Give" section
#    Verify if the "We Have More To Give" title is displaying correctly
#    Verify if the "We Have More To Give" title description is displaying correctly
#    Verify if Ship Fast image and title are showing
#    Verify if Lifetime Warranty image and title are showing
#    Verify if Free Shipping and Returns image and title are showing
#    Verify if 101-Night Sleep Trial image and title are showing
#    Verify if Finance Options image and title are showing
#    Verify if Easy Setup image and title are showing
#Check the details in Review Section
#    Verify Review section title is showing
#    Verify first review details are showing
#    Verify second review details are showing
#    Verify third review details are showing
#Check "If Feels Like Sleeping On A Cloud!" Section
#    Verify if the "If Feels Like Sleeping On A Cloud!" title is displaying correctly
#    Verify if the "We Have More To Give" title description is displaying correctly
#    Verify if First Image is showing
#    Verify if Second Image is showing
#    Verify if Third Image is showing
#    Verify if Fourth Image is showing
#    Verify if Fifth Image is showing
Stop Video Recording
    Stop All Video Recordings

