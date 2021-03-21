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
Check Sign Up Section
    Click sign up without email address
    Click Sign up without email domain
    Click Sign up with valid email address
Check Product Section
    Scroll to Footer section
Verify if the spelling is correct for Puffy
    Footer Spell check for word Puffy
Verify if the spelling is correct for Puffy Lux
    Footer Spell check for word Puffy Lux
Verify if the spelling is correct for Puffy Royal
    Footer Spell check for word Puffy Royal
Verify if the spelling is correct for Puffy Hybrid
    Footer Spell check for word Puffy Hybrid
Verify if the spelling is correct for Comforter
    Footer Spell check for word Comforter
Verify if the spelling is correct for Mattress Protector
    Footer Spell check for word Mattress Protector
Verify if the spelling is correct for Mattress Topper
    Footer Spell check for word Mattress Topper
Verify if the spelling is correct for Weighted Blanket
    Footer Spell check for word Weighted Blanket
Verify if the spelling is correct for Dog Bed
    Footer Spell check for word Dog Bed
Verify if the spelling is correct for Bed Frame
    Footer Spell check for word Bed Frame
Verify if the spelling is correct for Foundation
    Footer Spell check for word Foundation
Verify if the spelling is correct for Adjustable Base
    Footer Spell check for word Adjustable Base
Verify if the spelling is correct for Pillow
    Footer Spell check for word Pillow
Verify if the spelling is correct for Body Pillow
    Footer Spell check for word Body Pillow
Verify if the spelling is correct for Mattress Pad
    Footer Spell check for word Mattress Pad
Verify if the spelling is correct for Puffy Blanket
    Footer Spell check for word Puffy Blanket
Verify if the spelling is correct for Puffy Sheets
    Footer Spell check for word Puffy Sheets
Verify if the spelling is correct for Puffy Rug
    Footer Spell check for word Puffy Rug
Check Product Section Redirection (Puffy)
    Click on Puffy and check redirection URL
Verify if breadcrumb product is visible
    Check if breadcrumb product is visible
Check Product Section Redirection (Puffy Lux)
    Click on Puffy Lux and check redirection URL
Check Product Section Redirection (Puffy Royal)
    Click on Puffy Royal and check redirection URL
Check Product Section Redirection (Puffy Hybrid)
    Click on Puffy Hybrid and check redirection URL
Check Product Section Redirection (Comforter)
    Click on Comforter and check redirection URL
Check Product Section Redirection (Mattress Protector)
    Click on Mattress Protector and check redirection URL
Check Product Section Redirection (Mattress Topper)
    Click on Mattress Topper and check redirection URL
Check Product Section Redirection (Weighted Blanket)
    Click on Weighted Blanket and check redirection URL
Check Product Section Redirection (Dog Bed)
    Click on Dog Bed and check redirection URL
Check Product Section Redirection (Bed Frame)
    Click on Bed Frame and check redirection URL
Check Product Section Redirection (Foundation)
    Click on Foundation and check redirection URL
Check Product Section Redirection (Adjustable Base)
    Click on Adjustable Base and check redirection URL
Check Product Section Redirection (Pillow)
    Click on Pillow and check redirection URL
Check Product Section Redirection (Body Pillow)
    Click on Body Pillow and check redirection URL
Check Product Section Redirection (Mattress Pad)
    Click on Mattress Pad and check redirection URL
Check Product Section Redirection (Puffy Blanket)
    Click on Puffy Blanket and check redirection URL
Check Product Section Redirection (Puffy Sheets)
    Click on Puffy Sheets and check redirection URL
Check Product Section Redirection (Puffy Rug)
    Click on Puffy Rug and check redirection URL

Check Puffy Section
    Scroll to Footer section
Verify if the spelling is correct for 101-Night Sleep Trial
    Footer Spell check for word 101-Night Sleep Trial
Verify if the spelling is correct for How it's Made
    Footer Spell check for word How it's Made
Verify if the spelling is correct for Mattress Layers
    Footer Spell check for word Mattress Layers
Verify if the spelling is correct for Perfect Sleep
    Footer Spell check for word Perfect Sleep
Verify if the spelling is correct for Mattress Awards
    Footer Spell check for word Mattress Awards
Verify if the spelling is correct for Compare Mattress
    Footer Spell check for word Compare Mattress
Verify if the spelling is correct for Compare Hybrids
    Footer Spell check for word Compare Hybrids
Verify if the spelling is correct for Puffy Donations
    Footer Spell check for word Puffy Donations
Verify if the spelling is correct for Affiliate Program
    Footer Spell check for word Affiliate Program
Verify if the spelling is correct for Refer a Friend
    Footer Spell check for word Refer a Friend
Verify if the spelling is correct for Gift Shop
    Footer Spell check for word Gift Shop
Verify if the spelling is correct for Puffy Store
    Footer Spell check for word Puffy Store
Verify if the spelling is correct for Puffy Blog
    Footer Spell check for word Puffy Blog
Verify if the spelling is correct for Puffy Review
    Footer Spell check for word Puffy Review
Verify if the spelling is correct for Puffy Lux Review
    Footer Spell check for word Puffy Lux Review
Verify if the spelling is correct for Puffy Royal Review
    Footer Spell check for word Puffy Royal Review
Verify if the spelling is correct for Puffy Mattress Review
    Footer Spell check for word Puffy Mattress Review
Verify if the spelling is correct for Healthcare Discount
    Footer Spell check for word Healthcare Discount
Verify if the spelling is correct for Military Discount
    Footer Spell check for word Military Discount
Check Product Section Redirection (101-Night Sleep Trial)
    Click on 101-Night Sleep Trial and check redirection URL
Check Product Section Redirection (How it’s Made)
    Click on How it’s Made and check redirection URL
Check Product Section Redirection (Mattress Layers)
    Click on Mattress Layers and check redirection URL
Check Product Section Redirection (Perfect Sleep)
    Click on Perfect Sleep and check redirection URL
Check Product Section Redirection (Mattress Awards)
    Click on Mattress Awards and check redirection URL
Check Product Section Redirection (Compare Mattress)
    Click on Compare Mattress and check redirection URL
Check Product Section Redirection (Compare Hybrids)
    Click on Compare Hybrids and check redirection URL
Check Product Section Redirection (Puffy Donations)
    Click on Puffy Donations and check redirection URL
Check Product Section Redirection (Affiliate Program)
    Click on Affiliate Program and check redirection URL
Check Product Section Redirection (Refer a Friend)
    Click on Refer a Friend and check redirection URL
Check Product Section Redirection (Gift Shop)
    Click on Gift Shop and check redirection URL
Check Product Section Redirection (Puffy Store)
    Click on Puffy Store and check redirection URL
Check Product Section Redirection (Puffy Blog)
    Click on Puffy Blog and check redirection URL
Check Product Section Redirection (Puffy Review)
    Click on Puffy Review and check redirection URL
Check Product Section Redirection (Puffy Lux Review)
    Click on Puffy Lux Review and check redirection URL
Check Product Section Redirection (Puffy Royal Review)
    Click on Puffy Royal Review and check redirection URL
Check Product Section Redirection (Puffy Mattress Review)
    Click on Puffy Mattress Review and check redirection URL
Check Product Section Redirection (Healthcare Discount)
    Click on Healthcare Discount and check redirection URL
Check Product Section Redirection (Military Discount)
    Click on Military Discount and check redirection URL
    Scroll to Footer section
Verify if the spelling is correct for Reviews
    Footer Spell check for word Reviews
Verify if the spelling is correct for Contact Us
    Footer Spell check for word Contact Us
Verify if the spelling is correct for FAQs
    Footer Spell check for word FAQs
Verify if the spelling is correct for Financing
    Footer Spell check for word Financing
Verify if the spelling is correct for Return Policy
    Footer Spell check for word Return Policy
Verify if the spelling is correct for Puffy Guarantee
    Footer Spell check for word Puffy Guarantee

Check Support Section Redirection (Reviews)
    Click on Reviews and check redirection URL
Check Support Section Redirection (Contact Us)
    Click on Contact Us and check redirection URL
Check Support Section Redirection (FAQs)
    Click on FAQs and check redirection URL
Check Support Section Redirection (Financing)
    Click on Financing and check redirection URL
Check Support Section Redirection (Return Policy)
    Click on Return Policy and check redirection URL
Check Support Section Redirection (Puffy Guarantee)
    Click on Puffy Guarantee and check redirection URL
Check Social Media Section Redirection (Facebook)
    Click on Facebook icon and check redirection URL
Check Social Media Section Redirection (Twitter)
    Click on Twitter icon and check redirection URL
Check Social Media Section Redirection (Instagram)
    Click on Instagram icon and check redirection URL
Check Social Media Section Redirection (Youtube)
    Click on Youtube icon and check redirection URL
Check Social Media Section Redirection (Pinterest)
    Click on Pinterest icon and check redirection URL
Check Auxiliary Section
    Scroll to Footer section
Verify if the spelling is correct for Privacy
    Footer Spell check for word Privacy
Verify if the spelling is correct for Terms
    Footer Spell check for word Terms
Verify if the spelling is correct for Warranty
    Footer Spell check for word Warranty
Verify if the spelling is correct for Do Not Sell My Personal Information
    Footer Spell check for word Do Not Sell My Personal Information
Check Auxiliary Section Redirection (Privacy)
    Click on Privacy and check redirection URL
Check Auxiliary Section Redirection (Terms)
    Click on Terms and check redirection URL
Check Auxiliary Section Redirection (Warranty)
    Click on Warranty and check redirection URL
Check Auxiliary Section Redirection (Do Not Sell My Personal Information)
    Click on Do Not Sell My Personal Information and check redirection URL
Check Auxiliary Section Redirection (Copyright)
    Click on Copyright and check redirection URL

Stop All Video Recordings
    Stop All Video Recordings









