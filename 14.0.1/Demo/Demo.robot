*** Settings ***
Documentation       This is for checking all the places where we should update the seasonal promotion
Library             Selenium2Library
#Library             SeleniumLibrary
Library             ScreenCapLibrary
Library             Collections
Library             String

*** Variables ***
${Homepage}                     https://puffy.com/
${systembrowser}                Chrome
${FOOTER}                       CYBER WEEK SALE NOW $300 OFF + FREE PILLOW
${Sale Name}                    CYBER WEEK SALE
${Mattresses}                   css=body > div.shopify-section.header-section > div > header.main_header > div > div > div > div.nav > ul > li:nth-child(1) > a
${Puffy Mattress}               css=body > div.shopify-section.header-section > div > header.main_header > div > div > div > div.dropdown_container.mega-menu.mega-menu-1 > div > div.dropdown_content > div:nth-child(1) > div.mega-menu__image-caption-link > a > div.image-element__wrap > img
${Sale Details}                 $300 OFF + FREE PILLOW
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

*** Test Cases ***

Start Record Video
    Start Record Video
Popup Sale
    Open Login screen
    Wait and dismiss popup
Timer Bar
    Seasonal Sale timer text check
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

*** Keywords ***
Start Record Video
    Start Video Recording       alias=FallSale name=FallSale
Open Login screen
    Open Browser            ${Homepage}  ${systembrowser}
    Maximize Browser Window
    wait until page contains    ${FOOTER}
Wait and dismiss popup
    sleep                   5s
    ${check}=               Run Keyword and Return Status  Element should be visible      xpath=/html/body/div[1]/div[2]/div/div[1]/img
    run keyword if          ${check} == False    Wait and dismiss popup
    ...     ELSE            Click element   xpath=/html/body/div[1]/div[2]/div/span
Seasonal Sale timer text check
    ${Content}=            get text        css=#saleTimer > div:nth-child(1) > div > div.timer-text__content.timer-text__content--desktop
    Run keyword if          '${Content}'!='${FOOTER}'      Fail        Wrong Seasonal Sale timer Content Actual content: ${Content}
    Click element           css=#saleTimer > span > svg
Go to Puffy Mattress Product Page
    Mouse Over          ${Mattresses}
    sleep               2s
    Click element       ${Puffy Mattress}
    Wait Until Page Contains    12 REASONS TO CHOOSE
Banner Seasonal Sale text check
    sleep                   2s
    ${Content}=            get text        css=#Summer_SALE
    Run keyword if          '${Content}'!='${Sale Name}'      Fail        Wrong Seasonal Sale Content
PDP Discount Value and Freebie check
    ${Content}=            get text        css=#_300_Off_FREE_PILLOW
    Run keyword if          '${Content}'!='${Sale Details}'      Fail        Wrong Discount Value and Freebie Content Expected: ${Sale Details} Actual: ${Content}
Click Puffy Mattress Size dropdown
    Click element       css=#product_form_345108381730 > div.product-variants-holder > div > div > div
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
Select Puffy Mattress Size
    Click element           css=#product_form_345108381730 > div.product-variants-holder > div > div > ul > li:nth-child(5)
Cart Count Before Adding product
    ${CartText}   get text  xpath=//html/body/div[3]/div/header[2]/div/div/div/div[3]/div/a/span
    set test variable       ${CartCount}    ${CartText}
Add to cart Puffy Mattress
    Click element           css=#product_form_345108381730 > div.purchase-details > div > button
    sleep                   2s
Close Cart
    sleep                   1s
    Click element           css=body > div.cart_content.jsCartContent.cart-content-mob > div.cart-close > span.cart-close-btn.cart-close__icon
Cart Count After Adding Product with free pillow
    ${BeforeShopping} =     evaluate    ${CartCount}
    sleep                   2s
    Cart Count Before Adding product
    ${AfterShopping}=       evaluate    ${CartCount}-2
    Run keyword if          ${BeforeShopping}!=${AfterShopping}       Fail    Wrong Cart increment