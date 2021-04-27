*** Settings ***
Documentation       This is for checking all the places where we should update the seasonal promotion
Library             Selenium2Library
#Library             SeleniumLibrary
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
${Sale Name Homepage}           CYBER WEEK SALE NOW
${Sale Details}                 $300 OFF + FREE PILLOW
${Sale 350 Details}             $350 OFF + FREE PILLOW
${Discount Amount}              $300 OFF
${Discount 350 Amount}          $350 OFF
${AdjustableBaseDiscountAmount}  $300
${AdjustableBaseDiscountAmount350}  $350
${Homepage}                     https://puffy.com//?preview_theme_id=83837780002
${systembrowser}                Chrome
${Feedback}                     html.null body.index.is--hybrid-false.timer--exists.jdgm-buyer-badge--removed div.index-sections div#shopify-section-hov_instagramBoxes.shopify-section div.instagram-boxes div.instagram-boxes__inner
${Shop}                         div.compare-boxes__headline:nth-child(1) > h2:nth-child(1) > a:nth-child(1)
${Logo}                         //*[@id="shopify-section-header"]/div/header[2]/div/div/div/div[1]/a/img
${Contacts}                     //*[@id="contact"]/a
${Mattresses}                   css=body > div.shopify-section.header-section > div > header.main_header > div > div > div > div.nav > ul > li:nth-child(1) > a
${Puffy Mattress}               css=body > div.shopify-section.header-section > div > header.main_header > div > div > div > div.dropdown_container.mega-menu.mega-menu-1 > div > div.dropdown_content > div:nth-child(1) > div.mega-menu__image-caption-link > a > div.image-element__wrap > img
${Puffy Lux Mattress}           css=body > div.shopify-section.header-section > div > header.main_header > div > div > div > div.dropdown_container.mega-menu.mega-menu-1 > div > div.dropdown_content > div:nth-child(2) > div.mega-menu__image-caption-link > a > div.image-element__wrap > img
${Puffy Royal Mattress}         css=body > div.shopify-section.header-section > div > header.main_header > div > div > div > div.dropdown_container.mega-menu.mega-menu-1 > div > div.dropdown_content > div:nth-child(3) > div.mega-menu__image-caption-link > a > div.image-element__wrap > img
${COMPARE}                      css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-1 > div > div.dropdown-compare > a
${PuffyReason1Image}            //*[@id="productReasons"]/div[2]/div[1]/div/div/div/div/div[2]/div/img
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
${Puffy Nightstand}
${Dog Bed}                      css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-4 > div > div > div:nth-child(1) > div.mega-menu__image-caption-link > a > div.image-element__wrap > img
${Rug}                          css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-4 > div > div > div:nth-child(2) > div.mega-menu__image-caption-link > a > div.image-element__wrap > img
${Cart}                         css=body > div.shopify-section.header-section > div > header.main_header > div > div > div > div.cart_container > div > a
${FOOTER}                       CYBER WEEK SALE NOW $300 OFF + FREE PILLOW
${Timer350}                     CYBER WEEK SALE NOW $350 OFF + FREE PILLOW
${Save350}                      https://puffy.com/pages/save350
${ToggleA}                      css=#showVersionA
${ToggleB}                      css=#showVersionB

#Product Prices
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
${PuffyMattTwin350OFF}          $445
${PuffyMattTwinXL350OFF}        $475
${PuffyMattFull350OFF}          $645
${PuffyMattQueen350OFF}         $800
${PuffyMattKing350OFF}          $1,000
${PuffyMattCalKing350OFF}       $1,000

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
${PuffyLuxTwin350OFF}           $1,095
${PuffyLuxTwinXL350OFF}         $1,145
${PuffyLuxFull350OFF}           $1,245
${PuffyLuxQueen350OFF}          $1,445
${PuffyLuxKing350OFF}           $1,645
${PuffyLuxCalKing350OFF}        $1,645

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
${PuffyRoyalTwin350OFF}         $1,295
${PuffyRoyalTwinXL350OFF}       $1,395
${PuffyRoyalFull350OFF}         $2,095
${PuffyRoyalQueen350OFF}        $2,345
${PuffyRoyalKing350OFF}         $2,645
${PuffyRoyalCalKing350OFF}      $2,645

${PuffyAdjustTwinXLOriginal}    $1,195
${PuffyAdjustFullOriginal}      $1,295
${PuffyAdjustQueenOriginal}     $1,395
${PuffyAdjustSplitKingOriginal}  $2,095
${PuffyAdjustTwinXL300OFF}      $895
${PuffyAdjustFull300OFF}        $995
${PuffyAdjustQueen300OFF}       $1,095
${PuffyAdjustSplitKing300OFF}   $1,795
${PuffyAdjustTwinXL350OFF}      $845
${PuffyAdjustFull350OFF}        $945
${PuffyAdjustQueen350OFF}       $1,045
${PuffyAdjustSplitKing350OFF}   $1,745

${PuffySheetsTwinOriginal}              $95
${PuffySheetsTwinXLOriginal}            $100
${PuffySheetsFullOriginal}              $110
${PuffySheetsQueenOriginal}             $125
${PuffySheetsKingOriginal}              $135
${PuffySheetsCalKingOriginal}           $135
${PuffySheetsTwin15%OFF}              ---
${PuffySheetsTwinXL15%OFF}            $85
${PuffySheetsFull15%OFF}              $94
${PuffySheetsQueen15%OFF}             $106
${PuffySheetsKing15%OFF}              $115
${PuffySheetsCalKing15%OFF}           $115

${PuffyFoundationTwinOriginal}              $135
${PuffyFoundationTwinXLOriginal}            $145
${PuffyFoundationFullOriginal}              $165
${PuffyFoundationQueenOriginal}             $215
${PuffyFoundationKingOriginal}              $225
${PuffyFoundationCalKingOriginal}           $225

${PuffyFoundationTwin15%OFF}              $114.75
${PuffyFoundationTwinXL15%OFF}            $123.25
${PuffyFoundationFull15%OFF}              $140.25
${PuffyFoundationQueen15%OFF}             $182.75
${PuffyFoundationKing15%OFF}              $191.25
${PuffyFoundationCalKing15%OFF}           $191.25

${PuffyBedFrameTwinOriginal}              ----
${PuffyBedFrameTwinXLOriginal}            ----
${PuffyBedFrameFullOriginal}              $895
${PuffyBedFrameQueenOriginal}             $995
${PuffyBedFrameKingOriginal}              $1,095
${PuffyBedFrameCalKingOriginal}           $1,095
${PuffyBedFrameTwin15%OFF}              ----
${PuffyBedFrameTwinXL15%OFF}            ----
${PuffyBedFrameFull15%OFF}              $760.75
${PuffyBedFrameQueen15%OFF}             $845.75
${PuffyBedFrameKing15%OFF}              $930.75
${PuffyBedFrameCalKing15%OFF}           $930.75

${PuffyPillowStandardOriginal}        $75
${PuffyPillowKingOriginal}            $95
${PuffyPillowStandard15%OFF}          ---
${PuffyPillowKing15%OFF}              ---

${PuffyBodyPillowStandardOriginal}        $115
${PuffyBodyPillowKingOriginal}            ----
${PuffyBodyPillowStandard15%OFF}          $97.75
${PuffyBodyPillowKing15%OFF}              ----

${PuffyNightstandStandardOriginal}        $195
${PuffyNightstandKingOriginal}            ----
${PuffyNightstandStandard15%OFF}          $165.75
${PuffyNightstandKing15%OFF}              ----

${PuffyBlanketSmallOriginal}        $65
${PuffyBlanketMediumOriginal}       $75
${PuffyBlanketLargeOriginal}         $85
${PuffyBlanketSmallOriginal}        ---
${PuffyBlanketMediumOriginal}       ---
${PuffyBlanketLargeOriginal}         ---

${PuffyDogBedSmallOriginal}        $125
${PuffyDogBedMediumOriginal}       $150
${PuffyDogBedLargeOriginal}         $195
${PuffyDogBedSmallOriginal}        $106.25
${PuffyDogBedMediumOriginal}       $127.50
${PuffyDogBedLargeOriginal}         $165.75

${PuffyRugSmallOriginal}        ---
${PuffyRugMediumOriginal}       $295
${PuffyRugLargeOriginal}        $395
${PuffyRugSmallOriginal}        ---
${PuffyRugMediumOriginal}       $250.75
${PuffyRugLargeOriginal}        $330.75

${PuffyComforterTwin/TwinXLOriginal}      $175
${PuffyComforterFull/QueenOriginal}       $215
${PuffyComforterKing/CalKingOriginal}     $255
${PuffyComforterTwin/TwinXL15%OFF}        $148.75
${PuffyComforterFull/Queen15%OFF}         $182.75
${PuffyComforterKing/CalKing15%OFF}       $216.75

${PuffyPadTwinOriginal}                   $170
${PuffyPadTwinXLOriginal}                 $185
${PuffyPadFullOriginal}                   $205
${PuffyPadQueenOriginal}                  $225
${PuffyPadKingOriginal}                   $245
${PuffyPadCalKingOriginal}                $245
${PuffyPadTwin15%OFF}                     $144.75
${PuffyPadTwinXL15%OFF}                   $157.25
${PuffyPadFull15%OFF}                     $174.25
${PuffyPadQueen15%OFF}                    $191.25
${PuffyPadKing15%OFF}                     $208.25
${PuffyPadCalKing15%OFF}                  $208.25

${PuffyProtectorTwinOriginal}                   $85
${PuffyProtectorTwinXLOriginal}                 $90
${PuffyProtectorFullOriginal}                   $95
${PuffyProtectorQueenOriginal}                  $105
${PuffyProtectorKingOriginal}                   $115
${PuffyProtectorCalKingOriginal}                $115
${PuffyProtectorTwin15%OFF}                     ---
${PuffyProtectorTwinXL15%OFF}                   ---
${PuffyProtectorFull15%OFF}                     ---
${PuffyProtectorQueen15%OFF}                    $89.25
${PuffyProtectorKing15%OFF}                     $97.75
${PuffyProtectorCalKing15%OFF}                  $97.75

${PuffyTopperTwinOriginal}                   $175
${PuffyTopperTwinXLOriginal}                 $185
${PuffyTopperFullOriginal}                   $205
${PuffyTopperQueenOriginal}                  $225
${PuffyTopperKingOriginal}                   $245
${PuffyTopperCalKingOriginal}                $245
${PuffyTopperTwin15%OFF}                     $148.75
${PuffyTopperTwinXL15%OFF}                   $157.25
${PuffyTopperFull15%OFF}                     $174.25
${PuffyTopperQueen15%OFF}                    $191.25
${PuffyTopperKing15%OFF}                     $208.25
${PuffyTopperCalKing15%OFF}                  $208.25

${PuffyWeightedBlanketTwinOriginal}                   $155
${PuffyWeightedBlanketTwinXLOriginal}                 ---
${PuffyWeightedBlanketFullOriginal}                   ---
${PuffyWeightedBlanketQueenOriginal}                  $185
${PuffyWeightedBlanketKingOriginal}                   ---
${PuffyWeightedBlanketCalKingOriginal}                ---
${PuffyWeightedBlanketTwin15%OFF}                     $131.75
${PuffyWeightedBlanketTwinXL15%OFF}                   ---
${PuffyWeightedBlanketFull15%OFF}                     ---
${PuffyWeightedBlanketQueen15%OFF}                    $157.25
${PuffyWeightedBlanketKing15%OFF}                     ---
${PuffyWeightedBlanketCalKing15%OFF}                  ---

*** Test Cases ***


Start Record Video
    Start Record Video
Popup Sale
    Open Login screen
    Wait and dismiss popup
Save350 page
    Go to Save350 page
Switch version
    Switch to Version A
Go to Homepage
    Go to homepage
Timer Bar
    sleep   1s
    Seasonal Sale timer text check
Puffy Mattress Homepage
    Homepage Seasonal Sale text check
    Homepage Discount Value and Freebie check
Puffy Lux Mattress Homepage
    Go to Puffy Lux Homepage
    Homepage Seasonal Sale text check
    Homepage Discount Value and Freebie check
Puffy Hybrid Mattress Homepage
    Go to Puffy Hybrid Homepage
    Homepage Seasonal Sale text check
    Homepage Discount Value and Freebie check
Store Page
    Go to Store page
    Banner Seasonal Sale text check
    Banner Discount Value and Freebie check
    Puffy Adjustable Base Banner Discount Value and Freebie check
Giftshop Page
    Go to Gift Shop page
    Banner Seasonal Sale text check
    Banner Discount Value and Freebie check
    Puffy Adjustable Base Banner Discount Value and Freebie check
PDP Puffy Mattress
    Go to Puffy Mattress Product Page
    Banner Seasonal Sale text check
    PDP Discount Value and Freebie check
    Click Puffy Mattress Size dropdown
    Check Puffy Mattress sizes original prices
    Check Puffy Mattress sizes 350OFF prices
    Select Puffy Mattress Size
    Cart Count Before Adding product
    Add to cart Puffy Mattress
    Close Cart
    Cart Count After Adding Product with free pillow

PDP Puffy Lux Mattress
    Go to Puffy Lux Mattress Product Page
    Banner Seasonal Sale text check
    PDP Discount Value and Freebie check
    Click Puffy Lux Size dropdown       #to open the dropdown list of the sizes
    Check Puffy Lux sizes original prices
    Check Puffy Lux sizes 350OFF prices
    Click Puffy Lux Size dropdown       #to close the dropdown list
    Click on Puffy Lux Hybrid           #to go to hybrid for price checking
    Click Puffy Lux Size dropdown       #to open the dropdown list
    Check Puffy Lux Hybrid sizes original prices
    Check Puffy Lux Hybrid sizes 350OFF prices
    Click Puffy Lux Size dropdown       #to close the dropdown list
    Click on Puffy Lux Memory Foam      #to switch back to memory foam
    Click Puffy Lux Size dropdown       #to open the dropdown again
    Select Puffy Lux Size
    Cart Count Before Adding product
    Add to cart Puffy Lux
    Close Cart
    Cart Count After Adding Product with free pillow
PDP Puffy Lux Hybrid Mattress
    Click on Puffy Lux Hybrid
    Banner Seasonal Sale text check
    PDP Discount Value and Freebie check
    Click Puffy Lux Size dropdown
    Select Puffy Lux Size
    Cart Count Before Adding product
    Add to cart Puffy Lux
    Close Cart
    Cart Count After Adding Product with free pillow

PDP Puffy Royal Mattress
    Go to Puffy Royal Mattress Product Page
    Banner Seasonal Sale text check
    PDP Discount Value and Freebie check
    Click Puffy Royal Size dropdown
    Check Puffy Royal sizes original prices
    Check Puffy Royal sizes 350OFF prices
    Click Puffy Royal Size dropdown
    Click on Puffy Royal Hybrid
    Click Puffy Royal Size dropdown
    Check Puffy Royal Hybrid sizes original prices
    Check Puffy Royal Hybrid sizes 350OFF prices
    Click Puffy Royal Size dropdown
    Click on Puffy Royal Memory Foam
    Click Puffy Royal Size dropdown
    Select Puffy Royal Size
    Cart Count Before Adding product
    Add to cart Puffy Royal
    Close Cart
    Cart Count After Adding Product with free pillow

PDP Puffy Royal Hybrid Mattress
    Click on Puffy Royal Hybrid
    Banner Seasonal Sale text check
    PDP Discount Value and Freebie check
    Click Puffy Royal Size dropdown
    Select Puffy Royal Size
    Cart Count Before Adding product
    Add to cart Puffy Royal
    Close Cart
    Cart Count After Adding Product with free pillow

PDP Puffy Adjustable Base
    Go to Puffy Adjustable Base Product Page
    Banner Seasonal Sale text check
    PDP Puffy Adjustable Base Banner Discount Value and Freebie check
    Click Puffy Adjustable Base size dropdown
    Check Puffy Adjustable Base sizes original prices
    Check Puffy Adjustable Base sizes 350OFF prices
    Select Puffy Adjustable base Size
    Cart Count Before Adding product
    Add to cart Puffy Puffy Adjustable Base
    Close Cart

PDP Puffy Body Pillow
    Go to Puffy Body Pillow Product Page
    Cart Count Before Adding product
    Add to cart Puffy Body Pillow
    Close Cart
    Cart Count After Adding Product without free pillow

PDP Puffy Sheets
    Go to Puffy Sheets
    Click Puffy Sheets Size dropdown
    Check Puffy Sheets sizes price
    Check Puffy Sheets 15%OFF prices
    Select Puffy Sheets Size
    Click Puffy Sheets Color dropdown
    Select Puffy Sheets Color
    Cart Count Before Adding product
    Add to cart Puffy Sheets
    Close Cart
    Cart Count After Adding Product without free pillow

Cart checks PDP redirection
    Open Cart
    sleep               2s
    Check cart product redirection

Go to Checkout
    sleep           5s
    Click checkout
    Check Product list in checkout pages

Complete your Bedroom Set section
    Complete your Bedroom Set from checkout product page redirection
    sleep           5s
    Click checkout
    Check Product list in checkout pages
    Checkout Contact information field
    Continue to Payment

Check all Payment methods
    Select Paypal
    Select Splitit
    Select Klarna

Stop All Video Recordings
    Stop All Video Recordings

*** Keywords ***
Open Login screen
    Open Browser            ${Homepage}  ${systembrowser}
    Maximize Browser Window
    wait until page contains    ${FOOTER}

Click on Puffy Logo
    Click Element       ${Logo}
    wait until page contains    ${FOOTER}

Wait and dismiss popup
    sleep                   5s
    ${check}=               Run Keyword and Return Status  Element should be visible      xpath=/html/body/div[1]/div[2]/div/div[1]/img
    run keyword if          ${check} == False    Wait and dismiss popup
    ...     ELSE            Click element   xpath=/html/body/div[1]/div[2]/div/span

Seasonal Sale timer text check
    ${Content}=            get text        css=#saleTimer > div:nth-child(1) > div > div.timer-text__content.timer-text__content--desktop
    Run keyword if          '${Content}'!='${Timer350}'      Fail        Wrong Seasonal Sale timer Content Actual content: ${Content}
    Click element           css=#saleTimer > span > svg

Homepage Seasonal Sale text check
    sleep                   2s
    ${Content}=            get text        css=#Cyber_Monday_Sale_Now > tspan
    Run keyword if          '${Content}'!='${Sale Name Homepage}'      Fail        Wrong Seasonal Sale Content Expected: ${Sale Name Homepage} Actual: ${Content}

Homepage Discount Value and Freebie check
    ${Content}=            get text        css=#_300_OFF_Free_Pillow
    Run keyword if          '${Content}'!='${Sale 350 Details}'      Fail        Wrong Discount Value and Freebie Content Expected: ${Sale Details} Actual: ${Content}

PDP Discount Value and Freebie check
    ${Content}=            get text        css=#_300_Off_FREE_PILLOW
    Run keyword if          '${Content}'!='${Sale 350 Details}'      Fail        Wrong Discount Value and Freebie Content Expected: ${Sale 350 Details} Actual: ${Content}

Go to Puffy Lux Homepage
    sleep                   2s
    Click Link           link:Puffy Lux

Go to Puffy Hybrid Homepage
    sleep                   2s
    Click Link           link:Puffy Hybrid

Go to Store page
    sleep                   2s
    Click Link           link:Puffy Store
    Scroll Element Into View            css=#collectionProductsWrap > div:nth-child(2) > div > div.product-details > a.product-info__caption > span.price.sale > span.money.jsDiscountedPrice
    sleep                               2s
    Scroll Element Into View            css=#collectionProductsWrap > div:nth-child(4) > div > div.product-details > a.action_button.button.shop-now


Banner Seasonal Sale text check
    sleep                   2s
    ${Content}=            get text        css=#Summer_SALE
    Run keyword if          '${Content}'!='${Sale Name}'      Fail        Wrong Seasonal Sale Content

Banner Discount Value and Freebie check
    sleep                   2s
    ${Content}=            get text        css=#_300_OFF_FREE_PILLOW
    Run keyword if          '${Content}'!='${Sale 350 Details}'      Fail        Wrong Discount Value and Freebie Content Expected: ${Sale 350 Details} Actual: ${Content}

Go to Gift Shop page
    sleep                   2s
    Click link              link:Gift Shop
    Scroll Element Into View            css=body > div.container.main.content > div:nth-child(7) > div > div > div:nth-child(2) > div > a > div.product-box__media.product-box__media--white > div.image-element__wrap
    sleep                               2s
    Scroll Element Into View            css=body > div.container.main.content > div.text-bar.text-bar--medium-text.is--gray > div > div.text-bar__content.text-bar__content--single > div > div > div:nth-child(1) > div > a > div.product-box__content > div.product-box__desc > div.product-box__title

Puffy Adjustable Base Banner Discount Value and Freebie check
    sleep                   2s
    ${Content}=            get text        css=#_300_OFF > tspan
    Run keyword if          '${Content}'!='${Discount 350 Amount}'      Fail        Wrong Discount Value and Freebie Content Expected: ${Discount 350 Amount} Actual: ${Content}

PDP Puffy Adjustable Base Banner Discount Value and Freebie check
    sleep                   2s
    ${Content}=            get text        css=#_300_Off
    Run keyword if          '${Content}'!='${Discount 350 Amount}'      Fail        Wrong Discount Value and Freebie Content Expected: ${Discount 350 Amount} Actual: ${Content}

Go to Puffy Mattress Product Page
    Mouse Over          ${Mattresses}
    sleep               2s
    Click element       ${Puffy Mattress}
    Wait Until Page Contains    12 REASONS TO CHOOSE

Go to Puffy Lux Mattress Product Page
    Mouse Over          ${Mattresses}
    sleep               2s
    Click element       ${Puffy Lux Mattress}
    Wait Until Page Contains    12 REASONS TO CHOOSE

Click on Puffy Lux Hybrid
    Click element       css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-type > div.hybrid-buttons > label.hybrid-buttons__item.hybrid-buttons__item--2

Click on Puffy Lux Memory Foam
    Wait Until Element Is Visible       css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-type > div.hybrid-buttons > label.hybrid-buttons__item.hybrid-buttons__item--1 > span.hybrid-buttons__sub-title
    Click element       css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-type > div.hybrid-buttons > label.hybrid-buttons__item.hybrid-buttons__item--1 > span.hybrid-buttons__sub-title
Click on Puffy Royal Memory Foam
    Wait Until Element Is Visible       css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-type > div.hybrid-buttons > label.hybrid-buttons__item.hybrid-buttons__item--1 > span.hybrid-buttons__sub-title
    Click element       css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-type > div.hybrid-buttons > label.hybrid-buttons__item.hybrid-buttons__item--1 > span.hybrid-buttons__sub-title
Click on Puffy Royal Hybrid
    Wait Until Element Is Visible       css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-type > div.hybrid-buttons > label.hybrid-buttons__item.hybrid-buttons__item--2
    Click element       css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-type > div.hybrid-buttons > label.hybrid-buttons__item.hybrid-buttons__item--2

Go to Puffy Royal Mattress Product Page
    Mouse Over          ${Mattresses}
    sleep               2s
    Click element       ${Puffy Royal Mattress}
    Wait Until Page Contains    12 REASONS TO CHOOSE

Go to Puffy Adjustable Base Product Page
    Mouse Over          ${Bases}
    sleep               2s
    Click element       ${Adjustable Base}
    Wait Until Page Contains    12 REASONS TO CHOOSE


Go to Puffy Body Pillow Product Page
    Mouse Over          ${Bedding}
    sleep               2s
    Click element       ${Body Pillow}
    Wait Until Page Contains    12 REASONS TO CHOOSE

Go to Puffy Sheets
    Mouse Over          ${Bedding}
    sleep               2s
    Click element       ${Sheets}
    Wait Until Page Contains    12 REASONS TO CHOOSE

Click Puffy Mattress Size dropdown
    Click element       css=#product_form_345108381730 > div.product-variants-holder > div > div > div
Click Puffy Lux Size dropdown
    Click element       css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div
Click Puffy Royal Size dropdown
    Click element       css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > div
Click Puffy Adjustable Base size dropdown
    Click element       css=#product_form_416170377250 > div.product-variants-holder > div > div > div
Click Puffy Sheets Size dropdown
    Click element       css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > div
Click Puffy Sheets Color dropdown
    Click element       css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-color > div > div

Check Puffy Mattress sizes original prices

    Wait Until Element Is Visible          css=#product_form_345108381730 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > del > span.original-price

    ${Content}=            get text        css=#product_form_345108381730 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffyMattTwinOriginal}'      Fail        Wrong Puffy Mattress Twin Size original price

    ${Content}=            get text        css=#product_form_345108381730 > div.product-variants-holder > div > div > ul > li:nth-child(2) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffyMattTwinXLOriginal}'      Fail        Wrong Puffy Mattress TwinXL Size original price

    ${Content}=            get text        css=#product_form_345108381730 > div.product-variants-holder > div > div > ul > li:nth-child(3) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffyMattFullOriginal}'      Fail        Wrong Puffy Mattress Full Size original price

    ${Content}=            get text        css=#product_form_345108381730 > div.product-variants-holder > div > div > ul > li.option.selected.focus > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffyMattQueenOriginal}'      Fail        Wrong Puffy Mattress Queen Size original price

    ${Content}=            get text        css=#product_form_345108381730 > div.product-variants-holder > div > div > ul > li:nth-child(5) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffyMattKingOriginal}'      Fail        Wrong Puffy Mattress King Size original price

    ${Content}=            get text        css=#product_form_345108381730 > div.product-variants-holder > div > div > ul > li:nth-child(6) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffyMattCalKingOriginal}'      Fail        Wrong Puffy Mattress CalKing Size original price

Check Puffy Mattress sizes 350OFF prices

    Wait Until Element Is Visible          css=#product_form_345108381730 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > span > span.original-price.jsDiscountedPrice

    ${Content}=            get text        css=#product_form_345108381730 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyMattTwin350OFF}'      Fail        Wrong Puffy Mattress Twin Size 300 OFF price

    ${Content}=            get text        css=#product_form_345108381730 > div.product-variants-holder > div > div > ul > li:nth-child(2) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyMattTwinXL350OFF}'      Fail        Wrong Puffy Mattress TwinXL Size 300 OFF price

    ${Content}=            get text        css=#product_form_345108381730 > div.product-variants-holder > div > div > ul > li:nth-child(3) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyMattFull350OFF}'      Fail        Wrong Puffy Mattress Full Size 300 OFF price

    ${Content}=            get text        css=#product_form_345108381730 > div.product-variants-holder > div > div > ul > li.option.selected.focus > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyMattQueen350OFF}'      Fail        Wrong Puffy Mattress Queen Size 300 OFF price

    ${Content}=            get text        css=#product_form_345108381730 > div.product-variants-holder > div > div > ul > li:nth-child(5) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyMattKing350OFF}'      Fail        Wrong Puffy Mattress King Size 300 OFF price

    ${Content}=            get text        css=#product_form_345108381730 > div.product-variants-holder > div > div > ul > li:nth-child(6) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyMattCalKing350OFF}'      Fail        Wrong Puffy Mattress CalKing Size 300 OFF price



Check Puffy Lux sizes original prices

    Wait Until Element Is Visible          css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > del > span.original-price

    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffyLuxTwinOriginal}'      Fail        Wrong Puffy Lux Twin Size original price

    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(2) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffyLuxTwinXLOriginal}'      Fail        Wrong Puffy Lux TwinXL Size original price

    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(3) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffyLuxFullOriginal}'      Fail        Wrong Puffy Lux Full Size original price

    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li.option.selected.focus > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffyLuxQueenOriginal}'      Fail        Wrong Puffy Lux Queen Size original price

    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(5) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffyLuxKingOriginal}'      Fail        Wrong Puffy Lux King Size original price

    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(6) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffyLuxCalKingOriginal}'      Fail        Wrong Puffy Lux CalKing Size original price

Check Puffy Lux sizes 350OFF prices

    Wait Until Element Is Visible          css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > span > span.original-price.jsDiscountedPrice

    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyLuxTwin350OFF}'      Fail        Wrong Puffy Lux Twin Size 300 OFF price

    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(2) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyLuxTwinXL350OFF}'      Fail        Wrong Puffy Lux TwinXL Size 300 OFF price

    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(3) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyLuxFull350OFF}'      Fail        Wrong Puffy Lux Full Size 300 OFF price

    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li.option.selected.focus > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyLuxQueen350OFF}'      Fail        Wrong Puffy Lux Queen Size 300 OFF price

    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(5) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyLuxKing350OFF}'      Fail        Wrong Puffy Lux King Size 300 OFF price

    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(6) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyLuxCalKing350OFF}'      Fail        Wrong Puffy Lux CalKing Size 300 OFF price

Check Puffy Lux Hybrid sizes original prices

    Wait Until Element Is Visible          css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > del > span.hybrid-price
    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > del > span.hybrid-price
    Run keyword if          '${Content}'!='${PuffyLuxTwinOriginal}'      Fail        Wrong Puffy Lux Hybrid Twin Size original price

    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(2) > span > del > span.hybrid-price
    Run keyword if          '${Content}'!='${PuffyLuxTwinXLOriginal}'      Fail        Wrong Puffy Lux Hybrid TwinXL Size original price

    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(3) > span > del > span.hybrid-price
    Run keyword if          '${Content}'!='${PuffyLuxFullOriginal}'      Fail        Wrong Puffy Lux Hybrid Full Size original price

    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li.option.selected.focus > span > del > span.hybrid-price
    Run keyword if          '${Content}'!='${PuffyLuxQueenOriginal}'      Fail        Wrong Puffy Lux Queen Size original price

    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(5) > span > del > span.hybrid-price
    Run keyword if          '${Content}'!='${PuffyLuxKingOriginal}'      Fail        Wrong Puffy Lux Hybrid King Size original price

    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(6) > span > del > span.hybrid-price
    Run keyword if          '${Content}'!='${PuffyLuxCalKingOriginal}'      Fail        Wrong Puffy Lux Hybrid CalKing Size original price

Check Puffy Lux Hybrid sizes 350OFF prices

    Wait Until Element Is Visible     css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > span > span.hybrid-price.jsDiscountedPrice

    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > span > span.hybrid-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyLuxTwin350OFF}'      Fail        Wrong Puffy Lux Hybrid Twin Size 300 OFF price

    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(2) > span > span > span.hybrid-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyLuxTwinXL350OFF}'      Fail        Wrong Puffy Lux Hybrid TwinXL Size 300 OFF price

    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(3) > span > span > span.hybrid-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyLuxFull350OFF}'      Fail        Wrong Puffy Lux Hybrid Full Size 300 OFF price

    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li.option.selected.focus > span > span > span.hybrid-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyLuxQueen350OFF}'      Fail        Wrong Puffy Lux Hybrid Queen Size 300 OFF price

    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(5) > span > span > span.hybrid-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyLuxKing350OFF}'      Fail        Wrong Puffy Lux Hybrid King Size 300 OFF price

    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(6) > span > span > span.hybrid-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyLuxCalKing350OFF}'      Fail        Wrong Puffy Lux Hybrid CalKing Size 300 OFF price


Check Puffy Royal sizes original prices

    Wait Until Element Is Visible          css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > del > span.original-price
    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffyRoyalTwinOriginal}'      Fail        Wrong Puffy Royal Twin Size original price

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(2) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffyRoyalTwinXLOriginal}'      Fail        Wrong Puffy Royal TwinXL Size original price

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(3) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffyRoyalFullOriginal}'      Fail        Wrong Puffy Royal Full Size original price

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li.option.selected.focus > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffyRoyalQueenOriginal}'      Fail        Wrong Puffy Royal Queen Size original price

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(5) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffyRoyalKingOriginal}'      Fail        Wrong Puffy Royal King Size original price

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(6) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffyRoyalCalKingOriginal}'      Fail        Wrong Puffy Royal CalKing Size original price

Check Puffy Royal sizes 350OFF prices

    Wait Until Element Is Visible          css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > span > span.original-price.jsDiscountedPrice

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyRoyalTwin350OFF}'      Fail        Wrong Puffy Royal Twin Size 300 OFF price

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(2) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyRoyalTwinXL350OFF}'      Fail        Wrong Puffy Royal TwinXL Size 300 OFF price

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(3) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyRoyalFull350OFF}'      Fail        Wrong Puffy Royal Full Size 300 OFF price

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li.option.selected.focus > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyRoyalQueen350OFF}'      Fail        Wrong Puffy Royal Queen Size 300 OFF price

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(5) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyRoyalKing350OFF}'      Fail        Wrong Puffy Royal King Size 300 OFF price

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(6) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyRoyalCalKing350OFF}'      Fail        Wrong Puffy Royal CalKing Size 300 OFF price

Check Puffy Royal Hybrid sizes original prices

    Wait Until Element Is Visible          css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > del > span.hybrid-price
    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > del > span.hybrid-price
    Run keyword if          '${Content}'!='${PuffyRoyalTwinOriginal}'      Fail        Wrong Puffy Royal Hybrid Twin Size original price

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(2) > span > del > span.hybrid-price
    Run keyword if          '${Content}'!='${PuffyRoyalTwinXLOriginal}'      Fail        Wrong Puffy Royal Hybrid TwinXL Size original price

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(3) > span > del > span.hybrid-price
    Run keyword if          '${Content}'!='${PuffyRoyalFullOriginal}'      Fail        Wrong Puffy Royal Hybrid Full Size original price

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li.option.selected.focus > span > del > span.hybrid-price
    Run keyword if          '${Content}'!='${PuffyRoyalQueenOriginal}'      Fail        Wrong Puffy Royal Queen Size original price

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(5) > span > del > span.hybrid-price
    Run keyword if          '${Content}'!='${PuffyRoyalKingOriginal}'      Fail        Wrong Puffy Royal Hybrid King Size original price

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(6) > span > del > span.hybrid-price
    Run keyword if          '${Content}'!='${PuffyRoyalCalKingOriginal}'      Fail        Wrong Puffy Royal Hybrid CalKing Size original price

Check Puffy Royal Hybrid sizes 350OFF prices

    Wait Until Element Is Visible     css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > span > span.hybrid-price.jsDiscountedPrice

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > span > span.hybrid-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyRoyalTwin350OFF}'      Fail        Wrong Puffy Royal Hybrid Twin Size 300 OFF price

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(2) > span > span > span.hybrid-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyRoyalTwinXL350OFF}'      Fail        Wrong Puffy Royal Hybrid TwinXL Size 300 OFF price

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(3) > span > span > span.hybrid-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyRoyalFull350OFF}'      Fail        Wrong Puffy Royal Hybrid Full Size 300 OFF price

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li.option.selected.focus > span > span > span.hybrid-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyRoyalQueen350OFF}'      Fail        Wrong Puffy Royal Hybrid Queen Size 300 OFF price

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(5) > span > span > span.hybrid-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyRoyalKing350OFF}'      Fail        Wrong Puffy Royal Hybrid King Size 300 OFF price

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(6) > span > span > span.hybrid-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyRoyalCalKing350OFF}'      Fail        Wrong Puffy Royal Hybrid CalKing Size 300 OFF price

Check Puffy Adjustable Base sizes original prices

    Wait Until Element Is Visible          css=#product_form_416170377250 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > del > span.original-price
    ${Content}=            get text        css=#product_form_416170377250 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffyAdjustTwinXLOriginal}'      Fail        Wrong Puffy Adjustable Base TwinXL Size original price

    ${Content}=            get text        css=#product_form_416170377250 > div.product-variants-holder > div > div > ul > li:nth-child(2) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffyAdjustFullOriginal}'      Fail        Wrong Puffy Adjustable Base Full Size original price

    ${Content}=            get text        css=#product_form_416170377250 > div.product-variants-holder > div > div > ul > li:nth-child(3) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffyAdjustQueenOriginal}'      Fail        Wrong Puffy Adjustable Base Queen Size original price

    ${Content}=            get text        css=#product_form_416170377250 > div.product-variants-holder > div > div > ul > li.option.selected.focus > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffyAdjustSplitKingOriginal}'      Fail        Wrong Puffy Adjustable Base Split King Size original price

Check Puffy Adjustable Base sizes 350OFF prices

    ${Content}=            get text        css=#product_form_416170377250 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyAdjustTwinXL350OFF}'      Fail        Wrong Puffy Adjustable Base TwinXL Size 300 Off price

    ${Content}=            get text        css=#product_form_416170377250 > div.product-variants-holder > div > div > ul > li:nth-child(2) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyAdjustFull350OFF}'      Fail        Wrong Puffy Adjustable Base Full Size 300 Off price

    ${Content}=            get text        css=#product_form_416170377250 > div.product-variants-holder > div > div > ul > li:nth-child(3) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyAdjustQueen350OFF}'      Fail        Wrong Puffy Adjustable Base Queen Size 300 Off price

    ${Content}=            get text        css=#product_form_416170377250 > div.product-variants-holder > div > div > ul > li.option.selected.focus > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyAdjustSplitKing350OFF}'      Fail        Wrong Puffy Adjustable Base Split King Size 300 Off price

Check Puffy Sheets sizes price

    Wait Until Element Is Visible          css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > span > span.original-price
    ${Content}=            get text        css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffySheetsTwinOriginal}'      Fail        Wrong Puffy Sheets Twin Size original price. Expected Result: ${PuffySheetsTwinOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(2) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffySheetsTwinXLOriginal}'      Fail        Wrong Puffy Sheets Twin XL Size original price. Expected Result: ${PuffySheetsTwinXLOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(3) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffySheetsFullOriginal}'      Fail        Wrong Puffy Sheets Full Size original price. Expected Result: ${PuffySheetsFullOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(4) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffySheetsQueenOriginal}'      Fail        Wrong Puffy Sheets Queen Size original price. Expected Result: ${PuffySheetsQueenOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(5) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffySheetsKingOriginal}'      Fail        Wrong Puffy Sheets King Size original price. Expected Result: ${PuffySheetsKingOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(6) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffySheetsCalKingOriginal}'      Fail        Wrong Puffy Sheets Cal King Size original price. Expected Result: ${PuffySheetsCalKingOriginal} Actual Result: ${Content}

Check Puffy Sheets 15%OFF prices

    Wait Until Element Is Visible          css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(2) > span > span > span.original-price
    ${Content}=            get text        css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(2) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffySheetsTwinXL15%OFF}'      Fail        Wrong Puffy Sheets Twin XL Size 15% Off price. Expected Result: ${PuffySheetsTwinXL15%OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(3) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffySheetsFull15%OFF}'      Fail        Wrong Puffy Sheets Full Size 15% Off price. Expected Result: ${PuffySheetsFull15%OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(4) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffySheetsQueen15%OFF}'      Fail        Wrong Puffy Sheets Queen Size 15% Off price. Expected Result: ${PuffySheetsQueen15%OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(5) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffySheetsKing15%OFF}'      Fail        Wrong Puffy Sheets King Size 15% Off price. Expected Result: ${PuffySheetsKing15%OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(6) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffySheetsCalKing15%OFF}'      Fail        Wrong Puffy Sheets Cal King Size 15% Off price. Expected Result: ${PuffySheetsCalKing15%OFF} Actual Result: ${Content}

Select Puffy Mattress Size
    Click element           css=#product_form_345108381730 > div.product-variants-holder > div > div > ul > li:nth-child(5)

Select Puffy Lux Size
    Click element           css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(3)

Select Puffy Royal Size
    Click element           css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(5)
Select Puffy Sheets Size
    Click element           css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li.option.selected.focus
Select Puffy Sheets Color
    Click element           css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-color > div > ul > li:nth-child(2)

Select Puffy Adjustable base Size
    Wait Until Element Is Visible       css=#product_form_416170377250 > div.product-variants-holder > div > div > ul > li.option.selected.focus > div > span.display-name.is--sale--price
    Click element           css=#product_form_416170377250 > div.product-variants-holder > div > div > ul > li.option.selected.focus > div > span.display-name.is--sale--price

Add to cart Puffy Mattress
    Click element           css=#product_form_345108381730 > div.purchase-details > div > button
    sleep                   2s

Add to cart Puffy Lux
    click element           css=#product_form_549302042658 > div.purchase-details > div > button
    sleep                   2s

Add to cart Puffy Royal
    click element           css=#product_form_3832788910114 > div.purchase-details > div > button
    sleep                   2s

Add to cart Puffy Puffy Adjustable Base
    Wait Until Element Is Visible   css=#product_form_416170377250 > div.purchase-details > div > button
    click element           css=#product_form_416170377250 > div.purchase-details > div > button
    sleep                   2s

Add to cart Puffy Body Pillow
    Click element           css=#product_form_4431983280162 > div.purchase-details > div > button
    sleep                   2s

Add to cart Puffy Sheets
    click element           css=#product_form_4359826341922 > div.purchase-details > div > button
    sleep                   2s

Close Cart
    sleep                   1s
    Click element           css=body > div.cart_content.jsCartContent.cart-content-mob > div.cart-close > span.cart-close-btn.cart-close__icon

Start Record Video
    Start Video Recording       alias=FallSale name=FallSale


Cart Count Before Adding product
    ${CartText}   get text  xpath=//html/body/div[3]/div/header[2]/div/div/div/div[3]/div/a/span
    set test variable       ${CartCount}    ${CartText}

Cart Count After Adding Product with free pillow
    ${BeforeShopping} =     evaluate    ${CartCount}
    sleep                   2s
    Cart Count Before Adding product
    ${AfterShopping}=       evaluate    ${CartCount}-2
    Run keyword if          ${BeforeShopping}!=${AfterShopping}       Fail    Wrong Cart increment

Cart Count After Adding Product without free pillow
    ${BeforeShopping} =     evaluate    ${CartCount}
    sleep                   2s
    Cart Count Before Adding product
    ${AfterShopping}=       evaluate    ${CartCount}-1
    Run keyword if          ${BeforeShopping}!=${AfterShopping}       Fail    Wrong Cart increment



Open Cart
    click element           ${cart}

Check cart product redirection
    click link                      link:Puffy Sheets
    Wait Until Page Contains        Puffy Sheets

Cart Price Before Adding product
    ${CartText}   get text  xpath=/html/body/div[3]/div/header[2]/div/div/div/div[3]/div/a/span
    set test variable       ${CartCount}    ${CartText}

Cart Price After Adding Product
    ${BeforeShopping} =     evaluate    ${CartCount}
    sleep                   2s
    Cart Price Before Adding product
    ${AfterShopping}=       evaluate    ${CartCount}+1
    Run keyword if          ${BeforeShopping}!=${AfterShopping}       Fail    Wrong Cart increment

Increment product
    Click element           css=#cartHolder > ul > li:nth-child(1) > div.cart-item__info > div.cart-item__info-bottom > div:nth-child(1) > div > span.qty-box__button.qty-box__button--plus.ss-icon.product-plus.js-change-quantity


Click checkout
    Click link              link:CHECKOUT

Complete your Bedroom Set from checkout product page redirection
    Wait Until Page Contains Element    css=body > div.main_wrapper > div > div.wrap > div.sidebar > div.sidebar__content > div.sidebar_bottom > div > div > div > div:nth-child(6) > a > div.upsell-boxes__media > img
    Scroll Element Into View            css=body > div.main_wrapper > div > div.wrap > div.sidebar > div.sidebar__content > div.sidebar_bottom > div > div > div > div:nth-child(6) > a > div.upsell-boxes__media > img
    click element                       xpath=/html/body/div[2]/div/div[2]/div[2]/div[2]/div[4]/div/div/div/div[6]/a/div[1]/img
    Wait Until Page Contains            Puffy Mattress Pad


Checkout Contact information field
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
    Press Keys	                        button	RETURN


Continue to Payment
    wait until page contains            automation@puffy.com
    wait until page contains            123, New York NH 03101, United States
    sleep                               10s
    wait until page contains element    css=body > div.main_wrapper > div > div.wrap > div.main > div.main__content > div.step > form > div.step__sections > div.section.section--shipping-method > div.section__content > div > div > div > label > span.radio__label__primary
    Click Element                       xpath=//*[@id="continue_button"]
    wait until page contains            All transactions are secure and encrypted.

Select Paypal
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

Select Splitit
    Click Element                       css=#checkout_payment_gateway_40271216674
    sleep                               2s
    click element                       xpath=//*[@id="continue_button"]
    sleep                               5s
    wait until page contains            Select Number of Payments
    sleep                               2s
    Click Element                       css=#maincontent > app-main-page > div > app-header > header > div.back-btn.ng-star-inserted
    sleep                               2s
    wait until page contains            All transactions are secure and encrypted.

Select Klarna
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


Go to Save350 page
    Go to                           ${Save350}
    wait until page contains        Congratulations
Go to homepage
    Go to                           ${Homepage}

Switch to Version A
    Click element   ${ToggleA}
Switch to Version B
    Click element   ${ToggleB}

Check Product list in checkout pages
    Wait until page contains    Puffy Sheets
    Wait until page contains    Puffy Body Pillow
    Wait until page contains    Puffy Adjustable Base
    Wait until page contains    Puffy Royal Hybrid
    Wait until page contains    Puffy Royal
    Wait until page contains    Puffy Lux Hybrid
    Wait until page contains    Puffy Lux
    Wait until page contains    Puffy Mattress
    Wait until page contains    Free Puffy Pillow
    Wait until page contains    Free Puffy Pillow
    Wait until page contains    Free Puffy Pillow