*** Settings ***
Documentation       This is for checking all the places where we should update the seasonal promotion
#Library             Selenium2Library
Library             SeleniumLibrary
Library             ScreenCapLibrary
Library             Collections
Library             String
Suite Teardown      close browser

*** Variables ***
${Phone}                        (888) 555-3222
${Email}                        automation@puffy.com
${First Name}                   John
${Last Name}                    Doe
${Address}                      123 William Street
${City}                         New York
${ZipCode}                      03101
${Sale Name}                    CYBER WEEK SALE
${Sale Name Now}                CYBER WEEK SALE NOW
${Sale Details}                 $300 OFF + FREE PILLOW
${Discount Amount}              $300 OFF
${Timer}                        CYBER WEEK SALE NOW $300 OFF + FREE PILLOW
${HomepageURL}                  https://puffy.com
${systembrowser}                Chrome
${Feedback}                     html.null body.index.is--hybrid-false.timer--exists.jdgm-buyer-badge--removed div.index-sections div#shopify-section-hov_instagramBoxes.shopify-section div.instagram-boxes div.instagram-boxes__inner
${Shop}                         div.compare-boxes__headline:nth-child(1) > h2:nth-child(1) > a:nth-child(1)
${Logo}                         css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.logo > a
${Mattresses}                   css=body > div.shopify-section.header-section > div > header.main_header > div > div > div > div.nav > ul > li:nth-child(1) > a
${Puffy Mattress}               css=body > div.shopify-section.header-section > div > header.main_header > div > div > div > div.dropdown_container.mega-menu.mega-menu-1 > div > div.dropdown_content > div:nth-child(1) > div.mega-menu__image-caption-link > a > div.image-element__wrap > img
${Puffy Lux Mattress}           css=body > div.shopify-section.header-section > div > header.main_header > div > div > div > div.dropdown_container.mega-menu.mega-menu-1 > div > div.dropdown_content > div:nth-child(2) > div.mega-menu__image-caption-link > a > div.image-element__wrap > img
${Puffy Royal Mattress}         css=body > div.shopify-section.header-section > div > header.main_header > div > div > div > div.dropdown_container.mega-menu.mega-menu-1 > div > div.dropdown_content > div:nth-child(3) > div.mega-menu__image-caption-link > a > div.image-element__wrap > img
${COMPARE}                      css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-1 > div > div.dropdown-compare > a
${Bases}                        css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.nav > ul > li:nth-child(2) > a
${Foundation}                   css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-2 > div > div > div:nth-child(1) > div.mega-menu__image-caption-link > a > div.image-element__wrap > img
${Adjustable Base}              css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-2 > div > div > div:nth-child(2) > div.mega-menu__image-caption-link > a > div.image-element__wrap > img
${Bed Frame}                    css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-2 > div > div > div:nth-child(3) > div.mega-menu__image-caption-link > a > div.image-element__wrap > img
${Bedding}                      css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.nav > ul > li:nth-child(3) > a
${Comforter}                    css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-3.boxes--9 > div > div > div:nth-child(1) > div.mega-menu__image-caption-link > a > div.image-element__wrap > img
${Pillow}                       css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-3.boxes--9 > div > div > div:nth-child(2) > div.mega-menu__image-caption-link > a > div.image-element__wrap > img
${Body Pillow}                  css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-3.boxes--9 > div > div > div:nth-child(3) > div.mega-menu__image-caption-link > a > div.image-element__wrap > img
${Mattress Pad}                 css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-3.boxes--9 > div > div > div:nth-child(4) > div.mega-menu__image-caption-link > a > div.image-element__wrap > img
${Mattress Protector}           css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-3.boxes--9 > div > div > div:nth-child(5) > div.mega-menu__image-caption-link > a > div.image-element__wrap > img
${Mattress Topper}              css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-3.boxes--9 > div > div > div:nth-child(6) > div.mega-menu__image-caption-link > a > div.image-element__wrap > img
${Blanket}                      css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-3.boxes--9 > div > div > div:nth-child(7) > div.mega-menu__image-caption-link > a > div.image-element__wrap > img
${Weighted Blanket}             css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-3.boxes--9 > div > div > div:nth-child(8) > div.mega-menu__image-caption-link > a > div.image-element__wrap > img
${Sheets}                       css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-3.boxes--9 > div > div > div:nth-child(9) > div.mega-menu__image-caption-link > a > div.image-element__wrap > img
${Bedroom}                      css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.nav > ul > li:nth-child(4) > a
${Dog Bed}                      css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-4 > div > div > div:nth-child(1) > div.mega-menu__image-caption-link > a > div.image-element__wrap > img
${Rug}                          css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-4 > div > div > div:nth-child(2) > div.mega-menu__image-caption-link > a > div.image-element__wrap > img
${Cart}                         css=body > div.shopify-section.header-section > div > header.main_header > div > div > div > div.cart_container > div > a
${CartDrawerTitle}              Your Puffy Cart
${CartDrawerNote}               Financing options available at checkout
${PuffyStoreH1}                 PUFFY STORE
${PuffyGiftShopH1}              GIFT IDEAS FOR
${CheckoutInformationH1}        Contact information
${CheckoutShippingH1}           Shipping method
${CheckoutPaymentH1}            Payment
${ToggleA}                      css=#showVersionA
${ToggleB}                      css=#showVersionB

#Product Prices
${PuffyMattressH1}              Puffy Mattress
${PuffyHybridMattressH1}        Puffy Hybrid Mattress
${PuffyMattTwinOriginal}        $795
${PuffyMattTwinXLOriginal}      $825
${PuffyMattFullOriginal}        $995
${PuffyMattQueenOriginal}       $1,150
${PuffyMattKingOriginal}        $1,350
${PuffyMattCalKingOriginal}     $1,350
${PuffyMattTwin300OFF}          $495
${PuffyMattTwinXL300OFF}        $525
${PuffyMattFull300OFF}          $695
${PuffyMattQueen300OFF}         $850
${PuffyMattKing300OFF}          $1,050
${PuffyMattCalKing300OFF}       $1,050

${PuffyLuxMattressH1}           Puffy Lux Mattress
${PuffyLuxHybridMattressH1}     Puffy Lux Hybrid Mattress
${PuffyLuxTwinOriginal}         $1,445
${PuffyLuxTwinXLOriginal}       $1,495
${PuffyLuxFullOriginal}         $1,595
${PuffyLuxQueenOriginal}        $1,795
${PuffyLuxKingOriginal}         $1,995
${PuffyLuxCalKingOriginal}      $1,995
${PuffyLuxTwin300OFF}           $1,145
${PuffyLuxTwinXL300OFF}         $1,195
${PuffyLuxFull300OFF}           $1,295
${PuffyLuxQueen300OFF}          $1,495
${PuffyLuxKing300OFF}           $1,695
${PuffyLuxCalKing300OFF}        $1,695

${PuffyRoyalMattressH1}         Puffy Royal Mattress
${PuffyRoyalHybridMattressH1}   Puffy Royal Hybrid Mattress
${PuffyRoyalTwinOriginal}       $1,645
${PuffyRoyalTwinXLOriginal}     $1,745
${PuffyRoyalFullOriginal}       $2,445
${PuffyRoyalQueenOriginal}      $2,695
${PuffyRoyalKingOriginal}       $2,995
${PuffyRoyalCalKingOriginal}    $2,995
${PuffyRoyalTwin300OFF}         $1,345
${PuffyRoyalTwinXL300OFF}       $1,445
${PuffyRoyalFull300OFF}         $2,145
${PuffyRoyalQueen300OFF}        $2,395
${PuffyRoyalKing300OFF}         $2,695
${PuffyRoyalCalKing300OFF}      $2,695

${PuffyAdjustableBaseH1}                    Puffy Adjustable Base
${PuffyAdjustableBaseTwinXLOriginal}        $1,195
${PuffyAdjustableBaseFullOriginal}          $1,295
${PuffyAdjustableBaseQueenOriginal}         $1,395
${PuffyAdjustableBaseSplitKingOriginal}     $2,095
${PuffyAdjustableBaseTwinXL300OFF}          $895
${PuffyAdjustableBaseFull300OFF}            $995
${PuffyAdjustableBaseQueen300OFF}           $1,095
${PuffyAdjustableBaseSplitKing300OFF}       $1,795

${PuffyFoundationH1}                      Puffy Mattress Foundation
${PuffyFoundationTwinOriginal}            $135
${PuffyFoundationTwinXLOriginal}          $145
${PuffyFoundationFullOriginal}            $165
${PuffyFoundationQueenOriginal}           $215
${PuffyFoundationKingOriginal}            $225
${PuffyFoundationCalKingOriginal}         $225
${PuffyFoundationTwin15%OFF}              $114.75
${PuffyFoundationTwinXL15%OFF}            $123.25
${PuffyFoundationFull15%OFF}              $140.25
${PuffyFoundationQueen15%OFF}             $182.75
${PuffyFoundationKing15%OFF}              $191.25
${PuffyFoundationCalKing15%OFF}           $191.25

${PuffyBedFrameH1}                      Puffy Bed Frame
${PuffyBedFrameTwinOriginal}            ----
${PuffyBedFrameTwinXLOriginal}          ----
${PuffyBedFrameFullOriginal}            $895
${PuffyBedFrameQueenOriginal}           $995
${PuffyBedFrameKingOriginal}            $1,095
${PuffyBedFrameCalKingOriginal}         $1,095
${PuffyBedFrameTwin15%OFF}              ----
${PuffyBedFrameTwinXL15%OFF}            ----
${PuffyBedFrameFull15%OFF}              $760.75
${PuffyBedFrameQueen15%OFF}             $845.75
${PuffyBedFrameKing15%OFF}              $930.75
${PuffyBedFrameCalKing15%OFF}           $930.75

${PuffyComforterH1}                       Puffy Comforter
${PuffyComforterTwin/TwinXLOriginal}      $175
${PuffyComforterFull/QueenOriginal}       $215
${PuffyComforterKing/CalKingOriginal}     $255
${PuffyComforterTwin/TwinXL15%OFF}        $148.75
${PuffyComforterFull/Queen15%OFF}         $182.75
${PuffyComforterKing/CalKing15%OFF}       $216.75

${PuffyPillowH1}                      Puffy Pillow
${PuffyPillowStandardOriginal}        $75
${PuffyPillowKingOriginal}            $95
${PuffyPillowStandard15%OFF}          ---
${PuffyPillowKing15%OFF}              ---

${PuffyBodyPillowH1}                      Puffy Body Pillow
${PuffyBodyPillowStandardOriginal}        $115
${PuffyBodyPillowKingOriginal}            ----
${PuffyBodyPillowStandard15%OFF}          $97.75
${PuffyBodyPillowKing15%OFF}              ----

${PuffyMattressPadH1}                     Puffy Mattress Pad
${PuffyMattressPadTwinOriginal}           $170
${PuffyMattressPadTwinXLOriginal}         $185
${PuffyMattressPadFullOriginal}           $205
${PuffyMattressPadQueenOriginal}          $225
${PuffyMattressPadKingOriginal}           $245
${PuffyMattressPadCalKingOriginal}        $245
${PuffyMattressPadTwin15%OFF}             $144.75
${PuffyMattressPadTwinXL15%OFF}           $157.25
${PuffyMattressPadFull15%OFF}             $174.25
${PuffyMattressPadQueen15%OFF}            $191.25
${PuffyMattressPadKing15%OFF}             $208.25
${PuffyMattressPadCalKing15%OFF}          $208.25

${PuffyMattressProtectorH1}                             Puffy Mattress Protector
${PuffyMattressProtectorTwinOriginal}                   $85
${PuffyMattressProtectorTwinXLOriginal}                 $90
${PuffyMattressProtectorFullOriginal}                   $95
${PuffyMattressProtectorQueenOriginal}                  $105
${PuffyMattressProtectorKingOriginal}                   $115
${PuffyMattressProtectorCalKingOriginal}                $115
${PuffyMattressProtectorTwin15%OFF}                     ---
${PuffyMattressProtectorTwinXL15%OFF}                   ---
${PuffyMattressProtectorFull15%OFF}                     ---
${PuffyMattressProtectorQueen15%OFF}                    $89.25
${PuffyMattressProtectorKing15%OFF}                     $97.75
${PuffyMattressProtectorCalKing15%OFF}                  $97.75

${PuffyMattressTopperH1}                             Puffy Topper
${PuffyMattressTopperTwinOriginal}                   $175
${PuffyMattressTopperTwinXLOriginal}                 $185
${PuffyMattressTopperFullOriginal}                   $205
${PuffyMattressTopperQueenOriginal}                  $225
${PuffyMattressTopperKingOriginal}                   $245
${PuffyMattressTopperCalKingOriginal}                $245
${PuffyMattressTopperTwin15%OFF}                     $148.75
${PuffyMattressTopperTwinXL15%OFF}                   $157.25
${PuffyMattressTopperFull15%OFF}                     $174.25
${PuffyMattressTopperQueen15%OFF}                    $191.25
${PuffyMattressTopperKing15%OFF}                     $208.25
${PuffyMattressTopperCalKing15%OFF}                  $208.25

${PuffyBlanketH1}                   Puffy Blanket
${PuffyBlanketSmallOriginal}        $65
${PuffyBlanketMediumOriginal}       $75
${PuffyBlanketLargeOriginal}        $85
${PuffyBlanketSmallOriginal}        ---
${PuffyBlanketMediumOriginal}       ---
${PuffyBlanketLargeOriginal}        ---

${PuffyWeightedBlanketH1}                 Puffy Weighted Blanket
${PuffyWeightedBlanketTwinOriginal}       $155
${PuffyWeightedBlanketTwinXLOriginal}     ---
${PuffyWeightedBlanketFullOriginal}       ---
${PuffyWeightedBlanketQueenOriginal}      $185
${PuffyWeightedBlanketKingOriginal}       ---
${PuffyWeightedBlanketCalKingOriginal}    ---
${PuffyWeightedBlanketTwin15%OFF}         $131.75
${PuffyWeightedBlanketTwinXL15%OFF}       ---
${PuffyWeightedBlanketFull15%OFF}         ---
${PuffyWeightedBlanketQueen15%OFF}        $157.25
${PuffyWeightedBlanketKing15%OFF}         ---
${PuffyWeightedBlanketCalKing15%OFF}      ---

${PuffySheetsH1}                    Puffy Sheets
${PuffySheetsTwinOriginal}          $95
${PuffySheetsTwinXLOriginal}        $100
${PuffySheetsFullOriginal}          $110
${PuffySheetsQueenOriginal}         $125
${PuffySheetsKingOriginal}          $135
${PuffySheetsCalKingOriginal}       $135
${PuffySheetsTwin15%OFF}            ---
${PuffySheetsTwinXL15%OFF}          $85
${PuffySheetsFull15%OFF}            $94
${PuffySheetsQueen15%OFF}           $106
${PuffySheetsKing15%OFF}            $115
${PuffySheetsCalKing15%OFF}         $115

${PuffyDogBedH1}                   Puffy Dog Bed
${PuffyDogBedSmallOriginal}        $125
${PuffyDogBedMediumOriginal}       $150
${PuffyDogBedLargeOriginal}        $195
${PuffyDogBedSmallOriginal}        $106.25
${PuffyDogBedMediumOriginal}       $127.50
${PuffyDogBedLargeOriginal}        $165.75

${PuffyRugH1}                   Puffy Rug
${PuffyRugSmallOriginal}        ---
${PuffyRugMediumOriginal}       $295
${PuffyRugLargeOriginal}        $395
${PuffyRugSmallOriginal}        ---
${PuffyRugMediumOriginal}       $250.75
${PuffyRugLargeOriginal}        $330.75


*** Test Cases ***

Start Video Recording
    Initiate video recording
Verify the Sale Popup appears
    Open Login screen
    Wait and dismiss popup
Verify sale details on Timer Bar
    Check Seasonal Sale text on timer
#Switch version
    #Switch to Version A
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
    Check Puffy Mattress 300OFF prices (all sizes)
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
    Check Puffy Lux 300OFF prices (all sizes)
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
    Check Puffy Lux Hybrid 300OFF prices (all sizes)
    Select Puffy Lux Size (Twin XL)
    Check current cart count
    Add Puffy Lux to cart
    Close cart
    Check cart count after adding a mattress
Verify sale details, sizes, and prices on Puffy Royal Mattress PDP then add to cart
    Go to Puffy Royal Mattress Product Page
    Check Seasonal Sale text on badges
    Check discount value and freebie on Mattress PDPs
    Click Puffy Royal Size dropdown
    Check Puffy Royal original prices (all sizes)
    Check Puffy Royal 300OFF prices (all sizes)
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
    Check Puffy Royal Hybrid 300OFF prices (all sizes)
    Select Puffy Royal Size (Cal King)
    Check current cart count
    Add Puffy Royal to cart
    Close cart
    Check cart count after adding a mattress
Verify sale details, sizes, and prices on Puffy Adjustable Base PDP then add to cart
    Go to Puffy Adjustable Base Product Page
    Check Seasonal Sale text on badges
    Check discount value on Adjustable Base PDP
    Click Puffy Adjustable Base size dropdown
    Check Puffy Adjustable Base original prices (all sizes)
    Check Puffy Adjustable Base 300OFF prices (all sizes)
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
    Check Puffy Sheets 15%OFF prices (all sizes)
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
Select any product from Complete your Bedroom Set in checkout (Mattress Pad)
    Select Mattress Pad from Complete your Bedroom Set in checkout
    sleep           5s
    Click checkout
    Fill out Information tab in checkout
    Continue to Shipping tab
    Continue to Payment tab
Verify all payment methods
    Select and proceed with Paypal
    Select and proceed with Splitit
    Select and proceed with Klarna
Stop Video Recording
    Stop All Video Recordings


*** Keywords ***

Initiate video recording
    Start Video Recording       alias=FallSale name=FallSale

Open Login screen
    Open Browser            ${HomepageURL}  ${systembrowser}
    Maximize Browser Window
    wait until page contains    ${Timer}

Wait and dismiss popup
    sleep                   5s
    ${check}=               Run Keyword and Return Status  Element should be visible      xpath=/html/body/div[1]/div[2]/div/div[1]/img
    run keyword if          ${check} == False    Wait and dismiss popup
    ...     ELSE            Click element   xpath=/html/body/div[1]/div[2]/div/span

Check Seasonal Sale text on timer
    ${Content}=            get text        css=#saleTimer > div:nth-child(1) > div > div.timer-text__content.timer-text__content--desktop
    Run keyword if          '${Content}'!='${Timer}'                Fail        Wrong Seasonal Sale text on timer Expected: ${Timer} Actual: ${Content}
    Click element           css=#saleTimer > span > svg

Go to Homepage (Click on Puffy Logo)
    sleep       2s
    Wait until page contains element    ${Logo}
    Click Element       ${Logo}
    wait until page contains    ${Timer}
    ${Content}=            get text        css=body > div.index-sections > div.hero-area.is--mobile-reversed > div.hero-area__box.hero-area__box--hero-image > div > div.b-hero__inner > div.b-hero__content > h1
    Run keyword if          '${Content}'!='${PuffyMattressH1}'                Fail        Homepage main title (H1) not found Expected: ${PuffyMattressH1} Actual: ${Content}

Go to Puffy Lux Homepage
    sleep                   2s
    Click Link           link:Puffy Lux
    ${Content}=            get text        css=body > div.index-sections > div.hero-area.is--mobile-reversed > div.hero-area__box.hero-area__box--hero-image > div > div.b-hero__inner > div.b-hero__content > h1
    Run keyword if          '${Content}'!='${PuffyLuxMattressH1}'                Fail        Homepage main title (H1) not found Expected: ${PuffyLuxMattressH1} Actual: ${Content}

Go to Puffy Hybrid Homepage
    sleep                   5s
    Click Link           link:Puffy Hybrid
    ${Content}=            get text        css=body > div.index-sections > div.hero-area.is--mobile-reversed > div.hero-area__box.hero-area__box--hero-image > div > div.b-hero__inner > div.b-hero__content > h1
    Run keyword if          '${Content}'!='${PuffyHybridMattressH1}'                Fail        Homepage main title (H1) not found Expected: ${PuffyHybridMattressH1} Actual: ${Content}

Check Seasonal Sale text on Homepage
    sleep                   2s
    ${Content}=            get text        css=#Cyber_Monday_Sale_Now > tspan
    Run keyword if          '${Content}'!='${Sale Name Now}'        Fail        Wrong Seasonal Sale text on homepage Expected: ${Sale Name Now} Actual: ${Content}

Check discount value and freebie on Homepage
    ${Content}=            get text        css=#_300_OFF_Free_Pillow
    Run keyword if          '${Content}'!='${Sale Details}'         Fail        Wrong discount value and freebie text on homepage Expected: ${Sale Details} Actual: ${Content}

Check discount value and freebie on Mattress PDPs
    ${Content}=            get text        css=#_300_Off_FREE_PILLOW
    Run keyword if          '${Content}'!='${Sale Details}'         Fail        Wrong discount value and freebie text on mattress PDP Expected: ${Sale Details} Actual: ${Content}

Go to Store page
    sleep                   2s
    Click Link           link:Puffy Store
    sleep                   2s
    ${Content}=            get text        css=#collectionTitle
    Run keyword if          '${Content}'!='${PuffyStoreH1}'                Fail        Store main title (H1) not found Expected: ${PuffyStoreH1} Actual: ${Content}
    Scroll Element Into View            css=#collectionProductsWrap > div:nth-child(2) > div > div.product-details > a.product-info__caption > span.price.sale > span.money.jsDiscountedPrice
    sleep                               2s
    Scroll Element Into View            css=#collectionProductsWrap > div:nth-child(4) > div > div.product-details > a.action_button.button.shop-now

Check Seasonal Sale text on badges
    sleep                   2s
    ${Content}=            get text        css=#Summer_SALE
    Run keyword if          '${Content}'!='${Sale Name}'            Fail        Wrong Seasonal Sale text on badges Expected: ${Sale Name} Actual: ${Content}

Check discount value and freebie on badges for mattresses
    sleep                   2s
    ${Content}=            get text        css=#_300_OFF_FREE_PILLOW
    Run keyword if          '${Content}'!='${Sale Details}'         Fail        Wrong discount value and freebie text on badges for mattress Expected: ${Sale Details} Actual: ${Content}

Go to Gift Shop page
    sleep                   5s
    Click link              link:Gift Shop
    sleep                   2s
    ${Content}=            get text        css=body > div.container.main.content > div.top-banner.top-banner--gift-shop.mobile--left-aligned > div.top-banner__inner > div > h1 > span.top-banner__mobile-block
    Run keyword if          '${Content}'!='${PuffyGiftShopH1}'                Fail        Store main title (H1) not found Expected: ${PuffyGiftShopH1} Actual: ${Content}
    Scroll Element Into View            css=body > div.container.main.content > div:nth-child(7) > div > div > div:nth-child(2) > div > a > div.product-box__media.product-box__media--white > div.image-element__wrap
    sleep                               2s
    Scroll Element Into View            css=body > div.container.main.content > div.text-bar.text-bar--medium-text.is--gray > div > div.text-bar__content.text-bar__content--single > div > div > div:nth-child(1) > div > a > div.product-box__content > div.product-box__desc > div.product-box__title

Check discount value on badges for adjustable base
    sleep                   2s
    ${Content}=            get text        css=#_300_OFF
    Run keyword if          '${Content}'!='${Discount Amount}'      Fail        Wrong discount value text on badge for adjustable base Expected: ${Discount Amount} Actual: ${Content}

Check discount value on Adjustable Base PDP
    sleep                   2s
    ${Content}=            get text        css=#_300_Off
    Run keyword if          '${Content}'!='${Discount Amount}'      Fail        Wrong discount value on adjustable base PDP Expected: ${Discount Amount} Actual: ${Content}

Go to Puffy Mattress Product Page
    Mouse Over          ${Mattresses}
    sleep               2s
    Click element       ${Puffy Mattress}
    Wait Until Page Contains    12 REASONS TO CHOOSE
    ${Content}=         get text        css=#shopify-section-product-puffy-template > div.container.main.content.product-name--puffy-mattress > div > div > div > div > div.seven.columns.medium-down--one-whole.alpha > div > div.product-head > div.product-head__headline > h1
    Run keyword if      '${Content}'!='${PuffyMattressH1}'          Fail        Product name (H1) not found Expected: ${PuffyMattressH1} Actual: ${Content}

Go to Puffy Lux Mattress Product Page
    Mouse Over          ${Mattresses}
    sleep               2s
    Click element       ${Puffy Lux Mattress}
    Wait Until Page Contains    12 REASONS TO CHOOSE
#enhancement

Click on Puffy Lux Memory Foam Toggle
    Wait Until Element Is Visible       css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-type > div.hybrid-buttons > label.hybrid-buttons__item.hybrid-buttons__item--1 > span.hybrid-buttons__sub-title
    Click element       css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-type > div.hybrid-buttons > label.hybrid-buttons__item.hybrid-buttons__item--1 > span.hybrid-buttons__sub-title
#enhancement

Click on Puffy Lux Hybrid Toggle
    Click element       css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-type > div.hybrid-buttons > label.hybrid-buttons__item.hybrid-buttons__item--2
#enhancement

Go to Puffy Royal Mattress Product Page
    Mouse Over          ${Mattresses}
    sleep               2s
    Click element       ${Puffy Royal Mattress}
    Wait Until Page Contains    12 REASONS TO CHOOSE
#enhancement

Click on Puffy Royal Memory Foam Toggle
    Wait Until Element Is Visible       css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-type > div.hybrid-buttons > label.hybrid-buttons__item.hybrid-buttons__item--1 > span.hybrid-buttons__sub-title
    Click element       css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-type > div.hybrid-buttons > label.hybrid-buttons__item.hybrid-buttons__item--1 > span.hybrid-buttons__sub-title
#enhancement

Click on Puffy Royal Hybrid Toggle
    Wait Until Element Is Visible       css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-type > div.hybrid-buttons > label.hybrid-buttons__item.hybrid-buttons__item--2
    Click element       css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-type > div.hybrid-buttons > label.hybrid-buttons__item.hybrid-buttons__item--2
#enhancement

Go to Puffy Adjustable Base Product Page
    Mouse Over          ${Bases}
    sleep               2s
    Click element       ${Adjustable Base}
    Wait Until Page Contains    12 REASONS TO CHOOSE
    ${Content}=         get text        css=#shopify-section-product-puffy-template > div.container.main.content.product-name--puffy-adjustable-base > div > div > div > div > div.seven.columns.medium-down--one-whole.alpha > div > div.product-head > div.product-head__headline > h1
    Run keyword if      '${Content}'!='${PuffyAdjustableBaseH1}'          Fail        Product name (H1) not found on the page Expected: ${PuffyAdjustableBaseH1} Actual: ${Content}

Go to Puffy Body Pillow Product Page
    Mouse Over          ${Bedding}
    sleep               2s
    Click element       ${Body Pillow}
    Wait Until Page Contains    12 REASONS TO CHOOSE
    ${Content}=         get text        css=#shopify-section-product-puffy-template > div.container.main.content.product-name--puffy-body-pillow > div > div > div > div > div.seven.columns.medium-down--one-whole.alpha > div > div.product-head > div.product-head__headline > h1
    Run keyword if      '${Content}'!='${PuffyBodyPillowH1}'          Fail        Product name (H1) not found on the page Expected: ${PuffyBodyPillowH1} Actual: ${Content}

Go to Puffy Sheets
    Mouse Over          ${Bedding}
    sleep               2s
    Click element       ${Sheets}
    Wait Until Page Contains    12 REASONS TO CHOOSE
    ${Content}=         get text        css=#shopify-section-product-puffy-template > div.container.main.content.product-name--puffy-sheets > div > div > div > div > div.seven.columns.medium-down--one-whole.alpha > div > div.product-head > div.product-head__headline > h1
    Run keyword if      '${Content}'!='${PuffySheetsH1}'          Fail        Product name (H1) not found on the page Expected: ${PuffySheetsH1} Actual: ${Content}

Click Puffy Mattress Size dropdown
    Click element       css=#product_form_345108381730 > div.product-variants-holder > div > div > div

Click Puffy Lux Size dropdown
    Click element       css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div

Click Puffy Royal Size dropdown
    Click element       css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > div

Click Puffy Adjustable Base Size dropdown
    Click element       css=#product_form_416170377250 > div.product-variants-holder > div > div > div

Click Puffy Sheets Size dropdown
    Click element       css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > div

Click Puffy Sheets Color dropdown
    Click element       css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-color > div > div

Check Puffy Mattress original prices (all sizes)
    Wait Until Element Is Visible          css=#product_form_345108381730 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > del > span.original-price
    ${Content}=            get text        css=#product_form_345108381730 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffyMattTwinOriginal}'        Fail       Wrong original price for Puffy Mattress Twin Expected: ${PuffyMattTwinOriginal} Actual: ${Content}
    ${Content}=            get text        css=#product_form_345108381730 > div.product-variants-holder > div > div > ul > li:nth-child(2) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffyMattTwinXLOriginal}'      Fail       Wrong original price for Puffy Mattress Twin XL Expected: ${PuffyMattTwinXLOriginal} Actual: ${Content}
    ${Content}=            get text        css=#product_form_345108381730 > div.product-variants-holder > div > div > ul > li:nth-child(3) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffyMattFullOriginal}'        Fail       Wrong original price for Puffy Mattress Full Expected: ${PuffyMattFullOriginal} Actual: ${Content}
    ${Content}=            get text        css=#product_form_345108381730 > div.product-variants-holder > div > div > ul > li:nth-child(4) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffyMattQueenOriginal}'       Fail       Wrong original price for Puffy Mattress Queen Expected: ${PuffyMattQueenOriginal} Actual: ${Content}
    ${Content}=            get text        css=#product_form_345108381730 > div.product-variants-holder > div > div > ul > li:nth-child(5) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffyMattKingOriginal}'        Fail       Wrong original price for Puffy Mattress King Expected: ${PuffyMattKingOriginal} Actual: ${Content}
    ${Content}=            get text        css=#product_form_345108381730 > div.product-variants-holder > div > div > ul > li:nth-child(6) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffyMattCalKingOriginal}'     Fail       Wrong original price for Puffy Mattress Cal King Expected: ${PuffyMattCalKingOriginal} Actual: ${Content}

Check Puffy Mattress 300OFF prices (all sizes)
    Wait Until Element Is Visible          css=#product_form_345108381730 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > span > span.original-price.jsDiscountedPrice
    ${Content}=            get text        css=#product_form_345108381730 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyMattTwin300OFF}'          Fail        Wrong original price for Puffy Mattress Twin Expected: ${PuffyMattTwin300OFF} Actual: ${Content}
    ${Content}=            get text        css=#product_form_345108381730 > div.product-variants-holder > div > div > ul > li:nth-child(2) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyMattTwinXL300OFF}'        Fail        Wrong original price for Puffy Mattress Twin XL Expected: ${PuffyMattTwinXL300OFF} Actual: ${Content}
    ${Content}=            get text        css=#product_form_345108381730 > div.product-variants-holder > div > div > ul > li:nth-child(3) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyMattFull300OFF}'          Fail        Wrong original price for Puffy Mattress Full Expected: ${PuffyMattFull300OFF} Actual: ${Content}
    ${Content}=            get text        css=#product_form_345108381730 > div.product-variants-holder > div > div > ul > li:nth-child(4) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyMattQueen300OFF}'         Fail        Wrong original price for Puffy Mattress Queen Expected: ${PuffyMattQueen300OFF} Actual: ${Content}
    ${Content}=            get text        css=#product_form_345108381730 > div.product-variants-holder > div > div > ul > li:nth-child(5) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyMattKing300OFF}'          Fail        Wrong original price for Puffy Mattress King Expected: ${PuffyMattKing300OFF} Actual: ${Content}
    ${Content}=            get text        css=#product_form_345108381730 > div.product-variants-holder > div > div > ul > li:nth-child(6) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyMattCalKing300OFF}'       Fail        Wrong original price for Puffy Mattress Cal King Expected: ${PuffyMattCalKing300OFF} Actual: ${Content}

Check Puffy Lux original prices (all sizes)
    Wait Until Element Is Visible          css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > del > span.original-price
    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffyLuxTwinOriginal}'         Fail        Wrong original price for Puffy Lux Mattress Twin Expected: ${PuffyLuxTwinOriginal} Actual: ${Content}
    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(2) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffyLuxTwinXLOriginal}'       Fail        Wrong original price for Puffy Lux Mattress Twin XL Expected: ${PuffyLuxTwinXLOriginal} Actual: ${Content}
    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(3) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffyLuxFullOriginal}'         Fail        Wrong original price for Puffy Lux Mattress Full Expected: ${PuffyLuxFullOriginal} Actual: ${Content}
    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(4) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffyLuxQueenOriginal}'        Fail        Wrong original price for Puffy Lux Mattress Queen Expected: ${PuffyLuxQueenOriginal} Actual: ${Content}
    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(5) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffyLuxKingOriginal}'         Fail        Wrong original price for Puffy Lux Mattress King Expected: ${PuffyLuxKingOriginal} Actual: ${Content}
    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(6) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffyLuxCalKingOriginal}'      Fail        Wrong original price for Puffy Lux Mattress Cal King Expected: ${PuffyLuxCalKingOriginal} Actual: ${Content}

Check Puffy Lux 300OFF prices (all sizes)
    Wait Until Element Is Visible          css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > span > span.original-price.jsDiscountedPrice
    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyLuxTwin300OFF}'           Fail        Wrong 300 OFF price for Puffy Lux Mattress Twin Expected: ${PuffyLuxTwin300OFF} Actual: ${Content}
    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(2) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyLuxTwinXL300OFF}'         Fail        Wrong 300 OFF price for Puffy Lux Mattress Twin XL Expected: ${PuffyLuxTwinXL300OFF} Actual: ${Content}
    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(3) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyLuxFull300OFF}'           Fail        Wrong 300 OFF price for Puffy Lux Mattress Full Expected: ${PuffyLuxFull300OFF} Actual: ${Content}
    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(4) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyLuxQueen300OFF}'          Fail        Wrong 300 OFF price for Puffy Lux Mattress Queen Expected: ${PuffyLuxQueen300OFF} Actual: ${Content}
    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(5) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyLuxKing300OFF}'           Fail        Wrong 300 OFF price for Puffy Lux Mattress King Expected: ${PuffyLuxKing300OFF} Actual: ${Content}
    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(6) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyLuxCalKing300OFF}'        Fail        Wrong 300 OFF price for Puffy Lux Mattress Cal King Expected: ${PuffyLuxCalKing300OFF} Actual: ${Content}

Check Puffy Lux Hybrid original prices (all sizes)
    Wait Until Element Is Visible          css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > del > span.hybrid-price
    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > del > span.hybrid-price
    Run keyword if          '${Content}'!='${PuffyLuxTwinOriginal}'         Fail        Wrong original price for Puffy Lux Hybrid Mattress Twin Expected: ${PuffyLuxTwinOriginal} Actual: ${Content}
    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(2) > span > del > span.hybrid-price
    Run keyword if          '${Content}'!='${PuffyLuxTwinXLOriginal}'       Fail        Wrong original price for Puffy Lux Hybrid Mattress Twin XL Expected: ${PuffyLuxTwinXLOriginal} Actual: ${Content}
    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(3) > span > del > span.hybrid-price
    Run keyword if          '${Content}'!='${PuffyLuxFullOriginal}'         Fail        Wrong original price for Puffy Lux Hybrid Mattress Full Expected: ${PuffyLuxFullOriginal} Actual: ${Content}
    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(4) > span > del > span.hybrid-price
    Run keyword if          '${Content}'!='${PuffyLuxQueenOriginal}'        Fail        Wrong original price for Puffy Lux Hybrid Mattress Queen Expected: ${PuffyLuxQueenOriginal} Actual: ${Content}
    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(5) > span > del > span.hybrid-price
    Run keyword if          '${Content}'!='${PuffyLuxKingOriginal}'         Fail        Wrong original price for Puffy Lux Hybrid Mattress King Expected: ${PuffyLuxKingOriginal} Actual: ${Content}
    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(6) > span > del > span.hybrid-price
    Run keyword if          '${Content}'!='${PuffyLuxCalKingOriginal}'      Fail        Wrong original price for Puffy Lux Hybrid Mattress Cal King Expected: ${PuffyLuxCalKingOriginal} Actual: ${Content}

Check Puffy Lux Hybrid 300OFF prices (all sizes)
    Wait Until Element Is Visible     css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > span > span.hybrid-price.jsDiscountedPrice
    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > span > span.hybrid-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyLuxTwin300OFF}'           Fail        Wrong 300 OFF price for Puffy Lux Hybrid Mattrress Twin Expected: ${PuffyLuxTwin300OFF} Actual: ${Content}
    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(2) > span > span > span.hybrid-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyLuxTwinXL300OFF}'         Fail        Wrong 300 OFF price for Puffy Lux Hybrid Mattrress Twin XL Expected: ${PuffyLuxTwinXL300OFF} Actual: ${Content}
    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(3) > span > span > span.hybrid-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyLuxFull300OFF}'           Fail        Wrong 300 OFF price for Puffy Lux Hybrid Mattrress Full Expected: ${PuffyLuxFull300OFF} Actual: ${Content}
    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(4) > span > span > span.hybrid-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyLuxQueen300OFF}'          Fail        Wrong 300 OFF price for Puffy Lux Hybrid Mattrress Queen Expected: ${PuffyLuxQueen300OFF} Actual: ${Content}
    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(5) > span > span > span.hybrid-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyLuxKing300OFF}'           Fail        Wrong 300 OFF price for Puffy Lux Hybrid Mattrress King Expected: ${PuffyLuxKing300OFF} Actual: ${Content}
    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(6) > span > span > span.hybrid-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyLuxCalKing300OFF}'        Fail        Wrong 300 OFF price for Puffy Lux Hybrid Mattrress Cal King Expected: ${PuffyLuxCalKing300OFF} Actual: ${Content}

Check Puffy Royal original prices (all sizes)
    Wait Until Element Is Visible          css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > del > span.original-price
    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffyRoyalTwinOriginal}'       Fail        Wrong original price for Puffy Royal Mattress Twin Expected: ${PuffyRoyalTwinOriginal} Actual: ${Content}
    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(2) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffyRoyalTwinXLOriginal}'     Fail        Wrong original price for Puffy Royal Mattress Twin XL Expected: ${PuffyRoyalTwinXLOriginal} Actual: ${Content}
    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(3) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffyRoyalFullOriginal}'       Fail        Wrong original price for Puffy Royal Mattress Full Expected: ${PuffyRoyalFullOriginal} Actual: ${Content}
    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(4) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffyRoyalQueenOriginal}'      Fail        Wrong original price for Puffy Royal Mattress Queen Expected: ${PuffyRoyalQueenOriginal} Actual: ${Content}
    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(5) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffyRoyalKingOriginal}'       Fail        Wrong original price for Puffy Royal Mattress King Expected: ${PuffyRoyalKingOriginal} Actual: ${Content}
    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(6) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffyRoyalCalKingOriginal}'    Fail        Wrong original price for Puffy Royal Mattress Cal King Expected: ${PuffyRoyalCalKingOriginal} Actual: ${Content}

Check Puffy Royal 300OFF prices (all sizes)
    Wait Until Element Is Visible          css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > span > span.original-price.jsDiscountedPrice
    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyRoyalTwin300OFF}'         Fail        Wrong 300 OFF price for Puffy Royal Mattress Twin Expected: ${PuffyRoyalTwin300OFF} Actual: ${Content}
    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(2) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyRoyalTwinXL300OFF}'       Fail        Wrong 300 OFF price for Puffy Royal Mattress Twin XL Expected: ${PuffyRoyalTwinXL300OFF} Actual: ${Content}
    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(3) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyRoyalFull300OFF}'         Fail        Wrong 300 OFF price for Puffy Royal Mattress Full Expected: ${PuffyRoyalFull300OFF} Actual: ${Content}
    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(4) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyRoyalQueen300OFF}'        Fail        Wrong 300 OFF price for Puffy Royal Mattress Queen Expected: ${PuffyRoyalQueen300OFF} Actual: ${Content}
    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(5) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyRoyalKing300OFF}'         Fail        Wrong 300 OFF price for Puffy Royal Mattress King Expected: ${PuffyRoyalKing300OFF} Actual: ${Content}
    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(6) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyRoyalCalKing300OFF}'      Fail        Wrong 300 OFF price for Puffy Royal Mattress Cal King Expected: ${PuffyRoyalCalKing300OFF} Actual: ${Content}

Check Puffy Royal Hybrid original prices (all sizes)
    Wait Until Element Is Visible          css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > del > span.hybrid-price
    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > del > span.hybrid-price
    Run keyword if          '${Content}'!='${PuffyRoyalTwinOriginal}'       Fail        Wrong original price for Puffy Royal Hybrid Mattress Twin Expected: ${PuffyRoyalTwinOriginal} Actual: ${Content}
    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(2) > span > del > span.hybrid-price
    Run keyword if          '${Content}'!='${PuffyRoyalTwinXLOriginal}'     Fail        Wrong original price for Puffy Royal Hybrid Mattress Twin XL Expected: ${PuffyRoyalTwinXLOriginal} Actual: ${Content}
    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(3) > span > del > span.hybrid-price
    Run keyword if          '${Content}'!='${PuffyRoyalFullOriginal}'       Fail        Wrong original price for Puffy Royal Hybrid Mattress Full Expected: ${PuffyRoyalFullOriginal} Actual: ${Content}
    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(4) > span > del > span.hybrid-price
    Run keyword if          '${Content}'!='${PuffyRoyalQueenOriginal}'      Fail        Wrong original price for Puffy Royal Hybrid Mattress Queen Expected: ${PuffyRoyalQueenOriginal} Actual: ${Content}
    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(5) > span > del > span.hybrid-price
    Run keyword if          '${Content}'!='${PuffyRoyalKingOriginal}'       Fail        Wrong original price for Puffy Royal Hybrid Mattress King Expected: ${PuffyRoyalKingOriginal} Actual: ${Content}
    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(6) > span > del > span.hybrid-price
    Run keyword if          '${Content}'!='${PuffyRoyalCalKingOriginal}'    Fail        Wrong original price for Puffy Royal Hybrid Mattress Cal King Expected: ${PuffyRoyalCalKingOriginal} Actual: ${Content}

Check Puffy Royal Hybrid 300OFF prices (all sizes)
    Wait Until Element Is Visible     css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > span > span.hybrid-price.jsDiscountedPrice
    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > span > span.hybrid-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyRoyalTwin300OFF}'         Fail        Wrong 300 OFF price for Puffy Royal Hybrid Mattress Twin Expected: ${PuffyRoyalTwin300OFF} Actual: ${Content}
    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(2) > span > span > span.hybrid-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyRoyalTwinXL300OFF}'       Fail        Wrong 300 OFF price for Puffy Royal Hybrid Mattress Twin XL Expected: ${PuffyRoyalTwinXL300OFF} Actual: ${Content}
    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(3) > span > span > span.hybrid-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyRoyalFull300OFF}'         Fail        Wrong 300 OFF price for Puffy Royal Hybrid Mattress Full Expected: ${PuffyRoyalFull300OFF} Actual: ${Content}
    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(4) > span > span > span.hybrid-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyRoyalQueen300OFF}'        Fail        Wrong 300 OFF price for Puffy Royal Hybrid Mattress Queen Expected: ${PuffyRoyalQueen300OFF} Actual: ${Content}
    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(5) > span > span > span.hybrid-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyRoyalKing300OFF}'         Fail        Wrong 300 OFF price for Puffy Royal Hybrid Mattress King Expected: ${PuffyRoyalKing300OFF} Actual: ${Content}
    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(6) > span > span > span.hybrid-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyRoyalCalKing300OFF}'      Fail        Wrong 300 OFF price for Puffy Royal Hybrid Mattress Cal King Expected: ${PuffyRoyalCalKing300OFF} Actual: ${Content}

Check Puffy Adjustable Base original prices (all sizes)
    Wait Until Element Is Visible          css=#product_form_416170377250 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > del > span.original-price
    ${Content}=            get text        css=#product_form_416170377250 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffyAdjustableBaseTwinXLOriginal}'        Fail        Wrong original price for Puffy Adjustable Base Twin XL Expected: ${PuffyAdjustableBaseTwinXLOriginal} Actual: ${Content}
    ${Content}=            get text        css=#product_form_416170377250 > div.product-variants-holder > div > div > ul > li:nth-child(2) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffyAdjustableBaseFullOriginal}'          Fail        Wrong original price for Puffy Adjustable Base Full Expected: ${PuffyAdjustableBaseFullOriginal} Actual: ${Content}
    ${Content}=            get text        css=#product_form_416170377250 > div.product-variants-holder > div > div > ul > li:nth-child(3) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffyAdjustableBaseQueenOriginal}'         Fail        Wrong original price for Puffy Adjustable Base Queen Expected: ${PuffyAdjustableBaseQueenOriginal} Actual: ${Content}
    ${Content}=            get text        css=#product_form_416170377250 > div.product-variants-holder > div > div > ul > li:nth-child(4) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffyAdjustableBaseSplitKingOriginal}'     Fail        Wrong original price for Puffy Adjustable Base Split King Expected: ${PuffyAdjustableBaseSplitKingOriginal} Actual: ${Content}

Check Puffy Adjustable Base 300OFF prices (all sizes)
    ${Content}=            get text        css=#product_form_416170377250 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyAdjustableBaseTwinXL300OFF}'          Fail        Wrong 300 OFF price for Puffy Adjustable Base Twin XL Expected: ${PuffyAdjustableBaseTwinXL300OFF} Actual: ${Content}
    ${Content}=            get text        css=#product_form_416170377250 > div.product-variants-holder > div > div > ul > li:nth-child(2) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyAdjustableBaseFull300OFF}'            Fail        Wrong 300 OFF price for Puffy Adjustable Base Full Expected: ${PuffyAdjustableBaseFull300OFF} Actual: ${Content}
    ${Content}=            get text        css=#product_form_416170377250 > div.product-variants-holder > div > div > ul > li:nth-child(3) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyAdjustableBaseQueen300OFF}'           Fail        Wrong 300 OFF price for Puffy Adjustable Base Queen Expected: ${PuffyAdjustableBaseQueen300OFF} Actual: ${Content}
    ${Content}=            get text        css=#product_form_416170377250 > div.product-variants-holder > div > div > ul > li:nth-child(4) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyAdjustableBaseSplitKing300OFF}'       Fail        Wrong 300 OFF price for Puffy Adjustable Base Split King Expected: ${PuffyAdjustableBaseSplitKing300OFF} Actual: ${Content}

Check Puffy Sheets original prices (all sizes)
    Wait Until Element Is Visible          css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(2) > span > span > span.original-price
    ${Content}=            get text        css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffySheetsTwinOriginal}'      Fail        Wrong original price for Puffy Sheets Twin Expected: ${PuffySheetsTwinOriginal} Actual: ${Content}
    ${Content}=            get text        css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(2) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffySheetsTwinXLOriginal}'    Fail        Wrong original price for Puffy Sheets Twin XL Expected: ${PuffySheetsTwinXLOriginal} Actual: ${Content}
    ${Content}=            get text        css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(3) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffySheetsFullOriginal}'      Fail        Wrong original price for Puffy Sheets Full Expected: ${PuffySheetsFullOriginal} Actual: ${Content}
    ${Content}=            get text        css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(4) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffySheetsQueenOriginal}'     Fail        Wrong original price for Puffy Sheets Queen Expected: ${PuffySheetsQueenOriginal} Actual: ${Content}
    ${Content}=            get text        css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(5) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffySheetsKingOriginal}'      Fail        Wrong original price for Puffy Sheets King Expected: ${PuffySheetsKingOriginal} Actual: ${Content}
    ${Content}=            get text        css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(6) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffySheetsCalKingOriginal}'   Fail        Wrong original price for Puffy Sheets Cal King Expected: ${PuffySheetsCalKingOriginal} Actual: ${Content}

Check Puffy Sheets 15%OFF prices (all sizes)
    Wait Until Element Is Visible          css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(2) > span > span > span.original-price
    ${Content}=            get text        css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(2) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffySheetsTwinXL15%OFF}'      Fail        Wrong 15% OFF price for Puffy Sheets Twin XL Expected: ${PuffySheetsTwinXL15%OFF} Actual: ${Content}
    ${Content}=            get text        css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(3) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffySheetsFull15%OFF}'        Fail        Wrong 15% OFF price for Puffy Sheets Full Expected: ${PuffySheetsFull15%OFF} Actual: ${Content}
    ${Content}=            get text        css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(4) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffySheetsQueen15%OFF}'       Fail        Wrong 15% OFF price for Puffy Sheets Queen Expected: ${PuffySheetsQueen15%OFF} Actual: ${Content}
    ${Content}=            get text        css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(5) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffySheetsKing15%OFF}'        Fail        Wrong 15% OFF price for Puffy Sheets King Expected: ${PuffySheetsKing15%OFF} Actual: ${Content}
    ${Content}=            get text        css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(6) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffySheetsCalKing15%OFF}'     Fail        Wrong 15% OFF price for Puffy Sheets Cal King Expected: ${PuffySheetsCalKing15%OFF} Actual: ${Content}

Select Puffy Mattress Size (Queen)
    Click element           css=#product_form_345108381730 > div.product-variants-holder > div > div > ul > li:nth-child(4)

Select Puffy Lux Size (Twin)
    Click element           css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1)

Select Puffy Lux Size (Twin XL)
    Click element           css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(2)

Select Puffy Royal Size (King)
    Click element           css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(5)

Select Puffy Royal Size (Cal King)
    Click element           css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(6)

Select Puffy Sheets Size (Queen)
    Click element           css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(4)

Select Puffy Sheets Color (White)
    Click element           css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-color > div > ul > li:nth-child(2)

Select Puffy Adjustable Base Size (Split King)
    Wait Until Element Is Visible       css=#product_form_416170377250 > div.product-variants-holder > div > div > ul > li:nth-child(4) > div > span.display-name.is--sale--price
    Click element           css=#product_form_416170377250 > div.product-variants-holder > div > div > ul > li:nth-child(4) > div > span.display-name.is--sale--price

Add Puffy Mattress to cart
    Click element           css=#product_form_345108381730 > div.purchase-details > div > button
    sleep                   2s
    ${Content}=            get text        css=#cartHolder > div > div > div.cart-checkout__content > div.cart-checkout__note
    Run keyword if          '${Content}'!='${CartDrawerNote}'     Fail        Cart Drawer was not displayed. Item was not added to cart. Expected: ${CartDrawerNote} Actual: ${Content}
#improvecart

Add Puffy Lux to cart
    click element           css=#product_form_549302042658 > div.purchase-details > div > button
    sleep                   2s
    ${Content}=            get text        css=#cartHolder > div > div > div.cart-checkout__content > div.cart-checkout__note
    Run keyword if          '${Content}'!='${CartDrawerNote}'     Fail        Cart Drawer was not displayed. Item was not added to cart. Expected: ${CartDrawerNote} Actual: ${Content}
#improvecart

Add Puffy Royal to cart
    click element           css=#product_form_3832788910114 > div.purchase-details > div > button
    sleep                   2s
    ${Content}=            get text        css=#cartHolder > div > div > div.cart-checkout__content > div.cart-checkout__note
    Run keyword if          '${Content}'!='${CartDrawerNote}'     Fail        Cart Drawer was not displayed. Item was not added to cart. Expected: ${CartDrawerNote} Actual: ${Content}
#improvecart

Add Puffy Adjustable Base to cart
    Wait Until Element Is Visible   css=#product_form_416170377250 > div.purchase-details > div > button
    click element           css=#product_form_416170377250 > div.purchase-details > div > button
    sleep                   2s
    ${Content}=            get text        css=#cartHolder > div > div > div.cart-checkout__content > div.cart-checkout__note
    Run keyword if          '${Content}'!='${CartDrawerNote}'     Fail        Cart Drawer was not displayed. Item was not added to cart. Expected: ${CartDrawerNote} Actual: ${Content}
#improvecart

Add Puffy Body Pillow to cart
    Click element           css=#product_form_4431983280162 > div.purchase-details > div > button
    sleep                   2s
    ${Content}=            get text        css=#cartHolder > div > div > div.cart-checkout__content > div.cart-checkout__note
    Run keyword if          '${Content}'!='${CartDrawerNote}'     Fail        Cart Drawer was not displayed. Item was not added to cart. Expected: ${CartDrawerNote} Actual: ${Content}
#improvecart

Add Puffy Sheets to cart
    click element           css=#product_form_4359826341922 > div.purchase-details > div > button
    sleep                   2s
    ${Content}=            get text        css=#cartHolder > div > div > div.cart-checkout__content > div.cart-checkout__note
    Run keyword if          '${Content}'!='${CartDrawerNote}'     Fail        Cart Drawer was not displayed. Item was not added to cart. Expected: ${CartDrawerNote} Actual: ${Content}
#improvecart

Close cart
    sleep                   1s
    Click element           css=body > div.cart_content.jsCartContent.cart-content-mob > div.cart-close > span.cart-close-btn.cart-close__icon
    Wait until page contains element    ${Logo}

Check current cart count
    ${CartText}   get text  xpath=//html/body/div[3]/div/header[2]/div/div/div/div[3]/div/a/span
    set test variable       ${CartCount}    ${CartText}

Check cart count after adding a mattress
    ${BeforeShopping} =     evaluate    ${CartCount}
    sleep                   2s
    Check Current Cart Count
    ${AfterShopping}=       evaluate    ${CartCount}-2
    Run keyword if          ${BeforeShopping}!=${AfterShopping}       Fail    Wrong cart count after adding a mattress

Check cart count after adding an accessory
    ${BeforeShopping} =     evaluate    ${CartCount}
    sleep                   2s
    Check Current Cart Count
    ${AfterShopping}=       evaluate    ${CartCount}-1
    Run keyword if          ${BeforeShopping}!=${AfterShopping}       Fail    Wrong cart count after adding an accessory

Open cart
    click element           ${cart}
    ${Content}=            get text        css=#cartHolder > div > div > div.cart-checkout__content > div.cart-checkout__note
    Run keyword if          '${Content}'!='${CartDrawerNote}'     Fail        Cart Drawer was not displayed Expected: ${CartDrawerNote} Actual: ${Content}
#improvecart

Check product redirection in cart
    click link                      link:Puffy Sheets
    Wait Until Page Contains        Puffy Sheets
    ${Content}=            get text        css=#shopify-section-product-puffy-template > div.container.main.content.product-name--puffy-sheets > div > div > div > div > div.seven.columns.medium-down--one-whole.alpha > div > div.product-head > div.product-head__headline > h1
    Run keyword if          '${Content}'!='${PuffySheetsH1}'     Fail        Product name (H1) not found Expected: ${PuffySheetsH1} Actual: ${Content}

Click checkout
    Click link              link:CHECKOUT
    Wait Until Page Contains Element    css=body > div.checkout-header > div.checkout-header__right > div > div:nth-child(1) > img

Select Mattress Pad from Complete your Bedroom Set in checkout
    Wait Until Page Contains Element    css=body > div.main_wrapper > div > div.wrap > div.sidebar > div.sidebar__content > div.sidebar_bottom > div > div > div > div:nth-child(6) > a > div.upsell-boxes__media > img
    Scroll Element Into View            css=body > div.main_wrapper > div > div.wrap > div.sidebar > div.sidebar__content > div.sidebar_bottom > div > div > div > div:nth-child(6) > a > div.upsell-boxes__media > img
    click element                       xpath=/html/body/div[2]/div/div[2]/div[2]/div[2]/div[4]/div/div/div/div[6]/a/div[1]/img
    Wait Until Page Contains            Puffy Mattress Pad
    ${Content}=            get text        css=#shopify-section-product-puffy-template > div.container.main.content.product-name--puffy-mattress-pad > div > div > div > div > div.seven.columns.medium-down--one-whole.alpha > div > div.product-head > div.product-head__headline > h1
    Run keyword if          '${Content}'!='${PuffyMattressPadH1}'     Fail        Product name (H1) not found Expected: ${PuffyMattressPadH1} Actual: ${Content}

Fill out Information tab in checkout
    ${Content}=            get text     css=#main-header
    Run keyword if          '${Content}'!='${CheckoutInformationH1}'     Fail        Checkout - Information tab (H1) not found Expected: ${CheckoutInformationH1} Actual: ${Content}
    Input text                          xpath=//*[@id="checkout_email"]     ${Email}
    Input text                          xpath=//*[@id="checkout_shipping_address_first_name"]     ${First Name}
    Input text                          xpath=//*[@id="checkout_shipping_address_last_name"]     ${Last Name}
    Press Keys	                        xpath=//*[@id="checkout_shipping_address_address1"]	123
    Press Keys	                        xpath=//*[@id="checkout_shipping_address_province"]	New+York
    Press Keys	                        button	RETURN
    wait until page contains element    xpath=//*[@id="checkout_shipping_address_city"]
    Input text                          xpath=//*[@id="checkout_shipping_address_city"]          ${City}
    Input text                          xpath=//*[@id="checkout_shipping_address_zip"]           ${zipcode}
    Input text                          xpath=//*[@id="checkout_shipping_address_phone"]         ${Phone}

Continue to Shipping tab
    Press Keys	                        button	RETURN
    wait until page contains            automation@puffy.com
    wait until page contains            123, New York NH 03101, United States
    sleep                               10s
    wait until page contains element    css=body > div.main_wrapper > div > div.wrap > div.main > div.main__content > div.step > form > div.step__sections > div.section.section--shipping-method > div.section__content > div > div > div > label > span.radio__label__primary
    ${Content}=            get text     css=#main-header
    Run keyword if          '${Content}'!='${CheckoutShippingH1}'     Fail        Checkout - Information tab (H1) not found Expected: ${CheckoutShippingH1} Actual: ${Content}

Continue to Payment tab
    Click Element                       xpath=//*[@id="continue_button"]
    wait until page contains            All transactions are secure and encrypted.
    ${Content}=            get text     css=#main-header
    Run keyword if          '${Content}'!='${CheckoutPaymentH1}'     Fail        Checkout - Information tab (H1) not found Expected: ${CheckoutPaymentH1} Actual: ${Content}

Select and proceed with Paypal
    click element                       css=#checkout_payment_gateway_22050897954
    sleep                               2s
    click element                       css=#checkout_different_billing_address_false
    sleep                               2s
    click element                       xpath=//*[@id="continue_button"]
    sleep                               2s
    wait until page contains            Cancel and return to Puffy LLC
    sleep                               2s
    click link                          link:Cancel and return to Puffy LLC
    sleep                               2s
    wait until page contains            All transactions are secure and encrypted.
#addcheck

Select and proceed with Splitit
    Click Element                       css=#checkout_payment_gateway_40271216674
    sleep                               2s
    click element                       xpath=//*[@id="continue_button"]
    sleep                               5s
    wait until page contains            Select Number of Payments
    sleep                               2s
    Click Element                       css=#maincontent > app-main-page > div > app-header > header > div.back-btn.ng-star-inserted
    sleep                               2s
    wait until page contains            All transactions are secure and encrypted.
#addcheck

Select and proceed with Klarna
    sleep                               2s
    Click Element                       css=#checkout_payment_gateway_122164302
    sleep                               2s
    click element                       xpath=//*[@id="continue_button"]
    sleep                               5s
    wait until page contains            Change Payment Method
    sleep                               2s
    Click Link                          link:Change Payment Method
    sleep                               2s
    wait until page contains            All transactions are secure and encrypted.
#addcheck

Switch to Version A
    Click element   ${ToggleA}
Switch to Version B
    Click element   ${ToggleB}