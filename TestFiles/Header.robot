*** Settings ***
Documentation       This is for checking all the links in Header if working properly
Library             Selenium2Library
#Library             SeleniumLibrary
Library             Collections
Library             String
Suite Teardown      close browser


*** Variables ***
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
${PuffyLuxHomepage}         //*[@id="shopify-section-footer"]/footer/div[1]/div[2]/div/div/ul/li[3]/p/a

*** Test Cases ***
General Header
    Open Login screen
    Wait and dismiss popup
    Click on Puffy Logo
    Click on Contacts
MATTRESSES Menu
    Click on Puffy Mattress
    Click on Puffy Lux Mattress
    Click on Puffy Royal Mattress
    Click on Compare button
BASES Menu
    Click on Puffy Foundation
    Click on Puffy Adjustable Base
    Click on Puffy Bed Frame


*** Keywords ***
Open Login screen
    Open Browser            ${Homepage}  ${systembrowser}
    Maximize Browser Window
    wait until page contains    ${FOOTER}

Click on Puffy Logo
    Click Element       ${Logo}
    wait until page contains    ${FOOTER}

Click on Contacts
    sleep                   10s
    Click Element       ${Contacts}
    Wait Until Page Contains   QUESTIONS? REVIEW OUR FAQ BY SELECTING THE RELEVANT CATEGORY. IF YOU STILL HAVE QUESTIONS, CONTACT US BY USING THE FORM BELOW.
    Click Element       ${Logo}
    sleep                   2s

Click on Puffy Mattress
    Mouse Over          ${Mattresses}
    sleep               2s
    Click element       ${Puffy Mattress}
    Scroll Element Into View    ${PuffyReason1Image}
    sleep               2s
    Wait Until Page Contains    12 REASONS TO CHOOSE
    sleep               2s
    ${oldprice}=            get text        css=#product_form_345108381730 > div.product-variants-holder > div > div > div > span > del > span.original-price
    Run keyword if          '${oldprice}'!='$1,150'      Fail        Wrong expected old price
    ${Content}=            get text        css=#productReasons > div.hybrid-reasons.jsOriginalReasons > div:nth-child(1) > div > div > div > div > div.custom-col.alpha > div
    Run keyword if          '${Content}'!='Have you seen our awards? Puffy has ranked highest in numerous Best Mattress categories for all types of sleepers. '      Fail        Wrong Content
    Click Element       ${Logo}

Click on Puffy Lux Mattress
    Mouse Over          ${Mattresses}
    sleep               2s
    Click element       ${Puffy Lux Mattress}
    Scroll Element Into View    ${PuffyReason1Image}
    sleep               2s
    Wait Until Page Contains    12 REASONS TO CHOOSE
    sleep               2s
    ${oldprice}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > div > span > del > span.original-price
    Run keyword if          '${oldprice}'!='$1,795'      Fail        Wrong expected old price
    Click Element       ${Logo}

Click on Puffy Royal Mattress
    Mouse Over          ${Mattresses}
    sleep               2s
    Click element       ${Puffy Royal Mattress}
    Scroll Element Into View    ${PuffyReason1Image}
    sleep               2s
    Wait Until Page Contains    12 REASONS TO CHOOSE
    sleep               2s
    ${oldprice}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > div > span > del > span.original-price
    Run keyword if          '${oldprice}'!='$2,695'      Fail        Wrong expected old price
    Click Element       ${Logo}

Click on Compare button
    Mouse Over          ${Mattresses}
    sleep               2s
    Click element       ${COMPARE}
    sleep               2s
    ${DiscountPricePuffyMattress}=            get text        css=body > div.container.main.content > div > div.compare-page__content > div.compare-boxes.is--puffy-mattress-and-puffy-lux > div:nth-child(2) > div > div.compare-boxes__prices > div:nth-child(1) > span.compare-boxes__price.jsDiscountedPrice
    Run keyword if          '${DiscountPricePuffyMattress}'!='$495'      Fail        Wrong expected discounted price
    ${OldPricePuffyMattress}=            get text        css=body > div.container.main.content > div > div.compare-page__content > div.compare-boxes.is--puffy-mattress-and-puffy-lux > div:nth-child(2) > div > div.compare-boxes__prices > div:nth-child(1) > span.compare-boxes__old-price > del
    Run keyword if          '${OldPricePuffyMattress}'!='$795'      Fail        Wrong expected old price
    sleep               2s
    Click Element       ${Logo}

Click on Puffy Foundation
    Mouse Over          ${Bases}
    sleep               2s
    Click element       ${Foundation}
    Scroll Element Into View    ${PuffyReason1Image}
    sleep               2s
    Wait Until Page Contains    12 REASONS TO CHOOSE
    sleep               2s
    ${oldprice}=            get text        css=#product_form_150983180312 > div.product-variants-holder > div > div > div > span > span > span.original-price
    Run keyword if          '${oldprice}'!='$215'      Fail        Wrong expected old price
    Click Element       ${Logo}

Click on Puffy Adjustable Base
    Mouse Over          ${bases}
    sleep               2s
    Click element       ${Adjustable Base}
    Scroll Element Into View    ${PuffyReason1Image}
    sleep               2s
    Wait Until Page Contains    12 REASONS TO CHOOSE
    sleep               2s
    ${PDPOldPrice}=            get text        css=#product_form_416170377250 > div.product-variants-holder > div > div > div > span > del > span.original-price
    Run keyword if          '${PDPOldPrice}'!='$2,095'      Fail        Wrong expected old price
    ${PDPNewPrice}=            get text        css=#product_form_416170377250 > div.product-variants-holder > div > div > div > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${PDPNewPrice}'!='$1,795'      Fail        Wrong expected new price
    Click Element       ${Logo}

Click on Puffy Bed Frame
    Mouse Over          ${bases}
    sleep               2s
    Click element       ${Bed Frame}
    Scroll Element Into View    ${PuffyReason1Image}
    sleep               2s
    Wait Until Page Contains    12 REASONS TO CHOOSE
    sleep               2s
    ${PDPPrice}=            get text        css=#product_form_1528789401634 > div.product-variants-holder > div > div > div > span > span > span.original-price
    Run keyword if          '${PDPPrice}'!='$995'      Fail        Wrong expected price
    Click Element       ${Logo}

Wait and dismiss popup
    sleep                   5s
    ${check}=               Run Keyword and Return Status  Element should be visible      xpath=/html/body/div[1]/div[2]/div/div[1]/img
    run keyword if          ${check} == False    Wait and dismiss popup
    ...     ELSE            Click element   xpath=/html/body/div[1]/div[2]/div/span