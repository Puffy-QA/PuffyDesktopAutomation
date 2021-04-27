*** Settings ***
Documentation       This is our first testrun
Library             Selenium2Library
Library             Collections
Library             String
Suite Teardown            close browser         #This will close the browser once testrun completes to prevent any memory leaking and consumption if test failed


*** Variables ***
${URL}                      https://puffy.com/
${systembrowser}            Chrome
${FOOTER}                   FALL SALE $300 OFF + FREE PILLOW
${Mattresses}               html.null body.index.is--hybrid-false.timer--exists.jdgm-buyer-badge--removed div.index-sections div#shopify-section-hov_collectionBoxes.shopify-section div.item-boxes div.item-boxes__inner div.item-boxes__content div.item-boxes__item div.item-box
${Feedback}                 html.null body.index.is--hybrid-false.timer--exists.jdgm-buyer-badge--removed div.index-sections div#shopify-section-hov_instagramBoxes.shopify-section div.instagram-boxes div.instagram-boxes__inner
${Shop}                     div.compare-boxes__headline:nth-child(1) > h2:nth-child(1) > a:nth-child(1)
*** Test Cases ***
Open login
        [Documentation]     This is a Demo TestRun
        Open Login screen                       # Open Landing page
        #Scroll To           ${Mattresses}       # Scroll page
        Wait and dismiss popup                  # Dismiss the popup message
        Shop Mattress                           # Test the shoping flow (till checkout)
        Check Recommendations                   # Demonstrat some looping functionality on checking rating starts

*** Keywords ***

Open Login screen
    Open Browser            ${URL}  ${systembrowser}
    sleep                   3s
    Maximize Browser Window
    wait until page contains    ${FOOTER}           # Wait till the page fully loaded and look for the counter footer

Scroll To                                           # This is a scrolling keyword will move a specific element to view using Javascript
    [Arguments]             ${ViewElement}
    Sleep                   3s
    Execute Javascript      document.querySelector("${ViewElement}").scrollIntoView();
    Element Should Be Visible   css=${ViewElement}

Shop Mattress
    Click Element           xpath=/html/body/div[5]/div[3]/div/div/div[2]/div[1]/div/a/div[3]           # Click on a mattress from landing page
    sleep                   2s
    scroll to               ${shop}
    sleep                   2s
    ${oldprice}=            get text        css=div.compare-boxes__prices:nth-child(6) > div:nth-child(1) > span:nth-child(1) > del:nth-child(1)      # Check the strikethrough old price value
    Run keyword if          '${oldprice}'!='$795'      Fail        Missing old price                                            # Throw error if the old price is missing (we can set the prices as variable for more dynamic functionality)
    sleep                   2s
    click element           css=html.null body.page-static2.is--hybrid-false.jdgm-buyer-badge--removed div.container.main.content div.compare-page div.compare-page__content div.compare-boxes.is--puffy-mattress-and-puffy-lux div.compare-boxes__item div.compare-boxes__item-inner div.compare-boxes__action a.compare-boxes__link.button                                       # Click on the shopping button
    ${CheckURL}=            Run keyword and return status   location should be      ${URL}products/puffy-mattress               # Check page redirection
    Get Cart Count                                                                                                              # Get Cart items Count before purchase
    ${BeforeShopping} =     evaluate    ${CartCount}
    Click element           css=.purchase-details                                                                               # Add mattress to cart
    sleep                   2s
    Element text should be  xpath=/html/body/div[2]/div[3]/form/div/div/div/div[2]/div[2]/button        CHECKOUT                # Check for the existing of Checkout button a complete scenario to be implemented within project but will stop here for the demo
    sleep                   2s
    Click element           css=.cart-close-btn                                                                                 # Close the checkout side menu
    Get Cart Count                                                                                                              # Get the cart count after adding the mattress (and the offer pillow)
    ${AfterShopping}=       evaluate    ${CartCount}-2                                                                          # Calculate the Cart values before and after
    Run keyword if          ${BeforeShopping}!=${AfterShopping}       Fail    Wrong Cart increment                              # Throw error if count failed

Get Cart Count
    ${CartText}   get text  xpath=/html/body/div[3]/div/header[2]/div/div/div/div[3]/div/a/span
    set test variable       ${CartCount}    ${CartText}

Check Recommendations
    Click element           xpath=/html/body/div[3]/div/header[2]/div/div/div/div[1]/a/img                                      # Return to Home page
    sleep                   2s
    scroll to               ${Feedback}
    sleep                   2s
    @{CustomersRate}        Get WebElements  xpath=/html/body/div[5]/div[6]/div/div[2]/div/div/div                              # Get the visible comments and put them on list
    ${x}=                   Get Length     ${CustomersRate}                                                                     # Get the list count for testing loop
    :For    ${cell}         IN RANGE     ${x}                                                                                   # Make a for loop to check each rating starts
    \   ${y}=               evaluate       ${cell}+1
    \   ${RatingID}=        get element Attribute    css=div.customer-reviews__item:nth-child(${y}) > div:nth-child(1) > svg:nth-child(1) > path:nth-child(3)   id      #Get the ID of the current rating recat uses different ID for different rating values
    \   log                 ${RatingID}
    \   run keyword if      '${RatingID}'!='Shape_14_copy_4'     Fail    Not Five Stars Rating                                  # If the rating is not Five starts the page will through an error

Wait and dismiss popup
    sleep                   3s                                                                                                  # This keyword demonstrate the recursive keyword, when a keyword calls itself until certain element shows. If the keyword accessed more than 15 times it will fail by itself to prevent infinite loop
    ${check}=               Run Keyword and Return Status  Element should be visible      xpath=/html/body/div[1]/div[2]/div/div[1]/img
    run keyword if          ${check} == False    Wait and dismiss popup
    ...     ELSE            Click element   xpath=/html/body/div[1]/div[2]/div/span













Get Puffy Mattress minimum price from PDP
    ${PuffyMattressMinimumOriginalPricePDP}=        get text        css=#product_form_345108381730 > div.product-variants-holder > div > div > div > span > del > span.original-price
    ${PuffyMattressDiscountedPricePDP}=             get text        css=#product_form_345108381730 > div.product-variants-holder > div > div > div > span > span > span.original-price.jsDiscountedPrice
    ${PuffyMattressKlarnaPricePDP}=                 get text        css=#product_form_345108381730 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    ${PuffyMattressSplitItPricePDP}=                get text        css=#product_form_345108381730 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span

Get Puffy Lux Mattress minimum price from PDP
    ${PuffyLuxMattressMinimumOriginalPricePDP}=     get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > div > span > del > span.original-price
    ${PuffyLuxMattressDiscountedPricePDP}=          get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > div > span > span > span.original-price.jsDiscountedPrice
    ${PuffyLuxMattressKlarnaPricePDP}=              get text        css=#product_form_549302042658 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    ${PuffyLuxMattressSplitItPricePDP}=             get text        css=#product_form_549302042658 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span

Get Puffy Mattress minimum price from Compare Page
    ${PuffyMattressMinimumOriginalPriceComparePage}=        get text        css=body > div.container.main.content > div > div.compare-page__content > div.compare-boxes.is--puffy-mattress-and-puffy-lux > div:nth-child(2) > div > div.price-area > span.price-area__old-price > del
    ${PuffyMattressDiscountedPriceComparePage}=             get text        css=body > div.container.main.content > div > div.compare-page__content > div.compare-boxes.is--puffy-mattress-and-puffy-lux > div:nth-child(2) > div > div.price-area > span.price-area__price.jsDiscountedPrice
    ${PuffyMattressKlarnaPriceComparePage}=                 get text        css=body > div.container.main.content > div > div.compare-page__content > div.compare-boxes.is--puffy-mattress-and-puffy-lux > div:nth-child(2) > div > div.finance-area.is--common > div:nth-child(1) > div > a > span.data-splitit-price.jsKlarna
    ${PuffyMattressSplitItPriceComparePage}=                get text        css=body > div.container.main.content > div > div.compare-page__content > div.compare-boxes.is--puffy-mattress-and-puffy-lux > div:nth-child(2) > div > div.finance-area.is--common > div.finance-area__box.finance-area__box--separator > div > a > span.data-splitit-price.jsKlarna
    ${PuffyLuxMattressMinimumOriginalPriceComparePage}=     get text        css=body > div.container.main.content > div > div.compare-page__content > div.compare-boxes.is--puffy-mattress-and-puffy-lux > div:nth-child(1) > div > div.price-area > span.price-area__old-price > del
    ${PuffyLuxMattressDiscountedPriceComparePage}=          get text        css=body > div.container.main.content > div > div.compare-page__content > div.compare-boxes.is--puffy-mattress-and-puffy-lux > div:nth-child(1) > div > div.price-area > span.price-area__price.jsDiscountedPrice
    ${PuffyLuxMattressKlarnaPriceComparePage}=              get text        css=body > div.container.main.content > div > div.compare-page__content > div.compare-boxes.is--puffy-mattress-and-puffy-lux > div:nth-child(1) > div > div.finance-area.is--common > div:nth-child(1) > div > a > span.data-splitit-price.jsKlarna
    ${PuffyLuxMattressSplitItPriceComparePage}=             get text        css=body > div.container.main.content > div > div.compare-page__content > div.compare-boxes.is--puffy-mattress-and-puffy-lux > div:nth-child(1) > div > div.finance-area.is--common > div.finance-area__box.finance-area__box--separator > div > a > span.data-splitit-price.jsKlarna

Compare Prices
    Run keyword if          '${PuffyMattressMinimumOriginalPricePDP}'!='${PuffyMattressMinimumOriginalPriceComparePage}'      Fail        Wrong Puffy Rug Large size monthly payment for Klarna. Expected Result: ${PuffyDogBedLargeKlarnaNoOff} Actual Result: ${Klarna}
    Run keyword if          '${PuffyMattressDiscountedPricePDP}'!='${PuffyMattressDiscountedPriceComparePage}'      Fail        Wrong Puffy Rug Large size monthly payment for Klarna. Expected Result: ${PuffyDogBedLargeKlarnaNoOff} Actual Result: ${Klarna}
    Run keyword if          '${PuffyMattressKlarnaPricePDP}'!='${PuffyMattressKlarnaPriceComparePage}'      Fail        Wrong Puffy Rug Large size monthly payment for Klarna. Expected Result: ${PuffyDogBedLargeKlarnaNoOff} Actual Result: ${Klarna}
    Run keyword if          '${PuffyMattressSplitItPricePDP}'!='${PuffyMattressSplitItPriceComparePage}'      Fail        Wrong Puffy Rug Large size monthly payment for Klarna. Expected Result: ${PuffyDogBedLargeKlarnaNoOff} Actual Result: ${Klarna}
    Run keyword if          '${PuffyLuxMattressMinimumOriginalPricePDP}'!='${PuffyLuxMattressMinimumOriginalPriceComparePage}'      Fail        Wrong Puffy Rug Large size monthly payment for Klarna. Expected Result: ${PuffyDogBedLargeKlarnaNoOff} Actual Result: ${Klarna}
    Run keyword if          '${PuffyLuxMattressDiscountedPricePDP}'!='${PuffyLuxMattressDiscountedPriceComparePage}'      Fail        Wrong Puffy Rug Large size monthly payment for Klarna. Expected Result: ${PuffyDogBedLargeKlarnaNoOff} Actual Result: ${Klarna}
    Run keyword if          '${PuffyLuxMattressKlarnaPricePDP}'!='${PuffyLuxMattressKlarnaPriceComparePage}'      Fail        Wrong Puffy Rug Large size monthly payment for Klarna. Expected Result: ${PuffyDogBedLargeKlarnaNoOff} Actual Result: ${Klarna}
    Run keyword if          '${PuffyLuxMattressSplitItPricePDP}'!='${PuffyLuxMattressSplitItPriceComparePage}'      Fail        Wrong Puffy Rug Large size monthly payment for Klarna. Expected Result: ${PuffyDogBedLargeKlarnaNoOff} Actual Result: ${Klarna}


Comparison Page price checks
    Go to Puffy Mattress Product Page
    Click Puffy Mattress Size dropdown
    Get Puffy Mattress minimum price from PDP
    Go to Puffy Lux Mattress Product Page
    Click Puffy Lux Mattress Size dropdown
    Select Puffy Lux Mattress Twin
    Get Puffy Lux Mattress minimum price from PDP
    Go to Compare Mattress Page
    Get Puffy Mattress minimum price from Compare Page
    compare the minimum prices
