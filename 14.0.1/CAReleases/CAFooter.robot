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
${Sale Name}                    EASTER SALE NOW
${Sale Name Homepage}           EASTER SALE NOW
${Sale Details}                 $300 OFF
${Discount Amount}              $300 OFF
${Homepage}                     https://puffy.ca/?_ab=0&_fd=0&_sc=1&preview_theme_id=120177786954
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
${LOCCARTHEADER}                css=body > div.cart_content.jsCartContent.cart-content-mob > div.cart-close > span.cart-close__title
${Dog Bed}                      css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-4 > div > div > div:nth-child(1) > div.mega-menu__image-caption-link > a > div.image-element__wrap > img
${Rug}                          css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-4 > div > div > div:nth-child(2) > div.mega-menu__image-caption-link > a > div.image-element__wrap > img
${Cart}                         css=body > div.shopify-section.header-section > div > header.main_header > div > div > div > div.cart_container > div > a
${FOOTER}                       EASTER SALE NOW $300 OFF
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

Click on Puffy and check redirection URL
    sleep                                   1s
    Scroll Element Into View                css=.footer-menu-wrap
    Click element                           css=.footer-menu__link[href="/products/puffy-mattress"]
    Location Should Be                      https://puffy.ca/products/puffy-mattress
    wait until page contains                Puffy Mattress

*** keywords ***

Start Record Video
    Start Video Recording       alias=FallSale name=FallSale

Launch Puffy homepage
    Open Browser            ${Homepage}  ${systembrowser}
    Maximize Browser Window
    wait until page contains    ${FOOTER}

#=============================SEASON SALE KEYWORDS=================================================#

Seasonal Sale timer text check
    ${Content}=            get text        css=#saleTimer > div:nth-child(1)
    Run keyword if          "${Content}"!="${FOOTER}"      Fail        Wrong Seasonal Sale timer Content Actual content: ${Content}
    Click element           css=#saleTimer > span > svg

Banner Seasonal Sale text check
    sleep                   2s
    ${Content}=            get text        css=#NEW_YEAR_S_SALE_FREE_ACCESSORIES_UP_TO_440 > tspan:nth-child(1)
    Run keyword if          "${Content}"!="${Sale Name}"      Fail        Wrong Seasonal Sale Content Actual Result: ${Content}

Don't show seasonal sale content check
    Page Should Not Contain Element              css=#Presidents_Day_Sale_Product_Page_Banner > path.cls-product-mattress1

Don't show freebies content check
    Page Should Not Contain                      css=#shopify-section-product-puffy-template > div.container.main.content.product-name--puffy-mattress > div > div > div > div > div.seven.columns.medium-down--one-whole.alpha > div > div.promo-info
#=============================PRODUCT PAGE REDIRECTIONS=================================================#
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

Go to Puffy Royal Mattress Product Page
    Mouse Over          ${Mattresses}
    sleep               2s
    Click element       ${Puffy Royal Mattress}
    Wait Until Page Contains    12 REASONS TO CHOOSE

Go to Puffy Foundation Product Page
    Mouse Over          ${Bases}
    sleep               2s
    Click element       ${Foundation}
    Wait Until Page Contains    12 REASONS TO CHOOSE

Go to Puffy Adjustable Base Product Page
    Mouse Over          ${Bases}
    sleep               2s
    Click element       ${Adjustable Base}
    Wait Until Page Contains    12 REASONS TO CHOOSE

Go to Puffy Bed Frame Product Page
    Mouse Over          ${Bases}
    sleep               2s
    Click element       ${Bed Frame}
    Wait Until Page Contains    12 REASONS TO CHOOSE

Go to Puffy Comforter Product Page
    Mouse Over          ${Bedding}
    sleep               2s
    Click element       ${Comforter}
    Wait Until Page Contains    12 REASONS TO CHOOSE

Go to Puffy Pillow Product Page
    Mouse Over          ${Bedding}
    sleep               2s
    Click element       ${Pillow}
    Wait Until Page Contains    12 REASONS TO CHOOSE

Go to Puffy Body Pillow Product Page
    Mouse Over          ${Bedding}
    sleep               2s
    Click element       ${Body Pillow}
    Wait Until Page Contains    12 REASONS TO CHOOSE

Go to Puffy Mattress Pad Product Page
    Mouse Over          ${Bedding}
    sleep               2s
    Click element       ${Mattress Pad}
    Wait Until Page Contains    12 REASONS TO CHOOSE

Go to Puffy Mattress Protector Product Page
    Mouse Over          ${Bedding}
    sleep               2s
    Click element       ${Mattress Protector}
    Wait Until Page Contains    12 REASONS TO CHOOSE

Go to Puffy Topper Product Page
    Mouse Over          ${Bedding}
    sleep               2s
    Click element       ${Topper}
    Wait Until Page Contains    12 REASONS TO CHOOSE

Go to Puffy Blanket Product Page
    Mouse Over          ${Bedding}
    sleep               2s
    Click element       ${Blanket}
    Wait Until Page Contains    12 REASONS TO CHOOSE

Go to Puffy Weighted Blanket Product Page
    Mouse Over          ${Bedding}
    sleep               2s
    Click element       ${Weighted Blanket}
    Wait Until Page Contains    12 REASONS TO CHOOSE

Go to Puffy Sheets Product Page
    Mouse Over          ${Bedding}
    sleep               2s
    Click element       ${Sheets}
    Wait Until Page Contains    12 REASONS TO CHOOSE

Go to Puffy Dog Bed Product Page
    Mouse Over          ${Bedroom}
    sleep               2s
    Click element       ${Dog Bed}
    Wait Until Page Contains    12 REASONS TO CHOOSE

Go to Puffy Rug Product Page
    Mouse Over          ${Bedroom}
    sleep               2s
    Click element       ${Rug}
    Wait Until Page Contains    12 REASONS TO CHOOSE


Go to Compare Mattress Page
    Mouse Over          ${Mattresses}
    sleep               2s
    Click element       ${COMPARE}
    Wait Until Page Contains    CHOOSE YOUR PUFFY MATTRESS

Go To Store Page (Click on footer Store link)
    Click link       link:STORE

Go to Gift Shop page
    Click link          link:Gift Shop
#=============================DISCOUNTS AND FREEBIES=================================================#

PDP Discount Value and Freebie check
    ${Content}=            get text        css=#NEW_YEAR_S_SALE_FREE_ACCESSORIES_UP_TO_440 > tspan.cls-mattress-badge3
    Run keyword if          '${Content}'!='${Sale Details}'      Fail        Wrong Discount Value and Freebie Content Expected: $${Sale Details} Actual: ${Content}

Wait and dismiss popup
    sleep                   5s
    ${check}=               Run Keyword and Return Status  Element should be visible      xpath=/html/body/div[2]/div[2]/div/div[1]/img
    run keyword if          ${check} == False    Wait and dismiss popup
    ...     ELSE            Click element   css=#Layer_1 > polygon
#=============================PRODUCT SIZE DROPDOWNS=================================================#
Click Puffy Mattress Size dropdown
    wait until page contains element        css=#product_form_3809097089098 > div.product-variants-holder > div > div > div
    Click element       css=#product_form_3809097089098 > div.product-variants-holder > div > div > div

Click Puffy Lux Mattress Size dropdown
    wait until page contains element        css=#product_form_3809097023562 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > div
    Click element       css=#product_form_3809097023562 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > div

Click Puffy Royal Mattress Size dropdown
    Click element       css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > div

Click Puffy Sheets Size dropdown
    Click element       css=#product_form_4459334533194 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > div

Click Puffy Sheets Color dropdown
    Click element       css=#product_form_4459334533194 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-color > div > div

Click Puffy Adjustable Base size dropdown
    Click element       css=#product_form_3809097285706 > div.product-variants-holder > div > div > div

Click Puffy Foundation size dropdown
    Click element       css=#product_form_3809096728650 > div.product-variants-holder > div > div > div

Click Puffy Bed Frame size dropdown
    Click element       css=#product_form_3809096433738 > div.product-variants-holder > div > div > div

Click Puffy Comforter size dropdown
    Click element       css=#product_form_3809095188554 > div.product-variants-holder > div > div > div

Click Puffy Pillow size dropdown
    Click element       css=#product_form_625398710306 > div.product-variants-holder > div > div > div

Click Puffy Mattress Pad size dropdown
    Click element       css=#product_form_4839923548234 > div.product-variants-holder > div > div > div

Click Puffy Mattress Protector size dropdown
    Click element       css=#product_form_3809096761418 > div.product-variants-holder > div > div > div

Click Puffy Topper feel dropdown
    Click element       css=#product_form_3809097121866 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-feel > div > div

Click Puffy Topper size dropdown
    Click element       css=#product_form_3809097121866 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > div

Click Puffy Blanket size dropdown
    Click element       css=#product_form_4629448327242 > div.product-variants-holder > div > div > div

Click Puffy Weighted Blanket size dropdown
    Click element       css=#product_form_3809096368202 > div.product-variants-holder > div > div > div

Click Puffy Dog Bed size dropdown
    Click element       css=#product_form_4469236236362 > div.product-variants-holder > div > div > div
Click Puffy Rug color dropdown
    Click element       css=#product_form_4769367261258 > div.product-variants-holder > div.product-variant.selector-wrapper.jsRealOptions.product-color > div > div
Click Puffy Rug size dropdown
    Click element       css=#product_form_4769367261258 > div.product-variants-holder > div.product-variant.selector-wrapper.jsRealOptions.product-size > div > div
#=============================PRODUCT DEFAULT SIZES=================================================#
Check Puffy Mattress PDP Default size
    ${DefaultSize}=            get text        css=#product_form_3809097089098 > div.product-variants-holder > div > div > div > div > span.display-name.is--sale--price
    Run keyword if          '${DefaultSize}'!='${PuffyMattressDefaultSize}'      Fail        Wrong Puffy Mattress Default Size. Expected Result: ${PuffyMattressDefaultSize} Actual Result: ${DefaultSize}

Check Puffy Lux Mattress PDP Default size
    ${DefaultSize}=            get text        css=#product_form_3809097023562 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > div > div > span.display-name.is--sale--price
    Run keyword if          '${DefaultSize}'!='${PuffyLuxMattressDefaultSize}'      Fail        Wrong Puffy Lux Mattress Default Size. Expected Result: ${PuffyLuxMattressDefaultSize} Actual Result: ${DefaultSize}

Check Puffy Royal Mattress PDP Default size
    ${DefaultSize}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > div > div > span.display-name.is--sale--price
    Run keyword if          '${DefaultSize}'!='${PuffyRoyalMattressDefaultSize}'      Fail        Wrong Puffy Royal Mattress Default Size. Expected Result: ${PuffyRoyalMattressDefaultSize} Actual Result: ${DefaultSize}

Check Puffy Foundation PDP Default size
    ${DefaultSize}=            get text        css=#product_form_3809096728650 > div.product-variants-holder > div > div > div > div > span.display-name.is--not--sale
    Run keyword if          '${DefaultSize}'!='${PuffyFoundationDefaultSize}'      Fail        Wrong Puffy Foundation Default Size. Expected Result: ${PuffyFoundationDefaultSize} Actual Result: ${DefaultSize}

Check Puffy Adjustable Base PDP Default size
    ${DefaultSize}=            get text        css=#product_form_3809097285706 > div.product-variants-holder > div > div > div > div > span.display-name.is--sale--price
    Run keyword if          '${DefaultSize}'!='${PuffyAdjustableBaseDefaultSize}'      Fail        Wrong Puffy Adjustable Base Default Size. Expected Result: ${PuffyAdjustableBaseDefaultSize} Actual Result: ${DefaultSize}

Check Puffy Bed Frame PDP Default size
    ${DefaultSize}=            get text        css=#product_form_3809096433738 > div.product-variants-holder > div > div > div > div > span.display-name.is--not--sale
    Run keyword if          '${DefaultSize}'!='${PuffyBedFrameDefaultSize}'      Fail        Wrong Puffy Bed Frame Default Size. Expected Result: ${PuffyBedFrameDefaultSize} Actual Result: ${DefaultSize}

Check Puffy Comforter PDP Default size
    ${DefaultSize}=            get text        css=#product_form_3809095188554 > div.product-variants-holder > div > div > div > div > span.display-name.is--not--sale
    Run keyword if          '${DefaultSize}'!='${PuffyComforterDefaultSize}'      Fail        Wrong Puffy Comforter Default Size. Expected Result: ${PuffyComforterDefaultSize} Actual Result: ${DefaultSize}

Check Puffy Pillow PDP Default size
    ${DefaultSize}=            get text        css=#product_form_625398710306 > div.product-variants-holder > div > div > div > div > span.display-name.is--not--sale
    Run keyword if          '${DefaultSize}'!='${PuffyPillowDefaultSize}'      Fail        Wrong Puffy Pillow Default Size. Expected Result: ${PuffyPillowDefaultSize} Actual Result: ${DefaultSize}

Check Puffy Mattress Pad PDP Default size
    ${DefaultSize}=            get text        css=#product_form_4839923548234 > div.product-variants-holder > div > div > div > div > span.display-name.is--not--sale
    Run keyword if          '${DefaultSize}'!='${PuffyMattressPadDefaultSize}'      Fail        Wrong Puffy Mattress Pad Default Size. Expected Result: ${PuffyMattressPadDefaultSize} Actual Result: ${DefaultSize}

Check Puffy Mattress Protector PDP Default size
    ${DefaultSize}=            get text        css=#product_form_3809096761418 > div.product-variants-holder > div > div > div > div > span.display-name.is--not--sale
    Run keyword if          '${DefaultSize}'!='${PuffyMattressProtectorDefaultSize}'      Fail        Wrong Puffy Mattress Protector Default Size. Expected Result: ${PuffyMattressPadDefaultSize} Actual Result: ${DefaultSize}

Check Puffy Topper PDP Default size
    ${DefaultSize}=            get text        css=#product_form_3809097121866 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > div > div > span.display-name.is--not--sale
    Run keyword if          '${DefaultSize}'!='${PuffyTopperDefaultSize}'      Fail        Wrong Puffy Mattress Protector Default Size. Expected Result: ${PuffyTopperDefaultSize} Actual Result: ${DefaultSize}
Check Puffy Topper PDP Default feel
    ${DefaultFeel}=            get text        css=#product_form_3809097121866 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-feel > div > div > div > span.display-name.is--not--sale
    Run keyword if          '${DefaultFeel}'!='${PuffyTopperDefaultfeel}'      Fail        Wrong Puffy Topper Default Feel. Expected Result: ${PuffyTopperDefaultfeel} Actual Result: ${DefaultSize}

Check Puffy Blanket PDP Default size
    ${DefaultSize}=            get text        css=#product_form_4629448327242 > div.product-variants-holder > div > div > div > div > span.display-name.is--not--sale
    Run keyword if          '${DefaultSize}'!='${PuffyBlanketDefaultSize}'      Fail        Wrong Puffy Blanket Default Size. Expected Result: ${PuffyBlanketDefaultSize} Actual Result: ${DefaultSize}

Check Puffy Weighted Blanket PDP Default size
    ${DefaultSize}=            get text        css=#product_form_3809096368202 > div.product-variants-holder > div > div > div > div > span.display-name.is--not--sale
    Run keyword if          '${DefaultSize}'!='${PuffyWeightedBlanketDefaultSize}'      Fail        Wrong Puffy WeightedBlanket Default Size. Expected Result: ${PuffyWeightedBlanketDefaultSize} Actual Result: ${DefaultSize}

Check Puffy Sheets PDP Default color
    ${DefaultSize}=            get text        css=#product_form_4459334533194 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-color > div > div > div > span.display-name.is--not--sale
    Run keyword if          '${DefaultSize}'!='${PuffySheetsDefaultColor}'      Fail        Wrong Puffy Sheets Default color. Expected Result: ${PuffySheetsDefaultColor} Actual Result: ${DefaultSize}
Check Puffy Sheets PDP Default size
    ${DefaultSize}=            get text        css=#product_form_4459334533194 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > div > div > span.display-name.is--not--sale
    Run keyword if          '${DefaultSize}'!='${PuffySheetsDefaultSize}'      Fail        Wrong Puffy Sheets Default Size. Expected Result: ${PuffySheetsDefaultSize} Actual Result: ${DefaultSize}

Check Puffy Dog Bed PDP Default Size
    ${DefaultSize}=            get text        css=#product_form_4469236236362 > div.product-variants-holder > div > div > div > div > span.display-name.is--not--sale
    Run keyword if          '${DefaultSize}'!='${PuffyDogBedDefaultSize}'      Fail        Wrong Puffy Dog Bed Default color. Expected Result: ${PuffyDogBedDefaultSize} Actual Result: ${DefaultSize}
Check Puffy Rug PDP Default Color
    ${DefaultSize}=            get text        css=#product_form_4769367261258 > div.product-variants-holder > div.product-variant.selector-wrapper.jsRealOptions.product-color > div > div > div > span.display-name.is--not--sale
    Run keyword if          '${DefaultSize}'!='${PuffyRugDefaultColor}'      Fail        Wrong Puffy Rug Default Color. Expected Result: ${PuffyRugDefaultColor} Actual Result: ${DefaultSize}
Check Puffy Rug PDP Default size
    ${DefaultSize}=            get text        css=#product_form_4769367261258 > div.product-variants-holder > div.product-variant.selector-wrapper.jsRealOptions.product-size > div > div > div > span.display-name.is--not--sale
    Run keyword if          '${DefaultSize}'!='${PuffyRugDefaultSize}'      Fail        Wrong Puffy Rug Default Size. Expected Result: ${PuffyRugDefaultSize} Actual Result: ${DefaultSize}

#=============================PRODUCT ORIGINAL PRICE CHECKS===================================================#

Check Puffy Mattress sizes original prices

    Wait Until Element Is Visible          css=#product_form_3809097089098 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > del > span.original-price

    ${Content}=            get text        css=#product_form_3809097089098 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffyMattTwinOriginal}'      Fail        Wrong Puffy Mattress Twin Size original price. Expected Result: ${PuffyMattTwinOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809097089098 > div.product-variants-holder > div > div > ul > li:nth-child(2) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffyMattTwinXLOriginal}'      Fail        Wrong Puffy Mattress TwinXL Size original price. Expected Result: ${PuffyMattTwinXLOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809097089098 > div.product-variants-holder > div > div > ul > li:nth-child(3) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffyMattFullOriginal}'      Fail        Wrong Puffy Mattress Full Size original price. Expected Result: ${PuffyMattFullOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809097089098 > div.product-variants-holder > div > div > ul > li.option.selected.focus > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffyMattQueenOriginal}'      Fail        Wrong Puffy Mattress Queen Size original price. Expected Result: ${PuffyMattQueenOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809097089098 > div.product-variants-holder > div > div > ul > li:nth-child(5) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffyMattKingOriginal}'      Fail        Wrong Puffy Mattress King Size original price. Expected Result: ${PuffyMattKingOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809097089098 > div.product-variants-holder > div > div > ul > li:nth-child(6) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffyMattCalKingOriginal}'      Fail        Wrong Puffy Mattress CalKing Size original price. Expected Result: ${PuffyMattCalKingOriginal} Actual Result: ${Content}


Check Puffy Lux Mattress sizes original prices

    Wait Until Element Is Visible          css=#product_form_3809097023562 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > del > span.original-price

    ${Content}=            get text        css=#product_form_3809097023562 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffyLuxTwinOriginal}'      Fail        Wrong Puffy Lux Twin Size original price. Expected Result: ${PuffyLuxTwinOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809097023562 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(2) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffyLuxTwinXLOriginal}'      Fail        Wrong Puffy Lux TwinXL Size original price. Expected Result: ${PuffyLuxTwinXLOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809097023562 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(3) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffyLuxFullOriginal}'      Fail        Wrong Puffy Lux Full Size original price. Expected Result: ${PuffyLuxFullOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809097023562 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li.option.selected.focus > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffyLuxQueenOriginal}'      Fail        Wrong Puffy Lux Queen Size original price. Expected Result: ${PuffyLuxQueenOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809097023562 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(5) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffyLuxKingOriginal}'      Fail        Wrong Puffy Lux King Size original price. Expected Result: ${PuffyLuxKingOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809097023562 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(6) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffyLuxCalKingOriginal}'      Fail        Wrong Puffy Lux CalKing Size original price. Expected Result: ${PuffyLuxCalKingOriginal} Actual Result: ${Content}

Check Puffy Lux Hybrid sizes original prices

    Wait Until Element Is Visible          css=#product_form_3809097023562 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > del > span.hybrid-price
    ${Content}=            get text        css=#product_form_3809097023562 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > del > span.hybrid-price
    Run keyword if          '${Content}'!='${PuffyLuxTwinOriginal}'      Fail        Wrong Puffy Lux Hybrid Twin Size original price. Expected Result: ${PuffyLuxTwinOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809097023562 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(2) > span > del > span.hybrid-price
    Run keyword if          '${Content}'!='${PuffyLuxTwinXLOriginal}'      Fail        Wrong Puffy Lux Hybrid TwinXL Size original price. Expected Result: ${PuffyLuxTwinXLOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809097023562 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(3) > span > del > span.hybrid-price
    Run keyword if          '${Content}'!='${PuffyLuxFullOriginal}'      Fail        Wrong Puffy Lux Hybrid Full Size original price. Expected Result: ${PuffyLuxFullOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809097023562 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(4) > span > del > span.hybrid-price
    Run keyword if          '${Content}'!='${PuffyLuxQueenOriginal}'      Fail        Wrong Puffy Lux Hybrid Queen Size original price. Expected Result: ${PuffyLuxQueenOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809097023562 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(5) > span > del > span.hybrid-price
    Run keyword if          '${Content}'!='${PuffyLuxKingOriginal}'      Fail        Wrong Puffy Lux Hybrid King Size original price. Expected Result: ${PuffyLuxKingOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809097023562 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(6) > span > del > span.hybrid-price
    Run keyword if          '${Content}'!='${PuffyLuxCalKingOriginal}'      Fail        Wrong Puffy Lux Hybrid CalKing Size original price. Expected Result: ${PuffyLuxCalKingOriginal} Actual Result: ${Content}


Check Puffy Royal sizes original prices

    Wait Until Element Is Visible          css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > del > span.original-price
    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffyRoyalTwinOriginal}'      Fail        Wrong Puffy Royal Twin Size original price. Expected Result: ${PuffyRoyalTwinOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(2) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffyRoyalTwinXLOriginal}'      Fail        Wrong Puffy Royal TwinXL Size original price. Expected Result: ${PuffyRoyalTwinXLOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(3) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffyRoyalFullOriginal}'      Fail        Wrong Puffy Royal Full Size original price. Expected Result: ${PuffyRoyalFullOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li.option.selected.focus > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffyRoyalQueenOriginal}'      Fail        Wrong Puffy Royal Queen Size original price. Expected Result: ${PuffyRoyalQueenOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(5) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffyRoyalKingOriginal}'      Fail        Wrong Puffy Royal King Size original price. Expected Result: ${PuffyRoyalKingOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(6) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffyRoyalCalKingOriginal}'      Fail        Wrong Puffy Royal CalKing Size original price. Expected Result: ${PuffyRoyalCalKingOriginal} Actual Result: ${Content}


Check Puffy Royal Hybrid sizes original prices

    Wait Until Element Is Visible          css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > del > span.hybrid-price
    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > del > span.hybrid-price
    Run keyword if          '${Content}'!='${PuffyRoyalTwinOriginal}'      Fail        Wrong Puffy Royal Hybrid Twin Size original price. Expected Result: ${PuffyRoyalTwinOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(2) > span > del > span.hybrid-price
    Run keyword if          '${Content}'!='${PuffyRoyalTwinXLOriginal}'      Fail        Wrong Puffy Royal Hybrid TwinXL Size original price. Expected Result: ${PuffyRoyalTwinXLOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(3) > span > del > span.hybrid-price
    Run keyword if          '${Content}'!='${PuffyRoyalFullOriginal}'      Fail        Wrong Puffy Royal Hybrid Full Size original price. Expected Result: ${PuffyRoyalFullOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(4) > span > del > span.hybrid-price
    Run keyword if          '${Content}'!='${PuffyRoyalQueenOriginal}'      Fail        Wrong Puffy Royal Hybrid Queen Size original price. Expected Result: ${PuffyRoyalQueenOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(5) > span > del > span.hybrid-price
    Run keyword if          '${Content}'!='${PuffyRoyalKingOriginal}'      Fail        Wrong Puffy Royal Hybrid King Size original price. Expected Result: ${PuffyRoyalKingOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(6) > span > del > span.hybrid-price
    Run keyword if          '${Content}'!='${PuffyRoyalCalKingOriginal}'      Fail        Wrong Puffy Royal Hybrid CalKing Size original price. Expected Result: ${PuffyRoyalCalKingOriginal} Actual Result: ${Content}
Check Puffy Foundation sizes original prices

    Wait Until Element Is Visible          css=#product_form_3809096728650 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > span > span.original-price
    ${Content}=            get text        css=#product_form_3809096728650 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyFoundationTwinOriginal}'      Fail        Wrong Puffy Foundation Twin Size original price. Expected Result: ${PuffyFoundationTwinOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809096728650 > div.product-variants-holder > div > div > ul > li:nth-child(2) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyFoundationTwinXLOriginal}'      Fail        Wrong Puffy Foundation TwinXL Size original price. Expected Result: ${PuffyFoundationTwinXLOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809096728650 > div.product-variants-holder > div > div > ul > li:nth-child(3) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyFoundationFullOriginal}'      Fail        Wrong Puffy Foundation Full Size original price. Expected Result: ${PuffyFoundationFullOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809096728650 > div.product-variants-holder > div > div > ul > li.option.selected.focus > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyFoundationQueenOriginal}'      Fail        Wrong Puffy Foundation Queen Size original price. Expected Result: ${PuffyFoundationQueenOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809096728650 > div.product-variants-holder > div > div > ul > li:nth-child(5) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyFoundationKingOriginal}'      Fail        Wrong Puffy Foundation King Size original price. Expected Result: ${PuffyFoundationKingOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809096728650 > div.product-variants-holder > div > div > ul > li:nth-child(6) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyFoundationCalKingOriginal}'      Fail        Wrong Puffy Foundation CalKing Size original price. Expected Result: ${PuffyFoundationCalKingOriginal} Actual Result: ${Content}

Check Puffy Foundation sizes 15%OFF prices

    Wait Until Element Is Visible          css=#product_form_3809096728650 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > span > span.original-price
    ${Content}=            get text        css=#product_form_3809096728650 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyFoundationTwin15%OFF}'      Fail        Wrong Puffy Foundation Twin Size 15% Off price. Expected Result: ${PuffyFoundationTwin15%OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809096728650 > div.product-variants-holder > div > div > ul > li:nth-child(2) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyFoundationTwinXL15%OFF}'      Fail        Wrong Puffy Foundation TwinXL Size 15% Off price. Expected Result: ${PuffyFoundationTwinXL15%OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809096728650 > div.product-variants-holder > div > div > ul > li:nth-child(3) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyFoundationFull15%OFF}'      Fail        Wrong Puffy Foundation Full Size 15% Off price. Expected Result: ${PuffyFoundationFull15%OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809096728650 > div.product-variants-holder > div > div > ul > li:nth-child(4) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyFoundationQueen15%OFF}'      Fail        Wrong Puffy Foundation Queen Size 15% Off price. Expected Result: ${PuffyFoundationQueen15%OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809096728650 > div.product-variants-holder > div > div > ul > li:nth-child(5) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyFoundationKing15%OFF}'      Fail        Wrong Puffy Foundation King Size 15% Off price. Expected Result: ${PuffyFoundationKing15%OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809096728650 > div.product-variants-holder > div > div > ul > li:nth-child(6) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyFoundationCalKing15%OFF}'      Fail        Wrong Puffy Foundation CalKing Size 15% Off price. Expected Result: ${PuffyFoundationCalKing15%OFF} Actual Result: ${Content}

Check Puffy Adjustable Base original prices

    Wait Until Element Is Visible          css=#product_form_3809097285706 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > del > span.original-price
    ${Content}=            get text        css=#product_form_3809097285706 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffyAdjustTwinXLOriginal}'      Fail        Wrong Puffy Adjustable Base TwinXL Size original price. Expected Result: ${PuffyAdjustTwinXLOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809097285706 > div.product-variants-holder > div > div > ul > li:nth-child(2) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffyAdjustFullOriginal}'      Fail        Wrong Puffy Adjustable Base Full Size original price. Expected Result: ${PuffyAdjustFullOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809097285706 > div.product-variants-holder > div > div > ul > li:nth-child(3) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffyAdjustQueenOriginal}'      Fail        Wrong Puffy Adjustable Base Queen Size original price. Expected Result: ${PuffyAdjustQueenOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809097285706 > div.product-variants-holder > div > div > ul > li:nth-child(4) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffyAdjustSplitKingOriginal}'      Fail        Wrong Puffy Adjustable Base Split King Size original price. Expected Result: ${PuffyAdjustSplitKingOriginal} Actual Result: ${Content}

Check Puffy Bed Frame original prices

    Wait Until Element Is Visible          css=#product_form_3809096433738 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > span > span.original-price
    ${Content}=            get text        css=#product_form_3809096433738 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyBedFrameFullOriginal}'      Fail        Wrong Puffy Bed Frame Full Size original price. Expected Result: ${PuffyBedFrameFullOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809096433738 > div.product-variants-holder > div > div > ul > li:nth-child(2) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyBedFrameQueenOriginal}'      Fail        Wrong Puffy Bed Frame Queen Size original price. Expected Result: ${PuffyBedFrameQueenOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809096433738 > div.product-variants-holder > div > div > ul > li:nth-child(3) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyBedFrameKingOriginal}'      Fail        Wrong Puffy Bed Frame King Size original price. Expected Result: ${PuffyBedFrameKingOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809096433738 > div.product-variants-holder > div > div > ul > li:nth-child(4) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyBedFrameCalKingOriginal}'      Fail        Wrong Puffy Bed Frame Cal King Size original price. Expected Result: ${PuffyBedFrameCalKingOriginal} Actual Result: ${Content}

Check Puffy Bed Frame sizes 15%OFF prices
    Wait Until Element Is Visible          css=#product_form_3809096433738 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > span > span.original-price
    ${Content}=            get text        css=#product_form_3809096433738 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyBedFrameFull15%OFF}'      Fail        Wrong Puffy Bed Frame Full Size original price. Expected Result: ${PuffyBedFrameFull15%OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809096433738 > div.product-variants-holder > div > div > ul > li:nth-child(2) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyBedFrameQueen15%OFF}'      Fail        Wrong Puffy Bed Frame Queen Size original price. Expected Result: ${PuffyBedFrameQueen15%OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809096433738 > div.product-variants-holder > div > div > ul > li:nth-child(3) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyBedFrameKing15%OFF}'      Fail        Wrong Puffy Bed Frame King Size original price. Expected Result: ${PuffyBedFrameKing15%OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809096433738 > div.product-variants-holder > div > div > ul > li:nth-child(4) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyBedFrameCalKing15%OFF}'      Fail        Wrong Puffy Bed Frame Cal King Size original price. Expected Result: ${PuffyBedFrameCalKing15%OFF} Actual Result: ${Content}


Check Puffy Comforter original prices

    Wait Until Element Is Visible          css=#product_form_3809095188554 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > span > span.original-price
    ${Content}=            get text        css=#product_form_3809095188554 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyComforterTwin/TwinXLOriginal}'      Fail        Wrong Puffy Comforter Twin/TwinXL Size original price. Expected Result: ${PuffyComforterTwin/TwinXLOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809095188554 > div.product-variants-holder > div > div > ul > li:nth-child(2) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyComforterFull/QueenOriginal}'      Fail        Wrong Puffy Comforter Full/Queen Size original price. Expected Result: ${PuffyComforterFull/QueenOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809095188554 > div.product-variants-holder > div > div > ul > li:nth-child(3) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyComforterKing/CalKingOriginal}'      Fail        Wrong Puffy Comforter King/Cal King Size original price. Expected Result: ${PuffyComforterKing/CalKingOriginal} Actual Result: ${Content}

Check Puffy Comforter sizes 15%OFF prices

    Wait Until Element Is Visible          css=#product_form_3809095188554 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > span > span.original-price
    ${Content}=            get text        css=#product_form_3809095188554 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyComforterTwin/TwinXL15%OFF}'      Fail        Wrong Puffy Comforter Twin/TwinXL Size 15% Off price. Expected Result: ${PuffyComforterTwin/TwinXL15%OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809095188554 > div.product-variants-holder > div > div > ul > li:nth-child(2) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyComforterFull/Queen15%OFF}'      Fail        Wrong Puffy Comforter Full/Queen Size 15% Off price. Expected Result: ${PuffyComforterFull/Queen15%OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809095188554 > div.product-variants-holder > div > div > ul > li:nth-child(3) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyComforterKing/CalKing15%OFF}'      Fail        Wrong Puffy Comforter King/Cal King Size 15% Off price. Expected Result: ${PuffyComforterKing/CalKing15%OFF} Actual Result: ${Content}

Check Puffy Pillow original prices

    Wait Until Element Is Visible          css=#product_form_625398710306 > div.product-variants-holder > div > div > ul > li.option.selected.focus > span > span > span.original-price
    ${Content}=            get text        css=#product_form_625398710306 > div.product-variants-holder > div > div > ul > li.option.selected.focus > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyPillowStandardOriginal}'      Fail        Wrong Puffy Pillow Standard Size original price. Expected Result: ${PuffyPillowStandardOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_625398710306 > div.product-variants-holder > div > div > ul > li:nth-child(2) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyPillowKingOriginal}'      Fail        Wrong Puffy Comforter Full/Queen Size original price. Expected Result: ${PuffyPillowKingOriginal} Actual Result: ${Content}

Check Puffy Body Pillow original prices

    Wait Until Element Is Visible          css=#shopify-section-product-puffy-template > div.container.main.content.product-name--puffy-body-pillow > div > div > div > div > div.seven.columns.medium-down--one-whole.alpha > div > div.product-head > div.product-head__content > div.product-price > span
    ${Content}=            get text        css=#shopify-section-product-puffy-template > div.container.main.content.product-name--puffy-body-pillow > div > div > div > div > div.seven.columns.medium-down--one-whole.alpha > div > div.product-head > div.product-head__content > div.product-price > span
    Run keyword if          '${Content}'!='${PuffyBodyPillowOriginal}'      Fail        Wrong Puffy Pillow Standard Size original price. Expected Result: ${PuffyBodyPillowOriginal} Actual Result: ${Content}

Check Puffy Body Pillow sizes 15%OFF prices

    Wait Until Element Is Visible          css=#shopify-section-product-puffy-template > div.container.main.content.product-name--puffy-body-pillow > div > div > div > div > div.seven.columns.medium-down--one-whole.alpha > div > div.product-head > div.product-head__content > div.product-price > div > span > span
    ${Content}=            get text        css=#shopify-section-product-puffy-template > div.container.main.content.product-name--puffy-body-pillow > div > div > div > div > div.seven.columns.medium-down--one-whole.alpha > div > div.product-head > div.product-head__content > div.product-price > div > span > span
    Run keyword if          '${Content}'!='${PuffyBodyPillow15%OFF}'      Fail        Wrong Puffy Pillow Standard Size 15% Off price. Expected Result: ${PuffyBodyPillowOriginal} Actual Result: ${Content}

Check Puffy Mattress Pad original prices

    Wait Until Element Is Visible          css=#product_form_4839923548234 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > span > span.original-price
    ${Content}=            get text        css=#product_form_4839923548234 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyPadTwinOriginal}'      Fail        Wrong Puffy Mattress Pad Twin Size original price. Expected Result: ${PuffyPadTwinOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4839923548234 > div.product-variants-holder > div > div > ul > li:nth-child(2) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyPadTwinXLOriginal}'      Fail        Wrong Puffy Mattress Pad Twin XL Size original price. Expected Result: ${PuffyPadTwinXLOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4839923548234 > div.product-variants-holder > div > div > ul > li:nth-child(3) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyPadFullOriginal}'      Fail        Wrong Puffy Mattress Pad Full Size original price. Expected Result: ${PuffyPadFullOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4839923548234 > div.product-variants-holder > div > div > ul > li:nth-child(4) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyPadQueenOriginal}'      Fail        Wrong Puffy Mattress Pad Queen Size original price. Expected Result: ${PuffyPadQueenOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4839923548234 > div.product-variants-holder > div > div > ul > li:nth-child(5) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyPadKingOriginal}'      Fail        Wrong Puffy Mattress Pad King Size original price. Expected Result: ${PuffyPadKingOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4839923548234 > div.product-variants-holder > div > div > ul > li:nth-child(6) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyPadCalKingOriginal}'      Fail        Wrong Puffy Mattress Pad Cal King Size original price. Expected Result: ${PuffyPadKingOriginal} Actual Result: ${Content}

Check Puffy Mattress Pad sizes 15%OFF prices

    Wait Until Element Is Visible          css=#product_form_4839923548234 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > span > span.original-price
    ${Content}=            get text        css=#product_form_4839923548234 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyPadTwin15%OFF}'      Fail        Wrong Puffy Mattress Pad Twin Size 15% Off price. Expected Result: ${PuffyPadTwin15%OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4839923548234 > div.product-variants-holder > div > div > ul > li:nth-child(2) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyPadTwinXL15%OFF}'      Fail        Wrong Puffy Mattress Pad Twin XL Size 15% Off price. Expected Result: ${PuffyPadTwinXL15%OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4839923548234 > div.product-variants-holder > div > div > ul > li:nth-child(3) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyPadFull15%OFF}'      Fail        Wrong Puffy Mattress Pad Full Size 15% Off price. Expected Result: ${PuffyPadFull15%OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4839923548234 > div.product-variants-holder > div > div > ul > li:nth-child(4) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyPadQueen15%OFF}'      Fail        Wrong Puffy Mattress Pad Queen Size 15% Off price. Expected Result: ${PuffyPadQueen15%OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4839923548234 > div.product-variants-holder > div > div > ul > li:nth-child(5) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyPadKing15%OFF}'      Fail        Wrong Puffy Mattress Pad King Size 15% Off price. Expected Result: ${PuffyPadKing15%OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4839923548234 > div.product-variants-holder > div > div > ul > li:nth-child(6) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyPadCalKing15%OFF}'      Fail        Wrong Puffy Mattress Pad Cal King Size 15% Off price. Expected Result: ${PuffyPadCalKing15%OFF} Actual Result: ${Content}

Check Puffy Mattress Protector original prices

    Wait Until Element Is Visible          css=#product_form_3809096761418 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > span > span.original-price
    ${Content}=            get text        css=#product_form_3809096761418 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyProtectorTwinOriginal}'      Fail        Wrong Puffy Mattress Protector Twin Size original price. Expected Result: ${PuffyProtectorTwinOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809096761418 > div.product-variants-holder > div > div > ul > li:nth-child(2) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyProtectorTwinXLOriginal}'      Fail        Wrong Puffy Mattress Protector Twin XL Size original price. Expected Result: ${PuffyProtectorTwinXLOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809096761418 > div.product-variants-holder > div > div > ul > li:nth-child(3) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyProtectorFullOriginal}'      Fail        Wrong Puffy Mattress Protector Full Size original price. Expected Result: ${PuffyProtectorFullOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809096761418 > div.product-variants-holder > div > div > ul > li:nth-child(4) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyProtectorQueenOriginal}'      Fail        Wrong Puffy Mattress Protector Queen Size original price. Expected Result: ${PuffyProtectorQueenOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809096761418 > div.product-variants-holder > div > div > ul > li:nth-child(5) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyProtectorKingOriginal}'      Fail        Wrong Puffy Mattress Protector King Size original price. Expected Result: ${PuffyProtectorKingOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809096761418 > div.product-variants-holder > div > div > ul > li:nth-child(6) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyProtectorCalKingOriginal}'      Fail        Wrong Puffy Mattress Protector Cal King Size original price. Expected Result: ${PuffyProtectorCalKingOriginal} Actual Result: ${Content}

Check Puffy Mattress Protector sizes 15%OFF prices

    Wait Until Element Is Visible          css=#product_form_3809096761418 > div.product-variants-holder > div > div > ul > li:nth-child(4) > span > span > span.original-price
    ${Content}=            get text        css=#product_form_3809096761418 > div.product-variants-holder > div > div > ul > li:nth-child(4) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyProtectorQueen15%OFF}'      Fail        Wrong Puffy Mattress Protector Queen Size original price. Expected Result: ${PuffyProtectorQueen15%OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809096761418 > div.product-variants-holder > div > div > ul > li:nth-child(5) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyProtectorKing15%OFF}'      Fail        Wrong Puffy Mattress Protector King Size original price. Expected Result: ${PuffyProtectorKing15%OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809096761418 > div.product-variants-holder > div > div > ul > li:nth-child(6) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyProtectorCalKing15%OFF}'      Fail        Wrong Puffy Mattress Protector Cal King Size original price. Expected Result: ${PuffyProtectorCalKing15%OFF} Actual Result: ${Content}


Check Puffy Topper original prices

    Wait Until Element Is Visible          css=#product_form_3809097121866 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > span > span.original-price
    ${Content}=            get text        css=#product_form_3809097121866 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyTopperTwinOriginal}'      Fail        Wrong Puffy Topper Twin Size original price. Expected Result: ${PuffyTopperTwinOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809097121866 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(2) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyTopperTwinXLOriginal}'      Fail        Wrong Puffy Topper Twin XL Size original price. Expected Result: ${PuffyTopperTwinXLOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809097121866 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(3) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyTopperFullOriginal}'      Fail        Wrong Puffy Topper Full Size original price. Expected Result: ${PuffyTopperFullOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809097121866 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(4) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyTopperQueenOriginal}'      Fail        Wrong Puffy Topper Queen Size original price. Expected Result: ${PuffyTopperQueenOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809097121866 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(5) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyTopperKingOriginal}'      Fail        Wrong Puffy Topper King Size original price. Expected Result: ${PuffyTopperKingOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809097121866 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(6) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyTopperCalKingOriginal}'      Fail        Wrong Puffy Topper Cal King Size original price. Expected Result: ${PuffyTopperCalKingOriginal} Actual Result: ${Content}

Check Puffy Topper 15%OFF prices

    Wait Until Element Is Visible          css=#product_form_3809097121866 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > span > span.original-price
    ${Content}=            get text        css=#product_form_3809097121866 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyTopperTwin15%OFF}'      Fail        Wrong Puffy Topper Twin Size 15% Off price. Expected Result: ${PuffyTopperTwin15%OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809097121866 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(2) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyTopperTwinXL15%OFF}'      Fail        Wrong Puffy Topper Twin XL Size 15% Off price. Expected Result: ${PuffyTopperTwinXL15%OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809097121866 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(3) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyTopperFull15%OFF}'      Fail        Wrong Puffy Topper Full Size 15% Off price. Expected Result: ${PuffyTopperFull15%OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809097121866 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(4) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyTopperQueen15%OFF}'      Fail        Wrong Puffy Topper Queen Size 15% Off price. Expected Result: ${PuffyTopperQueen15%OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809097121866 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(5) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyTopperKing15%OFF}'      Fail        Wrong Puffy Topper King Size 15% Off price. Expected Result: ${PuffyTopperKing15%OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809097121866 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(6) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyTopperCalKing15%OFF}'      Fail        Wrong Puffy Topper Cal King Size 15% Off price. Expected Result: ${PuffyTopperCalKing15%OFF} Actual Result: ${Content}

Check Puffy Blanket original prices

    Wait Until Element Is Visible          css=#product_form_4629448327242 > div.product-variants-holder > div > div > ul > li.option.selected.focus > span > span > span.original-price
    ${Content}=            get text        css=#product_form_4629448327242 > div.product-variants-holder > div > div > ul > li.option.selected.focus > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyBlanketSmallOriginal}'      Fail        Wrong Puffy Blanket Small Size original price. Expected Result: ${PuffyBlanketSmallOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4629448327242 > div.product-variants-holder > div > div > ul > li:nth-child(2) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyBlanketMediumOriginal}'      Fail        Wrong Puffy Blanket Medium Size original price. Expected Result: ${PuffyBlanketMediumOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4629448327242 > div.product-variants-holder > div > div > ul > li:nth-child(3) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyBlanketLargeOriginal}'      Fail        Wrong Puffy Blanket Large Size original price. Expected Result: ${PuffyBlanketLargeOriginal} Actual Result: ${Content}

Check Puffy Weighted Blanket original prices

    Wait Until Element Is Visible          css=#product_form_3809096368202 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > span > span.original-price
    ${Content}=            get text        css=#product_form_3809096368202 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyWeightedBlanketTwinOriginal}'      Fail        Wrong Puffy Weighted Blanket Twin Size original price. Expected Result: ${PuffyWeightedBlanketTwinOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809096368202 > div.product-variants-holder > div > div > ul > li:nth-child(2) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyWeightedBlanketQueenOriginal}'      Fail        Wrong Puffy Weighted Blanket Queen Size original price. Expected Result: ${PuffyWeightedBlanketQueenOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809096368202 > div.product-variants-holder > div > div > ul > li:nth-child(3) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyWeightedBlanketKingOriginal}'      Fail        Wrong Puffy Weighted Blanket King Size original price. Expected Result: ${PuffyWeightedBlanketKingOriginal} Actual Result: ${Content}

Check Puffy Weighted Blanket 15%OFF prices

    Wait Until Element Is Visible          css=#product_form_3809096368202 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > span > span.original-price
    ${Content}=            get text        css=#product_form_3809096368202 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyWeightedBlanketTwin15%OFF}'      Fail        Wrong Puffy Weighted Blanket Twin Size 15% Off price. Expected Result: ${PuffyWeightedBlanketTwin15%OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809096368202 > div.product-variants-holder > div > div > ul > li.option.selected.focus > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyWeightedBlanketQueen15%OFF}'      Fail        Wrong Puffy Weighted Blanket Queen Size 15% Off price. Expected Result: ${PuffyWeightedBlanketQueen15%OFF} Actual Result: ${Content}


Check Puffy Sheets original prices

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


Check Puffy Dog Bed original prices

    Wait Until Element Is Visible          css=#product_form_4469236236362 > div.product-variants-holder > div > div > ul > li.option.selected.focus > span > span > span.original-price
    ${Content}=            get text        css=#product_form_4469236236362 > div.product-variants-holder > div > div > ul > li.option.selected.focus > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyDogBedSmallOriginal}'      Fail        Wrong Puffy Dog Bed Small Size original price. Expected Result: ${PuffyDogBedSmallOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4469236236362 > div.product-variants-holder > div > div > ul > li:nth-child(2) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyDogBedMediumOriginal}'      Fail        Wrong Puffy Dog Bed Medium Size original price. Expected Result: ${PuffyDogBedMediumOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4469236236362 > div.product-variants-holder > div > div > ul > li:nth-child(3) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyDogBedLargeOriginal}'      Fail        Wrong Puffy Dog Bed Large Size original price. Expected Result: ${PuffyDogBedLargeOriginal} Actual Result: ${Content}

Check Puffy Dog Bed 15%OFF prices

    Wait Until Element Is Visible          css=#product_form_4469236236362 > div.product-variants-holder > div > div > ul > li.option.selected.focus > span > span > span.original-price
    ${Content}=            get text        css=#product_form_4469236236362 > div.product-variants-holder > div > div > ul > li.option.selected.focus > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyDogBedSmall15%Off}'      Fail        Wrong Puffy Dog Bed Small Size 15% Off price. Expected Result: ${PuffyDogBedSmall15%Off} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4469236236362 > div.product-variants-holder > div > div > ul > li:nth-child(2) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyDogBedMedium15%Off}'      Fail        Wrong Puffy Dog Bed Medium Size 15% Off price. Expected Result: ${PuffyDogBedMedium15%Off} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4469236236362 > div.product-variants-holder > div > div > ul > li:nth-child(3) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyDogBedLarge15%Off}'      Fail        Wrong Puffy Dog Bed Large Size 15% Off price. Expected Result: ${PuffyDogBedLarge15%Off} Actual Result: ${Content}



Check Puffy Rug original prices

    Wait Until Element Is Visible          css=#product_form_4769367261258 > div.product-variants-holder > div.product-variant.selector-wrapper.jsRealOptions.product-size > div > ul > li.option.selected.focus > span > span > span.original-price
    ${Content}=            get text        css=#product_form_4769367261258 > div.product-variants-holder > div.product-variant.selector-wrapper.jsRealOptions.product-size > div > ul > li.option.selected.focus > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyRugMediumOriginal}'      Fail        Wrong Puffy Rug Medium Size original price. Expected Result: ${PuffyRugMediumOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4769367261258 > div.product-variants-holder > div.product-variant.selector-wrapper.jsRealOptions.product-size > div > ul > li:nth-child(2) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyRugLargeOriginal}'      Fail        Wrong Puffy Rug Large Size original price. Expected Result: ${PuffyRugLargeOriginal} Actual Result: ${Content}

Check Puffy Rug 15%OFF prices

    Wait Until Element Is Visible          css=#product_form_4769367261258 > div.product-variants-holder > div.product-variant.selector-wrapper.jsRealOptions.product-size > div > ul > li.option.selected.focus > span > span > span.original-price
    ${Content}=            get text        css=#product_form_4769367261258 > div.product-variants-holder > div.product-variant.selector-wrapper.jsRealOptions.product-size > div > ul > li.option.selected.focus > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyRugMedium15%Off}'      Fail        Wrong Puffy Rug Medium Size 15% Off price. Expected Result: ${PuffyRugMedium15%Off} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4769367261258 > div.product-variants-holder > div.product-variant.selector-wrapper.jsRealOptions.product-size > div > ul > li:nth-child(2) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyRugLarge15%Off}'      Fail        Wrong Puffy Rug Large Size 15% Off price. Expected Result: ${PuffyRugLarge15%Off} Actual Result: ${Content}


#=============================PRODUCT 300 OFF PRICE CHECKS===================================================#

Check Puffy Mattress sizes 300OFF prices

    Wait Until Element Is Visible          css=#product_form_3809097089098 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > span > span.original-price.jsDiscountedPrice

    ${Content}=            get text        css=#product_form_3809097089098 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyMattTwin300OFF}'      Fail        Wrong Puffy Mattress Twin Size 300 OFF price. Expected Result: ${PuffyMattTwin300OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809097089098 > div.product-variants-holder > div > div > ul > li:nth-child(2) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyMattTwinXL300OFF}'      Fail        Wrong Puffy Mattress TwinXL Size 300 OFF price. Expected Result: ${PuffyMattTwinXL300OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809097089098 > div.product-variants-holder > div > div > ul > li:nth-child(3) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyMattFull300OFF}'      Fail        Wrong Puffy Mattress Full Size 300 OFF price. Expected Result: ${PuffyMattFull300OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809097089098 > div.product-variants-holder > div > div > ul > li.option.selected.focus > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyMattQueen300OFF}'      Fail        Wrong Puffy Mattress Queen Size 300 OFF price. Expected Result: ${PuffyMattQueen300OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809097089098 > div.product-variants-holder > div > div > ul > li:nth-child(5) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyMattKing300OFF}'      Fail        Wrong Puffy Mattress King Size 300 OFF price. Expected Result: ${PuffyMattKing300OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809097089098 > div.product-variants-holder > div > div > ul > li:nth-child(6) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyMattCalKing300OFF}'      Fail        Wrong Puffy Mattress CalKing Size 300 OFF price. Expected Result: ${PuffyMattCalKing300OFF} Actual Result: ${Content}

Check Puffy Lux Mattress sizes 300OFF prices

    Wait Until Element Is Visible          css=#product_form_3809097023562 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > span > span.original-price.jsDiscountedPrice

    ${Content}=            get text        css=#product_form_3809097023562 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyLuxTwin300OFF}'      Fail        Wrong Puffy Lux Twin Size 300 OFF price. Expected Result: ${PuffyLuxTwin300OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809097023562 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(2) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyLuxTwinXL300OFF}'      Fail        Wrong Puffy Lux TwinXL Size 300 OFF price. Expected Result: ${PuffyLuxTwinXL300OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809097023562 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(3) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyLuxFull300OFF}'      Fail        Wrong Puffy Lux Full Size 300 OFF price. Expected Result: ${PuffyLuxFull300OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809097023562 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li.option.selected.focus > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyLuxQueen300OFF}'      Fail        Wrong Puffy Lux Queen Size 300 OFF price. Expected Result: ${PuffyLuxQueen300OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809097023562 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(5) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyLuxKing300OFF}'      Fail        Wrong Puffy Lux King Size 300 OFF price. Expected Result: ${PuffyLuxKing300OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809097023562 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(6) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyLuxCalKing300OFF}'      Fail        Wrong Puffy Lux CalKing Size 300 OFF price. Expected Result: ${PuffyLuxCalKing300OFF} Actual Result: ${Content}

Check Puffy Lux Hybrid sizes 300OFF prices

    Wait Until Element Is Visible     css=#product_form_3809097023562 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > span > span.hybrid-price.jsDiscountedPrice

    ${Content}=            get text        css=#product_form_3809097023562 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > span > span.hybrid-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyLuxTwin300OFF}'      Fail        Wrong Puffy Lux Hybrid Twin Size 300 OFF price. Expected Result: ${PuffyLuxTwin300OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809097023562 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(2) > span > span > span.hybrid-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyLuxTwinXL300OFF}'      Fail        Wrong Puffy Lux Hybrid TwinXL Size 300 OFF price. Expected Result: ${PuffyLuxTwinXL300OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809097023562 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(3) > span > span > span.hybrid-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyLuxFull300OFF}'      Fail        Wrong Puffy Lux Hybrid Full Size 300 OFF price. Expected Result: ${PuffyLuxFull300OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809097023562 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(4) > span > span > span.hybrid-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyLuxQueen300OFF}'      Fail        Wrong Puffy Lux Hybrid Queen Size 300 OFF price. Expected Result: ${PuffyLuxQueen300OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809097023562 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(5) > span > span > span.hybrid-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyLuxKing300OFF}'      Fail        Wrong Puffy Lux Hybrid King Size 300 OFF price. Expected Result: ${PuffyLuxKing300OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809097023562 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(6) > span > span > span.hybrid-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyLuxCalKing300OFF}'      Fail        Wrong Puffy Lux Hybrid CalKing Size 300 OFF price. Expected Result: ${PuffyLuxCalKing300OFF} Actual Result: ${Content}


Check Puffy Royal sizes 300OFF prices

    Wait Until Element Is Visible          css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > span > span.original-price.jsDiscountedPrice

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyRoyalTwin300OFF}'      Fail        Wrong Puffy Royal Twin Size 300 OFF price. Expected Result: ${PuffyRoyalTwin300OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(2) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyRoyalTwinXL300OFF}'      Fail        Wrong Puffy Royal TwinXL Size 300 OFF price. Expected Result: ${PuffyRoyalTwinXL300OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(3) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyRoyalFull300OFF}'      Fail        Wrong Puffy Royal Full Size 300 OFF price. Expected Result: ${PuffyRoyalFull300OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li.option.selected.focus > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyRoyalQueen300OFF}'      Fail        Wrong Puffy Royal Queen Size 300 OFF price. Expected Result: ${PuffyRoyalQueen300OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(5) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyRoyalKing300OFF}'      Fail        Wrong Puffy Royal King Size 300 OFF price. Expected Result: ${PuffyRoyalKing300OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(6) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyRoyalCalKing300OFF}'      Fail        Wrong Puffy Royal CalKing Size 300 OFF price. Expected Result: ${PuffyRoyalCalKing300OFF} Actual Result: ${Content}


Check Puffy Royal Hybrid sizes 300OFF prices

    Wait Until Element Is Visible     css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > span > span.hybrid-price.jsDiscountedPrice

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > span > span.hybrid-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyRoyalTwin300OFF}'      Fail        Wrong Puffy Royal Hybrid Twin Size 300 OFF price. Expected Result: ${PuffyRoyalTwin300OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(2) > span > span > span.hybrid-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyRoyalTwinXL300OFF}'      Fail        Wrong Puffy Royal Hybrid TwinXL Size 300 OFF price. Expected Result: ${PuffyRoyalTwinXL300OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(3) > span > span > span.hybrid-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyRoyalFull300OFF}'      Fail        Wrong Puffy Royal Hybrid Full Size 300 OFF price. Expected Result: ${PuffyRoyalFull300OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(4) > span > span > span.hybrid-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyRoyalQueen300OFF}'      Fail        Wrong Puffy Royal Hybrid Queen Size 300 OFF price. Expected Result: ${PuffyRoyalQueen300OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(5) > span > span > span.hybrid-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyRoyalKing300OFF}'      Fail        Wrong Puffy Royal Hybrid King Size 300 OFF price. Expected Result: ${PuffyRoyalKing300OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(6) > span > span > span.hybrid-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyRoyalCalKing300OFF}'      Fail        Wrong Puffy Royal Hybrid CalKing Size 300 OFF price. Expected Result: ${PuffyRoyalCalKing300OFF} Actual Result: ${Content}



Check Puffy Adjustable Base 300OFF prices

    Wait Until Element Is Visible     css=#product_form_3809097285706 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > span > span.original-price.jsDiscountedPrice

    ${Content}=            get text        css=#product_form_3809097285706 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyAdjustTwinXL300OFF}'      Fail        Wrong Puffy Adjustable Base TwinXL Size 300 OFF price. Expected Result: ${PuffyAdjustTwinXL300OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809097285706 > div.product-variants-holder > div > div > ul > li:nth-child(2) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyAdjustFull300OFF}'      Fail        Wrong Puffy Adjustable Base Full Size 300 OFF price. Expected Result: ${PuffyAdjustFull300OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809097285706 > div.product-variants-holder > div > div > ul > li:nth-child(3) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyAdjustQueen300OFF}'      Fail        Wrong Puffy Adjustable Base Queen Size 300 OFF price. Expected Result: ${PuffyAdjustQueen300OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809097285706 > div.product-variants-holder > div > div > ul > li:nth-child(4) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyAdjustSplitKing300OFF}'      Fail        Wrong Puffy Adjustable Base Split King 300 OFF price. Expected Result: ${PuffyAdjustSplitKing300OFF} Actual Result: ${Content}
#=============================PRODUCT PDP SIZE ORDERING===================================================#

Check Puffy Mattress sizes list order

    Wait Until Element Is Visible          css=#product_form_3809097089098 > div.product-variants-holder > div > div > ul > li:nth-child(1) > div > span.display-name.is--sale--price

    ${Content}=            get text        css=#product_form_3809097089098 > div.product-variants-holder > div > div > ul > li:nth-child(1) > div > span.display-name.is--sale--price
    Run keyword if          '${Content}'!='${PuffyMattressPDPSizeOrder1}'      Fail        First size in Puffy Mattress PDP is Wrong. Expected Result: ${PuffyMattressPDPSizeOrder1} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809097089098 > div.product-variants-holder > div > div > ul > li:nth-child(2) > div > span.display-name.is--sale--price
    Run keyword if          '${Content}'!='${PuffyMattressPDPSizeOrder2}'      Fail        Second size in Puffy Mattress PDP is Wrong. Expected Result: ${PuffyMattressPDPSizeOrder2} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809097089098 > div.product-variants-holder > div > div > ul > li:nth-child(3) > div > span.display-name.is--sale--price
    Run keyword if          '${Content}'!='${PuffyMattressPDPSizeOrder3}'      Fail        Third size in Puffy Mattress PDP is Wrong. Expected Result: ${PuffyMattressPDPSizeOrder3} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809097089098 > div.product-variants-holder > div > div > ul > li.option.selected.focus > div > span.display-name.is--sale--price
    Run keyword if          '${Content}'!='${PuffyMattressPDPSizeOrder4}'      Fail        Fourth size in Puffy Mattress PDP is Wrong. Expected Result: ${PuffyMattressPDPSizeOrder4} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809097089098 > div.product-variants-holder > div > div > ul > li:nth-child(5) > div > span.display-name.is--sale--price
    Run keyword if          '${Content}'!='${PuffyMattressPDPSizeOrder5}'      Fail        Fifth size in Puffy Mattress PDP is Wrong. Expected Result: ${PuffyMattressPDPSizeOrder5} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809097089098 > div.product-variants-holder > div > div > ul > li:nth-child(6) > div > span.display-name.is--sale--price
    Run keyword if          '${Content}'!='${PuffyMattressPDPSizeOrder6}'      Fail        Sixth size in Puffy Mattress PDP is Wrong. Expected Result: ${PuffyMattressPDPSizeOrder6} Actual Result: ${Content}

Check Puffy Lux Mattress sizes list order

    Wait Until Element Is Visible          css=#product_form_3809097023562 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > div > span.display-name.is--sale--price

    ${Content}=            get text        css=#product_form_3809097023562 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > div > span.display-name.is--sale--price
    Run keyword if          '${Content}'!='${PuffyLuxMattressPDPSizeOrder1}'      Fail        First size in Puffy Lux Mattress PDP is Wrong. Expected Result: ${PuffyLuxMattressPDPSizeOrder1} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809097023562 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(2) > div > span.display-name.is--sale--price
    Run keyword if          '${Content}'!='${PuffyLuxMattressPDPSizeOrder2}'      Fail        Second size in Puffy Lux Mattress PDP is Wrong. Expected Result: ${PuffyLuxMattressPDPSizeOrder2} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809097023562 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(3) > div > span.display-name.is--sale--price
    Run keyword if          '${Content}'!='${PuffyLuxMattressPDPSizeOrder3}'      Fail        Third size in Puffy Lux Mattress PDP is Wrong. Expected Result: ${PuffyLuxMattressPDPSizeOrder3} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809097023562 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(4) > div > span.display-name.is--sale--price
    Run keyword if          '${Content}'!='${PuffyLuxMattressPDPSizeOrder4}'      Fail        Fourth size in Puffy Lux Mattress PDP is Wrong. Expected Result: ${PuffyLuxMattressPDPSizeOrder4} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809097023562 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(5) > div > span.display-name.is--sale--price
    Run keyword if          '${Content}'!='${PuffyLuxMattressPDPSizeOrder5}'      Fail        Fifth size in Puffy Lux Mattress PDP is Wrong. Expected Result: ${PuffyLuxMattressPDPSizeOrder5} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809097023562 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(6) > div > span.display-name.is--sale--price
    Run keyword if          '${Content}'!='${PuffyLuxMattressPDPSizeOrder6}'      Fail        Sixth size in Puffy Lux Mattress PDP is Wrong. Expected Result: ${PuffyLuxMattressPDPSizeOrder6} Actual Result: ${Content}


Check Puffy Royal Mattress sizes list order

    Wait Until Element Is Visible          css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > div > span.display-name.is--sale--price

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > div > span.display-name.is--sale--price
    Run keyword if          '${Content}'!='${PuffyRoyalMattressPDPSizeOrder1}'      Fail        First size in Puffy Royal Mattress PDP is Wrong. Expected Result: ${PuffyRoyalMattressPDPSizeOrder1} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(2) > div > span.display-name.is--sale--price
    Run keyword if          '${Content}'!='${PuffyRoyalMattressPDPSizeOrder2}'      Fail        Second size in Puffy Royal Mattress PDP is Wrong. Expected Result: ${PuffyRoyalMattressPDPSizeOrder2} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(3) > div > span.display-name.is--sale--price
    Run keyword if          '${Content}'!='${PuffyRoyalMattressPDPSizeOrder3}'      Fail        Third size in Puffy Royal Mattress PDP is Wrong. Expected Result: ${PuffyRoyalMattressPDPSizeOrder3} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(4) > div > span.display-name.is--sale--price
    Run keyword if          '${Content}'!='${PuffyRoyalMattressPDPSizeOrder4}'      Fail        Fourth size in Puffy Royal Mattress PDP is Wrong. Expected Result: ${PuffyRoyalMattressPDPSizeOrder4} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(5) > div > span.display-name.is--sale--price
    Run keyword if          '${Content}'!='${PuffyRoyalMattressPDPSizeOrder5}'      Fail        Fifth size in Puffy Royal Mattress PDP is Wrong. Expected Result: ${PuffyRoyalMattressPDPSizeOrder5} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(6) > div > span.display-name.is--sale--price
    Run keyword if          '${Content}'!='${PuffyRoyalMattressPDPSizeOrder6}'      Fail        Sixth size in Puffy Royal Mattress PDP is Wrong. Expected Result: ${PuffyRoyalMattressPDPSizeOrder6} Actual Result: ${Content}



Check Puffy Foundation sizes list order

    Wait Until Element Is Visible          css=#product_form_3809096728650 > div.product-variants-holder > div > div > ul > li:nth-child(1) > div > span.display-name.is--not--sale

    ${Content}=            get text        css=#product_form_3809096728650 > div.product-variants-holder > div > div > ul > li:nth-child(1) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${PuffyFoundationPDPSizeOrder1}'      Fail        First size in Puffy Foundation PDP is Wrong. Expected Result: ${PuffyFoundationPDPSizeOrder1} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809096728650 > div.product-variants-holder > div > div > ul > li:nth-child(2) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${PuffyFoundationPDPSizeOrder2}'      Fail        Second size in Puffy Foundation PDP is Wrong. Expected Result: ${PuffyFoundationPDPSizeOrder2} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809096728650 > div.product-variants-holder > div > div > ul > li:nth-child(3) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${PuffyFoundationPDPSizeOrder3}'      Fail        Third size in Puffy Foundation PDP is Wrong. Expected Result: ${PuffyFoundationPDPSizeOrder3} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809096728650 > div.product-variants-holder > div > div > ul > li:nth-child(4) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${PuffyFoundationPDPSizeOrder4}'      Fail        Fourth size in Puffy Foundation PDP is Wrong. Expected Result: ${PuffyFoundationPDPSizeOrder4} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809096728650 > div.product-variants-holder > div > div > ul > li:nth-child(5) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${PuffyFoundationPDPSizeOrder5}'      Fail        Fifth size in Puffy Foundation PDP is Wrong. Expected Result: ${PuffyFoundationPDPSizeOrder5} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809096728650 > div.product-variants-holder > div > div > ul > li:nth-child(6) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${PuffyFoundationPDPSizeOrder6}'      Fail        Sixth size in Puffy Foundation PDP is Wrong. Expected Result: ${PuffyFoundationPDPSizeOrder6} Actual Result: ${Content}



Check Puffy ADjustable Base sizes list order

    Wait Until Element Is Visible          css=#product_form_3809097285706 > div.product-variants-holder > div > div > ul > li:nth-child(1) > div > span.display-name.is--sale--price

    ${Content}=            get text        css=#product_form_3809097285706 > div.product-variants-holder > div > div > ul > li:nth-child(1) > div > span.display-name.is--sale--price
    Run keyword if          '${Content}'!='${PuffyAdjustableBasePDPSizeOrder1}'      Fail        First size in Puffy Adjustable Base PDP is Wrong. Expected Result: ${PuffyAdjustableBasePDPSizeOrder1} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809097285706 > div.product-variants-holder > div > div > ul > li:nth-child(2) > div > span.display-name.is--sale--price
    Run keyword if          '${Content}'!='${PuffyAdjustableBasePDPSizeOrder2}'      Fail        Second size in Puffy Adjustable Base PDP is Wrong. Expected Result: ${PuffyAdjustableBasePDPSizeOrder2} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809097285706 > div.product-variants-holder > div > div > ul > li:nth-child(3) > div > span.display-name.is--sale--price
    Run keyword if          '${Content}'!='${PuffyAdjustableBasePDPSizeOrder3}'      Fail        Third size in Puffy Adjustable Base PDP is Wrong. Expected Result: ${PuffyAdjustableBasePDPSizeOrder3} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809097285706 > div.product-variants-holder > div > div > ul > li:nth-child(4) > div > span.display-name.is--sale--price
    Run keyword if          '${Content}'!='${PuffyAdjustableBasePDPSizeOrder4}'      Fail        Fourth size in Puffy Adjustable Base PDP is Wrong. Expected Result: ${PuffyAdjustableBasePDPSizeOrder4} Actual Result: ${Content}


Check Puffy Bed Frame sizes list order

    Wait Until Element Is Visible          css=#product_form_3809096433738 > div.product-variants-holder > div > div > ul > li:nth-child(1) > div > span.display-name.is--not--sale

    ${Content}=            get text        css=#product_form_3809096433738 > div.product-variants-holder > div > div > ul > li:nth-child(1) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${PuffyBedFramePDPSizeOrder1}'      Fail        First size in Puffy Bed Frame PDP is Wrong. Expected Result: ${PuffyBedFramePDPSizeOrder1} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809096433738 > div.product-variants-holder > div > div > ul > li:nth-child(2) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${PuffyBedFramePDPSizeOrder2}'      Fail        Second size in Puffy Bed Frame PDP is Wrong. Expected Result: ${PuffyBedFramePDPSizeOrder2} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809096433738 > div.product-variants-holder > div > div > ul > li:nth-child(3) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${PuffyBedFramePDPSizeOrder3}'      Fail        Third size in Puffy Bed Frame PDP is Wrong. Expected Result: ${PuffyBedFramePDPSizeOrder3} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809096433738 > div.product-variants-holder > div > div > ul > li:nth-child(4) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${PuffyBedFramePDPSizeOrder4}'      Fail        Fourth size in Puffy Bed Frame PDP is Wrong. Expected Result: ${PuffyBedFramePDPSizeOrder4} Actual Result: ${Content}


Check Puffy Comforter sizes list order

    Wait Until Element Is Visible          css=#product_form_3809095188554 > div.product-variants-holder > div > div > ul > li:nth-child(1) > div > span.display-name.is--not--sale

    ${Content}=            get text        css=#product_form_3809095188554 > div.product-variants-holder > div > div > ul > li:nth-child(1) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${PuffyComforterPDPSizeOrder1}'      Fail        First size in Puffy Comforter PDP is Wrong. Expected Result: ${PuffyComforterPDPSizeOrder1} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809095188554 > div.product-variants-holder > div > div > ul > li:nth-child(2) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${PuffyComforterPDPSizeOrder2}'      Fail        Second size in Puffy Comforter PDP is Wrong. Expected Result: ${PuffyComforterPDPSizeOrder2} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809095188554 > div.product-variants-holder > div > div > ul > li:nth-child(3) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${PuffyComforterPDPSizeOrder3}'      Fail        Third size in Puffy Comforter PDP is Wrong. Expected Result: ${PuffyComforterPDPSizeOrder3} Actual Result: ${Content}

Check Puffy Pillow sizes list order

    Wait Until Element Is Visible          css=#product_form_625398710306 > div.product-variants-holder > div > div > ul > li.option.selected.focus > div > span.display-name.is--not--sale

    ${Content}=            get text        css=#product_form_625398710306 > div.product-variants-holder > div > div > ul > li.option.selected.focus > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${PuffyPillowPDPSizeOrder1}'      Fail        First size in Puffy Pillow PDP is Wrong. Expected Result: ${PuffyPillowPDPSizeOrder1} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_625398710306 > div.product-variants-holder > div > div > ul > li:nth-child(2) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${PuffyPillowPDPSizeOrder2}'      Fail        Second size in Puffy Pillow PDP is Wrong. Expected Result: ${PuffyPillowPDPSizeOrder2} Actual Result: ${Content}

Check Puffy Mattress Pad sizes list order

    Wait Until Element Is Visible          css=#product_form_4839923548234 > div.product-variants-holder > div > div > ul > li:nth-child(1) > div > span.display-name.is--not--sale

    ${Content}=            get text        css=#product_form_4839923548234 > div.product-variants-holder > div > div > ul > li:nth-child(1) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${PuffyMattressPadPDPSizeOrder1}'      Fail        First size in Puffy Pillow PDP is Wrong. Expected Result: ${PuffyMattressPadPDPSizeOrder1} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4839923548234 > div.product-variants-holder > div > div > ul > li:nth-child(2) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${PuffyMattressPadPDPSizeOrder2}'      Fail        Second size in Puffy Pillow PDP is Wrong. Expected Result: ${PuffyMattressPadPDPSizeOrder2} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4839923548234 > div.product-variants-holder > div > div > ul > li:nth-child(3) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${PuffyMattressPadPDPSizeOrder3}'      Fail        Third size in Puffy Pillow PDP is Wrong. Expected Result: ${PuffyMattressPadPDPSizeOrder3} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4839923548234 > div.product-variants-holder > div > div > ul > li:nth-child(4) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${PuffyMattressPadPDPSizeOrder4}'      Fail        Fourth size in Puffy Pillow PDP is Wrong. Expected Result: ${PuffyMattressPadPDPSizeOrder4} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4839923548234 > div.product-variants-holder > div > div > ul > li:nth-child(5) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${PuffyMattressPadPDPSizeOrder5}'      Fail        Fifth size in Puffy Pillow PDP is Wrong. Expected Result: ${PuffyMattressPadPDPSizeOrder5} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4839923548234 > div.product-variants-holder > div > div > ul > li:nth-child(6) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${PuffyMattressPadPDPSizeOrder6}'      Fail        Sixth size in Puffy Pillow PDP is Wrong. Expected Result: ${PuffyMattressPadPDPSizeOrder6} Actual Result: ${Content}

Check Puffy Mattress Protector sizes list order

    Wait Until Element Is Visible          css=#product_form_3809096761418 > div.product-variants-holder > div > div > ul > li:nth-child(1) > div > span.display-name.is--not--sale

    ${Content}=            get text        css=#product_form_3809096761418 > div.product-variants-holder > div > div > ul > li:nth-child(1) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${PuffyMattressProtectorPDPSizeOrder1}'      Fail        First size in Puffy Pillow PDP is Wrong. Expected Result: ${PuffyMattressProtectorPDPSizeOrder1} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809096761418 > div.product-variants-holder > div > div > ul > li:nth-child(2) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${PuffyMattressProtectorPDPSizeOrder2}'      Fail        Second size in Puffy Pillow PDP is Wrong. Expected Result: ${PuffyMattressProtectorPDPSizeOrder2} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809096761418 > div.product-variants-holder > div > div > ul > li:nth-child(3) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${PuffyMattressProtectorPDPSizeOrder3}'      Fail        Third size in Puffy Pillow PDP is Wrong. Expected Result: ${PuffyMattressProtectorPDPSizeOrder3} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809096761418 > div.product-variants-holder > div > div > ul > li:nth-child(4) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${PuffyMattressProtectorPDPSizeOrder4}'      Fail        Fourth size in Puffy Pillow PDP is Wrong. Expected Result: ${PuffyMattressProtectorPDPSizeOrder4} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809096761418 > div.product-variants-holder > div > div > ul > li:nth-child(5) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${PuffyMattressProtectorPDPSizeOrder5}'      Fail        Fifth size in Puffy Pillow PDP is Wrong. Expected Result: ${PuffyMattressProtectorPDPSizeOrder5} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809096761418 > div.product-variants-holder > div > div > ul > li:nth-child(6) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${PuffyMattressProtectorPDPSizeOrder6}'      Fail        Sixth size in Puffy Pillow PDP is Wrong. Expected Result: ${PuffyMattressProtectorPDPSizeOrder6} Actual Result: ${Content}




Check Puffy Topper feel options

    Wait Until Element Is Visible          css=#product_form_3809097121866 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-feel > div > ul > li.option.selected.focus > div > span.display-name.is--not--sale

    ${Content}=            get text        css=#product_form_3809097121866 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-feel > div > ul > li.option.selected.focus > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${PuffyTopperPDPFeelOrder1}'      Fail        First feel option in Puffy Topper PDP is Wrong. Expected Result: ${PuffyTopperPDPFeelOrder1} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809097121866 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-feel > div > ul > li:nth-child(2) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${PuffyTopperPDPFeelOrder2}'      Fail        Second feel option in Puffy Topper PDP is Wrong. Expected Result: ${PuffyTopperPDPFeelOrder1} Actual Result: ${Content}. Expected Result: ${PuffyTopperPDPFeelOrder2} Actual Result: ${Content}

Check Puffy Topper sizes list order

    Wait Until Element Is Visible          css=#product_form_3809097121866 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > div > span.display-name.is--not--sale

    ${Content}=            get text        css=#product_form_3809097121866 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${PuffyTopperPDPSizeOrder1}'      Fail        First size in Puffy Topper PDP is Wrong. Expected Result: ${PuffyMattressProtectorPDPSizeOrder1} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809097121866 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(2) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${PuffyTopperPDPSizeOrder2}'      Fail        Second size in Puffy Topper PDP is Wrong. Expected Result: ${PuffyMattressProtectorPDPSizeOrder2} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809097121866 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(3) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${PuffyTopperPDPSizeOrder3}'      Fail        Third size in Puffy Topper PDP is Wrong. Expected Result: ${PuffyMattressProtectorPDPSizeOrder3} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809097121866 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(4) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${PuffyTopperPDPSizeOrder4}'      Fail        Fourth size in Puffy Topper PDP is Wrong. Expected Result: ${PuffyMattressProtectorPDPSizeOrder4} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809097121866 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(5) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${PuffyTopperPDPSizeOrder5}'      Fail        Fifth size in Puffy Topper PDP is Wrong. Expected Result: ${PuffyMattressProtectorPDPSizeOrder5} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809097121866 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(6) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${PuffyTopperPDPSizeOrder6}'      Fail        Sixth size in Puffy Topper PDP is Wrong. Expected Result: ${PuffyMattressProtectorPDPSizeOrder6} Actual Result: ${Content}


Check Puffy Blanket sizes list order

    Wait Until Element Is Visible          css=#product_form_4629448327242 > div.product-variants-holder > div > div > div > div > span.display-name.is--not--sale
    ${Content}=            get text        css=#product_form_4629448327242 > div.product-variants-holder > div > div > div > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${PuffyBlanketPDPSizeOrder1}'      Fail        First size in Puffy Blanket PDP is Wrong. Expected Result: ${PuffyBlanketPDPSizeOrder1} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4629448327242 > div.product-variants-holder > div > div > ul > li:nth-child(2) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${PuffyBlanketPDPSizeOrder2}'      Fail        Second size in Puffy Blanket PDP is Wrong. Expected Result: ${PuffyBlanketPDPSizeOrder2} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4629448327242 > div.product-variants-holder > div > div > ul > li:nth-child(3) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${PuffyBlanketPDPSizeOrder3}'      Fail        Third size in Puffy Blanket PDP is Wrong. Expected Result: ${PuffyBlanketPDPSizeOrder3} Actual Result: ${Content}

Check Puffy Weighted Blanket sizes list order

    Wait Until Element Is Visible          css=#product_form_3809096368202 > div.product-variants-holder > div > div > ul > li:nth-child(1) > div > span.display-name.is--not--sale
    ${Content}=            get text        css=#product_form_3809096368202 > div.product-variants-holder > div > div > ul > li:nth-child(1) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${PuffyWeightedBlanketPDPSizeOrder1}'      Fail        First size in Puffy Weighted Blanket PDP is Wrong. Expected Result: ${PuffyWeightedBlanketPDPSizeOrder1} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809096368202 > div.product-variants-holder > div > div > ul > li:nth-child(2) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${PuffyWeightedBlanketPDPSizeOrder2}'      Fail        Second size in Puffy Weighted Blanket PDP is Wrong. Expected Result: ${PuffyWeightedBlanketPDPSizeOrder2} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3809096368202 > div.product-variants-holder > div > div > ul > li:nth-child(3) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${PuffyWeightedBlanketPDPSizeOrder3}'      Fail        Third size in Puffy Weighted Blanket PDP is Wrong. Expected Result: ${PuffyWeightedBlanketPDPSizeOrder3} Actual Result: ${Content}

Check Puffy Sheets color options

    Wait Until Element Is Visible          css=#product_form_4459334533194 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-color > div > ul > li.option.selected.focus > div > span.display-name.is--not--sale

    ${Content}=            get text        css=#product_form_4459334533194 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-color > div > ul > li.option.selected.focus > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${PuffySheetsPDPColorOrder1}'      Fail        First color option in Puffy Sheets PDP is Wrong. Expected Result: ${PuffySheetsPDPColorOrder1} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4459334533194 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-color > div > ul > li:nth-child(2)
    Run keyword if          '${Content}'!='${PuffySheetsPDPColorOrder2}'      Fail        Second color option in Puffy Sheets PDP is Wrong. Expected Result: ${PuffySheetsPDPColorOrder2} Actual Result: ${Content}


Check Puffy Sheets sizes list order

    Wait Until Element Is Visible          css=#product_form_4459334533194 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > div > span.display-name.is--not--sale

    ${Content}=            get text        css=#product_form_4459334533194 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${PuffySheetsPDPSizeOrder1}'      Fail        First size in Puffy Sheets PDP is Wrong. Expected Result: ${PuffySheetsPDPSizeOrder1} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4459334533194 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(2) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${PuffySheetsPDPSizeOrder2}'      Fail        Second size in Puffy Sheets PDP is Wrong. Expected Result: ${PuffySheetsPDPSizeOrder2} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4459334533194 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(3) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${PuffySheetsPDPSizeOrder3}'      Fail        Third size in Puffy Sheets PDP is Wrong. Expected Result: ${PuffySheetsPDPSizeOrder3} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4459334533194 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(4) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${PuffySheetsPDPSizeOrder4}'      Fail        Fourth size in Puffy Sheets PDP is Wrong. Expected Result: ${PuffySheetsPDPSizeOrder4} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4459334533194 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(5) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${PuffySheetsPDPSizeOrder5}'      Fail        Fifth size in Puffy Sheets PDP is Wrong. Expected Result: ${PuffySheetsPDPSizeOrder5} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4459334533194 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(6) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${PuffySheetsPDPSizeOrder6}'      Fail        Sixth size in Puffy Sheets PDP is Wrong. Expected Result: ${PuffySheetsPDPSizeOrder6} Actual Result: ${Content}

Check Puffy Dog Bed sizes list order

    Wait Until Element Is Visible          css=#product_form_4469236236362 > div.product-variants-holder > div > div > ul > li.option.selected.focus > div > span.display-name.is--not--sale

    ${Content}=            get text        css=#product_form_4469236236362 > div.product-variants-holder > div > div > ul > li.option.selected.focus > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${PuffyDogBedPDPSizeOrder1}'      Fail        First size in Puffy Dog Bed PDP is Wrong. Expected Result: ${PuffyDogBedPDPSizeOrder1} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4469236236362 > div.product-variants-holder > div > div > ul > li:nth-child(2) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${PuffyDogBedPDPSizeOrder2}'      Fail        Second size in Puffy Dog Bed PDP is Wrong. Expected Result: ${PuffyDogBedPDPSizeOrder2} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4469236236362 > div.product-variants-holder > div > div > ul > li:nth-child(3) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${PuffyDogBedPDPSizeOrder3}'      Fail        Third size in Puffy Dog Bed PDP is Wrong. Expected Result: ${PuffyDogBedPDPSizeOrder3} Actual Result: ${Content}

Check Puffy Rug sizes list order

    Wait Until Element Is Visible          css=#product_form_4769367261258 > div.product-variants-holder > div.product-variant.selector-wrapper.jsRealOptions.product-size > div > ul > li.option.selected.focus > div > span.display-name.is--not--sale

    ${Content}=            get text        css=#product_form_4769367261258 > div.product-variants-holder > div.product-variant.selector-wrapper.jsRealOptions.product-size > div > ul > li.option.selected.focus > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${PuffyRugPDPSizeOrder1}'      Fail        First size in Puffy Rug PDP is Wrong. Expected Result: ${PuffyRugPDPSizeOrder1} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4769367261258 > div.product-variants-holder > div.product-variant.selector-wrapper.jsRealOptions.product-size > div > ul > li:nth-child(2) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${PuffyRugPDPSizeOrder2}'      Fail        Second size in Puffy Rug PDP is Wrong. Expected Result: ${PuffyRugPDPSizeOrder2} Actual Result: ${Content}


#################################################Select Sizes#################################################
Select Puffy Mattress Twin
    Click element           css=#product_form_3809097089098 > div.product-variants-holder > div > div > ul > li:nth-child(1)
Select Puffy Mattress TwinXL
    Click element           css=#product_form_3809097089098 > div.product-variants-holder > div > div > ul > li:nth-child(2)
Select Puffy Mattress Full
    Click element           css=#product_form_3809097089098 > div.product-variants-holder > div > div > ul > li:nth-child(3)
Select Puffy Mattress Queen
    Click element           css=#product_form_3809097089098 > div.product-variants-holder > div > div > ul > li:nth-child(4)
Select Puffy Mattress King
    Click element           css=#product_form_3809097089098 > div.product-variants-holder > div > div > ul > li:nth-child(5)
Select Puffy Mattress Cal King
    Click element           css=#product_form_3809097089098 > div.product-variants-holder > div > div > ul > li:nth-child(6)

Select Puffy Lux Mattress Twin
    Click element           css=#product_form_3809097023562 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1)
Select Puffy Lux Mattress TwinXL
    Click element           css=#product_form_3809097023562 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(2)
Select Puffy Lux Mattress Full
    Click element           css=#product_form_3809097023562 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(3)
Select Puffy Lux Mattress Queen
    Click element           css=#product_form_3809097023562 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(4)
Select Puffy Lux Mattress King
    Click element           css=#product_form_3809097023562 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(5)
Select Puffy Lux Mattress Cal King
    Click element           css=#product_form_3809097023562 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(6)

Select Puffy Royal Mattress Twin
    Click element           css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1)
Select Puffy Royal Mattress TwinXL
    Click element           css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(2)
Select Puffy Royal Mattress Full
    Click element           css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(3)
Select Puffy Royal Mattress Queen
    Click element           css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(4)
Select Puffy Royal Mattress King
    Click element           css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(5)
Select Puffy Royal Mattress Cal King
    Click element           css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(6)


Select Puffy Foundation Twin
    Click element           css=#product_form_3809096728650 > div.product-variants-holder > div > div > ul > li:nth-child(1)
Select Puffy Foundation TwinXL
    Click element           css=#product_form_3809096728650 > div.product-variants-holder > div > div > ul > li:nth-child(2)
Select Puffy Foundation Full
    Click element           css=#product_form_3809096728650 > div.product-variants-holder > div > div > ul > li:nth-child(3)
Select Puffy Foundation Queen
    Click element           css=#product_form_3809096728650 > div.product-variants-holder > div > div > ul > li:nth-child(4)
Select Puffy Foundation King
    Click element           css=#product_form_3809096728650 > div.product-variants-holder > div > div > ul > li:nth-child(5)
Select Puffy Foundation Cal King
    Click element           css=#product_form_3809096728650 > div.product-variants-holder > div > div > ul > li:nth-child(6)


Select Puffy Adjustable Base TwinXL
    Click element           css=#product_form_3809097285706 > div.product-variants-holder > div > div > ul > li:nth-child(1)
Select Puffy Adjustable Base Full
    Click element           css=#product_form_3809097285706 > div.product-variants-holder > div > div > ul > li:nth-child(2)
Select Puffy Adjustable Base Queen
    Click element           css=#product_form_3809097285706 > div.product-variants-holder > div > div > ul > li:nth-child(3)
Select Puffy Adjustable Base Split King
    Click element           css=#product_form_3809097285706 > div.product-variants-holder > div > div > ul > li:nth-child(4)


Select Puffy Bed Frame Full
    Click element           css=#product_form_3809096433738 > div.product-variants-holder > div > div > ul > li:nth-child(1)
Select Puffy Bed Frame Queen
    Click element           css=#product_form_3809096433738 > div.product-variants-holder > div > div > ul > li:nth-child(2)
Select Puffy Bed Frame King
    Click element           css=#product_form_3809096433738 > div.product-variants-holder > div > div > ul > li:nth-child(3)
Select Puffy Bed Frame Cal King
    Click element           css=#product_form_3809096433738 > div.product-variants-holder > div > div > ul > li:nth-child(4)

Select Puffy Comforter Twin/Twin XL
    Click element           css=#product_form_3809095188554 > div.product-variants-holder > div > div > ul > li:nth-child(1)
Select Puffy Comforter Full/Queen
    Click element           css=#product_form_3809095188554 > div.product-variants-holder > div > div > ul > li:nth-child(2)
Select Puffy Comforter King/Cal King
    Click element           css=#product_form_3809095188554 > div.product-variants-holder > div > div > ul > li:nth-child(3)

Select Puffy Pillow Standard
    Click element           css=#product_form_625398710306 > div.product-variants-holder > div > div > ul > li:nth-child(1)
Select Puffy Pillow King
    Click element           css=#product_form_625398710306 > div.product-variants-holder > div > div > ul > li:nth-child(2)

Select Puffy Mattress Pad Twin
    Click element           css=#product_form_4839923548234 > div.product-variants-holder > div > div > ul > li:nth-child(1)
Select Puffy Mattress Pad TwinXL
    Click element           css=#product_form_4839923548234 > div.product-variants-holder > div > div > ul > li:nth-child(2)
Select Puffy Mattress Pad Full
    Click element           css=#product_form_4839923548234 > div.product-variants-holder > div > div > ul > li:nth-child(3)
Select Puffy Mattress Pad Queen
    Click element           css=#product_form_4839923548234 > div.product-variants-holder > div > div > ul > li:nth-child(4)
Select Puffy Mattress Pad King
    Click element           css=#product_form_4839923548234 > div.product-variants-holder > div > div > ul > li:nth-child(5)
Select Puffy Mattress Pad Cal King
    Click element           css=#product_form_4839923548234 > div.product-variants-holder > div > div > ul > li:nth-child(6)

Select Puffy Mattress Protector Twin
    Click element           css=#product_form_3809096761418 > div.product-variants-holder > div > div > ul > li:nth-child(1)
Select Puffy Mattress Protector TwinXL
    Click element           css=#product_form_3809096761418 > div.product-variants-holder > div > div > ul > li:nth-child(2)
Select Puffy Mattress Protector Full
    Click element           css=#product_form_3809096761418 > div.product-variants-holder > div > div > ul > li:nth-child(3)
Select Puffy Mattress Protector Queen
    Click element           css=#product_form_3809096761418 > div.product-variants-holder > div > div > ul > li:nth-child(4)
Select Puffy Mattress Protector King
    Click element           css=#product_form_3809096761418 > div.product-variants-holder > div > div > ul > li:nth-child(5)
Select Puffy Mattress Protector Cal King
    Click element           css=#product_form_3809096761418 > div.product-variants-holder > div > div > ul > li:nth-child(6)
Select Puffy Topper Firm
    Click element           css=#product_form_3809097121866 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-feel > div > ul > li.option.selected.focus
Select Puffy Topper Soft
    Click element           css=#product_form_3809097121866 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-feel > div > ul > li:nth-child(2)
Select Puffy Topper Twin
    Click element           css=#product_form_3809097121866 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1)
Select Puffy Topper TwinXL
    Click element           css=#product_form_3809097121866 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(2)
Select Puffy Topper Full
    Click element           css=#product_form_3809097121866 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(3)
Select Puffy Topper Queen
    Click element           css=#product_form_3809097121866 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(4)
Select Puffy Topper King
    Click element           css=#product_form_3809097121866 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(5)
Select Puffy Topper Cal King
    Click element           css=#product_form_3809097121866 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(6)
Select Puffy Blanket Small
    Click element           css=#product_form_4629448327242 > div.product-variants-holder > div > div > ul > li.option.selected.focus
Select Puffy Blanket Medium
    Click element           css=#product_form_4629448327242 > div.product-variants-holder > div > div > ul > li:nth-child(2)
Select Puffy Blanket Large
    Click element           css=#product_form_4629448327242 > div.product-variants-holder > div > div > ul > li:nth-child(3)
Select Puffy Weighted Blanket Twin
    Click element           css=#product_form_3809096368202 > div.product-variants-holder > div > div > ul > li:nth-child(1)
Select Puffy Weighted Blanket Queen
    Click element           css=#product_form_3809096368202 > div.product-variants-holder > div > div > ul > li:nth-child(2)
Select Puffy Weighted Blanket King
    Click element           css=#product_form_3809096368202 > div.product-variants-holder > div > div > ul > li:nth-child(3)
Select Puffy Sheets Gray
    Click element           css=#product_form_4459334533194 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-color > div > ul > li.option.selected.focus
Select Puffy Sheets White
    Click element           css=#product_form_4459334533194 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-color > div > ul > li:nth-child(2)
Select Puffy Sheets Twin
    Click element           css=#product_form_4459334533194 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1)
Select Puffy Sheets TwinXL
    Click element           css=#product_form_4459334533194 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(2)
Select Puffy Sheets Full
    Click element           css=#product_form_4459334533194 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(3)
Select Puffy Sheets Queen
    Click element           css=#product_form_4459334533194 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(4)
Select Puffy Sheets King
    Click element           css=#product_form_4459334533194 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(5)
Select Puffy Sheets Cal King
    Click element           css=#product_form_4459334533194 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(6)
Select Puffy Dog Bed Small
    Click element           css=#product_form_4469236236362 > div.product-variants-holder > div > div > ul > li.option.selected.focus
Select Puffy Dog Bed Medium
    Click element           css=#product_form_4469236236362 > div.product-variants-holder > div > div > ul > li:nth-child(2)
Select Puffy Dog Bed Large
    Click element           css=#product_form_4469236236362 > div.product-variants-holder > div > div > ul > li:nth-child(3)
Select Puffy Rug Medium
    Click element           css=#product_form_4769367261258 > div.product-variants-holder > div.product-variant.selector-wrapper.jsRealOptions.product-size > div > div
Select Puffy Rug Large
    Click element           css=#product_form_4769367261258 > div.product-variants-holder > div.product-variant.selector-wrapper.jsRealOptions.product-size > div > ul > li:nth-child(2)
#################################################Check Monthly Payment terms#################################################
Check Puffy Mattress Twin size monthly payment price
    sleep                               2s
    #${Klarna}=            get text        css=#product_form_3809097089098 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    #Run keyword if          '${Klarna}'!='${PuffyMattressTwinKlarna300Off}'      Fail        Wrong Puffy Mattress Twin Size monthly payment for Klarna. Expected Result: ${PuffyMattressTwinKlarna300Off} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_3809097089098 > div.purchase-details > div > div.splitit-section.jsSplititSection > div > span.-splitit--text.-splitit--text-price
    Run keyword if          '${Splitit}'!='${PuffyMattressTwinSplitIt300Off}'      Fail      Wrong Puffy Mattress Twin Size monthly payment for Splitit. Expected Result: ${PuffyMattressTwinSplitIt300Off} Actual Result: ${Splitit}

Check Puffy Mattress TwinXL size monthly payment price
    sleep                               2s
    #${Klarna}=            get text        css=#product_form_3809097089098 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    #Run keyword if          '${Klarna}'!='${PuffyMattressTwinXLKlarna300Off}'      Fail        Wrong Puffy Mattress Twin XL Size monthly payment for Klarna. Expected Result: ${PuffyMattressTwinXLKlarna300Off} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_3809097089098 > div.purchase-details > div > div.splitit-section.jsSplititSection > div > span.-splitit--text.-splitit--text-price
    Run keyword if          '${Splitit}'!='${PuffyMattressTwinXLSplitIt300Off}'      Fail      Wrong Puffy Mattress Twin XL Size monthly payment for Splitit. Expected Result: ${PuffyMattressTwinXLSplitIt300Off} Actual Result: ${Splitit}

Check Puffy Mattress Full size monthly payment price
    sleep                               2s
    #${Klarna}=            get text        css=#product_form_3809097089098 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    #Run keyword if          '${Klarna}'!='${PuffyMattressFullKlarna300Off}'      Fail        Wrong Puffy Mattress Full Size monthly payment for Klarna. Expected Result: ${PuffyMattressFullKlarna300Off} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_3809097089098 > div.purchase-details > div > div.splitit-section.jsSplititSection > div > span.-splitit--text.-splitit--text-price
    Run keyword if          '${Splitit}'!='${PuffyMattressFullSplitIt300Off}'      Fail      Wrong Puffy Mattress Full Size monthly payment for Splitit. Expected Result: ${PuffyMattressFullSplitIt300Off} Actual Result: ${Splitit}

Check Puffy Mattress Queen size monthly payment price
    sleep                               2s
    #${Klarna}=            get text        css=#product_form_3809097089098 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    #Run keyword if          '${Klarna}'!='${PuffyMattressQueenKlarna300Off}'      Fail        Wrong Puffy Mattress Queen Size monthly payment for Klarna. Expected Result: ${PuffyMattressQueenKlarna300Off} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_3809097089098 > div.purchase-details > div > div.splitit-section.jsSplititSection > div > span.-splitit--text.-splitit--text-price
    Run keyword if          '${Splitit}'!='${PuffyMattressQueenSplitIt300Off}'      Fail      Wrong Puffy Mattress Queen Size monthly payment for Splitit. Expected Result: ${PuffyMattressQueenSplitIt300Off} Actual Result: ${Splitit}

Check Puffy Mattress King size monthly payment price
    sleep                               2s
    #${Klarna}=            get text        css=#product_form_3809097089098 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    #Run keyword if          '${Klarna}'!='${PuffyMattressKingKlarna300Off}'      Fail        Wrong Puffy Mattress King Size monthly payment for Klarna. Expected Result: ${PuffyMattressKingKlarna300Off} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_3809097089098 > div.purchase-details > div > div.splitit-section.jsSplititSection > div > span.-splitit--text.-splitit--text-price
    Run keyword if          '${Splitit}'!='${PuffyMattressKingSplitIt300Off}'      Fail      Wrong Puffy Mattress King Size monthly payment for Splitit. Expected Result: ${PuffyMattressKingSplitIt300Off} Actual Result: ${Splitit}

Check Puffy Mattress Cal King size monthly payment price
    sleep                               2s
    #${Klarna}=            get text        css=#product_form_3809097089098 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    #Run keyword if          '${Klarna}'!='${PuffyMattressCalKingKlarna300Off}'      Fail        Wrong Puffy Mattress Cal King Size monthly payment for Klarna. Expected Result: ${PuffyMattressCalKingKlarna300Off} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_3809097089098 > div.purchase-details > div > div.splitit-section.jsSplititSection > div > span.-splitit--text.-splitit--text-price
    Run keyword if          '${Splitit}'!='${PuffyMattressCalKingSplitIt300Off}'      Fail      Wrong Puffy Mattress Cal King Size monthly payment for Splitit. Expected Result: ${PuffyMattressCalKingSplitIt300Off} Actual Result: ${Splitit}


Check Puffy Lux Mattress Twin size monthly payment price
    sleep                               2s
    #${Klarna}=            get text        css=#product_form_3809097023562 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    #Run keyword if          '${Klarna}'!='${PuffyLuxMattressTwinKlarna300Off}'      Fail        Wrong Puffy Lux Mattress Twin Size monthly payment for Klarna. Expected Result: ${PuffyLuxMattressTwinKlarna300Off} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_3809097023562 > div.purchase-details > div > div.splitit-section.jsSplititSection > div > span.-splitit--text.-splitit--text-price
    Run keyword if          '${Splitit}'!='${PuffyLuxMattressTwinSplitIt300Off}'      Fail      Wrong Puffy Lux Mattress Twin Size monthly payment for Splitit. Expected Result: ${PuffyLuxMattressTwinSplitIt300Off} Actual Result: ${Splitit}

Check Puffy Lux Mattress TwinXL size monthly payment price
    sleep                               2s
    #${Klarna}=            get text        css=#product_form_3809097023562 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    #Run keyword if          '${Klarna}'!='${PuffyLuxMattressTwinXLKlarna300Off}'      Fail        Wrong Puffy Lux Mattress Twin XL Size monthly payment for Klarna. Expected Result: ${PuffyLuxMattressTwinXLKlarna300Off} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_3809097023562 > div.purchase-details > div > div.splitit-section.jsSplititSection > div > span.-splitit--text.-splitit--text-price
    Run keyword if          '${Splitit}'!='${PuffyLuxMattressTwinXLSplitIt300Off}'      Fail      Wrong Puffy Lux Mattress Twin XL Size monthly payment for Splitit. Expected Result: ${PuffyLuxMattressTwinXLSplitIt300Off} Actual Result: ${Splitit}

Check Puffy Lux Mattress Full size monthly payment price
    sleep                               2s
    #${Klarna}=            get text        css=#product_form_3809097023562 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    #Run keyword if          '${Klarna}'!='${PuffyLuxMattressFullKlarna300Off}'      Fail        Wrong Puffy Lux Mattress Full Size monthly payment for Klarna. Expected Result: ${PuffyLuxMattressFullKlarna300Off} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_3809097023562 > div.purchase-details > div > div.splitit-section.jsSplititSection > div > span.-splitit--text.-splitit--text-price
    Run keyword if          '${Splitit}'!='${PuffyLuxMattressFullSplitIt300Off}'      Fail      Wrong Puffy Lux Mattress Full Size monthly payment for Splitit. Expected Result: ${PuffyLuxMattressFullSplitIt300Off} Actual Result: ${Splitit}

Check Puffy Lux Mattress Queen size monthly payment price
    sleep                               2s
    #${Klarna}=            get text        css=#product_form_3809097023562 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    #Run keyword if          '${Klarna}'!='${PuffyLuxMattressQueenKlarna300Off}'      Fail        Wrong Puffy Lux Mattress Queen Size monthly payment for Klarna. Expected Result: ${PuffyLuxMattressQueenKlarna300Off} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_3809097023562 > div.purchase-details > div > div.splitit-section.jsSplititSection > div > span.-splitit--text.-splitit--text-price
    Run keyword if          '${Splitit}'!='${PuffyLuxMattressQueenSplitIt300Off}'      Fail      Wrong Puffy Lux Mattress Queen Size monthly payment for Splitit. Expected Result: ${PuffyLuxMattressQueenSplitIt300Off} Actual Result: ${Splitit}

Check Puffy Lux Mattress King size monthly payment price
    sleep                               2s
    #${Klarna}=            get text        css=#product_form_3809097023562 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    #Run keyword if          '${Klarna}'!='${PuffyLuxMattressKingKlarna300Off}'      Fail        Wrong Puffy Lux Mattress King Size monthly payment for Klarna. Expected Result: ${PuffyLuxMattressKingKlarna300Off} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_3809097023562 > div.purchase-details > div > div.splitit-section.jsSplititSection > div > span.-splitit--text.-splitit--text-price
    Run keyword if          '${Splitit}'!='${PuffyLuxMattressKingSplitIt300Off}'      Fail      Wrong Puffy Lux Mattress King Size monthly payment for Splitit. Expected Result: ${PuffyLuxMattressKingSplitIt300Off} Actual Result: ${Splitit}

Check Puffy Lux Mattress Cal King size monthly payment price
    sleep                               2s
    #${Klarna}=            get text        css=#product_form_3809097023562 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    #Run keyword if          '${Klarna}'!='${PuffyLuxMattressCalKingKlarna300Off}'      Fail        Wrong Puffy Lux Mattress Cal King Size monthly payment for Klarna. Expected Result: ${PuffyLuxMattressCalKingKlarna300Off} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_3809097023562 > div.purchase-details > div > div.splitit-section.jsSplititSection > div > span.-splitit--text.-splitit--text-price
    Run keyword if          '${Splitit}'!='${PuffyLuxMattressCalKingSplitIt300Off}'      Fail      Wrong Puffy Lux Mattress Cal King Size monthly payment for Splitit. Expected Result: ${PuffyLuxMattressCalKingSplitIt300Off} Actual Result: ${Splitit}

Check Puffy Royal Mattress Twin size monthly payment price
    sleep                               2s
    #${Klarna}=            get text        css=#product_form_3832788910114 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    #Run keyword if          '${Klarna}'!='${PuffyRoyalMattressTwinKlarna300Off}'      Fail        Wrong Puffy Lux Mattress Twin Size monthly payment for Klarna. Expected Result: ${PuffyRoyalMattressTwinKlarna300Off} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_3832788910114 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PuffyRoyalMattressTwinSplitIt300Off}'      Fail      Wrong Puffy Lux Mattress Twin Size monthly payment for Splitit. Expected Result: ${PuffyRoyalMattressTwinSplitIt300Off} Actual Result: ${Splitit}

Check Puffy Royal Mattress TwinXL size monthly payment price
    sleep                               2s
    #${Klarna}=            get text        css=#product_form_3832788910114 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    #Run keyword if          '${Klarna}'!='${PuffyRoyalMattressTwinXLKlarna300Off}'      Fail        Wrong Puffy Lux Mattress Twin XL Size monthly payment for Klarna. Expected Result: ${PuffyRoyalMattressTwinXLKlarna300Off} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_3832788910114 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PuffyRoyalMattressTwinXLSplitIt300Off}'      Fail      Wrong Puffy Lux Mattress Twin XL Size monthly payment for Splitit. Expected Result: ${PuffyRoyalMattressTwinXLSplitIt300Off} Actual Result: ${Splitit}

Check Puffy Royal Mattress Full size monthly payment price
    sleep                               2s
    #${Klarna}=            get text        css=#product_form_3832788910114 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    #Run keyword if          '${Klarna}'!='${PuffyRoyalMattressFullKlarna300Off}'      Fail        Wrong Puffy Lux Mattress Full Size monthly payment for Klarna. Expected Result: ${PuffyRoyalMattressFullKlarna300Off} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_3832788910114 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PuffyRoyalMattressFullSplitIt300Off}'      Fail      Wrong Puffy Lux Mattress Full Size monthly payment for Splitit. Expected Result: ${PuffyRoyalMattressFullSplitIt300Off} Actual Result: ${Splitit}

Check Puffy Royal Mattress Queen size monthly payment price
    sleep                               2s
    #${Klarna}=            get text        css=#product_form_3832788910114 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    #Run keyword if          '${Klarna}'!='${PuffyRoyalMattressQueenKlarna300Off}'      Fail        Wrong Puffy Lux Mattress Queen Size monthly payment for Klarna. Expected Result: ${PuffyRoyalMattressQueenKlarna300Off} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_3832788910114 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PuffyRoyalMattressQueenSplitIt300Off}'      Fail      Wrong Puffy Lux Mattress Queen Size monthly payment for Splitit. Expected Result: ${PuffyRoyalMattressQueenSplitIt300Off} Actual Result: ${Splitit}

Check Puffy Royal Mattress King size monthly payment price
    sleep                               2s
    #${Klarna}=            get text        css=#product_form_3832788910114 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    #Run keyword if          '${Klarna}'!='${PuffyRoyalMattressKingKlarna300Off}'      Fail        Wrong Puffy Royal Mattress King Size monthly payment for Klarna. Expected Result: ${PuffyRoyalMattressKingKlarna300Off} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_3832788910114 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PuffyRoyalMattressKingSplitIt300Off}'      Fail      Wrong Puffy Lux Mattress King Size monthly payment for Splitit. Expected Result: ${PuffyRoyalMattressKingSplitIt300Off} Actual Result: ${Splitit}

Check Puffy Royal Mattress Cal King size monthly payment price
    sleep                               2s
    #${Klarna}=            get text        css=#product_form_3832788910114 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    #Run keyword if          '${Klarna}'!='${PuffyRoyalMattressCalKingKlarna300Off}'      Fail        Wrong Puffy Lux Mattress Cal King Size monthly payment for Klarna. Expected Result: ${PuffyRoyalMattressCalKingKlarna300Off} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_3832788910114 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PuffyRoyalMattressCalKingSplitIt300Off}'      Fail      Wrong Puffy Lux Mattress Cal King Size monthly payment for Splitit. Expected Result: ${PuffyRoyalMattressCalKingSplitIt300Off} Actual Result: ${Splitit}

Check Puffy Foundation Twin size monthly payment price
    sleep                               2s
    #${Klarna}=            get text        css=#product_form_3809096728650 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    #Run keyword if          '${Klarna}'!='${PuffyFoundationTwinKlarna15%Off}'      Fail        Wrong Puffy Foundation Twin Size monthly payment for Klarna. Expected Result: ${PuffyFoundationTwinKlarnaNoOff} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_3809096728650 > div.purchase-details > div > div.splitit-section.jsSplititSection > div > span.-splitit--text.-splitit--text-price
    Run keyword if          '${Splitit}'!='${PuffyFoundationTwinSplitItNoOff}'      Fail      Wrong Puffy Foundation Twin Size monthly payment for Splitit. Expected Result: ${PuffyFoundationTwinSplitItNoOff} Actual Result: ${Splitit}

Check Puffy Foundation TwinXL size monthly payment price
    sleep                               2s
    #${Klarna}=            get text        css=#product_form_3809096728650 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    #Run keyword if          '${Klarna}'!='${PuffyFoundationTwinXLKlarna15%Off}'      Fail        Wrong Puffy Lux Mattress Twin XL Size monthly payment for Klarna. Expected Result: ${PuffyFoundationTwinXLKlarnaNoOff} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_3809096728650 > div.purchase-details > div > div.splitit-section.jsSplititSection > div > span.-splitit--text.-splitit--text-price
    Run keyword if          '${Splitit}'!='${PuffyFoundationTwinXLSplitItNoOff}'      Fail      Wrong Puffy Lux Mattress Twin XL Size monthly payment for Splitit. Expected Result: ${PuffyFoundationTwinXLSplitItNoOff} Actual Result: ${Splitit}

Check Puffy Foundation Full size monthly payment price
    sleep                               2s
    #${Klarna}=            get text        css=#product_form_3809096728650 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    #Run keyword if          '${Klarna}'!='${PuffyFoundationFullKlarna15%Off}'      Fail        Wrong Puffy Foundation Full Size monthly payment for Klarna. Expected Result: ${PuffyFoundationFullKlarnaNoOff} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_3809096728650 > div.purchase-details > div > div.splitit-section.jsSplititSection > div > span.-splitit--text.-splitit--text-price
    Run keyword if          '${Splitit}'!='${PuffyFoundationFullSplitItNoOff}'      Fail      Wrong Foundation Full Size monthly payment for Splitit. Expected Result: ${PuffyFoundationFullSplitItNoOff} Actual Result: ${Splitit}

Check Puffy Foundation Queen size monthly payment price
    sleep                               2s
    #${Klarna}=            get text        css=#product_form_3809096728650 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    #Run keyword if          '${Klarna}'!='${PuffyFoundationQueenKlarna15%Off}'     Fail        Wrong Puffy Foundation Queen Size monthly payment for Klarna. Expected Result: ${PuffyFoundationQueenKlarnaNoOff} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_3809096728650 > div.purchase-details > div > div.splitit-section.jsSplititSection > div > span.-splitit--text.-splitit--text-price
    Run keyword if          '${Splitit}'!='${PuffyFoundationQueenSplitItNoOff}'      Fail      Wrong Puffy Foundation Queen Size monthly payment for Splitit. Expected Result: ${PuffyFoundationQueenSplitItNoOff} Actual Result: ${Splitit}

Check Puffy Foundation King size monthly payment price
    sleep                               2s
    #${Klarna}=            get text        css=#product_form_3809096728650 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    #Run keyword if          '${Klarna}'!='${PuffyFoundationKingKlarna15%Off}'      Fail        Wrong Puffy Foundation King Size monthly payment for Klarna. Expected Result: ${PuffyFoundationKingKlarnaNoOff} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_3809096728650 > div.purchase-details > div > div.splitit-section.jsSplititSection > div > span.-splitit--text.-splitit--text-price
    Run keyword if          '${Splitit}'!='${PuffyFoundationKingSplitItNoOff}'      Fail      Wrong Puffy Foundation King Size monthly payment for Splitit. Expected Result: ${PuffyFoundationKingSplitItNoOff} Actual Result: ${Splitit}

Check Puffy Foundation Cal King size monthly payment price
    sleep                               2s
    #${Klarna}=            get text        css=#product_form_3809096728650 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    #Run keyword if          '${Klarna}'!='${PuffyFoundationCalKingKlarna15%Off}'      Fail        Wrong Puffy Foundation Cal King Size monthly payment for Klarna. Expected Result: ${PuffyFoundationCalKingKlarnaNoOff} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_3809096728650 > div.purchase-details > div > div.splitit-section.jsSplititSection > div > span.-splitit--text.-splitit--text-price
    Run keyword if          '${Splitit}'!='${PuffyFoundationCalKingSplitItNoOff}'      Fail      Wrong Puffy Foundation Cal King Size monthly payment for Splitit. Expected Result: ${PuffyFoundationCalKingSplitItNoOff} Actual Result: ${Splitit}

Check Puffy Adjustable Base TwinXL size monthly payment price
    sleep                               2s
    #${Klarna}=            get text        css=#product_form_3809097285706 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    #Run keyword if          '${Klarna}'!='${PuffyAdjustableBaseTwinXLKlarnaNoOff}'      Fail        Wrong Puffy Adjustable Base TwinXL Size monthly payment for Klarna. Expected Result: ${PuffyAdjustableBaseTwinXLKlarnaNoOff} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_3809097285706 > div.purchase-details > div > div.splitit-section.jsSplititSection > div > span.-splitit--text.-splitit--text-price
    Run keyword if          '${Splitit}'!='${PuffyAdjustableBaseTwinXLSplitIt300Off}'      Fail      Wrong Puffy Adjustable Base TwinXL Size monthly payment for Splitit. Expected Result: ${PuffyAdjustableBaseTwinXLSplitIt300Off} Actual Result: ${Splitit}

Check Puffy Adjustable Base Full size monthly payment price
    sleep                               2s
    #${Klarna}=            get text        css=#product_form_3809097285706 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    #Run keyword if          '${Klarna}'!='${PuffyAdjustableBaseFullKlarnaNoOff}'      Fail        Wrong Puffy Adjustable Base Full Size monthly payment for Klarna. Expected Result: ${PuffyAdjustableBaseFullKlarnaNoOff} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_3809097285706 > div.purchase-details > div > div.splitit-section.jsSplititSection > div > span.-splitit--text.-splitit--text-price
    Run keyword if          '${Splitit}'!='${PuffyAdjustableBaseFullSplitIt300Off}'      Fail      Wrong Puffy Adjustable Base Full Size monthly payment for Splitit. Expected Result: ${PuffyAdjustableBaseFullSplitIt300Off} Actual Result: ${Splitit}

Check Puffy Adjustable Base Queen size monthly payment price
    sleep                               2s
    #${Klarna}=            get text        css=#product_form_3809097285706 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    #Run keyword if          '${Klarna}'!='${PuffyAdjustableBaseQueenKlarnaNoOff}'      Fail        Wrong Puffy Adjustable Base Queen Size monthly payment for Klarna. Expected Result: ${PuffyAdjustableBaseQueenKlarnaNoOff} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_3809097285706 > div.purchase-details > div > div.splitit-section.jsSplititSection > div > span.-splitit--text.-splitit--text-price
    Run keyword if          '${Splitit}'!='${PuffyAdjustableBaseQueenSplitIt300Off}'      Fail      Wrong Puffy Adjustable Base Queen Size monthly payment for Splitit. Expected Result: ${PuffyAdjustableBaseQueenSplitIt300Off} Actual Result: ${Splitit}

Check Puffy Adjustable Base Split King size monthly payment price
    sleep                               2s
    #${Klarna}=            get text        css=#product_form_3809097285706 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    #Run keyword if          '${Klarna}'!='${PuffyAdjustableBaseSplitKingKlarnaNoOff}'     Fail        Wrong Puffy Adjustable Base Split King Size monthly payment for Klarna. Expected Result: ${PuffyAdjustableBaseSplitKingKlarnaNoOff} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_3809097285706 > div.purchase-details > div > div.splitit-section.jsSplititSection > div > span.-splitit--text.-splitit--text-price
    Run keyword if          '${Splitit}'!='${PuffyAdjustableBaseSplitKingSplitIt300Off}'      Fail      Wrong Puffy Adjustable Base Split King Size monthly payment for Splitit. Expected Result: ${PuffyAdjustableBaseSplitKingSplitIt300Off} Actual Result: ${Splitit}




Check Puffy Bed Frame Full size monthly payment price
    sleep                               2s
    #${Klarna}=            get text        css=#product_form_3809096433738 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    #Run keyword if          '${Klarna}'!='${PuffyBedFrameFullKlarna15Off}'      Fail        Wrong Puffy Bed Frame Full Size monthly payment for Klarna. Expected Result: ${PuffyBedFrameFullKlarnaNoOff} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_3809096433738 > div.purchase-details > div > div.splitit-section.jsSplititSection > div > span.-splitit--text.-splitit--text-price
    Run keyword if          '${Splitit}'!='${PuffyBedFrameFullSplitItNoOff}'      Fail      Wrong Puffy Bed Frame Full Size monthly payment for Splitit. Expected Result: ${PuffyBedFrameFullSplitItNoOff} Actual Result: ${Splitit}

Check Puffy Bed Frame Queen size monthly payment price
    sleep                               2s
    #${Klarna}=            get text        css=#product_form_3809096433738 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    #Run keyword if          '${Klarna}'!='${PuffyBedFrameQueenKlarna15Off}'      Fail        Wrong Puffy Bed Frame Queen Size monthly payment for Klarna. Expected Result: ${PuffyBedFrameQueenKlarnaNoOff} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_3809096433738 > div.purchase-details > div > div.splitit-section.jsSplititSection > div > span.-splitit--text.-splitit--text-price
    Run keyword if          '${Splitit}'!='${PuffyBedFrameQueenSplitItNoOff}'      Fail      Wrong Puffy Bed Frame Queen Size monthly payment for Splitit. Expected Result: ${PuffyBedFrameQueenSplitItNoOff} Actual Result: ${Splitit}

Check Puffy Bed Frame King size monthly payment price
    sleep                               2s
    #${Klarna}=            get text        css=#product_form_3809096433738 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    #Run keyword if          '${Klarna}'!='${PuffyBedFrameKingKlarna15Off}'      Fail        Wrong Puffy Bed Frame King Size monthly payment for Klarna. Expected Result: ${PuffyBedFrameKingKlarnaNoOff} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_3809096433738 > div.purchase-details > div > div.splitit-section.jsSplititSection > div > span.-splitit--text.-splitit--text-price
    Run keyword if          '${Splitit}'!='${PuffyBedFrameKingSplitItNoOff}'      Fail      Wrong Puffy Bed Frame King Size monthly payment for Splitit. Expected Result: ${PuffyBedFrameKingSplitItNoOff} Actual Result: ${Splitit}

Check Puffy Bed Frame Cal King size monthly payment price
    sleep                               2s
    #${Klarna}=            get text        css=#product_form_3809096433738 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    #Run keyword if          '${Klarna}'!='${PuffyBedFrameCalKingKlarna15Off}'     Fail        Wrong Puffy Bed Frame Cal King Size monthly payment for Klarna. Expected Result: ${PuffyBedFrameCalKingKlarnaNoOff} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_3809096433738 > div.purchase-details > div > div.splitit-section.jsSplititSection > div > span.-splitit--text.-splitit--text-price
    Run keyword if          '${Splitit}'!='${PuffyBedFrameCalKingSplitItNoOff}'      Fail      Wrong Puffy Bed Frame Cal King Size monthly payment for Splitit. Expected Result: ${PuffyBedFrameCalKingSplitItNoOff} Actual Result: ${Splitit}




Check Puffy Comforter Twin/Twin XL size monthly payment price
    sleep                               2s
    #${Klarna}=            get text        css=#product_form_3809095188554 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    #Run keyword if          '${Klarna}'!='${PuffyComforterTwin/TwinXLKlarna15Off}'      Fail        Wrong Puffy Comforter Twin/Twin XL Size monthly payment for Klarna. Expected Result: ${PuffyComforterTwin/TwinXLKlarna15Off} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_3809095188554 > div.purchase-details > div > div.splitit-section.jsSplititSection > div > span.-splitit--text.-splitit--text-price
    Run keyword if          '${Splitit}'!='${PuffyComforterTwin/TwinXLSplitItNoOff}'      Fail      Wrong Puffy Comforter Twin/Twin XL Size monthly payment for Splitit. Expected Result: ${PuffyComforterTwin/TwinXLSplitItNoOff} Actual Result: ${Splitit}

Check Puffy Comforter Full/Queen size monthly payment price
    sleep                               2s
    #${Klarna}=            get text        css=#product_form_3809095188554 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    #Run keyword if          '${Klarna}'!='${PuffyComforterFull/QueenKlarna15Off}'      Fail        Wrong Puffy Comforter Full/Queen Size monthly payment for Klarna. Expected Result: ${PuffyComforterFull/QueenKlarna15Off} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_3809095188554 > div.purchase-details > div > div.splitit-section.jsSplititSection > div > span.-splitit--text.-splitit--text-price
    Run keyword if          '${Splitit}'!='${PuffyComforterFull/QueenSplitItNoOff}'      Fail      Wrong Puffy Comforter Full/Queen Size monthly payment for Splitit. Expected Result: ${PuffyComforterFull/QueenSplitItNoOff} Actual Result: ${Splitit}

Check Puffy Comforter King/Cal King size monthly payment price
    sleep                               2s
    #${Klarna}=            get text        css=#product_form_3809095188554 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    #Run keyword if          '${Klarna}'!='${PuffyComforterKing/CalKingKlarna15Off}'      Fail        Wrong Puffy Comforter King/Cal King Size monthly payment for Klarna. Expected Result: ${PuffyComforterKing/CalKingKlarna15Off} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_3809095188554 > div.purchase-details > div > div.splitit-section.jsSplititSection > div > span.-splitit--text.-splitit--text-price
    Run keyword if          '${Splitit}'!='${PuffyComforterKing/CalKingSplitItNoOff}'      Fail      Wrong Puffy Comforter King/Cal King Size monthly payment for Splitit. Expected Result: ${PuffyComforterKing/CalKingSplitItNoOff} Actual Result: ${Splitit}

Check Puffy Pillow Standard size monthly payment price
    sleep                               2s
    #${Klarna}=            get text        css=#product_form_625398710306 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    #Run keyword if          '${Klarna}'!='${PuffyPillowStandardKlarnaNoOff}'      Fail        Wrong Puffy Pillow Standard Size monthly payment for Klarna. Expected Result: ${PuffyPillowStandardKlarnaNoOff} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_625398710306 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PuffyPillowStandardSplitItNoOff}'     Fail      Wrong Puffy Pillow Standard Size monthly payment for Splitit. Expected Result: ${PuffyPillowStandardSplitItNoOff} Actual Result: ${Splitit}

Check Puffy Pillow King size monthly payment price
    sleep                               2s
    #${Klarna}=            get text        css=#product_form_625398710306 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    #Run keyword if          '${Klarna}'!='${PuffyPillowKingKlarnaNoOff}'      Fail        Wrong Puffy Pillow King Size monthly payment for Klarna. Expected Result: ${PuffyPillowKingKlarnaNoOff} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_625398710306 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PuffyPillowKingSplitItNoOff}'     Fail      Wrong Puffy Pillow King Size monthly payment for Splitit. Expected Result: ${PuffyPillowKingSplitItNoOff} Actual Result: ${Splitit}

Check Puffy Body Pillow monthly payment price
    sleep                               2s
    #${Klarna}=            get text        css=#product_form_4628091600970 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    #Run keyword if          '${Klarna}'!='${PuffyBodyPillowKlarna15Off}'      Fail        Wrong Puffy Body Pillow monthly payment for Klarna. Expected Result: ${PuffyBodyPillowKlarna15Off} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_4628091600970 > div.purchase-details > div > div.splitit-section.jsSplititSection > div > span.-splitit--text.-splitit--text-price
    Run keyword if          '${Splitit}'!='${PuffyBodyPillowSplitItNoOff}'      Fail      Wrong Puffy Body Pillow monthly payment for Splitit. Expected Result: ${PuffyBodyPillowSplitItNoOff} Actual Result: ${Splitit}

Check Puffy Mattress Pad Twin size monthly payment price
    sleep                               2s
    #${Klarna}=            get text        css=#product_form_4839923548234 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    #Run keyword if          '${Klarna}'!='${PuffyMattressPadTwinKlarna15Off}'      Fail        Wrong Puffy Mattress Pad Twin size monthly payment for Klarna. Expected Result: ${PuffyMattressPadTwinKlarna15Off} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_4839923548234 > div.purchase-details > div > div.splitit-section.jsSplititSection > div > span.-splitit--text.-splitit--text-price
    Run keyword if          '${Splitit}'!='${PuffyMattressPadTwinSplitItNoOff}'      Fail      Wrong Puffy Mattress Pad Twin size monthly payment for Splitit. Expected Result: ${PuffyMattressPadTwinSplitItNoOff} Actual Result: ${Splitit}
Check Puffy Mattress Pad TwinXL size monthly payment price
    sleep                               2s
    #${Klarna}=            get text        css=#product_form_4839923548234 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    #Run keyword if          '${Klarna}'!='${PuffyMattressPadTwinXLKlarna15Off}'      Fail        Wrong Puffy Mattress Pad TwinXL size monthly payment for Klarna. Expected Result: ${PuffyMattressPadTwinXLKlarna15Off} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_4839923548234 > div.purchase-details > div > div.splitit-section.jsSplititSection > div > span.-splitit--text.-splitit--text-price
    Run keyword if          '${Splitit}'!='${PuffyMattressPadTwinXLSplitItNoOff}'      Fail      Wrong Puffy Mattress Pad TwinXL size payment for Splitit. Expected Result: ${PuffyMattressPadTwinXLSplitItNoOff} Actual Result: ${Splitit}
Check Puffy Mattress Pad Full size monthly payment price
    sleep                               2s
    #${Klarna}=            get text        css=#product_form_4839923548234 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    #Run keyword if          '${Klarna}'!='${PuffyMattressPadFullKlarna15Off}'      Fail        Wrong Puffy Mattress Pad Full size monthly payment for Klarna. Expected Result: ${PuffyMattressPadFullKlarna15Off} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_4839923548234 > div.purchase-details > div > div.splitit-section.jsSplititSection > div > span.-splitit--text.-splitit--text-price
    Run keyword if          '${Splitit}'!='${PuffyMattressPadFullSplitItNoOff}'      Fail      Wrong Puffy Mattress Pad Full size payment for Splitit. Expected Result: ${PuffyMattressPadFullSplitItNoOff} Actual Result: ${Splitit}
Check Puffy Mattress Pad Queen size monthly payment price
    sleep                               2s
    #${Klarna}=            get text        css=#product_form_4839923548234 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    #Run keyword if          '${Klarna}'!='${PuffyMattressPadQueenKlarna15Off}'      Fail        Wrong Puffy Mattress Pad Queen size monthly payment for Klarna. Expected Result: ${PuffyMattressPadQueenKlarna15Off} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_4839923548234 > div.purchase-details > div > div.splitit-section.jsSplititSection > div > span.-splitit--text.-splitit--text-price
    Run keyword if          '${Splitit}'!='${PuffyMattressPadQueenSplitItNoOff}'      Fail      Wrong Puffy Mattress Pad Queen size monthly payment for Splitit. Expected Result: ${PuffyMattressPadQueenSplitItNoOff} Actual Result: ${Splitit}
Check Puffy Mattress Pad King size monthly payment price
    sleep                               2s
    #${Klarna}=            get text        css=#product_form_4839923548234 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    #Run keyword if          '${Klarna}'!='${PuffyMattressPadKingKlarna15Off}'      Fail        Wrong Puffy Mattress Pad King size monthly payment for Klarna. Expected Result: ${PuffyMattressPadKingKlarna15Off} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_4839923548234 > div.purchase-details > div > div.splitit-section.jsSplititSection > div > span.-splitit--text.-splitit--text-price
    Run keyword if          '${Splitit}'!='${PuffyMattressPadKingSplitItNoOff}'      Fail      Wrong Puffy Mattress Pad King size monthly payment for Splitit. Expected Result: ${PuffyMattressPadKingSplitItNoOff} Actual Result: ${Splitit}
Check Puffy Mattress Pad Cal King size monthly payment price
    sleep                               2s
    #${Klarna}=            get text        css=#product_form_4839923548234 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    #Run keyword if          '${Klarna}'!='${PuffyMattressPadCalKingKlarna15Off}'      Fail        Wrong Puffy Mattress Pad Cal King size monthly payment for Klarna. Expected Result: ${PuffyMattressPadCalKingKlarna15Off} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_4839923548234 > div.purchase-details > div > div.splitit-section.jsSplititSection > div > span.-splitit--text.-splitit--text-price
    Run keyword if          '${Splitit}'!='${PuffyMattressPadCalKingSplitItNoOff}'      Fail      Wrong Puffy Mattress Pad Cal King size monthly payment for Splitit. Expected Result: ${PuffyMattressPadCalKingSplitItNoOff} Actual Result: ${Splitit}

Check Puffy Mattress Protector Twin size monthly payment price
    sleep                               2s
    #${Klarna}=            get text        css=#product_form_3809096761418 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    #Run keyword if          '${Klarna}'!='${PuffyMattressProtectorTwinKlarna15Off}'      Fail        Wrong Puffy Mattress Protector Twin size monthly payment for Klarna. Expected Result: ${PuffyMattressProtectorTwinKlarna15Off} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_3809096761418 > div.purchase-details > div > div.splitit-section.jsSplititSection > div > span.-splitit--text.-splitit--text-price
    Run keyword if          '${Splitit}'!='${PuffyMattressProtectorTwinSplitItNoOff}'      Fail      Wrong Puffy Mattress Protector Twin size monthly payment for Splitit. Expected Result: ${PuffyMattressPadTwinSplitItNoOff} Actual Result: ${Splitit}
Check Puffy Mattress Protector TwinXL size monthly payment price
    sleep                               2s
    #${Klarna}=            get text        css=#product_form_3809096761418 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    #Run keyword if          '${Klarna}'!='${PuffyMattressProtectorTwinXLKlarna15Off}'      Fail        Wrong Puffy Mattress Protector TwinXL size monthly payment for Klarna. Expected Result: ${PuffyMattressProtectorTwinXLKlarna15Off} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_3809096761418 > div.purchase-details > div > div.splitit-section.jsSplititSection > div > span.-splitit--text.-splitit--text-price
    Run keyword if          '${Splitit}'!='${PuffyMattressProtectorTwinXLSplitItNoOff}'      Fail      Wrong Puffy Mattress Protector TwinXL size payment for Splitit. Expected Result: ${PuffyMattressPadTwinXLSplitItNoOff} Actual Result: ${Splitit}
Check Puffy Mattress Protector Full size monthly payment price
    sleep                               2s
    #${Klarna}=            get text        css=#product_form_3809096761418 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    #Run keyword if          '${Klarna}'!='${PuffyMattressProtectorFullKlarna15Off}'      Fail        Wrong Puffy Mattress Protector Full size monthly payment for Klarna. Expected Result: ${PuffyMattressProtectorFullKlarna15Off} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_3809096761418 > div.purchase-details > div > div.splitit-section.jsSplititSection > div > span.-splitit--text.-splitit--text-price
    Run keyword if          '${Splitit}'!='${PuffyMattressProtectorFullSplitItNoOff}'      Fail      Wrong Puffy Mattress Protector Full size payment for Splitit. Expected Result: ${PuffyMattressPadFullSplitItNoOff} Actual Result: ${Splitit}
Check Puffy Mattress Protector Queen size monthly payment price
    sleep                               2s
    #${Klarna}=            get text        css=#product_form_3809096761418 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    #Run keyword if          '${Klarna}'!='${PuffyMattressProtectorQueenKlarna15Off}'      Fail        Wrong Puffy Mattress Protector Queen size monthly payment for Klarna. Expected Result: ${PuffyMattressProtectorQueenKlarna15Off} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_3809096761418 > div.purchase-details > div > div.splitit-section.jsSplititSection > div > span.-splitit--text.-splitit--text-price
    Run keyword if          '${Splitit}'!='${PuffyMattressProtectorQueenSplitItNoOff}'      Fail      Wrong Puffy Mattress Protector Queen size monthly payment for Splitit. Expected Result: ${PuffyMattressPadQueenSplitItNoOff} Actual Result: ${Splitit}
Check Puffy Mattress Protector King size monthly payment price
    sleep                               2s
    #${Klarna}=            get text        css=#product_form_3809096761418 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    #Run keyword if          '${Klarna}'!='${PuffyMattressProtectorKingKlarna15Off}'      Fail        Wrong Puffy Mattress Protector King size monthly payment for Klarna. Expected Result: ${PuffyMattressProtectorKingKlarna15Off} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_3809096761418 > div.purchase-details > div > div.splitit-section.jsSplititSection > div > span.-splitit--text.-splitit--text-price
    Run keyword if          '${Splitit}'!='${PuffyMattressProtectorKingSplitItNoOff}'      Fail      Wrong Puffy Mattress Protector King size monthly payment for Splitit. Expected Result: ${PuffyMattressProtectorKingSplitItNoOff} Actual Result: ${Splitit}
Check Puffy Mattress Protector Cal King size monthly payment price
    sleep                               2s
    #${Klarna}=            get text        css=#product_form_3809096761418 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    #Run keyword if          '${Klarna}'!='${PuffyMattressProtectorCalKingKlarna15Off}'      Fail        Wrong Puffy Mattress Protector Cal King size monthly payment for Klarna. Expected Result: ${PuffyMattressProtectorCalKingKlarna15Off} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_3809096761418 > div.purchase-details > div > div.splitit-section.jsSplititSection > div > span.-splitit--text.-splitit--text-price
    Run keyword if          '${Splitit}'!='${PuffyMattressProtectorCalKingSplitItNoOff}'      Fail      Wrong Puffy Mattress Protector Cal King size monthly payment for Splitit. Expected Result: ${PuffyMattressProtectorCalKingSplitItNoOff} Actual Result: ${Splitit}


Check Puffy Topper Twin size monthly payment price
    sleep                               2s
    #${Klarna}=            get text        css=#product_form_3809097121866 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    #Run keyword if          '${Klarna}'!='${PuffyTopperTwinKlarna15Off}'      Fail        Wrong Puffy Topper Twin size monthly payment for Klarna. Expected Result: ${PuffyTopperTwinKlarna15Off} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_3809097121866 > div.purchase-details > div > div.splitit-section.jsSplititSection > div > span.-splitit--text.-splitit--text-price
    Run keyword if          '${Splitit}'!='${PuffyTopperTwinSplitItNoOff}'      Fail      Wrong Puffy Topper Twin size monthly payment for Splitit. Expected Result: ${PuffyTopperTwinSplitItNoOff} Actual Result: ${Splitit}
Check Puffy Topper TwinXL size monthly payment price
    sleep                               2s
    #${Klarna}=            get text        css=#product_form_3809097121866 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    #Run keyword if          '${Klarna}'!='${PuffyTopperTwinXLKlarna15Off}'      Fail        Wrong Puffy Topper TwinXL size monthly payment for Klarna. Expected Result: ${PuffyTopperTwinXLKlarna15Off} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_3809097121866 > div.purchase-details > div > div.splitit-section.jsSplititSection > div > span.-splitit--text.-splitit--text-price
    Run keyword if          '${Splitit}'!='${PuffyTopperTwinXLSplitItNoOff}'      Fail      Wrong Puffy Topper TwinXL size payment for Splitit. Expected Result: ${PuffyTopperTwinXLSplitItNoOff} Actual Result: ${Splitit}
Check Puffy Topper Full size monthly payment price
    sleep                               2s
    #${Klarna}=            get text        css=#product_form_3809097121866 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    #Run keyword if          '${Klarna}'!='${PuffyTopperFullKlarna15Off}'      Fail        Wrong Puffy Topper Full size monthly payment for Klarna. Expected Result: ${PuffyTopperFullKlarna15Off} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_3809097121866 > div.purchase-details > div > div.splitit-section.jsSplititSection > div > span.-splitit--text.-splitit--text-price
    Run keyword if          '${Splitit}'!='${PuffyTopperFullSplitItNoOff}'      Fail      Wrong Puffy Topper Full size payment for Splitit. Expected Result: ${PuffyTopperFullSplitItNoOff} Actual Result: ${Splitit}
Check Puffy Topper Queen size monthly payment price
    sleep                               2s
    #${Klarna}=            get text        css=#product_form_3809097121866 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    #Run keyword if          '${Klarna}'!='${PuffyTopperQueenKlarna15Off}'      Fail        Wrong Puffy Topper Queen size monthly payment for Klarna. Expected Result: ${PuffyTopperQueenKlarna15Off} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_3809097121866 > div.purchase-details > div > div.splitit-section.jsSplititSection > div > span.-splitit--text.-splitit--text-price
    Run keyword if          '${Splitit}'!='${PuffyTopperQueenSplitItNoOff}'      Fail      Wrong Puffy Topper Queen size monthly payment for Splitit. Expected Result: ${PuffyTopperQueenSplitItNoOff} Actual Result: ${Splitit}
Check Puffy Topper King size monthly payment price
    sleep                               2s
    #${Klarna}=            get text        css=#product_form_3809097121866 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    #Run keyword if          '${Klarna}'!='${PuffyTopperKingKlarna15Off}'      Fail        Wrong Puffy Topper King size monthly payment for Klarna. Expected Result: ${PuffyTopperKingKlarna15Off} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_3809097121866 > div.purchase-details > div > div.splitit-section.jsSplititSection > div > span.-splitit--text.-splitit--text-price
    Run keyword if          '${Splitit}'!='${PuffyTopperKingSplitItNoOff}'      Fail      Wrong Puffy Topper King size monthly payment for Splitit. Expected Result: ${PuffyTopperKingSplitItNoOff} Actual Result: ${Splitit}
Check Puffy Topper Cal King size monthly payment price
    sleep                               2s
    #${Klarna}=            get text        css=#product_form_3809097121866 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    #Run keyword if          '${Klarna}'!='${PuffyTopperCalKingKlarna15Off}'      Fail        Wrong Puffy Topper Cal King size monthly payment for Klarna. Expected Result: ${PuffyTopperCalKingKlarna15Off} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_3809097121866 > div.purchase-details > div > div.splitit-section.jsSplititSection > div > span.-splitit--text.-splitit--text-price
    Run keyword if          '${Splitit}'!='${PuffyTopperCalKingSplitItNoOff}'      Fail      Wrong Puffy Topper Cal King size monthly payment for Splitit. Expected Result: ${PuffyTopperCalKingSplitItNoOff} Actual Result: ${Splitit}


Check Puffy Blanket Small size monthly payment price
    sleep                               2s
    #${Klarna}=            get text        css=#product_form_4629448327242 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    #Run keyword if          '${Klarna}'!='${PuffyBlanketSmallKlarnaNoOff}'      Fail        Wrong Puffy Blanket Small size monthly payment for Klarna. Expected Result: ${PuffyBlanketSmallKlarnaNoOff} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_4629448327242 > div.purchase-details > div > div.splitit-section.jsSplititSection > div > span.-splitit--text.-splitit--text-price
    Run keyword if          '${Splitit}'!='${PuffyBlanketSmallSplitItNoOff}'     Fail      Wrong Puffy Blanket Small size monthly payment for Splitit. Expected Result: ${PuffyBlanketSmallSplitItNoOff} Actual Result: ${Splitit}
Check Puffy Blanket Medium size monthly payment price
    sleep                               2s
    #${Klarna}=            get text        css=#product_form_4629448327242 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    #Run keyword if          '${Klarna}'!='${PuffyBlanketMediumKlarnaNoOff}'      Fail        Wrong Puffy Blanket Medium size monthly payment for Klarna. Expected Result: ${PuffyMattressPadKingKlarnaNoOff} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_4629448327242 > div.purchase-details > div > div.splitit-section.jsSplititSection > div > span.-splitit--text.-splitit--text-price
    Run keyword if          '${Splitit}'!='${PuffyBlanketMediumSplitItNoOff}'     Fail      Wrong Puffy Blanket Medium size monthly payment for Splitit. Expected Result: ${PuffyBlanketMediumSplitItNoOff} Actual Result: ${Splitit}
Check Puffy Blanket Large size monthly payment price
    sleep                               2s
    #${Klarna}=            get text        css=#product_form_4629448327242 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    #Run keyword if          '${Klarna}'!='${PuffyBlanketLargeKlarnaNoOff}'      Fail        Wrong Puffy Blanket Large size monthly payment for Klarna. Expected Result: ${PuffyMattressPadCalKingKlarnaNoOff} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_4629448327242 > div.purchase-details > div > div.splitit-section.jsSplititSection > div > span.-splitit--text.-splitit--text-price
    Run keyword if          '${Splitit}'!='${PuffyBlanketLargeSplitItNoOff}'     Fail      Wrong Puffy Blanket Large size monthly payment for Splitit. Expected Result: ${PuffyBlanketLargeSplitItNoOff} Actual Result: ${Splitit}

Check Puffy Weighted Blanket Twin size monthly payment price
    sleep                               2s
    #${Klarna}=            get text        css=#product_form_3809096368202 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    #Run keyword if          '${Klarna}'!='${PuffyWeightedBlanketTwinKlarna15Off}'      Fail        Wrong Puffy Weighted Blanket Twin size monthly payment for Klarna. Expected Result: ${PuffyWeightedBlanketTwinKlarna15Off} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_3809096368202 > div.purchase-details > div > div.splitit-section.jsSplititSection > div > span.-splitit--text.-splitit--text-price
    Run keyword if          '${Splitit}'!='${PuffyWeightedBlanketTwinSplitItNoOff}'      Fail      Wrong Puffy Weighted Blanket Twin size monthly payment for Splitit. Expected Result: ${PuffyWeightedBlanketTwinSplitItNoOff} Actual Result: ${Splitit}
Check Puffy Weighted Blanket Queen size monthly payment price
    sleep                               2s
    #${Klarna}=            get text        css=#product_form_3809096368202 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    #Run keyword if          '${Klarna}'!='${PuffyWeightedBlanketQueenKlarna15Off}'      Fail        Wrong Puffy Weighted Blanket Queen size monthly payment for Klarna. Expected Result: ${PuffyWeightedBlanketQueenKlarna15Off} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_3809096368202 > div.purchase-details > div > div.splitit-section.jsSplititSection > div > span.-splitit--text.-splitit--text-price
    Run keyword if          '${Splitit}'!='${PuffyWeightedBlanketQueenSplitItNoOff}'      Fail      Wrong Puffy Weighted Blanket Queen size monthly payment for Splitit. Expected Result: ${PuffyWeightedBlanketQueenSplitItNoOff} Actual Result: ${Splitit}
Check Puffy Weighted Blanket King size monthly payment price
    sleep                               2s
    #${Klarna}=            get text        css=#product_form_3809096368202 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    #Run keyword if          '${Klarna}'!='${PuffyWeightedBlanketQueenKlarna15Off}'      Fail        Wrong Puffy Weighted Blanket Queen size monthly payment for Klarna. Expected Result: ${PuffyWeightedBlanketQueenKlarna15Off} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_3809096368202 > div.purchase-details > div > div.splitit-section.jsSplititSection > div > span.-splitit--text.-splitit--text-price
    Run keyword if          '${Splitit}'!='${PuffyWeightedBlanketKingSplitItNoOff}'      Fail      Wrong Puffy Weighted Blanket Queen size monthly payment for Splitit. Expected Result: ${PuffyWeightedBlanketKingSplitItNoOff} Actual Result: ${Splitit}

Check Puffy Sheets Twin size monthly payment price
    sleep                               2s
    #${Klarna}=            get text        css=#product_form_4459334533194 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    #Run keyword if          '${Klarna}'!='${PuffySheetsTwinKlarna15Off}'      Fail        Wrong Puffy Sheets Twin size monthly payment for Klarna. Expected Result: ${PuffySheetsTwinKlarna15Off} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_4459334533194 > div.purchase-details > div > div.splitit-section.jsSplititSection > div > span.-splitit--text.-splitit--text-price
    Run keyword if          '${Splitit}'!='${PuffySheetsTwinSplitItNoOff}'      Fail      Wrong Puffy Sheets Twin size monthly payment for Splitit. Expected Result: ${PuffySheetsTwinSplitItNoOff} Actual Result: ${Splitit}
Check Puffy Sheets TwinXL size monthly payment price
    sleep                               2s
    #${Klarna}=            get text        css=#product_form_4459334533194 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    #Run keyword if          '${Klarna}'!='${PuffySheetsTwinXLKlarna15Off}'      Fail        Wrong Puffy Sheets TwinXL size monthly payment for Klarna. Expected Result: ${PuffySheetsTwinXLKlarna15Off} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_4459334533194 > div.purchase-details > div > div.splitit-section.jsSplititSection > div > span.-splitit--text.-splitit--text-price
    Run keyword if          '${Splitit}'!='${PuffySheetsTwinXLSplitItNoOff}'      Fail      Wrong Puffy Sheets TwinXL size payment for Splitit. Expected Result: ${PuffySheetsTwinXLSplitItNoOff} Actual Result: ${Splitit}
Check Puffy Sheets Full size monthly payment price
    sleep                               2s
    #${Klarna}=            get text        css=#product_form_4459334533194 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    #Run keyword if          '${Klarna}'!='${PuffySheetsFullKlarna15Off}'      Fail        Wrong Puffy Sheets Full size monthly payment for Klarna. Expected Result: ${PuffySheetsFullKlarna15Off} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_4459334533194 > div.purchase-details > div > div.splitit-section.jsSplititSection > div > span.-splitit--text.-splitit--text-price
    Run keyword if          '${Splitit}'!='${PuffySheetsFullSplitItNoOff}'      Fail      Wrong Puffy Sheets Full size payment for Splitit. Expected Result: ${PuffySheetsFullSplitItNoOff} Actual Result: ${Splitit}
Check Puffy Sheets Queen size monthly payment price
    sleep                               2s
    #${Klarna}=            get text        css=#product_form_4459334533194 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    #Run keyword if          '${Klarna}'!='${PuffySheetsQueenKlarna15Off}'      Fail        Wrong Puffy Sheets Queen size monthly payment for Klarna. Expected Result: ${PuffySheetsQueenKlarna15Off} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_4459334533194 > div.purchase-details > div > div.splitit-section.jsSplititSection > div > span.-splitit--text.-splitit--text-price
    Run keyword if          '${Splitit}'!='${PuffySheetsQueenSplitItNoOff}'      Fail      Wrong Puffy Sheets Queen size monthly payment for Splitit. Expected Result: ${PuffySheetsQueenSplitItNoOff} Actual Result: ${Splitit}
Check Puffy Sheets King size monthly payment price
    sleep                               2s
    #${Klarna}=            get text        css=#product_form_4459334533194 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    #Run keyword if          '${Klarna}'!='${PuffySheetsKingKlarna15Off}'      Fail        Wrong Puffy Sheets King size monthly payment for Klarna. Expected Result: ${PuffySheetsKingKlarna15Off} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_4459334533194 > div.purchase-details > div > div.splitit-section.jsSplititSection > div > span.-splitit--text.-splitit--text-price
    Run keyword if          '${Splitit}'!='${PuffySheetsKingSplitItNoOff}'      Fail      Wrong Puffy Sheets King size monthly payment for Splitit. Expected Result: ${PuffySheetsKingSplitItNoOff} Actual Result: ${Splitit}
Check Puffy Sheets Cal King size monthly payment price
    sleep                               2s
    #${Klarna}=            get text        css=#product_form_4459334533194 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    #Run keyword if          '${Klarna}'!='${PuffySheetsCalKingKlarna15Off}'      Fail        Wrong Puffy Sheets Cal King size monthly payment for Klarna. Expected Result: ${PuffySheetsCalKingKlarna15Off} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_4459334533194 > div.purchase-details > div > div.splitit-section.jsSplititSection > div > span.-splitit--text.-splitit--text-price
    Run keyword if          '${Splitit}'!='${PuffySheetsCalKingSplitItNoOff}'      Fail      Wrong Puffy Sheets Cal King size monthly payment for Splitit. Expected Result: ${PuffySheetsCalKingSplitItNoOff} Actual Result: ${Splitit}

Check Puffy Dog Bed Small size monthly payment price
    sleep                               2s
    #${Klarna}=            get text        css=#product_form_4469236236362 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    #Run keyword if          '${Klarna}'!='${PuffyDogBedSmallKlarna15Off}'      Fail        Wrong Puffy Dog Bed Small size monthly payment for Klarna. Expected Result: ${PuffyDogBedSmallKlarna15Off} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_4469236236362 > div.purchase-details > div > div.splitit-section.jsSplititSection > div > span.-splitit--text.-splitit--text-price
    Run keyword if          '${Splitit}'!='${PuffyDogBedSmallSplitItNoOff}'      Fail      Wrong Puffy Dog Bed Small size monthly payment for Splitit. Expected Result: ${PuffyDogBedSmallSplitItNoOff} Actual Result: ${Splitit}
Check Puffy Dog Bed Medium size monthly payment price
    sleep                               2s
    #${Klarna}=            get text        css=#product_form_4469236236362 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    #Run keyword if          '${Klarna}'!='${PuffyDogBedMediumKlarna15Off}'      Fail        Wrong Puffy Dog Bed Medium size monthly payment for Klarna. Expected Result: ${PuffyDogBedMediumKlarna15Off} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_4469236236362 > div.purchase-details > div > div.splitit-section.jsSplititSection > div > span.-splitit--text.-splitit--text-price
    Run keyword if          '${Splitit}'!='${PuffyDogBedMediumSplitItNoOff}'      Fail      Wrong Puffy Dog Bed Medium size monthly payment for Splitit. Expected Result: ${PuffyDogBedMediumSplitItNoOff} Actual Result: ${Splitit}
Check Puffy Dog Bed Large size monthly payment price
    sleep                               2s
    #${Klarna}=            get text        css=#product_form_4469236236362 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    #Run keyword if          '${Klarna}'!='${PuffyDogBedLargeKlarna15Off}'      Fail        Wrong Puffy Dog Bed Large size monthly payment for Klarna. Expected Result: ${PuffyDogBedLargeKlarna15Off} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_4469236236362 > div.purchase-details > div > div.splitit-section.jsSplititSection > div > span.-splitit--text.-splitit--text-price
    Run keyword if          '${Splitit}'!='${PuffyDogBedLargeSplitItNoOff}'      Fail      Wrong Puffy Dog Bed Large size monthly payment for Splitit. Expected Result: ${PuffyDogBedLargeSplitItNoOff} Actual Result: ${Splitit}

Check Puffy Rug Medium size monthly payment price
    sleep                               2s
    #${Klarna}=            get text        css=#product_form_4769367261258 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    #Run keyword if          '${Klarna}'!='${PuffyRugMediumKlarna15Off}'      Fail        Wrong Puffy Rug Medium size monthly payment for Klarna. Expected Result: ${PuffyDogBedMediumKlarnaNoOff} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_4769367261258 > div.purchase-details > div > div.splitit-section.jsSplititSection > div > span.-splitit--text.-splitit--text-price
    Run keyword if          '${Splitit}'!='${PuffyRugMediumSplitItNoOff}'      Fail      Wrong Puffy Rug Medium size monthly payment for Splitit. Expected Result: ${PuffyRugMediumSplitItNoOff} Actual Result: ${Splitit}
Check Puffy Rug Large size monthly payment price
    sleep                               2s
    #${Klarna}=            get text        css=#product_form_4769367261258 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    #Run keyword if          '${Klarna}'!='${PuffyRugLargeKlarna15Off}'      Fail        Wrong Puffy Rug Large size monthly payment for Klarna. Expected Result: ${PuffyDogBedLargeKlarnaNoOff} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_4769367261258#product_form_4769367261258 > div.purchase-details > div > div.splitit-section.jsSplititSection > div > span.-splitit--text.-splitit--text-price
    Run keyword if          '${Splitit}'!='${PuffyRugLargeSplitItNoOff}'      Fail      Wrong Puffy Rug Large size monthly payment for Splitit. Expected Result: ${PuffyRugLargeSplitItNoOff} Actual Result: ${Splitit}

##################################################################PRODUCT TOGGLE CHANGES##################################################################
#Click on Puffy Lux Hybrid
    #wait until page contains element            css=#product_form_3809097023562 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-type > div.hybrid-buttons > label.hybrid-buttons__item.hybrid-buttons__item--2
    #Click element       css=#product_form_3809097023562 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-type > div.hybrid-buttons > label.hybrid-buttons__item.hybrid-buttons__item--2
Click on Puffy Royal Hybrid
    wait until page contains element            css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-type > div.hybrid-buttons > label.hybrid-buttons__item.hybrid-buttons__item--2 > span.hybrid-buttons__title
    Click element       css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-type > div.hybrid-buttons > label.hybrid-buttons__item.hybrid-buttons__item--2 > span.hybrid-buttons__title

###################################################################Compare Page Prices#################################################################

Get Puffy Mattress Price and compare to mid page
    sleep                                           1s
    ${PuffyMattressMinimumOriginalPricePDP}=        get text        css=#product_form_3809097089098 > div.product-variants-holder > div > div > div > span > del > span.original-price
    ${PuffyMattressDiscountedPricePDP}=             get text        css=#product_form_3809097089098 > div.product-variants-holder > div > div > div > span > span > span.original-price.jsDiscountedPrice
    #${PuffyMattressKlarnaPricePDP}=                 get text        css=#product_form_3809097089098 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    ${PuffyMattressSplitItPricePDP}=                get text        css=#product_form_3809097089098 > div.purchase-details > div > div.splitit-section.jsSplititSection > div > span.-splitit--text.-splitit--text-price

    Mouse Over          ${Mattresses}
    sleep               2s
    Click element       ${COMPARE}
    Wait Until Page Contains    Puffy Mattress
    ${PuffyMattressMinimumOriginalPriceComparePage}=        get text        css=body > div.container.main.content > div > div.compare-page__content > div.compare-boxes.is--puffy-mattress-and-puffy-lux > div:nth-child(2) > div > div.compare-boxes__prices > div:nth-child(1) > span.compare-boxes__old-price > del
    ${PuffyMattressDiscountedPriceComparePage}=             get text        css=body > div.container.main.content > div > div.compare-page__content > div.compare-boxes.is--puffy-mattress-and-puffy-lux > div:nth-child(2) > div > div.compare-boxes__prices > div:nth-child(1) > span.compare-boxes__price.jsDiscountedPrice
    #${PuffyMattressKlarnaPriceComparePage}=                 get text        css=body > div.container.main.content > div > div.compare-page__content > div.compare-boxes.is--puffy-mattress-and-puffy-lux > div:nth-child(2) > div > div.finance-area.is--common > div:nth-child(1) > div > a > span.data-splitit-price.jsKlarna
    ${PuffyMattressSplitItPriceComparePage}=                get text        css=body > div.container.main.content > div > div.compare-page__content > div.compare-boxes.is--puffy-mattress-and-puffy-lux > div:nth-child(2) > div > div.compare-boxes__prices > div:nth-child(3) > span.compare-boxes__price
    Run keyword if          '${PuffyMattressMinimumOriginalPricePDP}'!='${PuffyMattressMinimumOriginalPriceComparePage}'      Fail        Wrong Puffy Mattress Original in Comparison Page. Expected Result: ${PuffyMattressMinimumOriginalPricePDP} Actual Result: ${PuffyMattressMinimumOriginalPriceComparePage}
    Run keyword if          '${PuffyMattressDiscountedPricePDP}'!='${PuffyMattressDiscountedPriceComparePage}'      Fail        Wrong Puffy Mattress Discounted price in Comparison Page. Expected Result: ${PuffyMattressDiscountedPricePDP} Actual Result: ${PuffyMattressDiscountedPriceComparePage}
    #Run keyword if          '${PuffyMattressKlarnaPricePDP}${text}'!='${PuffyMattressKlarnaPriceComparePage}'      Fail        Wrong Puffy Mattress Klarna Price in Comparison Page. Expected Result: ${PuffyMattressKlarnaPricePDP} Actual Result: ${PuffyMattressKlarnaPriceComparePage}
    Run keyword if          '${PuffyMattressTwinSplitItmidby12}'!='${PuffyMattressSplitItPriceComparePage}'      Fail        Wrong Puffy Mattress SplitIt Price in Comparison Page. Expected Result: ${PuffyMattressTwinSplitItmidby12} Actual Result: ${PuffyMattressSplitItPriceComparePage}

Get Puffy Lux Mattress Price and compare to mid page
    sleep                                           1s
    ${PuffyLuxMattressMinimumOriginalPricePDP}=     get text        css=#product_form_3809097023562 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > div > span > del > span.original-price
    ${PuffyLuxMattressDiscountedPricePDP}=          get text        css=#product_form_3809097023562 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > div > span > span > span.original-price.jsDiscountedPrice
    #${PuffyLuxMattressKlarnaPricePDP}=              get text        css=#product_form_3809097023562 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    ${PuffyLuxMattressSplitItPricePDP}=             get text        css=#product_form_3809097023562 > div.purchase-details > div > div.splitit-section.jsSplititSection > div > span.-splitit--text.-splitit--text-price

    Mouse Over          ${Mattresses}
    sleep               2s
    Click element       ${COMPARE}
    Wait Until Page Contains    Puffy Mattress
    ${PuffyLuxMattressMinimumOriginalPriceComparePage}=     get text        css=body > div.container.main.content > div > div.compare-page__content > div.compare-boxes.is--puffy-mattress-and-puffy-lux > div:nth-child(1) > div > div.compare-boxes__prices > div:nth-child(1) > span.compare-boxes__old-price > del
    ${PuffyLuxMattressDiscountedPriceComparePage}=          get text        css=body > div.container.main.content > div > div.compare-page__content > div.compare-boxes.is--puffy-mattress-and-puffy-lux > div:nth-child(1) > div > div.compare-boxes__prices > div:nth-child(1) > span.compare-boxes__price.jsDiscountedPrice
    #${PuffyLuxMattressKlarnaPriceComparePage}=              get text        css=body > div.container.main.content > div > div.compare-page__content > div.compare-boxes.is--puffy-mattress-and-puffy-lux > div:nth-child(1) > div > div.finance-area.is--common > div:nth-child(1) > div > a > span.data-splitit-price.jsKlarna
    ${PuffyLuxMattressSplitItPriceComparePage}=             get text        css=body > div.container.main.content > div > div.compare-page__content > div.compare-boxes.is--puffy-mattress-and-puffy-lux > div:nth-child(1) > div > div.compare-boxes__prices > div:nth-child(3) > span.compare-boxes__price
    Run keyword if          '${PuffyLuxMattressMinimumOriginalPricePDP}'!='${PuffyLuxMattressMinimumOriginalPriceComparePage}'      Fail        Wrong Puffy Lux Mattress Original in Comparison Page. Expected Result: ${PuffyLuxMattressMinimumOriginalPricePDP} Actual Result: ${PuffyLuxMattressMinimumOriginalPriceComparePage}
    Run keyword if          '${PuffyLuxMattressDiscountedPricePDP}'!='${PuffyLuxMattressDiscountedPriceComparePage}'      Fail        Wrong Puffy Lux Mattress Discounted price in Comparison Page. Expected Result: ${PuffyLuxMattressDiscountedPricePDP} Actual Result: ${PuffyLuxMattressDiscountedPriceComparePage}
    #Run keyword if          '${PuffyLuxMattressKlarnaPricePDP}${text}'!='${PuffyLuxMattressKlarnaPriceComparePage}'      Fail        Wrong Puffy Lux Mattress Klarna Price in Comparison Page. Expected Result: ${PuffyLuxMattressKlarnaPricePDP} Actual Result: ${PuffyLuxMattressKlarnaPriceComparePage}
    Run keyword if          '${PuffyLuxMattressTwinSplitItmidby12}'!='${PuffyLuxMattressSplitItPriceComparePage}'      Fail        Wrong Puffy Lux Mattress SplitIt Price in Comparison Page. Expected Result: ${PuffyLuxMattressTwinSplitItmidby12} Actual Result: ${PuffyLuxMattressSplitItPriceComparePage}

Get Puffy Lux Hybrid Mattress Price and compare to mid page
    sleep                                           1s
    ${PuffyLuxHybridMattressMinimumOriginalPricePDP}=     get text        css=#product_form_3809097023562 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > div > span > del > span.hybrid-price
    sleep                                           1s
    ${PuffyLuxHybridMattressDiscountedPricePDP}=          get text        css=#product_form_3809097023562 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > div > span > span > span.hybrid-price.jsDiscountedPrice
    #${PuffyLuxHybridMattressKlarnaPricePDP}=              get text        css=#product_form_3809097023562 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    ${PuffyLuxHybridMattressSplitItPricePDP}=             get text        css=#product_form_3809097023562 > div.purchase-details > div > div.splitit-section.jsSplititSection > div > span.-splitit--text.-splitit--text-price

    click link                                            link:Compare Hybrids
    Wait Until Page Contains element     css=body > div.container.main.content > div > div.compare-page__headline > h1
    ${PuffyLuxHybridMattressMinimumOriginalPriceComparePage}=     get text        css=body > div.container.main.content > div > div.compare-page__content > div.compare-boxes.is--compare-hybrid-mattress-puffy-lux-and-royal > div:nth-child(2) > div > div.price-area > span.price-area__old-price > del
    ${PuffyLuxHybridMattressDiscountedPriceComparePage}=          get text        css=body > div.container.main.content > div > div.compare-page__content > div.compare-boxes.is--compare-hybrid-mattress-puffy-lux-and-royal > div:nth-child(2) > div > div.price-area > span.price-area__price.jsDiscountedPrice
    #${PuffyLuxHybridMattressKlarnaPriceComparePage}=              get text        css=body > div.container.main.content > div > div.compare-page__content > div.compare-boxes.is--compare-hybrid-mattress-puffy-lux-and-royal > div:nth-child(2) > div > div.finance-area.is--common > div:nth-child(1) > div > a > span.data-splitit-price.jsKlarna
    ${PuffyLuxHybridMattressSplitItPriceComparePage}=             get text        css=body > div.container.main.content > div > div.compare-page__content > div.compare-boxes.is--compare-hybrid-mattress-puffy-lux-and-royal > div:nth-child(2) > div > div.finance-area.is--common > div.finance-area__box.finance-area__box--separator > div > a > span.data-splitit-price.jsKlarna
    Run keyword if          '${PuffyLuxHybridMattressMinimumOriginalPricePDP}'!='${PuffyLuxHybridMattressMinimumOriginalPriceComparePage}'      Fail        Wrong Puffy Lux Hybrid Mattress Original in Comparison Page. Expected Result: ${PuffyLuxHybridMattressMinimumOriginalPricePDP} Actual Result: ${PuffyLuxHybridMattressMinimumOriginalPriceComparePage}
    Run keyword if          '${PuffyLuxHybridMattressDiscountedPricePDP}'!='${PuffyLuxHybridMattressDiscountedPriceComparePage}'      Fail        Wrong Puffy Lux Hybrid Mattress Discounted price in Comparison Page. Expected Result: ${PuffyLuxHybridMattressDiscountedPricePDP} Actual Result: ${PuffyLuxHybridMattressDiscountedPriceComparePage}
    #Run keyword if          '${PuffyLuxHybridMattressKlarnaPricePDP}${text}'!='${PuffyLuxHybridMattressKlarnaPriceComparePage}'      Fail        Wrong Puffy Lux Hybrid Mattress Klarna Price in Comparison Page. Expected Result: ${PuffyLuxHybridMattressKlarnaPricePDP} Actual Result: ${PuffyLuxHybridMattressKlarnaPriceComparePage}
    Run keyword if          '${PuffyLuxHybridTwinSplitItmid}'!='${PuffyLuxHybridMattressSplitItPriceComparePage}'      Fail        Wrong Puffy Lux Hybrid Mattress SplitIt Price in Comparison Page. Expected Result: ${PuffyLuxHybridTwinSplitItmid} Actual Result: ${PuffyLuxHybridMattressSplitItPriceComparePage}

Get Puffy Royal Hybrid Mattress Price and compare to mid page
    #sleep                                           1s
    #${PuffyRoyalHybridMattressMinimumOriginalPricePDP}=     get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > div > span > del > span.hybrid-price
    #${PuffyRoyalHybridMattressDiscountedPricePDP}=          get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > div > span > span > span.hybrid-price.jsDiscountedPrice
    #${PuffyRoyalHybridMattressKlarnaPricePDP}=              get text        css=#product_form_3832788910114 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    #${PuffyRoyalHybridMattressSplitItPricePDP}=             get text        css=#product_form_3832788910114 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span

    click link                                              link:Compare Hybrids
    Wait Until Page Contains element     css=body > div.container.main.content > div > div.compare-page__headline > h1
    ${PuffyRoyalHybridMattressMinimumOriginalPriceComparePage}=     get text        css=body > div.container.main.content > div > div.compare-page__content > div.compare-boxes.is--compare-hybrid-mattress-puffy-lux-and-royal > div:nth-child(1) > div > div.price-area > span.price-area__old-price > del
    ${PuffyRoyalHybridMattressDiscountedPriceComparePage}=          get text        css=body > div.container.main.content > div > div.compare-page__content > div.compare-boxes.is--compare-hybrid-mattress-puffy-lux-and-royal > div:nth-child(1) > div > div.price-area > span.price-area__price.jsDiscountedPrice
    #${PuffyRoyalHybridMattressKlarnaPriceComparePage}=              get text        css=body > div.container.main.content > div > div.compare-page__content > div.compare-boxes.is--compare-hybrid-mattress-puffy-lux-and-royal > div:nth-child(1) > div > div.finance-area.is--common > div:nth-child(1) > div > a > span.data-splitit-price.jsKlarna
    ${PuffyRoyalHybridMattressSplitItPriceComparePage}=             get text        css=body > div.container.main.content > div > div.compare-page__content > div.compare-boxes.is--compare-hybrid-mattress-puffy-lux-and-royal > div:nth-child(1) > div > div.finance-area.is--common > div.finance-area__box.finance-area__box--separator > div > a > span.data-splitit-price.jsKlarna
    Run keyword if          '${PuffyRoyalHybridMattressMinimumOriginalPricePDP}'!='${PuffyRoyalHybridMattressMinimumOriginalPriceComparePage}'      Fail        Wrong Puffy Royal Hybrid Mattress Original in Comparison Page. Expected Result: ${PuffyRoyalHybridMattressMinimumOriginalPricePDP} Actual Result: ${PuffyRoyalHybridMattressMinimumOriginalPriceComparePage}
    Run keyword if          '${PuffyRoyalHybridMattressDiscountedPricePDP}'!='${PuffyRoyalHybridMattressDiscountedPriceComparePage}'      Fail        Wrong Puffy Royal Hybrid Mattress Discounted price in Comparison Page. Expected Result: ${PuffyRoyalHybridMattressDiscountedPricePDP} Actual Result: ${PuffyRoyalHybridMattressDiscountedPriceComparePage}
    #Run keyword if          '${PuffyRoyalHybridMattressKlarnaPricePDP}${text}'!='${PuffyRoyalHybridMattressKlarnaPriceComparePage}'      Fail        Wrong Puffy Royal Hybrid Mattress Klarna Price in Comparison Page. Expected Result: ${PuffyRoyalHybridMattressKlarnaPricePDP} Actual Result: ${PuffyRoyalHybridMattressKlarnaPriceComparePage}
    Run keyword if          '${PuffyRoyalHybridTwinSplitItmid}'!='${PuffyRoyalHybridMattressSplitItPriceComparePage}'      Fail        Wrong Puffy Royal Hybrid Mattress SplitIt Price in Comparison Page. Expected Result: ${PuffyRoyalHybridTwinSplitItmid} Actual Result: ${PuffyRoyalHybridMattressSplitItPriceComparePage}


#########################################################STORE PAGE###############################################################################

Check price in Store page for Puffy Mattress
    ${PuffyMattressMinOriginalStorePage}=     get text        css=#collectionProductsWrap > div:nth-child(1) > div > div.product-details > a.product-info__caption > span.price.sale > span.was_price > span
    Run keyword if          '${PUFFYMATTRESSTWINORIGINAL}'!='${PuffyMattressMinOriginalStorePage}'      Fail        Wrong Puffy Mattress "Starting From" Original amount in Store Page. Expected Result: ${PUFFYMATTRESSTWINORIGINAL} Actual Result: ${PuffyMattressMinOriginalStorePage}
    ${PuffyMattressMinDiscountedStorePage}=     get text        css=#collectionProductsWrap > div:nth-child(1) > div > div.product-details > a.product-info__caption > span.price.sale > span.money.jsDiscountedPrice
    Run keyword if          '${PUFFYMATTRESSTWIN300OFF}'!='${PuffyMattressMinDiscountedStorePage}'      Fail        Wrong Puffy Mattress "Starting From" discounted amount in Store Page. Expected Result: ${PUFFYMATTRESSTWIN300OFF} Actual Result: ${PuffyMattressMinDiscountedStorePage}

Price check for Puffy Lux Mattress
    ${PuffyLuxMattressMinOriginalStorePage}=     get text        css=#collectionProductsWrap > div:nth-child(2) > div > div.product-details > a.product-info__caption > span.price.sale > span.was_price > span
    Run keyword if          '${PuffyLuxTwinOriginal}'!='${PuffyLuxMattressMinOriginalStorePage}'      Fail        Wrong Puffy Lux Mattress "Starting From" Original amount in Store Page. Expected Result: ${PuffyLuxTwinOriginal} Actual Result: ${PuffyLuxMattressMinOriginalStorePage}
#Price check for Puffy Royal Mattress
    #${PuffyRoyalMattressMinOriginalStorePage}=     get text        css=#collectionProductsWrap > div:nth-child(3) > div > div.product-details > a.product-info__caption > span.price.sale > span.was_price > span
    #Run keyword if          '${PuffyRoyalTwinOriginal}'!='${PuffyRoyalMattressMinOriginalStorePage}'      Fail        Wrong Puffy Royal Mattress "Starting From" Original amount in Store Page. Expected Result: ${PuffyRoyalTwinOriginal} Actual Result: ${PuffyRoyalMattressMinOriginalStorePage}
Price check for Puffy Adjustable Base
    ${PuffyAdjustableBaseMinOriginalStorePage}=     get text        css=#collectionProductsWrap > div:nth-child(3) > div > div.product-details > a.product-info__caption > span.price.sale > span.was_price > span
    Run keyword if          '${PuffyAdjustTwinXLOriginal}'!='${PuffyAdjustableBaseMinOriginalStorePage}'      Fail        Wrong Puffy Adjustable Base "Starting From" Original amount in Store Page. Expected Result: ${PuffyAdjustTwinXLOriginal} Actual Result: ${PuffyAdjustableBaseMinOriginalStorePage}
Price check for Puffy Bed Frame
    ${PuffyBedFrameMinOriginalStorePage}=     get text        css=#collectionProductsWrap > div:nth-child(4) > div > div.product-details > a.product-info__caption > span.price > span
    Run keyword if          '${PuffyBedFrameFullOriginal}'!='${PuffyBedFrameMinOriginalStorePage}'      Fail        Wrong Puffy Bed Frame "Starting From" Original amount in Store Page. Expected Result: ${PuffyBedFrameFullOriginal} Actual Result: ${PuffyBedFrameMinOriginalStorePage}
Price check for Puffy Foundation
    ${PuffyFoundationMinOriginalStorePage}=     get text        css=#collectionProductsWrap > div:nth-child(5) > div > div.product-details > a.product-info__caption > span.price > span
    Run keyword if          '${PuffyFoundationTwinOriginal}'!='${PuffyFoundationMinOriginalStorePage}'      Fail        Wrong Puffy Foundation "Starting From" Original amount in Store Page. Expected Result: ${PuffyFoundationTwinOriginal} Actual Result: ${PuffyFoundationMinOriginalStorePage}
Price check for Puffy Mattress Protector
    ${PuffyMattressProtectorMinOriginalStorePage}=     get text        css=#collectionProductsWrap > div:nth-child(6) > div > div.product-details > a.product-info__caption > span.price > span
    Run keyword if          '${PuffyProtectorTwinOriginal}'!='${PuffyMattressProtectorMinOriginalStorePage}'      Fail        Wrong Puffy Mattress Protector "Starting From" Original amount in Store Page. Expected Result: ${PuffyProtectorTwinOriginal} Actual Result: ${PuffyMattressProtectorMinOriginalStorePage}
Price check for Puffy Comforter
    ${PuffyComforterMinOriginalStorePage}=     get text                css=#collectionProductsWrap > div:nth-child(7) > div > div.product-details > a.product-info__caption > span.price > span
    Run keyword if          '${PuffyComforterTwin/TwinXLOriginal}'!='${PuffyComforterMinOriginalStorePage}'      Fail        Wrong Puffy Comforter "Starting From" Original amount in Store Page. Expected Result: ${PuffyComforterTwin/TwinXLOriginal} Actual Result: ${PuffyComforterMinOriginalStorePage}
#Price check for Puffy Pillow
    #${PuffyPillowMinOriginalStorePage}=     get text        css=#collectionProductsWrap > div:nth-child(7) > div > div.product-details > a.product-info__caption > span.price > span
    #Run keyword if          '${PuffyPillowStandardOriginal}'!='${PuffyPillowMinOriginalStorePage}'      Fail        Wrong Puffy Pillow "Starting From" Original amount in Store Page. Expected Result: ${PuffyPillowStandardOriginal} Actual Result: ${PuffyPillowMinOriginalStorePage}
Price check for Puffy Body Pillow
    ${PuffyBodyPillowMinOriginalStorePage}=     get text               css=#collectionProductsWrap > div:nth-child(8) > div > div.product-details > a.product-info__caption > span.price > span
    Run keyword if          '${PuffyBodyPillowOriginal}'!='${PuffyBodyPillowMinOriginalStorePage}'      Fail        Wrong Puffy Body Pillow "Starting From" Original amount in Store Page. Expected Result: ${PuffyBodyPillowOriginal} Actual Result: ${PuffyBodyPillowMinOriginalStorePage}
Price check for Puffy Mattress Pad
    ${PuffyMattressPadMinOriginalStorePage}=     get text        css=#collectionProductsWrap > div:nth-child(9) > div > div.product-details > a.product-info__caption > span.price > span
    Run keyword if          '${PuffyPadTwinOriginal}'!='${PuffyMattressPadMinOriginalStorePage}'      Fail        Wrong Puffy Mattress Pad "Starting From" Original amount in Store Page. Expected Result: ${PuffyPadTwinOriginal} Actual Result: ${PuffyMattressPadMinOriginalStorePage}
Price check for Puffy Topper
    ${PuffyTopperMinOriginalStorePage}=     get text        css=#collectionProductsWrap > div:nth-child(10) > div > div.product-details > a.product-info__caption > span.price > span
    Run keyword if          '${PuffyTopperTwinOriginal}'!='${PuffyTopperMinOriginalStorePage}'      Fail        Wrong Puffy Topper "Starting From" Original amount in Store Page. Expected Result: ${PuffyTopperTwinOriginal} Actual Result: ${PuffyTopperMinOriginalStorePage}
Price check for Puffy Blanket
    ${PuffyBlanketMinOriginalStorePage}=     get text        css=#collectionProductsWrap > div:nth-child(11) > div > div.product-details > a.product-info__caption > span.price > span
    Run keyword if          '${PuffyBlanketSmallOriginal}'!='${PuffyBlanketMinOriginalStorePage}'      Fail        Wrong Puffy Blanket "Starting From" Original amount in Store Page. Expected Result: ${PuffyBlanketSmallOriginal} Actual Result: ${PuffyBlanketMinOriginalStorePage}
Price check for Puffy Weighted Blanket
    ${PuffyWeightedBlanketMinOriginalStorePage}=     get text        css=#collectionProductsWrap > div:nth-child(12) > div > div.product-details > a.product-info__caption > span.price > span
    Run keyword if          '${PuffyWeightedBlanketTwinOriginal}'!='${PuffyWeightedBlanketMinOriginalStorePage}'      Fail        Wrong Puffy Weighted Blanket "Starting From" Original amount in Store Page. Expected Result: ${PuffyWeightedBlanketTwinOriginal} Actual Result: ${PuffyWeightedBlanketMinOriginalStorePage}
Price check for Puffy Sheets
    ${PuffySheetsMinOriginalStorePage}=     get text        css=#collectionProductsWrap > div:nth-child(13) > div > div.product-details > a.product-info__caption > span.price > span
    Run keyword if          '${PuffySheetsTwinOriginal}'!='${PuffySheetsMinOriginalStorePage}'      Fail        Wrong Puffy Sheets "Starting From" Original amount in Store Page. Expected Result: ${PuffySheetsTwinOriginal} Actual Result: ${PuffySheetsMinOriginalStorePage}
Price check for Puffy Dog Bed
    ${PuffyDogBedMinOriginalStorePage}=     get text        css=#collectionProductsWrap > div:nth-child(14) > div > div.product-details > a.product-info__caption > span.price > span
    Run keyword if          '${PuffyDogBedSmallOriginal}'!='${PuffyDogBedMinOriginalStorePage}'      Fail        Wrong Puffy Dog Bed "Starting From" Original amount in Store Page. Expected Result: ${PuffyDogBedSmallOriginal} Actual Result: ${PuffyDogBedMinOriginalStorePage}
Price check for Puffy Rug
    ${PuffyRugMinOriginalStorePage}=     get text        css=#collectionProductsWrap > div:nth-child(15) > div > div.product-details > a.product-info__caption > span.price > span
    Run keyword if          '${PuffyRugMediumOriginal}'!='${PuffyRugMinOriginalStorePage}'      Fail        Wrong Puffy Rug "Starting From" Original amount in Store Page. Expected Result: ${PuffyRugSmallOriginal} Actual Result: ${PuffyRugMinOriginalStorePage}

####GIFT SHOP#####
Gift Shop Price check for Puffy Pillow
    sleep                                   2s
    ${PuffyPillowMinOriginalStorePage}=     get text        css=body > div.container.main.content > div:nth-child(4) > div > div > div:nth-child(1) > div > a > div.product-box__content > div.product-box__desc > div.product-box__prices > strong
    Run keyword if          '${PuffyPillowStandardOriginal}'!='${PuffyPillowMinOriginalStorePage}'      Fail        Wrong Puffy Pillow "Starting From" Original amount in Gift Page. Expected Result: ${PuffyPillowStandardOriginal} Actual Result: ${PuffyPillowMinOriginalStorePage}

Gift Shop Price check for Puffy Comforter
    ${PuffyComforterMinOriginalStorePage}=     get text        css=body > div.container.main.content > div:nth-child(4) > div > div > div:nth-child(2) > div > a > div.product-box__content > div.product-box__desc > div.product-box__prices > strong
    Run keyword if          '${PuffyComforterTwin/TwinXLOriginal}'!='${PuffyComforterMinOriginalStorePage}'      Fail        Wrong Puffy Comforter "Starting From" Original amount in Gift Page. Expected Result: ${PuffyComforterTwin/TwinXLOriginal} Actual Result: ${PuffyComforterMinOriginalStorePage}

Gift Shop Price check for Puffy Weighted Blanket
    ${PuffyWeightedBlanketMinOriginalStorePage}=     get text        css=body > div.container.main.content > div:nth-child(4) > div > div > div:nth-child(3) > div > a > div.product-box__content > div.product-box__desc > div.product-box__prices > strong
    Run keyword if          '${PuffyWeightedBlanketTwinOriginal}'!='${PuffyWeightedBlanketMinOriginalStorePage}'      Fail        Wrong Puffy Weighted Blanket "Starting From" Original amount in Gift Page. Expected Result: ${PuffyWeightedBlanketTwinOriginal} Actual Result: ${PuffyWeightedBlanketMinOriginalStorePage}

Gift Shop Price check for Puffy Mattress Pad
    ${PuffyMattressPadMinOriginalStorePage}=     get text        css=body > div.container.main.content > div:nth-child(4) > div > div > div:nth-child(4) > div > a > div.product-box__content > div.product-box__desc > div.product-box__prices > strong
    Run keyword if          '${PuffyPadTwinOriginal}'!='${PuffyMattressPadMinOriginalStorePage}'      Fail        Wrong Puffy Mattress Pad "Starting From" Original amount in Gift Page. Expected Result: ${PuffyPadTwinOriginal} Actual Result: ${PuffyMattressPadMinOriginalStorePage}

Gift Shop Price check for Puffy Mattress Topper
    ${PuffyTopperMinOriginalStorePage}=     get text        css=body > div.container.main.content > div:nth-child(4) > div > div > div:nth-child(5) > div > a > div.product-box__content > div.product-box__desc > div.product-box__prices > strong
    Run keyword if          '${PuffyTopperTwinOriginal}'!='${PuffyTopperMinOriginalStorePage}'      Fail        Wrong Puffy Topper "Starting From" Original amount in Gift Page. Expected Result: ${PuffyTopperTwinOriginal} Actual Result: ${PuffyTopperMinOriginalStorePage}

Gift Shop Price check for Puffy Mattress Protector
    ${PuffyMattressProtectorMinOriginalStorePage}=     get text        css=body > div.container.main.content > div:nth-child(4) > div > div > div:nth-child(6) > div > a > div.product-box__content > div.product-box__desc > div.product-box__prices > strong
    Run keyword if          '${PuffyProtectorTwinOriginal}'!='${PuffyMattressProtectorMinOriginalStorePage}'      Fail        Wrong Puffy Mattress Protector "Starting From" Original amount in Gift Page. Expected Result: ${PuffyProtectorTwinOriginal} Actual Result: ${PuffyMattressProtectorMinOriginalStorePage}

Gift Shop Price check for Puffy Blanket
    ${PuffyBlanketMinOriginalStorePage}=     get text        css=body > div.container.main.content > div.text-bar.text-bar--medium-text.text-bar--gift-shop > div > div > div:nth-child(2) > div > div:nth-child(1) > div > a > div.product-box__content > div.product-box__desc > div.product-box__prices > strong
    Run keyword if          '${PuffyBlanketSmallOriginal}'!='${PuffyBlanketMinOriginalStorePage}'      Fail        Wrong Puffy Blanket "Starting From" Original amount in Gift Page. Expected Result: ${PuffyBlanketSmallOriginal} Actual Result: ${PuffyBlanketMinOriginalStorePage}

Gift Shop Price check for Puffy Body Pillow
    ${PuffyBodyPillowMinOriginalStorePage}=     get text        css=body > div.container.main.content > div.text-bar.text-bar--medium-text.text-bar--gift-shop > div > div > div:nth-child(2) > div > div:nth-child(2) > div > a > div.product-box__content > div.product-box__desc > div.product-box__prices > strong
    Run keyword if          '${PuffyBodyPillowOriginal}'!='${PuffyBodyPillowMinOriginalStorePage}'      Fail        Wrong Puffy Body Pillow "Starting From" Original amount in Gift Page. Expected Result: ${PuffyBodyPillowOriginal} Actual Result: ${PuffyBodyPillowMinOriginalStorePage}

Gift Shop Price check for Puffy Rug
    ${PuffyRugMinOriginalStorePage}=     get text        css=body > div.container.main.content > div.text-bar.text-bar--medium-text.text-bar--gift-shop > div > div > div:nth-child(2) > div > div:nth-child(3) > div > a > div.product-box__content > div.product-box__desc > div.product-box__prices > strong
    Run keyword if          '${PuffyRugMediumOriginal}'!='${PuffyRugMinOriginalStorePage}'      Fail        Wrong Puffy Rug "Starting From" Original amount in Gift Page. Expected Result: ${PuffyRugSmallOriginal} Actual Result: ${PuffyRugMinOriginalStorePage}

Gift Shop Price check for Puffy Mattress
    ${PuffyMattressMinOriginalStorePage}=     get text        css=body > div.container.main.content > div:nth-child(7) > div > div > div:nth-child(1) > div > a > div.product-box__content > div.product-box__desc > div.product-box__prices > span > del
    Run keyword if          '${PuffyMattTwinOriginal}'!='${PuffyMattressMinOriginalStorePage}'      Fail        Wrong Puffy Mattress "Starting From" Original amount in Gift Page. Expected Result: ${PuffyMattTwinOriginal} Actual Result: ${PuffyMattressMinOriginalStorePage}

Gift Shop Price check for Puffy Lux Hybrid
    ${PuffyLuxMattressMinOriginalStorePage}=     get text        css=body > div.container.main.content > div:nth-child(7) > div > div > div:nth-child(2) > div > a > div.product-box__content > div.product-box__desc > div.product-box__prices > span > del
    Run keyword if          '${PuffyLuxTwinOriginal}'!='${PuffyLuxMattressMinOriginalStorePage}'      Fail        Wrong Puffy Lux Mattress "Starting From" Original amount in Gift Page. Expected Result: ${PuffyLuxTwinOriginal} Actual Result: ${PuffyLuxMattressMinOriginalStorePage}

Gift Shop Price check for Puffy Royal Hybrid
    ${PuffyRoyalMattressMinOriginalStorePage}=     get text        css=body > div.container.main.content > div:nth-child(7) > div > div > div:nth-child(3) > div > a > div.product-box__content > div.product-box__desc > div.product-box__prices > span > del
    Run keyword if          '${PuffyRoyalTwinOriginal}'!='${PuffyRoyalMattressMinOriginalStorePage}'      Fail        Wrong Puffy Royal Mattress "Starting From" Original amount in Gift Page. Expected Result: ${PuffyRoyalTwinOriginal} Actual Result: ${PuffyRoyalMattressMinOriginalStorePage}

Gift Shop Price check for Puffy Adjustable Base
    ${PuffyAdjustableBaseMinOriginalStorePage}=     get text        css=body > div.container.main.content > div.text-bar.text-bar--medium-text.is--gray > div > div.text-bar__content.text-bar__content--single > div > div > div:nth-child(1) > div > a > div.product-box__content > div.product-box__desc > div.product-box__prices > span > del
    Run keyword if          '${PuffyAdjustTwinXLOriginal}'!='${PuffyAdjustableBaseMinOriginalStorePage}'      Fail        Wrong Puffy Adjustable Base "Starting From" Original amount in Gift Page. Expected Result: ${PuffyAdjustTwinXLOriginal} Actual Result: ${PuffyAdjustableBaseMinOriginalStorePage}

Gift Shop Price check for Puffy Foundation
    ${PuffyFoundationMinOriginalStorePage}=     get text        css=body > div.container.main.content > div.text-bar.text-bar--medium-text.is--gray > div > div.text-bar__content.text-bar__content--single > div > div > div:nth-child(2) > div > a > div.product-box__content > div.product-box__desc > div.product-box__prices > strong
    Run keyword if          '${PuffyFoundationTwinOriginal}'!='${PuffyFoundationMinOriginalStorePage}'      Fail        Wrong Puffy Foundation "Starting From" Original amount in Gift Page. Expected Result: ${PuffyFoundationTwinOriginal} Actual Result: ${PuffyFoundationMinOriginalStorePage}

Gift Shop Price check for Puffy Bed Frame
    ${PuffyBedFrameMinOriginalStorePage}=     get text        css=body > div.container.main.content > div.text-bar.text-bar--medium-text.is--gray > div > div.text-bar__content.text-bar__content--single > div > div > div:nth-child(3) > div > a > div.product-box__content > div.product-box__desc > div.product-box__prices > strong
    Run keyword if          '${PuffyBedFrameFullOriginal}'!='${PuffyBedFrameMinOriginalStorePage}'      Fail        Wrong Puffy Bed Frame "Starting From" Original amount in Gift Page. Expected Result: ${PuffyBedFrameFullOriginal} Actual Result: ${PuffyBedFrameMinOriginalStorePage}
