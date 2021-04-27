*** Settings ***
Documentation       This is for checking all the places where we should update the seasonal promotion
Library             Selenium2Library
#Library             SeleniumLibrary
Library             Collections
Library             String
Suite Teardown      close browser


*** Variables ***
${Sale Name}
${
${Homepage}                 https://puffy.com/?preview_theme_id=82737201186
${systembrowser}            Chrome
${FOOTER}                   FALL SALE $300 OFF + FREE PILLOW
#${Mattresses}               html.null body.index.is--hybrid-false.timer--exists.jdgm-buyer-badge--removed div.index-sections div#shopify-section-hov_collectionBoxes.shopify-section div.item-boxes div.item-boxes__inner div.item-boxes__content div.item-boxes__item div.item-box
${Feedback}                 html.null body.index.is--hybrid-false.timer--exists.jdgm-buyer-badge--removed div.index-sections div#shopify-section-hov_instagramBoxes.shopify-section div.instagram-boxes div.instagram-boxes__inner
${Shop}                     div.compare-boxes__headline:nth-child(1) > h2:nth-child(1) > a:nth-child(1)
${Logo}                     //*[@id="shopify-section-header"]/div/header[2]/div/div/div/div[1]/a/img
${Contacts}                 //*[@id="contact"]/a
${Mattresses}               //*[@id="shopify-section-header"]/div/header[2]/div/div/div/div[2]/ul/li[1]/a
${Puffy Mattress}           //*[@id="shopify-section-header"]/div/header[2]/div/div/div/div[4]/div/div[1]/div[1]/div[2]/a/div[1]/img
${Puffy Lux Mattress}       //*[@id="shopify-section-header"]/div/header[2]/div/div/div/div[4]/div/div[1]/div[2]/div[2]/a/div[1]/img
${Puffy Royal Mattress}     //*[@id="shopify-section-header"]/div/header[2]/div/div/div/div[4]/div/div[1]/div[3]/div[2]/a/div[1]/img
${COMPARE}                  //*[@id="shopify-section-header"]/div/header[2]/div/div/div/div[4]/div/div[2]/a
${PuffyReason1Image}        //*[@id="productReasons"]/div[2]/div[1]/div/div/div/div/div[2]/div/img
${Bases}                    //*[@id="shopify-section-header"]/div/header[2]/div/div/div/div[2]/ul/li[2]/a
${Foundation}               //*[@id="shopify-section-header"]/div/header[2]/div/div/div/div[5]/div/div/div[1]/div[2]/a/div[1]/img
${Adjustable Base}          //*[@id="shopify-section-header"]/div/header[2]/div/div/div/div[5]/div/div/div[2]/div[2]/a/div[1]/img
${Bed Frame}                //*[@id="shopify-section-header"]/div/header[2]/div/div/div/div[5]/div/div/div[3]/div[2]/a/div[1]/img
${Bedding}                  //*[@id="shopify-section-header"]/div/header[2]/div/div/div/div[2]/ul/li[3]/a
${Comforter}                //*[@id="shopify-section-header"]/div/header[2]/div/div/div/div[6]/div/div/div[1]/div[2]/a/div[1]/img
${Pillow}                   //*[@id="shopify-section-header"]/div/header[2]/div/div/div/div[6]/div/div/div[2]/div[2]/a/div[1]/img
${Body Pillow}              //*[@id="shopify-section-header"]/div/header[2]/div/div/div/div[6]/div/div/div[3]/div[2]/a/div[1]/img
${Mattress Pad}             //*[@id="shopify-section-header"]/div/header[2]/div/div/div/div[6]/div/div/div[4]/div[2]/a/div[1]/img
${Mattress Protector}       //*[@id="shopify-section-header"]/div/header[2]/div/div/div/div[6]/div/div/div[5]/div[2]/a/div[1]/img
${Mattress Topper}          //*[@id="shopify-section-header"]/div/header[2]/div/div/div/div[6]/div/div/div[6]/div[2]/a/div[1]/img
${Blanket}                  //*[@id="shopify-section-header"]/div/header[2]/div/div/div/div[6]/div/div/div[7]/div[2]/a/div[1]/img
${Weighted Blanket}         //*[@id="shopify-section-header"]/div/header[2]/div/div/div/div[6]/div/div/div[8]/div[2]/a/div[1]/img
${Sheets}                   //*[@id="shopify-section-header"]/div/header[2]/div/div/div/div[6]/div/div/div[9]/div[2]/a/div[1]/img
${Bedroom}                  //*[@id="shopify-section-header"]/div/header[2]/div/div/div/div[2]/ul/li[4]/a
${Puffy Nightstand}         //*[@id="shopify-section-header"]/div/header[2]/div/div/div/div[7]/div/div/div[1]/div[2]/a/div[1]/img
${Dog Bed}                  //*[@id="shopify-section-header"]/div/header[2]/div/div/div/div[7]/div/div/div[2]/div[2]/a/div[1]/img
${Rug}                      //*[@id="shopify-section-header"]/div/header[2]/div/div/div/div[7]/div/div/div[3]/div[2]/a/div[1]/img
${Cart}                     //*[@id="shopify-section-header"]/div/header[2]/div/div/div/div[3]/div/a
${Store}                    //*[@id="shopbtn"]
${PuffyLuxHomepage}         //*[@id="shopify-section-footer"]/footer/div[1]/div[2]/div/div/ul/li[3]/p


*** Test Cases ***
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
PDP Puffy Lux Mattress
    Go to Puffy Lux Mattress Product Page
    Banner Seasonal Sale text check
    PDP Discount Value and Freebie check
PDP Puffy Lux Hybrid Mattress
    Click on Puffy Lux Hybrid
    Banner Seasonal Sale text check
    PDP Discount Value and Freebie check
PDP Puffy Royal Mattress
    Go to Puffy Royal Mattress Product Page
    Banner Seasonal Sale text check
    PDP Discount Value and Freebie check
PDP Puffy Royal Hybrid Mattress
    Click on Puffy Royal Hybrid
    Banner Seasonal Sale text check
    PDP Discount Value and Freebie check
PDP Puffy Adjustable Base
    Go to Puffy Adjustable Base Product Page
    Banner Seasonal Sale text check
    PDP Puffy Adjustable Base Banner Discount Value and Freebie check


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
    Run keyword if          '${Content}'!='FALL SALE'      Fail        Wrong Seasonal Sale Content

Homepage Discount Value and Freebie check
    ${Content}=            get text        css=#_300_OFF_Free_Pillow
    Run keyword if          '${Content}'!='$300 OFF + FREE PILLOW'      Fail        Wrong Discount Value and Freebie Content

PDP Discount Value and Freebie check
    ${Content}=            get text        css=#_300_Off_FREE_PILLOW
    Run keyword if          '${Content}'!='$300 OFF + FREE PILLOW'      Fail        Wrong Discount Value and Freebie Content

Go to Puffy Lux Homepage
    sleep                   2s
    Click Link           link:Puffy Lux

Go to Puffy Hybrid Homepage
    sleep                   2s
    Click Link           link:Puffy Hybrid

Go to Store page
    sleep                   2s
    Click Link           link:Puffy Store

Banner Seasonal Sale text check
    sleep                   2s
    ${Content}=            get text        css=#Summer_SALE
    Run keyword if          '${Content}'!='FALL SALE'      Fail        Wrong Seasonal Sale Content

Banner Discount Value and Freebie check
    sleep                   2s
    ${Content}=            get text        css=#_300_OFF_FREE_PILLOW
    Run keyword if          '${Content}'!='$300 OFF + FREE PILLOW'      Fail        Wrong Discount Value and Freebie Content

Go to Gift Shop page
    sleep                   2s
    Click link              link:Gift Shop

Puffy Adjustable Base Banner Discount Value and Freebie check
    sleep                   2s
    ${Content}=            get text        css=#_300_OFF
    Run keyword if          '${Content}'!='$300 OFF'      Fail        Wrong Discount Value and Freebie Content

PDP Puffy Adjustable Base Banner Discount Value and Freebie check
    sleep                   2s
    ${Content}=            get text        css=#_300_Off
    Run keyword if          '${Content}'!='$300 OFF'      Fail        Wrong Discount Value and Freebie Content

Go to Puffy Mattress Product Page
    Mouse Over          ${Mattresses}
    sleep               2s
    Click element       ${Puffy Mattress}
    Wait Until Page Contains    12 REASONS TO CHOOSE

Go to Puffy Lux Mattress Product Page
    Mouse Over          ${Mattresses}
    sleep               2s
    Click element       ${Puffy Lux Mattress}
    Wait Until Page Contains    Get $300 Off + FREE King Pillow

Click on Puffy Lux Hybrid
    Click element       css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-type > div.hybrid-buttons > label.hybrid-buttons__item.hybrid-buttons__item--2

Click on Puffy Royal Hybrid
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

