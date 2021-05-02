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
${Email}                        automation@puffy.com
${First Name}                   John
${Last Name}                    Doe
${Address}                      123 William Street
${City}                         New York
${ZipCode}                      03101
${Sale Name}                    FALL SALE
${Sale Details}                 $300 OFF + FREE PILLOW
${Discount Amount}              $300 OFF
${Homepage}                     https://puffy.com/
${systembrowser}                Chrome
${Feedback}                     html.null body.index.is--hybrid-false.timer--exists.jdgm-buyer-badge--removed div.index-sections div#shopify-section-hov_instagramBoxes.shopify-section div.instagram-boxes div.instagram-boxes__inner
${Shop}                         div.compare-boxes__headline:nth-child(1) > h2:nth-child(1) > a:nth-child(1)
${Logo}                         //*[@id="shopify-section-header"]/div/header[2]/div/div/div/div[1]/a/img
${Contacts}                     //*[@id="contact"]/a
${Mattresses}                   //*[@id="shopify-section-header"]/div/header[2]/div/div/div/div[2]/ul/li[1]/a
${Puffy Mattress}               //*[@id="shopify-section-header"]/div/header[2]/div/div/div/div[4]/div/div[1]/div[1]/div[2]/a/div[1]/img
${Puffy Lux Mattress}           //*[@id="shopify-section-header"]/div/header[2]/div/div/div/div[4]/div/div[1]/div[2]/div[2]/a/div[1]/img
${Puffy Royal Mattress}         //*[@id="shopify-section-header"]/div/header[2]/div/div/div/div[4]/div/div[1]/div[3]/div[2]/a/div[1]/img
${COMPARE}                      //*[@id="shopify-section-header"]/div/header[2]/div/div/div/div[4]/div/div[2]/a
${PuffyReason1Image}            //*[@id="productReasons"]/div[2]/div[1]/div/div/div/div/div[2]/div/img
${Bases}                        //*[@id="shopify-section-header"]/div/header[2]/div/div/div/div[2]/ul/li[2]/a
${Foundation}                   //*[@id="shopify-section-header"]/div/header[2]/div/div/div/div[5]/div/div/div[1]/div[2]/a/div[1]/img
${Adjustable Base}              //*[@id="shopify-section-header"]/div/header[2]/div/div/div/div[5]/div/div/div[2]/div[2]/a/div[1]/img
${Bed Frame}                    //*[@id="shopify-section-header"]/div/header[2]/div/div/div/div[5]/div/div/div[3]/div[2]/a/div[1]/img
${Bedding}                      //*[@id="shopify-section-header"]/div/header[2]/div/div/div/div[2]/ul/li[3]/a
${Comforter}                    //*[@id="shopify-section-header"]/div/header[2]/div/div/div/div[6]/div/div/div[1]/div[2]/a/div[1]/img
${Pillow}                       //*[@id="shopify-section-header"]/div/header[2]/div/div/div/div[6]/div/div/div[2]/div[2]/a/div[1]/img
${Body Pillow}                  //*[@id="shopify-section-header"]/div/header[2]/div/div/div/div[6]/div/div/div[3]/div[2]/a/div[1]/img
${Mattress Pad}                 //*[@id="shopify-section-header"]/div/header[2]/div/div/div/div[6]/div/div/div[4]/div[2]/a/div[1]/img
${Mattress Protector}           //*[@id="shopify-section-header"]/div/header[2]/div/div/div/div[6]/div/div/div[5]/div[2]/a/div[1]/img
${Mattress Topper}              //*[@id="shopify-section-header"]/div/header[2]/div/div/div/div[6]/div/div/div[6]/div[2]/a/div[1]/img
${Blanket}                      //*[@id="shopify-section-header"]/div/header[2]/div/div/div/div[6]/div/div/div[7]/div[2]/a/div[1]/img
${Weighted Blanket}             //*[@id="shopify-section-header"]/div/header[2]/div/div/div/div[6]/div/div/div[8]/div[2]/a/div[1]/img
${Sheets}                       //*[@id="shopify-section-header"]/div/header[2]/div/div/div/div[6]/div/div/div[9]/div[2]/a/div[1]/img
${Bedroom}                      //*[@id="shopify-section-header"]/div/header[2]/div/div/div/div[2]/ul/li[4]/a
${Puffy Nightstand}             //*[@id="shopify-section-header"]/div/header[2]/div/div/div/div[7]/div/div/div[1]/div[2]/a/div[1]/img
${Dog Bed}                      //*[@id="shopify-section-header"]/div/header[2]/div/div/div/div[7]/div/div/div[2]/div[2]/a/div[1]/img
${Rug}                          //*[@id="shopify-section-header"]/div/header[2]/div/div/div/div[7]/div/div/div[3]/div[2]/a/div[1]/img
${Cart}                         //*[@id="shopify-section-header"]/div/header[2]/div/div/div/div[3]/div/a
${FOOTER}                       FALL SALE $300 OFF + FREE PILLOW

${PuffyMattTwinOriginal}        $795
${PuffyMattTwin300OFF}          $495
${PuffyMattTwin350OFF}          $445
${PuffyMattTwinXLOriginal}      $825
${PuffyMattTwinXL300OFF}        $525
${PuffyMattTwinXL350OFF}        $475
${PuffyMattFullOriginal}        $995
${PuffyMattFull300OFF}          $695
${PuffyMattFull350OFF}          $645
${PuffyMattQueenOriginal}       $1,150
${PuffyMattQueen300OFF}         $850
${PuffyMattQueen350OFF}         $800
${PuffyMattKingOriginal}        $1,350
${PuffyMattKing300OFF}          $1,050
${PuffyMattKing350OFF}          $1,000
${PuffyMattCalKingOriginal}     $1,350
${PuffyMattCalKing300OFF}       $1,050
${PuffyMattCalKing350OFF}       $1,000

${PuffyLuxTwinOriginal}         $1,445
${PuffyLuxTwin300OFF}           $1,145
${PuffyLuxTwin350OFF}           $1,095
${PuffyLuxTwinXLOriginal}       $1,495
${PuffyLuxTwinXL300OFF}         $1,195
${PuffyLuxTwinXL350OFF}         $1,145
${PuffyLuxFullOriginal}         $1,595
${PuffyLuxFull300OFF}           $1,295
${PuffyLuxFull350OFF}           $1,245
${PuffyLuxQueenOriginal}        $1,795
${PuffyLuxQueen300OFF}          $1,495
${PuffyLuxQueen350OFF}          $1,445
${PuffyLuxKingOriginal}         $1,995
${PuffyLuxKing300OFF}           $1,695
${PuffyLuxKing350OFF}           $1,645
${PuffyLuxCalKingOriginal}      $1,995
${PuffyLuxCalKing300OFF}        $1,695
${PuffyLuxCalKing350OFF}        $1,645

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

${PuffyAdjustTwinXLOriginal}    $1,195
${PuffyAdjustTwinXL300OFF}      $895
${PuffyAdjustTwinXL350OFF}      $845
${PuffyAdjustFullOriginal}      $1,295
${PuffyAdjustFull300OFF}        $995
${PuffyAdjustFull350OFF}        $945
${PuffyAdjustQueenOriginal}     $1,395
${PuffyAdjustQueen300OFF}       $1,095
${PuffyAdjustQueen350OFF}       $1,045
${PuffyAdjustSplitKingOriginal}  $2,095
${PuffyAdjustSplitKing300OFF}   $1,795
${PuffyAdjustSplitKing350OFF}   $1,745

${PuffySheetsTwin}              $95
${PuffySheetsTwinXL}            $100
${PuffySheetsFull}              $110
${PuffySheetsQueen}             $125
${PuffySheetsKing}              $135
${PuffySheetsCalKing}           $135

*** Test Cases ***


Start Record Video
    Start Record Video

Popup Sale
    Open Login screen
    Wait and dismiss popup
Timer Bar
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
    Click Puffy Lux Size dropdown       #to close the dropdown list
    Click on Puffy Lux Hybrid           #to go to hybrid for price checking
    Click Puffy Lux Size dropdown       #to open the dropdown list
    Check Puffy Lux Hybrid sizes original prices
    Check Puffy Lux Hybrid sizes 300OFF prices
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
    Check Puffy Royal sizes 300OFF prices
    Click Puffy Royal Size dropdown
    Click on Puffy Royal Hybrid
    Click Puffy Royal Size dropdown
    Check Puffy Royal Hybrid sizes original prices
    Check Puffy Royal Hybrid sizes 300OFF prices
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
    Complete your Bedroom Set from checkout product page redirection
    sleep           5s
    Click checkout
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
    ${Content}=            get text        css=#saleTimer > div:nth-child(1)
    Run keyword if          '${Content}'!='FALL SALE $300 OFF + FREE PILLOW'      Fail        Wrong Seasonal Sale timer Content
    Click element           css=#saleTimer > span > svg

Homepage Seasonal Sale text check
    sleep                   2s
    ${Content}=            get text        css=#Summer_Sale
    Run keyword if          '${Content}'!='${Sale Name}'      Fail        Wrong Seasonal Sale Content

Homepage Discount Value and Freebie check
    ${Content}=            get text        css=#_300_OFF_Free_Pillow > text
    Run keyword if          '${Content}'!='${Sale Details}'      Fail        Wrong Discount Value and Freebie Content

PDP Discount Value and Freebie check
    ${Content}=            get text        css=#_300_Off_FREE_PILLOW
    Run keyword if          '${Content}'!='${Sale Details}'      Fail        Wrong Discount Value and Freebie Content

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
    Run keyword if          '${Content}'!='${Sale Details}'      Fail        Wrong Discount Value and Freebie Content

Go to Gift Shop page
    sleep                   2s
    Click link              link:Gift Shop
    Scroll Element Into View            css=body > div.container.main.content > div:nth-child(7) > div > div > div:nth-child(2) > div > a > div.product-box__media.product-box__media--white > div.image-element__wrap
    sleep                               2s
    Scroll Element Into View            css=body > div.container.main.content > div.text-bar.text-bar--medium-text.is--gray > div > div.text-bar__content.text-bar__content--single > div > div > div:nth-child(1) > div > a > div.product-box__content > div.product-box__desc > div.product-box__title

Puffy Adjustable Base Banner Discount Value and Freebie check
    sleep                   2s
    ${Content}=            get text        css=#_300_OFF
    Run keyword if          '${Content}'!='${Discount Amount}'      Fail        Wrong Discount Value and Freebie Content

PDP Puffy Adjustable Base Banner Discount Value and Freebie check
    sleep                   2s
    ${Content}=            get text        css=#_300_Off
    Run keyword if          '${Content}'!='${Discount Amount}'      Fail        Wrong Discount Value and Freebie Content

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

Check Puffy Mattress sizes 300OFF prices

    Wait Until Element Is Visible          css=#product_form_345108381730 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > span > span.original-price.jsDiscountedPrice

    ${Content}=            get text        css=#product_form_345108381730 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyMattTwin300OFF}'      Fail        Wrong Puffy Mattress Twin Size 300 OFF price

    ${Content}=            get text        css=#product_form_345108381730 > div.product-variants-holder > div > div > ul > li:nth-child(2) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyMattTwinXL300OFF}'      Fail        Wrong Puffy Mattress TwinXL Size 300 OFF price

    ${Content}=            get text        css=#product_form_345108381730 > div.product-variants-holder > div > div > ul > li:nth-child(3) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyMattFull300OFF}'      Fail        Wrong Puffy Mattress Full Size 300 OFF price

    ${Content}=            get text        css=#product_form_345108381730 > div.product-variants-holder > div > div > ul > li.option.selected.focus > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyMattQueen300OFF}'      Fail        Wrong Puffy Mattress Queen Size 300 OFF price

    ${Content}=            get text        css=#product_form_345108381730 > div.product-variants-holder > div > div > ul > li:nth-child(5) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyMattKing300OFF}'      Fail        Wrong Puffy Mattress King Size 300 OFF price

    ${Content}=            get text        css=#product_form_345108381730 > div.product-variants-holder > div > div > ul > li:nth-child(6) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyMattCalKing300OFF}'      Fail        Wrong Puffy Mattress CalKing Size 300 OFF price



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

Check Puffy Lux sizes 300OFF prices

    Wait Until Element Is Visible          css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > span > span.original-price.jsDiscountedPrice

    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyLuxTwin300OFF}'      Fail        Wrong Puffy Lux Twin Size 300 OFF price

    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(2) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyLuxTwinXL300OFF}'      Fail        Wrong Puffy Lux TwinXL Size 300 OFF price

    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(3) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyLuxFull300OFF}'      Fail        Wrong Puffy Lux Full Size 300 OFF price

    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li.option.selected.focus > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyLuxQueen300OFF}'      Fail        Wrong Puffy Lux Queen Size 300 OFF price

    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(5) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyLuxKing300OFF}'      Fail        Wrong Puffy Lux King Size 300 OFF price

    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(6) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyLuxCalKing300OFF}'      Fail        Wrong Puffy Lux CalKing Size 300 OFF price

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

Check Puffy Lux Hybrid sizes 300OFF prices

    Wait Until Element Is Visible     css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > span > span.hybrid-price.jsDiscountedPrice

    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > span > span.hybrid-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyLuxTwin300OFF}'      Fail        Wrong Puffy Lux Hybrid Twin Size 300 OFF price

    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(2) > span > span > span.hybrid-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyLuxTwinXL300OFF}'      Fail        Wrong Puffy Lux Hybrid TwinXL Size 300 OFF price

    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(3) > span > span > span.hybrid-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyLuxFull300OFF}'      Fail        Wrong Puffy Lux Hybrid Full Size 300 OFF price

    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li.option.selected.focus > span > span > span.hybrid-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyLuxQueen300OFF}'      Fail        Wrong Puffy Lux Hybrid Queen Size 300 OFF price

    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(5) > span > span > span.hybrid-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyLuxKing300OFF}'      Fail        Wrong Puffy Lux Hybrid King Size 300 OFF price

    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(6) > span > span > span.hybrid-price.jsDiscountedPrice
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

    Wait Until Element Is Visible          css=#product_form_416170377250 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > del > span.original-price
    ${Content}=            get text        css=#product_form_416170377250 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffyAdjustTwinXLOriginal}'      Fail        Wrong Puffy Adjustable Base TwinXL Size original price

    ${Content}=            get text        css=#product_form_416170377250 > div.product-variants-holder > div > div > ul > li:nth-child(2) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffyAdjustFullOriginal}'      Fail        Wrong Puffy Adjustable Base Full Size original price

    ${Content}=            get text        css=#product_form_416170377250 > div.product-variants-holder > div > div > ul > li:nth-child(3) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffyAdjustQueenOriginal}'      Fail        Wrong Puffy Adjustable Base Queen Size original price

    ${Content}=            get text        css=#product_form_416170377250 > div.product-variants-holder > div > div > ul > li.option.selected.focus > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffyAdjustSplitKingOriginal}'      Fail        Wrong Puffy Adjustable Base Split King Size original price

Check Puffy Adjustable Base sizes 300OFF prices

    ${Content}=            get text        css=#product_form_416170377250 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyAdjustTwinXL300OFF}'      Fail        Wrong Puffy Adjustable Base TwinXL Size 300 Off price

    ${Content}=            get text        css=#product_form_416170377250 > div.product-variants-holder > div > div > ul > li:nth-child(2) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyAdjustFull300OFF}'      Fail        Wrong Puffy Adjustable Base Full Size 300 Off price

    ${Content}=            get text        css=#product_form_416170377250 > div.product-variants-holder > div > div > ul > li:nth-child(3) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyAdjustQueen300OFF}'      Fail        Wrong Puffy Adjustable Base Queen Size 300 Off price

    ${Content}=            get text        css=#product_form_416170377250 > div.product-variants-holder > div > div > ul > li.option.selected.focus > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyAdjustSplitKing300OFF}'      Fail        Wrong Puffy Adjustable Base Split King Size 300 Off price

Check Puffy Sheets sizes price

    Wait Until Element Is Visible          css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > span > span.original-price

    ${Content}=            get text        css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffySheetsTwin}'      Fail        Wrong Puffy Sheet Twin size price

    ${Content}=            get text        css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(2) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffySheetsTwinXL}'      Fail        Wrong Puffy Sheet TwinXL size price

    ${Content}=            get text        css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(3) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffySheetsFull}'      Fail        Wrong Puffy Sheet Full size price

    ${Content}=            get text        css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li.option.selected.focus > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffySheetsQueen}'      Fail        Wrong Puffy Sheet Queen size price

    ${Content}=            get text        css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(5) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffySheetsKing}'      Fail        Wrong Puffy Sheet King size price

    ${Content}=            get text        css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(6) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffySheetsCalKing}'      Fail        Wrong Puffy Sheet Cal King size price


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
    ${CartText}   get text  xpath=//*[@id="shopify-section-header"]/div/header[2]/div/div/div/div[3]/div/a/span
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
    click element           css=#shopify-section-header > div > header.main_header.feature_image > div > div > div > div.cart_container > div > a

Check cart product redirection
    click link                      link:Puffy Sheets
    Wait Until Page Contains        Puffy Sheets

Cart Price Before Adding product
    ${CartText}   get text  xpath=//*[@id="shopify-section-header"]/div/header[2]/div/div/div/div[3]/div/a/span
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
    Input text                         xpath=//*[@id="checkout_email"]     ${Email}
    Input text                         xpath=//*[@id="checkout_shipping_address_first_name"]     ${First Name}
    Input text                         xpath=//*[@id="checkout_shipping_address_last_name"]     ${Last Name}
    Press Keys	                       xpath=//*[@id="checkout_shipping_address_address1"]	123
    Press Keys	                       xpath=//*[@id="checkout_shipping_address_province"]	New+York
    Press Keys	                       button	RETURN
    Input text                         xpath=//*[@id="checkout_shipping_address_city"]          ${City}
    Input text                         xpath=//*[@id="checkout_shipping_address_zip"]           ${zipcode}
    Input text                         xpath=//*[@id="checkout_shipping_address_phone"]         ${Phone}
    Press Keys	                       button	RETURN


Continue to Payment
    wait until page contains            automation@puffy.com
    wait until page contains            123, New York NH 03101, United States
    wait until page contains element    xpath=/html/body/div[3]/div/div[2]/div[1]/div[1]/div[1]/form/div[1]/div[2]/div[2]/div/div/div/label/span[1]  10s
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
    wait until page contains            How Splitit works
    sleep                               2s
    Click Element                       css=#root > div.checkout--yfc-r > div.header--2YAGd > div > div > div.back-btn--2hXsS
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
