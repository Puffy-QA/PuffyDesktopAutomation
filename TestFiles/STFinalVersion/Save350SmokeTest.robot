*** Settings ***
Documentation       This is for checking all the places where we should update the seasonal promotion
Library             Selenium2Library
#Library             SeleniumLibrary
Library             ScreenCapLibrary
Library             Collections
Library             String
Suite Teardown      close browser
Resource            ../Resources/VariableSizes.robot
Resource            ../Resources/VariableSettings.robot
Resource            ../Resources/keywords350.robot
Resource            ../Resources/VariableLocators.robot
Resource            ../Resources/VariablePrice.robot
Resource            ../Resources/VariableTexts.robot

*** Test Cases ***

Start Video Recording
    Initiate video recording
Verify the Sale Popup appears
    Open Login screen
    Wait and dismiss popup
Save350 page
    Go to Save350 page
Verify sale details on Timer Bar
    Check Seasonal Sale text on timer
#Switch version
    #Switch to Version A
Navigation to Comparison Page
    Go to homepage
    Click on "Shop The Mattress" on the Homepage
    Verify H1 on Comparison Page
    Click "Shop Now" button for Puffy
    Verify H1 on Puffy PDP
    Go back to Compare Page
    click on "Shop Now" button for Puffy Lux
    Verify H1 on Puffy Lux
Verify sale details on Puffy Mattress Homepage
    Go to Homepage (Click on Puffy Logo)
    Check Seasonal Sale text on Homepage
    Check discount value and freebie on Homepage
Verify sale details on Puffy Lux Mattress Homepage
    Go to Puffy Lux Homepage
    Check Seasonal Sale text on Homepage
    Check discount value and freebie on Homepage
Verify sale details on Puffy Hybrid Mattress Homepage
    Go to Puffy Hybrid Homepage
    Check Seasonal Sale text on Homepage
    Check discount value and freebie on Homepage
Verify sale details on Store Page
    Go to Store page
    Check Seasonal Sale text on badges
    Check discount value and freebie on badges for mattresses
    Check discount value on badges for adjustable base
Verify sale details on Gift Shop Page
    Go to Gift Shop page
    Check Seasonal Sale text on badges
    Check discount value and freebie on badges for mattresses
    Check discount value on badges for adjustable base
Verify sale details, sizes, and prices on Puffy Mattress PDP then add to cart
    Go to Puffy Mattress Product Page
    Check Seasonal Sale text on badges
    Check discount value and freebie on Mattress PDPs
    Click Puffy Mattress Size dropdown
    Check Puffy Mattress original prices (all sizes)
    Check Puffy Mattress Discounted prices (all sizes)
    Select Puffy Mattress Size (Queen)
    Check current cart count
    Add Puffy Mattress to cart
    Close cart
    Check cart count after adding a mattress
Verify sale details, sizes, and prices on Puffy Lux Mattress PDP then add to cart
    Go to Puffy Lux Mattress Product Page
    Check Seasonal Sale text on badges
    Check discount value and freebie on Mattress PDPs
    Click Puffy Lux Size dropdown
    Check Puffy Lux original prices (all sizes)
    Check Puffy Lux Discounted prices (all sizes)
    Select Puffy Lux Size (Twin)
    Check current cart count
    Add Puffy Lux to cart
    Close cart
    Check cart count after adding a mattress
Verify sale details, sizes, and prices on Puffy Lux Hybrid Mattress PDP then add to cart
    Click on Puffy Lux Hybrid Toggle
    Check Seasonal Sale text on badges
    Check discount value and freebie on Mattress PDPs
    Click Puffy Lux Size dropdown
    Check Puffy Lux Hybrid original prices (all sizes)
    Check Puffy Lux Hybrid Discounted prices (all sizes)
    Select Puffy Lux Size (Twin XL)
    Check Current Cart Count (Lux Hybrid)
    Add Puffy Lux to cart
    Close cart
    Check cart count after adding a mattress (Lux Hybrid)
Verify sale details, sizes, and prices on Puffy Royal Mattress PDP then add to cart
    Go to Puffy Royal Mattress Product Page
    Check Seasonal Sale text on badges
    Check discount value and freebie on Mattress PDPs
    Click Puffy Royal Size dropdown
    Check Puffy Royal original prices (all sizes)
    Check Puffy Royal Discounted prices (all sizes)
    Select Puffy Royal Size (King)
    Check current cart count
    Add Puffy Royal to cart
    Close cart
    Check cart count after adding a mattress
Verify sale details, sizes, and prices on Puffy Royal Hybrid Mattress PDP then add to cart
    Click on Puffy Royal Hybrid Toggle
    Check Seasonal Sale text on badges
    Check discount value and freebie on Mattress PDPs
    Click Puffy Royal Size dropdown
    Check Puffy Royal Hybrid original prices (all sizes)
    Check Puffy Royal Hybrid Discounted prices (all sizes)
    Select Puffy Royal Size (Cal King)
    Check current cart count (Lux Hybrid)
    Add Puffy Royal to cart
    Close cart
    Check cart count after adding a mattress (Lux Hybrid)
Verify sale details, sizes, and prices on Puffy Adjustable Base PDP then add to cart
    Go to Puffy Adjustable Base Product Page
    Check Seasonal Sale text on badges
    Check discount value on Adjustable Base PDP
    Click Puffy Adjustable Base size dropdown
    Check Puffy Adjustable Base original prices (all sizes)
    Check Puffy Adjustable Base Discounted prices (all sizes)
    Select Puffy Adjustable Base Size (Split King)
    Check current cart count
    Add Puffy Adjustable Base to cart
    Close cart
    Check cart count after adding an accessory
Add Puffy Body Pillow to cart (product with no parameters)
    Go to Puffy Body Pillow Product Page
    Check current cart count
    Add Puffy Body Pillow to cart
    Close Cart
    Check cart count after adding an accessory
Add Puffy Sheets to cart (product with 2 parameters)
    Go to Puffy Sheets
    Click Puffy Sheets Size dropdown
    Check Puffy Sheets original prices (all sizes)
    #Check Puffy Sheets 15%OFF prices (all sizes)
    Select Puffy Sheets Size (Queen)
    Click Puffy Sheets Color dropdown
    Select Puffy Sheets Color (White)
    Check current cart count
    Add Puffy Sheets to cart
    Close cart
    Check cart count after adding an accessory
Verify product redirection in cart
    Open Cart
    sleep               2s
    Check product redirection in cart
Proceed to checkout
    sleep           5s
    Click checkout
Complete Checkout
    Fill out Information tab in checkout
    Continue to Shipping tab
    Continue to Payment tab
Verify if Paypal is opening
    Select and proceed with Paypal
Verify if Splitit is opening
    Select and proceed with Splitit
Verify if Klarna is opening
    Select and proceed with Klarna
Stop Video Recording
    Stop All Video Recordings



