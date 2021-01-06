*** Settings ***
Documentation       Regression for Mega Menu
Library             Selenium2Library
#Library             SeleniumLibrary
Library             ScreenCapLibrary
Library             Collections
Library             String

*** Variables ***
${Homepage}                     https://puffy.com/?preview_theme_id=83955843106
${systembrowser}                Chrome
${PuffyBrowser}                 alias=Puffy
${FOOTER}                       BLACK FRIDAY SALE NOW
${Mattresses}                   css=body > div.shopify-section.header-section > div > header.main_header > div > div > div > div.nav > ul > li:nth-child(1) > a
${Puffy Mattress}               css=body > div.shopify-section.header-section > div > header.main_header > div > div > div > div.dropdown_container.mega-menu.mega-menu-1 > div > div.dropdown_content > div:nth-child(1) > div.mega-menu__image-caption-link > a > div.image-element__wrap > img
${Email}                        automation@puffy.com
${First Name}                   John
${Last Name}                    Doe
${Address}                      123 William Street
${City}                         New York
${ZipCode}                      03101
${Phone}                        (888) 555-3222
*** Test Cases ***
Start Record Video
    Start Record Video

Popup Sale
    Open Login screen
    Wait and dismiss popup
#Switch version
    #Switch to Version A
Timer Bar
    Seasonal Sale timer text check

PDP Puffy Mattress
    Go to Puffy Mattress Product Page
    Click Puffy Mattress Size dropdown
    Select Puffy Mattress Size
    Add to cart Puffy Mattress
Go to Checkout
    sleep           5s
    Click checkout
    Checkout Contact information field
    Continue to Payment
    sleep           2s
    Select Klarna

*** Keywords ***
Start Record Video
    Start Video Recording       alias=Regression name=MegaMenu


Open Login screen
    Open Browser            ${Homepage}  ${systembrowser}  ${PuffyBrowser}
    Maximize Browser Window
    wait until page contains    ${FOOTER}

Wait and dismiss popup
    sleep                   5s
    ${check}=               Run Keyword and Return Status  Element should be visible      xpath=/html/body/div[1]/div[2]/div/div[1]/img
    run keyword if          ${check} == False    Wait and dismiss popup
    ...     ELSE            Click element   xpath=/html/body/div[1]/div[2]/div/span

Seasonal Sale timer text check
    ${Content}=            get text        css=#Summer_Sale > text
    Run keyword if          '${Content}'!='${FOOTER}'      Fail        Wrong Seasonal Sale timer Content Actual content: ${Content}
    Click element           css=#saleTimer > span > svg

Go to Puffy Mattress Product Page
    Mouse Over          ${Mattresses}
    sleep               2s
    Click element       ${Puffy Mattress}
    Wait Until Page Contains    12 REASONS TO CHOOSE

Click Puffy Mattress Size dropdown
    Click element       css=#product_form_345108381730 > div.product-variants-holder > div > div > div

Select Puffy Mattress Size
    Click element           css=#product_form_345108381730 > div.product-variants-holder > div > div > ul > li:nth-child(5)

Add to cart Puffy Mattress
    Click element           css=#product_form_345108381730 > div.purchase-details > div > button
    sleep                   2s

Click checkout
    Click element            css=#cartHolder > div > div > div.cart-checkout__content > div.cart-checkout__action > button

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

Close Klarna
    click element                       css=#sliceit_kp-purchase-approval__nav-bar__right-icon__icon
    sleep                               2s
    click element                       css=#changePaymentMethod > a

Select Klarna
    sleep                               2s
    Click Element                       css=#checkout_payment_gateway_122164302
    sleep                               2s
    Click Element                       css=#checkout_different_billing_address_false
    sleep                               2s
    click element                       xpath=//*[@id="continue_button"]
    sleep                               5s
    Click element                       css=#placeOrderButton
    sleep                               5s
    ${SuccessKlarna}                    get text    id:sliceit_kp-purchase-approval-form-content__header__title
    sleep                               2s
    run keyword if                      ${SuccessKlarna}=='Additional information'  Close Klarna
    ...  Else
