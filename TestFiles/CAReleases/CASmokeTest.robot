*** Settings ***
Documentation       This is for checking all the places where we should update the seasonal promotion
Library             Selenium2Library
#Library             SeleniumLibrary
Library             ScreenCapLibrary
Library             Collections
Library             String
#Suite Teardown      close browser


*** Variables ***
${Phone}                        (888) 555-3222
${Email}                        automation@puffy.ca
${First Name}                   John
${Last Name}                    Doe
${Address}                      123 Edward Street
${City}                         Toronto
${ZipCode}                      E1A 0A8
${Sale Name}                    DAYLIGHT SAVINGS SALE NOW
${Sale Name Homepage}           DAYLIGHT SAVINGS SALE NOW
${Sale Details}                 $300 OFF
${Discount Amount}              $300 OFF
${Homepage}                     https://puffy.ca/?preview_theme_id=120131944522
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
${Body Pillow}                  css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-3.boxes--8 > div > div > div:nth-child(2) > div.mega-menu__image-caption-link > a > div.image-element__wrap > img
${Mattress Pad}                 css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-3.boxes--9 > div > div > div:nth-child(4) > div.mega-menu__image-caption-link > a > div.image-element__wrap > img
${Mattress Protector}           css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-3.boxes--9 > div > div > div:nth-child(5) > div.mega-menu__image-caption-link > a > div.image-element__wrap > img
${Mattress Topper}              css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-3.boxes--9 > div > div > div:nth-child(6) > div.mega-menu__image-caption-link > a > div.image-element__wrap > img
${Blanket}                      css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-3.boxes--9 > div > div > div:nth-child(7) > div.mega-menu__image-caption-link > a > div.image-element__wrap > img
${Weighted Blanket}             css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-3.boxes--9 > div > div > div:nth-child(8) > div.mega-menu__image-caption-link > a > div.image-element__wrap > img
${Sheets}                       css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-3.boxes--8 > div > div > div:nth-child(8) > div.mega-menu__image-caption-link > a > div.image-element__wrap > img
${Bedroom}                      css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.nav > ul > li:nth-child(4) > a
${Puffy Nightstand}
${Dog Bed}                      css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-4 > div > div > div:nth-child(1) > div.mega-menu__image-caption-link > a > div.image-element__wrap > img
${Rug}                          css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-4 > div > div > div:nth-child(2) > div.mega-menu__image-caption-link > a > div.image-element__wrap > img
${Cart}                         css=body > div.shopify-section.header-section > div > header.main_header > div > div > div > div.cart_container > div > a
${FOOTER}                       DAYLIGHT SAVINGS SALE NOW $300 OFF
${ToggleA}                      css=#showVersionA
${ToggleB}                      css=#showVersionB
${PuffyMattTwinOriginal}        $1,045
${PuffyMattTwin300OFF}          $745
${PuffyMattTwin350OFF}          $695
${PuffyMattTwinXLOriginal}      $1,075
${PuffyMattTwinXL300OFF}        $775
${PuffyMattTwinXL350OFF}        $725
${PuffyMattFullOriginal}        $1,245
${PuffyMattFull300OFF}          $945
${PuffyMattFull350OFF}          $895
${PuffyMattQueenOriginal}       $1,445
${PuffyMattQueen300OFF}         $1,145
${PuffyMattQueen350OFF}         $1,095
${PuffyMattKingOriginal}        $1,745
${PuffyMattKing300OFF}          $1,445
${PuffyMattKing350OFF}          $1,395
${PuffyMattCalKingOriginal}     $1,745
${PuffyMattCalKing300OFF}       $1,445
${PuffyMattCalKing350OFF}       $1,395

${PuffyLuxTwinOriginal}         $1,845
${PuffyLuxTwin300OFF}           $1,545
${PuffyLuxTwin350OFF}           $1,495
${PuffyLuxTwinXLOriginal}       $1,945
${PuffyLuxTwinXL300OFF}         $1,645
${PuffyLuxTwinXL350OFF}         $1,595
${PuffyLuxFullOriginal}         $2,045
${PuffyLuxFull300OFF}           $1,745
${PuffyLuxFull350OFF}           $1,695
${PuffyLuxQueenOriginal}        $2,345
${PuffyLuxQueen300OFF}          $2,045
${PuffyLuxQueen350OFF}          $1,995
${PuffyLuxKingOriginal}         $2,545
${PuffyLuxKing300OFF}           $2,245
${PuffyLuxKing350OFF}           $2,195
${PuffyLuxCalKingOriginal}      $2,545
${PuffyLuxCalKing300OFF}        $2,245
${PuffyLuxCalKing350OFF}        $2,195

${PuffyRoyalTwinOriginal}       $1,645
${PuffyRoyalTwin300OFF}         $1,345
${PuffyRoyalTwin350OFF}         $1,295
${PuffyRoyalTwinXLOriginal}     $1,745
${PuffyRoyalTwinXL300OFF}       $1,445
${PuffyRoyalTwinXL350OFF}       $1,395
${PuffyRoyalFullOriginal}       $2,445
${PuffyRoyalFull300OFF}         $2,145
${PuffyRoyalFull350OFF}         $2,095
${PuffyRoyalQueenOriginal}      $2,695
${PuffyRoyalQueen300OFF}        $2,395
${PuffyRoyalQueen350OFF}        $2,345
${PuffyRoyalKingOriginal}       $2,995
${PuffyRoyalKing300OFF}         $2,695
${PuffyRoyalKing350OFF}         $2,645
${PuffyRoyalCalKingOriginal}    $2,995
${PuffyRoyalCalKing300OFF}      $2,695
${PuffyRoyalCalKing350OFF}      $2,645

${PuffyAdjustTwinXLOriginal}    $1,545
${PuffyAdjustTwinXL300OFF}      $1,245
${PuffyAdjustTwinXL350OFF}      $1,195
${PuffyAdjustFullOriginal}      $1,645
${PuffyAdjustFull300OFF}        $1,345
${PuffyAdjustFull350OFF}        $1,295
${PuffyAdjustQueenOriginal}     $1,845
${PuffyAdjustQueen300OFF}       $1,545
${PuffyAdjustQueen350OFF}       $1,495
${PuffyAdjustSplitKingOriginal}  $2,745
${PuffyAdjustSplitKing300OFF}   $2,445
${PuffyAdjustSplitKing350OFF}   $2,395

${PuffySheetsTwinOriginal}              $120
${PuffySheetsTwinXLOriginal}            $130
${PuffySheetsFullOriginal}              $140
${PuffySheetsQueenOriginal}             $160
${PuffySheetsKingOriginal}              $175
${PuffySheetsCalKingOriginal}           $175
${PuffySheetsTwin15%OFF}              $102
${PuffySheetsTwinXL15%OFF}            $111
${PuffySheetsFull15%OFF}              $119
${PuffySheetsQueen15%OFF}             $136
${PuffySheetsKing15%OFF}              $149
${PuffySheetsCalKing15%OFF}           $149

${PuffyFoundationTwinOriginal}              $175
${PuffyFoundationTwinXLOriginal}            $185
${PuffyFoundationFullOriginal}              $215
${PuffyFoundationQueenOriginal}             $275
${PuffyFoundationKingOriginal}              $295
${PuffyFoundationCalKingOriginal}           $295

${PuffyFoundationTwin15%OFF}              $149
${PuffyFoundationTwinXL15%OFF}            $157
${PuffyFoundationFull15%OFF}              $183
${PuffyFoundationQueen15%OFF}             $234
${PuffyFoundationKing15%OFF}              $251
${PuffyFoundationCalKing15%OFF}           $251

${PuffyBedFrameTwinOriginal}              ----
${PuffyBedFrameTwinXLOriginal}            ----
${PuffyBedFrameFullOriginal}              $1,145
${PuffyBedFrameQueenOriginal}             $1,245
${PuffyBedFrameKingOriginal}              $1,445
${PuffyBedFrameCalKingOriginal}           $1,445

${PuffyBedFrameTwin15%OFF}              ----
${PuffyBedFrameTwinXL15%OFF}            ----
${PuffyBedFrameFull15%OFF}              $973
${PuffyBedFrameQueen15%OFF}             $1,058
${PuffyBedFrameKing15%OFF}              $1,228
${PuffyBedFrameCalKing15%OFF}           $1,228

${PuffyPillowStandardOriginal}          $75
${PuffyPillowKingOriginal}              $95
${PuffyPillowStandard15%OFF}            ---
${PuffyPillowKing15%OFF}                ---

${PuffyBodyPillowOriginal}              $135
${PuffyBodyPillow15%OFF}                $115


${PuffyNightstandStandardOriginal}      $195
${PuffyNightstandKingOriginal}          ----
${PuffyNightstandStandard15%OFF}        $165.75
${PuffyNightstandKing15%OFF}            ----

${PuffyBlanketSmallOriginal}            $55
${PuffyBlanketMediumOriginal}           $75
${PuffyBlanketLargeOriginal}            $95
${PuffyBlanketSmall15%Off}            ---
${PuffyBlanketMedium15%Off}           ---
${PuffyBlanketLarge15%Off}            ---

${PuffyDogBedSmallOriginal}             $165
${PuffyDogBedMediumOriginal}            $195
${PuffyDogBedLargeOriginal}             $255
${PuffyDogBedSmall15%Off}               $140
${PuffyDogBedMedium15%Off}              $166
${PuffyDogBedLarge15%Off}               $217



${PuffyRugSmallOriginal}        ---
${PuffyRugMediumOriginal}       $395
${PuffyRugLargeOriginal}        $495
${PuffyRugSmall15%Off}        ---
${PuffyRugMedium15%Off}       $336
${PuffyRugLarge15%Off}        $421

${PuffyComforterTwin/TwinXLOriginal}      $225
${PuffyComforterFull/QueenOriginal}       $275
${PuffyComforterKing/CalKingOriginal}     $325
${PuffyComforterTwin/TwinXL15%OFF}        $191
${PuffyComforterFull/Queen15%OFF}         $234
${PuffyComforterKing/CalKing15%OFF}       $276

${PuffyPadTwinOriginal}                   $225
${PuffyPadTwinXLOriginal}                 $245
${PuffyPadFullOriginal}                   $265
${PuffyPadQueenOriginal}                  $295
${PuffyPadKingOriginal}                   $325
${PuffyPadCalKingOriginal}                $325

${PuffyPadTwin15%OFF}                     $191
${PuffyPadTwinXL15%OFF}                   $208
${PuffyPadFull15%OFF}                     $225
${PuffyPadQueen15%OFF}                    $251
${PuffyPadKing15%OFF}                     $276
${PuffyPadCalKing15%OFF}                  $276

${PuffyProtectorTwinOriginal}                   $115
${PuffyProtectorTwinXLOriginal}                 $125
${PuffyProtectorFullOriginal}                   $135
${PuffyProtectorQueenOriginal}                  $145
${PuffyProtectorKingOriginal}                   $155
${PuffyProtectorCalKingOriginal}                $155
${PuffyProtectorTwin15%OFF}                     $98
${PuffyProtectorTwinXL15%OFF}                   $106
${PuffyProtectorFull15%OFF}                     $115
${PuffyProtectorQueen15%OFF}                    $123
${PuffyProtectorKing15%OFF}                     $132
${PuffyProtectorCalKing15%OFF}                  $132

${PuffyTopperTwinOriginal}                   $225
${PuffyTopperTwinXLOriginal}                 $245
${PuffyTopperFullOriginal}                   $265
${PuffyTopperQueenOriginal}                  $295
${PuffyTopperKingOriginal}                   $325
${PuffyTopperCalKingOriginal}                $325
${PuffyTopperTwin15%OFF}                     $191
${PuffyTopperTwinXL15%OFF}                   $208
${PuffyTopperFull15%OFF}                     $225
${PuffyTopperQueen15%OFF}                    $251
${PuffyTopperKing15%OFF}                     $276
${PuffyTopperCalKing15%OFF}                  $276

${PuffyWeightedBlanketTwinOriginal}                   $205
${PuffyWeightedBlanketTwinXLOriginal}                 ---
${PuffyWeightedBlanketFullOriginal}                   ---
${PuffyWeightedBlanketQueenOriginal}                  $245
${PuffyWeightedBlanketKingOriginal}                   ---
${PuffyWeightedBlanketCalKingOriginal}                ---
${PuffyWeightedBlanketTwin15%OFF}                     $174
${PuffyWeightedBlanketTwinXL15%OFF}                   ---
${PuffyWeightedBlanketFull15%OFF}                     ---
${PuffyWeightedBlanketQueen15%OFF}                    $208
${PuffyWeightedBlanketKing15%OFF}                     ---
${PuffyWeightedBlanketCalKing15%OFF}                  ---
*** Test Cases ***


Start Record Video
    Start Record Video

Popup Sale
    Launch Puffy homepage
    Wait and dismiss popup
    #Go to checkout
    #Go to Homepage
#Switch version
    #Switch to Version A
Timer Bar
    Seasonal Sale timer text check
Puffy Mattress Homepage
    Homepage Seasonal Sale text check
    Homepage Discount Value and Freebie check
Puffy Lux Mattress Homepage
    Go to Puffy Lux Homepage
    Homepage Seasonal Sale text check
    Homepage Discount Value and Freebie check
Store Page
    Go to Store page
    Banner Seasonal Sale text check
    Banner Discount Value and Freebie check
    Puffy Adjustable Base Banner Discount Value and Freebie check

PDP Puffy Mattress
    Go to Puffy Mattress Product Page
    Banner Seasonal Sale text check
    PDP Discount Value and Freebie check
    Click Puffy Mattress Size dropdown
    Check Puffy Mattress sizes original prices
    Check Puffy Mattress sizes 300OFF prices
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
    Check Puffy Lux sizes 300OFF prices
    Select Puffy Lux Size
    Cart Count Before Adding product
    Add to cart Puffy Lux
    Close Cart
    Cart Count After Adding Product with free pillow

PDP Puffy Adjustable Base
    Go to Puffy Adjustable Base Product Page
    Banner Seasonal Sale text check
    PDP Puffy Adjustable Base Banner Discount Value and Freebie check
    Click Puffy Adjustable Base size dropdown
    Check Puffy Adjustable Base sizes original prices
    Check Puffy Adjustable Base sizes 300OFF prices
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
    #Check Puffy Sheets 15%OFF prices
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

Complete your Bedroom Set section
    #Complete your Bedroom Set from checkout product page redirection
    #sleep           5s
    #Click checkout
    Checkout Contact information field
    Continue to Payment

Check all Payment methods
    Select Paypal
    Select Splitit


Stop All Video Recordings
    Stop All Video Recordings

*** Keywords ***
Launch Puffy homepage
    Open Browser            ${Homepage}  ${systembrowser}
    Maximize Browser Window
    wait until page contains    ${FOOTER}

Click on Puffy Logo
    Click Element       ${Logo}
    wait until page contains    ${FOOTER}

Wait and dismiss popup
    sleep                   5s
    ${check}=               Run Keyword and Return Status  Element should be visible      xpath=/html/body/div[2]/div[2]/div/div[1]/img
    run keyword if          ${check} == False    Wait and dismiss popup
    ...     ELSE            Click element   css=#Layer_1 > polygon

Seasonal Sale timer text check
    ${Content}=            get text        css=#saleTimer > div:nth-child(1)
    Run keyword if          "${Content}"!="${FOOTER}"      Fail        Wrong Seasonal Sale timer Content Actual content: ${Content}
    Click element           css=#saleTimer > span > svg

Homepage Seasonal Sale text check
    sleep                   2s
    ${Content}=            get text        css=#Labor_Day_sale
    Run keyword if          "${Content}"!="${Sale Name Homepage}"      Fail        Wrong Seasonal Sale Content Expected: ${Sale Name Homepage} Actual: ${Content}

Homepage Discount Value and Freebie check
    ${Content}=            get text        css=#Labor_Day_300_OFF
    Run keyword if          '${Content}'!='${Sale Details}'      Fail        Wrong Discount Value and Freebie Content Expected: ${Sale Details} Actual: ${Content}

PDP Discount Value and Freebie check
    ${Content}=            get text        css=#_300_Off
    Run keyword if          '${Content}'!='${Sale Details}'      Fail        Wrong Discount Value and Freebie Content Expected: ${Sale Details} Actual: ${Content}

Go to Puffy Lux Homepage
    sleep                   2s
    Click Link           link:Puffy Lux

Go to Puffy Hybrid Homepage
    sleep                   2s
    Click Link           link:Puffy Hybrid

Go to Store page
    sleep                   2s
    Click Link           link:Puffy Store
    sleep                   2s
    Scroll Element Into View            css=#collectionProductsWrap > div:nth-child(2) > div > div.product-details > a.product-info__caption > span.price.sale > span.money.jsDiscountedPrice
    sleep                               2s
    Scroll Element Into View            css=#collectionProductsWrap > div:nth-child(4) > div > div.product-details > a.action_button.button.shop-now


Banner Seasonal Sale text check
    sleep                   2s
    ${Content}=            get text        css=#SUMMER_SALE > tspan
    Run keyword if          "${Content}"!="${Sale Name}"      Fail        Wrong Seasonal Sale Content

Banner Discount Value and Freebie check
    sleep                   2s
    ${Content}=            get text        css=#_300_OFF
    Run keyword if          "${Content}"!="${Sale Details}"      Fail        Wrong Discount Value and Freebie Content Expected: ${Sale Details} Actual: ${Content}

Go to Gift Shop page
    sleep                   5s
    Click link              link:Gift Shop
    sleep                   2s
    Scroll Element Into View            css=body > div.container.main.content > div:nth-child(7) > div > div > div:nth-child(2) > div > a > div.product-box__media.product-box__media--white > div.image-element__wrap
    sleep                               2s
    Scroll Element Into View            css=body > div.container.main.content > div.text-bar.text-bar--medium-text.is--gray > div > div.text-bar__content.text-bar__content--single > div > div > div:nth-child(1) > div > a > div.product-box__content > div.product-box__desc > div.product-box__title

Puffy Adjustable Base Banner Discount Value and Freebie check
    sleep                   2s
    ${Content}=            get text        css=#_300_OFF
    Run keyword if          '${Content}'!='${Discount Amount}'      Fail        Wrong Discount Value and Freebie Content Expected: ${Discount Amount} Actual: ${Content}

PDP Puffy Adjustable Base Banner Discount Value and Freebie check
    sleep                   2s
    ${Content}=            get text        css=#_300_Off
    Run keyword if          '${Content}'!='${Discount Amount}'      Fail        Wrong Discount Value and Freebie Content Expected: ${Discount Amount} Actual: ${Content}

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
    Click element       css=#product_form_3809097023562 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-type > div.hybrid-buttons > label.hybrid-buttons__item.hybrid-buttons__item--2

Click on Puffy Lux Memory Foam
    Wait Until Element Is Visible       css=#product_form_3809097023562 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-type > div.hybrid-buttons > label.hybrid-buttons__item.hybrid-buttons__item--1 > span.hybrid-buttons__sub-title
    Click element       css=#product_form_3809097023562 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-type > div.hybrid-buttons > label.hybrid-buttons__item.hybrid-buttons__item--1 > span.hybrid-buttons__sub-title
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
    Click element       css=#product_form_3809097089098 > div.product-variants-holder > div > div > div
Click Puffy Lux Size dropdown
    Click element       css=#product_form_3809097023562 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div
Click Puffy Royal Size dropdown
    Click element       css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > div
Click Puffy Adjustable Base size dropdown
    Click element       css=#product_form_3809097285706 > div.product-variants-holder > div > div > div
Click Puffy Sheets Size dropdown
    Click element       css=#product_form_4459334533194 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > div
Click Puffy Sheets Color dropdown
    Click element       css=#product_form_4459334533194 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-color > div > div

Check Puffy Mattress sizes original prices

    Wait Until Element Is Visible          css=#product_form_3809097089098 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > del > span.original-price

    ${Content1}=            get text        css=#product_form_3809097089098 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > del > span.original-price
    Run keyword if          '${Content1}'!='${PuffyMattTwinOriginal}'      Fail        Wrong Puffy Mattress Twin Size original price Expected: ${PuffyMattTwinOriginal} actual: ${content1}

    ${Content2}=            get text        css=#product_form_3809097089098 > div.product-variants-holder > div > div > ul > li:nth-child(2) > span > del > span.original-price
    Run keyword if          '${Content2}'!='${PuffyMattTwinXLOriginal}'      Fail        Wrong Puffy Mattress TwinXL Size original price Expected: ${PuffyMattTwinXLOriginal} actual: ${content2}

    ${Content3}=            get text        css=#product_form_3809097089098 > div.product-variants-holder > div > div > ul > li:nth-child(3) > span > del > span.original-price
    Run keyword if          '${Content3}'!='${PuffyMattFullOriginal}'      Fail        Wrong Puffy Mattress Full Size original price Expected: ${PuffyMattFullOriginal} actual: ${content3}

    ${Content4}=            get text        css=#product_form_3809097089098 > div.product-variants-holder > div > div > ul > li.option.selected.focus > span > del > span.original-price
    Run keyword if          '${Content4}'!='${PuffyMattQueenOriginal}'      Fail        Wrong Puffy Mattress Queen Size original price Expected: ${PuffyMattQueenOriginal} actual: ${content4}

    ${Content5}=            get text        css=#product_form_3809097089098 > div.product-variants-holder > div > div > ul > li:nth-child(5) > span > del > span.original-price
    Run keyword if          '${Content5}'!='${PuffyMattKingOriginal}'      Fail        Wrong Puffy Mattress King Size original price Expected: ${PuffyMattKingOriginal} actual: ${content5}

    ${Content6}=            get text        css=#product_form_3809097089098 > div.product-variants-holder > div > div > ul > li:nth-child(6) > span > del > span.original-price
    Run keyword if          '${Content6}'!='${PuffyMattCalKingOriginal}'      Fail        Wrong Puffy Mattress CalKing Size original price Expected: ${PuffyMattCalKingOriginal} actual: ${content6}

Check Puffy Mattress sizes 300OFF prices

    Wait Until Element Is Visible          css=#product_form_3809097089098 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > span > span.original-price.jsDiscountedPrice

    ${Content}=            get text        css=#product_form_3809097089098 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyMattTwin300OFF}'      Fail        Wrong Puffy Mattress Twin Size 300 OFF price

    ${Content}=            get text        css=#product_form_3809097089098 > div.product-variants-holder > div > div > ul > li:nth-child(2) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyMattTwinXL300OFF}'      Fail        Wrong Puffy Mattress TwinXL Size 300 OFF price

    ${Content}=            get text        css=#product_form_3809097089098 > div.product-variants-holder > div > div > ul > li:nth-child(3) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyMattFull300OFF}'      Fail        Wrong Puffy Mattress Full Size 300 OFF price

    ${Content}=            get text        css=#product_form_3809097089098 > div.product-variants-holder > div > div > ul > li.option.selected.focus > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyMattQueen300OFF}'      Fail        Wrong Puffy Mattress Queen Size 300 OFF price

    ${Content}=            get text        css=#product_form_3809097089098 > div.product-variants-holder > div > div > ul > li:nth-child(5) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyMattKing300OFF}'      Fail        Wrong Puffy Mattress King Size 300 OFF price

    ${Content}=            get text        css=#product_form_3809097089098 > div.product-variants-holder > div > div > ul > li:nth-child(6) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyMattCalKing300OFF}'      Fail        Wrong Puffy Mattress CalKing Size 300 OFF price



Check Puffy Lux sizes original prices

    Wait Until Element Is Visible          css=#product_form_3809097023562 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > del > span.original-price

    ${Content}=            get text        css=#product_form_3809097023562 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffyLuxTwinOriginal}'      Fail        Wrong Puffy Lux Twin Size original price

    ${Content}=            get text        css=#product_form_3809097023562 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(2) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffyLuxTwinXLOriginal}'      Fail        Wrong Puffy Lux TwinXL Size original price

    ${Content}=            get text        css=#product_form_3809097023562 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(3) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffyLuxFullOriginal}'      Fail        Wrong Puffy Lux Full Size original price

    ${Content}=            get text        css=#product_form_3809097023562 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li.option.selected.focus > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffyLuxQueenOriginal}'      Fail        Wrong Puffy Lux Queen Size original price

    ${Content}=            get text        css=#product_form_3809097023562 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(5) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffyLuxKingOriginal}'      Fail        Wrong Puffy Lux King Size original price

    ${Content}=            get text        css=#product_form_3809097023562 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(6) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffyLuxCalKingOriginal}'      Fail        Wrong Puffy Lux CalKing Size original price

Check Puffy Lux sizes 300OFF prices

    Wait Until Element Is Visible          css=#product_form_3809097023562 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > span > span.original-price.jsDiscountedPrice

    ${Content}=            get text        css=#product_form_3809097023562 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyLuxTwin300OFF}'      Fail        Wrong Puffy Lux Twin Size 300 OFF price

    ${Content}=            get text        css=#product_form_3809097023562 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(2) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyLuxTwinXL300OFF}'      Fail        Wrong Puffy Lux TwinXL Size 300 OFF price

    ${Content}=            get text        css=#product_form_3809097023562 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(3) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyLuxFull300OFF}'      Fail        Wrong Puffy Lux Full Size 300 OFF price

    ${Content}=            get text        css=#product_form_3809097023562 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li.option.selected.focus > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyLuxQueen300OFF}'      Fail        Wrong Puffy Lux Queen Size 300 OFF price

    ${Content}=            get text        css=#product_form_3809097023562 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(5) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyLuxKing300OFF}'      Fail        Wrong Puffy Lux King Size 300 OFF price

    ${Content}=            get text        css=#product_form_3809097023562 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(6) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyLuxCalKing300OFF}'      Fail        Wrong Puffy Lux CalKing Size 300 OFF price

Check Puffy Lux Hybrid sizes original prices

    Wait Until Element Is Visible          css=#product_form_3809097023562 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > del > span.hybrid-price
    ${Content}=            get text        css=#product_form_3809097023562 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > del > span.hybrid-price
    Run keyword if          '${Content}'!='${PuffyLuxTwinOriginal}'      Fail        Wrong Puffy Lux Hybrid Twin Size original price

    ${Content}=            get text        css=#product_form_3809097023562 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(2) > span > del > span.hybrid-price
    Run keyword if          '${Content}'!='${PuffyLuxTwinXLOriginal}'      Fail        Wrong Puffy Lux Hybrid TwinXL Size original price

    ${Content}=            get text        css=#product_form_3809097023562 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(3) > span > del > span.hybrid-price
    Run keyword if          '${Content}'!='${PuffyLuxFullOriginal}'      Fail        Wrong Puffy Lux Hybrid Full Size original price

    ${Content}=            get text        css=#product_form_3809097023562 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li.option.selected.focus > span > del > span.hybrid-price
    Run keyword if          '${Content}'!='${PuffyLuxQueenOriginal}'      Fail        Wrong Puffy Lux Queen Size original price

    ${Content}=            get text        css=#product_form_3809097023562 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(5) > span > del > span.hybrid-price
    Run keyword if          '${Content}'!='${PuffyLuxKingOriginal}'      Fail        Wrong Puffy Lux Hybrid King Size original price

    ${Content}=            get text        css=#product_form_3809097023562 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(6) > span > del > span.hybrid-price
    Run keyword if          '${Content}'!='${PuffyLuxCalKingOriginal}'      Fail        Wrong Puffy Lux Hybrid CalKing Size original price

Check Puffy Lux Hybrid sizes 300OFF prices

    Wait Until Element Is Visible     css=#product_form_3809097023562 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > span > span.hybrid-price.jsDiscountedPrice

    ${Content}=            get text        css=#product_form_3809097023562 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > span > span.hybrid-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyLuxTwin300OFF}'      Fail        Wrong Puffy Lux Hybrid Twin Size 300 OFF price

    ${Content}=            get text        css=#product_form_3809097023562 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(2) > span > span > span.hybrid-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyLuxTwinXL300OFF}'      Fail        Wrong Puffy Lux Hybrid TwinXL Size 300 OFF price

    ${Content}=            get text        css=#product_form_3809097023562 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(3) > span > span > span.hybrid-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyLuxFull300OFF}'      Fail        Wrong Puffy Lux Hybrid Full Size 300 OFF price

    ${Content}=            get text        css=#product_form_3809097023562 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li.option.selected.focus > span > span > span.hybrid-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyLuxQueen300OFF}'      Fail        Wrong Puffy Lux Hybrid Queen Size 300 OFF price

    ${Content}=            get text        css=#product_form_3809097023562 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(5) > span > span > span.hybrid-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyLuxKing300OFF}'      Fail        Wrong Puffy Lux Hybrid King Size 300 OFF price

    ${Content}=            get text        css=#product_form_3809097023562 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(6) > span > span > span.hybrid-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyLuxCalKing300OFF}'      Fail        Wrong Puffy Lux Hybrid CalKing Size 300 OFF price


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

Check Puffy Royal sizes 300OFF prices

    Wait Until Element Is Visible          css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > span > span.original-price.jsDiscountedPrice

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyRoyalTwin300OFF}'      Fail        Wrong Puffy Royal Twin Size 300 OFF price

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(2) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyRoyalTwinXL300OFF}'      Fail        Wrong Puffy Royal TwinXL Size 300 OFF price

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(3) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyRoyalFull300OFF}'      Fail        Wrong Puffy Royal Full Size 300 OFF price

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li.option.selected.focus > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyRoyalQueen300OFF}'      Fail        Wrong Puffy Royal Queen Size 300 OFF price

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(5) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyRoyalKing300OFF}'      Fail        Wrong Puffy Royal King Size 300 OFF price

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(6) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyRoyalCalKing300OFF}'      Fail        Wrong Puffy Royal CalKing Size 300 OFF price

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

Check Puffy Royal Hybrid sizes 300OFF prices

    Wait Until Element Is Visible     css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > span > span.hybrid-price.jsDiscountedPrice

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > span > span.hybrid-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyRoyalTwin300OFF}'      Fail        Wrong Puffy Royal Hybrid Twin Size 300 OFF price

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(2) > span > span > span.hybrid-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyRoyalTwinXL300OFF}'      Fail        Wrong Puffy Royal Hybrid TwinXL Size 300 OFF price

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(3) > span > span > span.hybrid-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyRoyalFull300OFF}'      Fail        Wrong Puffy Royal Hybrid Full Size 300 OFF price

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li.option.selected.focus > span > span > span.hybrid-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyRoyalQueen300OFF}'      Fail        Wrong Puffy Royal Hybrid Queen Size 300 OFF price

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(5) > span > span > span.hybrid-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyRoyalKing300OFF}'      Fail        Wrong Puffy Royal Hybrid King Size 300 OFF price

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(6) > span > span > span.hybrid-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyRoyalCalKing300OFF}'      Fail        Wrong Puffy Royal Hybrid CalKing Size 300 OFF price

Check Puffy Adjustable Base sizes original prices

    Wait Until Element Is Visible          css=#product_form_3809097285706 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > del > span.original-price
    ${Content}=            get text        css=#product_form_3809097285706 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffyAdjustTwinXLOriginal}'      Fail        Wrong Puffy Adjustable Base TwinXL Size original price

    ${Content}=            get text        css=#product_form_3809097285706 > div.product-variants-holder > div > div > ul > li:nth-child(2) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffyAdjustFullOriginal}'      Fail        Wrong Puffy Adjustable Base Full Size original price

    ${Content}=            get text        css=#product_form_3809097285706 > div.product-variants-holder > div > div > ul > li:nth-child(3) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffyAdjustQueenOriginal}'      Fail        Wrong Puffy Adjustable Base Queen Size original price

    ${Content}=            get text        css=#product_form_3809097285706 > div.product-variants-holder > div > div > ul > li.option.selected.focus > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffyAdjustSplitKingOriginal}'      Fail        Wrong Puffy Adjustable Base Split King Size original price

Check Puffy Adjustable Base sizes 300OFF prices

    ${Content}=            get text        css=#product_form_3809097285706 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyAdjustTwinXL300OFF}'      Fail        Wrong Puffy Adjustable Base TwinXL Size 300 Off price

    ${Content}=            get text        css=#product_form_3809097285706 > div.product-variants-holder > div > div > ul > li:nth-child(2) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyAdjustFull300OFF}'      Fail        Wrong Puffy Adjustable Base Full Size 300 Off price

    ${Content}=            get text        css=#product_form_3809097285706 > div.product-variants-holder > div > div > ul > li:nth-child(3) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyAdjustQueen300OFF}'      Fail        Wrong Puffy Adjustable Base Queen Size 300 Off price

    ${Content}=            get text        css=#product_form_3809097285706 > div.product-variants-holder > div > div > ul > li.option.selected.focus > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyAdjustSplitKing300OFF}'      Fail        Wrong Puffy Adjustable Base Split King Size 300 Off price

Check Puffy Sheets sizes price

    Wait Until Element Is Visible          css=#product_form_4459334533194 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > span > span.original-price
    ${Content}=            get text        css=#product_form_4459334533194 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffySheetsTwinOriginal}'      Fail        Wrong Puffy Sheets Twin Size original price. Expected Result: ${PuffySheetsTwinOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4459334533194 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(2) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffySheetsTwinXLOriginal}'      Fail        Wrong Puffy Sheets Twin XL Size original price. Expected Result: ${PuffySheetsTwinXLOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4459334533194 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(3) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffySheetsFullOriginal}'      Fail        Wrong Puffy Sheets Full Size original price. Expected Result: ${PuffySheetsFullOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4459334533194 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(4) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffySheetsQueenOriginal}'      Fail        Wrong Puffy Sheets Queen Size original price. Expected Result: ${PuffySheetsQueenOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4459334533194 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(5) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffySheetsKingOriginal}'      Fail        Wrong Puffy Sheets King Size original price. Expected Result: ${PuffySheetsKingOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4459334533194 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(6) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffySheetsCalKingOriginal}'      Fail        Wrong Puffy Sheets Cal King Size original price. Expected Result: ${PuffySheetsCalKingOriginal} Actual Result: ${Content}

Check Puffy Sheets 15%OFF prices

    Wait Until Element Is Visible          css=#product_form_4459334533194 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(2) > span > span > span.original-price
    ${Content}=            get text        css=#product_form_4459334533194 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(2) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffySheetsTwinXL15%OFF}'      Fail        Wrong Puffy Sheets Twin XL Size 15% Off price. Expected Result: ${PuffySheetsTwinXL15%OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4459334533194 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(3) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffySheetsFull15%OFF}'      Fail        Wrong Puffy Sheets Full Size 15% Off price. Expected Result: ${PuffySheetsFull15%OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4459334533194 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(4) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffySheetsQueen15%OFF}'      Fail        Wrong Puffy Sheets Queen Size 15% Off price. Expected Result: ${PuffySheetsQueen15%OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4459334533194 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(5) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffySheetsKing15%OFF}'      Fail        Wrong Puffy Sheets King Size 15% Off price. Expected Result: ${PuffySheetsKing15%OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4459334533194 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(6) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffySheetsCalKing15%OFF}'      Fail        Wrong Puffy Sheets Cal King Size 15% Off price. Expected Result: ${PuffySheetsCalKing15%OFF} Actual Result: ${Content}

Select Puffy Mattress Size
    Click element           css=#product_form_3809097089098 > div.product-variants-holder > div > div > ul > li:nth-child(5)

Select Puffy Lux Size
    Click element           css=#product_form_3809097023562 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(3)

Select Puffy Royal Size
    Click element           css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(5)
Select Puffy Sheets Size
    Click element           css=#product_form_4459334533194 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li.option.selected.focus
Select Puffy Sheets Color
    Click element           css=#product_form_4459334533194 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-color > div > ul > li:nth-child(2)

Select Puffy Adjustable base Size
    Wait Until Element Is Visible       css=#product_form_3809097285706 > div.product-variants-holder > div > div > ul > li.option.selected.focus > div > span.display-name.is--sale--price
    Click element           css=#product_form_3809097285706 > div.product-variants-holder > div > div > ul > li.option.selected.focus > div > span.display-name.is--sale--price

Add to cart Puffy Mattress
    Click element           css=#product_form_3809097089098 > div.purchase-details > div > button
    sleep                   2s

Add to cart Puffy Lux
    click element           css=#product_form_3809097023562 > div.purchase-details > div > button
    sleep                   2s

Add to cart Puffy Royal
    click element           css=#product_form_3832788910114 > div.purchase-details > div > button
    sleep                   2s

Add to cart Puffy Puffy Adjustable Base
    Wait Until Element Is Visible   css=#product_form_3809097285706 > div.purchase-details > div > button
    click element           css=#product_form_3809097285706 > div.purchase-details > div > button
    sleep                   2s

Add to cart Puffy Body Pillow
    Click element           css=#product_form_4628091600970 > div.purchase-details > div > button
    sleep                   2s

Add to cart Puffy Sheets
    click element           css=#product_form_4459334533194 > div.purchase-details > div > button
    sleep                   2s

Close Cart
    sleep                   1s
    Click element           css=body > div.cart_content.jsCartContent.cart-content-mob > div.cart-close > span.cart-close-btn.cart-close__icon

Start Record Video
    Start Video Recording       alias=FallSale name=FallSale


Cart Count Before Adding product
    ${CartText}   get text  xpath=/html/body/div[4]/div/header[2]/div/div/div/div[3]/div[2]/a/span
    set test variable       ${CartCount}    ${CartText}

Cart Count After Adding Product with free pillow
    ${BeforeShopping} =     evaluate    ${CartCount}
    sleep                   2s
    Cart Count Before Adding product
    ${AfterShopping}=       evaluate    ${CartCount}-1
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
    Sleep                               5s
    Press Keys	                        button	RETURN


Continue to Payment
    wait until page contains            automation@puffy.ca
    wait until page contains            123, Toronto NB E1A 0A8, Canada
    sleep                               10s
    wait until page contains element    css=body > div.main_wrapper > div > div.wrap > div.main > div.main__content > div.step > form > div.step__sections > div.section.section--shipping-method > div.section__content > div > div > div > label > span.radio__label__primary
    Click Element                       xpath=//*[@id="continue_button"]
    wait until page contains            All transactions are secure and encrypted.

Select Paypal
    click element                       css=#checkout_payment_gateway_36398432330
    sleep                               2s
    click element                       css=#checkout_different_billing_address_false
    sleep                               2s
    click element                       xpath=//*[@id="continue_button"]
    sleep                               2s
    wait until page contains            Cancel and return to puffy llc
    sleep                               2s
    click link                          link:Cancel and return to puffy llc
    sleep                               2s
    wait until page contains            All transactions are secure and encrypted.

Select Splitit
    Click Element                       css=#checkout_payment_gateway_39643283530
    sleep                               2s
    click element                       xpath=//*[@id="continue_button"]
    sleep                               5s
    wait until page contains            Select Number of Payments
    sleep                               5s
    Click Element                       css=#maincontent > app-main-page > div > app-header > header > div.back-btn.ng-star-inserted > a > svg > g > path:nth-child(1)
    sleep                               2s
    wait until page contains            All transactions are secure and encrypted.




Switch to Version A
    Click element   ${ToggleA}
Switch to Version B
    Click element   ${ToggleB}


Go to checkout
    Go to                           https://puffy.ca/26046955594/checkouts/0f97020530288a9b599c19429e4cc516?channel=online_store&preview_checkout_version=2021-01-25&preview_theme_id=83530580042
    sleep                           10s
Go to homepage
    Go to                           ${HOMEPAGE}
    sleep                           10s