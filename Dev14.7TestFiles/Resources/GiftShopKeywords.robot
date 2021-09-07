*** Settings ***
Documentation       Regression for 101-Night Sleep Trial Page
Library             Selenium2Library
Library             ScreenCapLibrary
Library             Collections
Library             String
Resource            ../Resources/VariablePrice.robot
Resource            ../Resources/KeywordsRegression.robot
*** Keywords ***
Go To Giftshop page
    Scroll to Footer section
    Click element                                       ${LOCFOOTERGIFTSHOP}
    Location should be                                  ${PUFFYGIFTSHOPURL}
Verify if the Hero title is displaying correctly
    wait until page contains element                css=body > section > div > div.hero-banner__container > div
    ${GiftShopPageTitle}=            get text      ${LOCGIFTSHOPHEROTITLE}
    Run keyword if          """${GiftShopPageTitle}"""!="""${TEXTGIFTSHOPHEROTITLE}"""      Fail        Wrong Gift Shop Page Hero Title. Actual content: ${GiftShopPageTitle} expected: ${TEXTGIFTSHOPHEROTITLE}
Verify if the Hero Subtitle is displaying correctly
    ${GiftShopPageTitleDesc}=            get text      ${LOCGIFTSHOPHEROTITLEDESC}
    Run keyword if          """${GiftShopPageTitleDesc}"""!="""${TEXTGIFTSHOPHEROTITLEDESC}"""      Fail        Wrong Gift Shop Page Hero Title Description. Actual content: ${GiftShopPageTitleDesc} expected: ${TEXTGIFTSHOPHEROTITLEDESC}
Verify if the Hero image is showing
    Wait until page contains element                     ${LOCGIFTSHOPHEROIMAGE}
    Page Should Contain Image                            ${LOCGIFTSHOPHEROIMAGE}
    Element should be visible                            ${LOCGIFTSHOPHEROIMAGE}
    ${src}                                               Get Element Attribute  ${LOCGIFTSHOPHEROIMAGE}  src
    Go To                                                ${src}
    Wait until element is visible                        css=img
    Go Back
Verify Hero Section CTA if showing and redirected to correct URL
    ${GiftShopPageHeroCTA}=            get text      ${LOCGIFTSHOPHEROCTA}
    Run keyword if          """${GiftShopPageHeroCTA}"""!="""${TEXTSHOPTHEMATTRESSCTA}"""      Fail        Wrong How Does The Mattress Trial Work? third icon Title description. Actual content: ${GiftShopPageHeroCTA} expected: ${TEXTGIFTSHOPHEROCTA}
    Click Element               ${LOCGIFTSHOPHEROCTA}
    Wait until page contains    ${HOMEPAGEH1}
    Location should Contain          ${PUFFYCOMPAREMATTRESSURL}
    Go Back
Verify if the "The Best Gifts Are Always Comfortable..." title is displaying correctly
    scroll element into view                              ${LOCGIFTSHOPTHEBESTGIFTSTITLE}
    ${GiftShopTheBestGiftTitle}=            get text      ${LOCGIFTSHOPTHEBESTGIFTSTITLE}
    Run keyword if          """${GiftShopTheBestGiftTitle}"""!="""${TEXTGIFTSHOPTHEBESTGIFTSTITLE}"""      Fail        Wrong ${TEXTGIFTSHOPTHEBESTGIFTSTITLE} Title. Actual content: ${GiftShopTheBestGiftTitle} expected: ${TEXTGIFTSHOPTHEBESTGIFTSTITLE}
Verify if the "The Best Gifts Are Always Comfortable..." title description is displaying correctly
    ${GiftShopTheBestGiftTitleDesc}=            get text      ${LOCGIFTSHOPTHEBESTGIFTSTITLEDESC}
    Run keyword if          """${GiftShopTheBestGiftTitleDesc}"""!="""${TEXTGIFTSHOPTHEBESTGIFTSTITLEDESC}"""      Fail        Wrong ${TEXTGIFTSHOPTHEBESTGIFTSTITLE} Title. Actual content: ${GiftShopTheBestGiftTitleDesc} expected: ${TEXTGIFTSHOPTHEBESTGIFTSTITLEDESC}
Verify if the "The Best Gifts" first product is showing correctly and redirect to correct PDP
    scroll element into view                             ${LOCGIFTSHOPTHEBESTGIFTSPRODUCT1IMAGE}
    Wait until page contains element                     ${LOCGIFTSHOPTHEBESTGIFTSPRODUCT1IMAGE}
    Page Should Contain Image                            ${LOCGIFTSHOPTHEBESTGIFTSPRODUCT1IMAGE}
    Element should be visible                            ${LOCGIFTSHOPTHEBESTGIFTSPRODUCT1IMAGE}
    ${src}                                               Get Element Attribute  ${LOCGIFTSHOPTHEBESTGIFTSPRODUCT1IMAGE}  src
    Go To                                                ${src}
    Wait until element is visible                        css=img
    Go Back
    scroll element into view                                      ${LOCGIFTSHOPTHEBESTGIFTSPRODUCT1TITLE}
    ${GiftShopTheBestGiftProduct1Title}=            get text      ${LOCGIFTSHOPTHEBESTGIFTSPRODUCT1TITLE}
    Run keyword if          """${GiftShopTheBestGiftProduct1Title}"""!="""${TEXTGIFTSHOPTHEBESTGIFTSPRODUCT1TITLE}"""      Fail        Wrong Product name for first product. Actual content: ${GiftShopTheBestGiftProduct1Title} expected: ${TEXTGIFTSHOPTHEBESTGIFTSPRODUCT1TITLE}
    ${GiftShopTheBestGiftProduct1OrigPrice}=            get text      ${LOCGIFTSHOPTHEBESTGIFTSPRODUCT1ORIGPRICE}
    Run keyword if          """${GiftShopTheBestGiftProduct1OrigPrice}"""!="""${PUFFYPILLOWSTANDARDORIGINAL}"""      Fail        Wrong price for first product. Actual content: ${GiftShopTheBestGiftProduct1Title} expected: ${PUFFYPILLOWSTANDARDORIGINAL}
    ${GiftShopTheBestGiftProduct1CTA}=            get text      ${LOCGIFTSHOPTHEBESTGIFTSPRODUCT1CTA}
    Run keyword if          """${GiftShopTheBestGiftProduct1CTA}"""!="""${TEXTGIFTSHOPPRODUCTCTA}"""      Fail        Wrong Puffy Mattress CTA name for first product. Actual content: ${GiftShopTheBestGiftProduct1CTA} expected: ${TEXTGIFTSHOPPRODUCTCTA}
    scroll element into view    ${LOCGIFTSHOPTHEBESTGIFTSPRODUCT1CTA}
    Click Element               ${LOCGIFTSHOPTHEBESTGIFTSPRODUCT1CTA}
    Wait until page contains    ${TEXTPUFFYPILLOWH1}
    Location should Contain          ${PDPPILLOWURL}
    Go Back
Verify if the "The Best Gifts" second product is showing correctly and redirect to correct PDP
    scroll element into view                             ${LOCGIFTSHOPTHEBESTGIFTSPRODUCT2IMAGE}
    Wait until page contains element                     ${LOCGIFTSHOPTHEBESTGIFTSPRODUCT2IMAGE}
    Page Should Contain Image                            ${LOCGIFTSHOPTHEBESTGIFTSPRODUCT2IMAGE}
    Element should be visible                            ${LOCGIFTSHOPTHEBESTGIFTSPRODUCT2IMAGE}
    ${src}                                               Get Element Attribute  ${LOCGIFTSHOPTHEBESTGIFTSPRODUCT2IMAGE}  src
    Go To                                                ${src}
    Wait until element is visible                        css=img
    Go Back
    scroll element into view                                      ${LOCGIFTSHOPTHEBESTGIFTSPRODUCT2TITLE}
    ${GiftShopTheBestGiftProduct2Title}=            get text      ${LOCGIFTSHOPTHEBESTGIFTSPRODUCT2TITLE}
    Run keyword if          """${GiftShopTheBestGiftProduct2Title}"""!="""${TEXTGIFTSHOPTHEBESTGIFTSPRODUCT2TITLE}"""      Fail        Wrong Product name for second product. Actual content: ${GiftShopTheBestGiftProduct2Title} expected: ${TEXTGIFTSHOPTHEBESTGIFTSPRODUCT2TITLE}
    ${GiftShopTheBestGiftProduct2OrigPrice}=            get text      ${LOCGIFTSHOPTHEBESTGIFTSPRODUCT2ORIGPRICE}
    Run keyword if          """${GiftShopTheBestGiftProduct2OrigPrice}"""!="""${PUFFYCOMFORTERTWIN/TWINXLORIGINAL}"""      Fail        Wrong price for second product. Actual content: ${GiftShopTheBestGiftProduct2OrigPrice} expected: ${PUFFYCOMFORTERTWIN/TWINXLORIGINAL}
    ${GiftShopTheBestGiftProduct2CTA}=            get text      ${LOCGIFTSHOPTHEBESTGIFTSPRODUCT2CTA}
    Run keyword if          """${GiftShopTheBestGiftProduct2CTA}"""!="""${TEXTGIFTSHOPPRODUCTCTA}"""      Fail        Wrong Puffy Mattress CTA name for second product. Actual content: ${GiftShopTheBestGiftProduct2CTA} expected: ${TEXTGIFTSHOPPRODUCTCTA}
    scroll element into view    ${LOCGIFTSHOPTHEBESTGIFTSPRODUCT2CTA}
    Click Element               ${LOCGIFTSHOPTHEBESTGIFTSPRODUCT2CTA}
    Wait until page contains    ${TEXTPUFFYCOMFORTERH1}
    Location should Contain          ${PDPPUFFYCOMFORTERURL}
    Go Back
Verify if the "The Best Gifts" third product is showing correctly and redirect to correct PDP
    scroll element into view                             ${LOCGIFTSHOPTHEBESTGIFTSPRODUCT3IMAGE}
    Wait until page contains element                     ${LOCGIFTSHOPTHEBESTGIFTSPRODUCT3IMAGE}
    Page Should Contain Image                            ${LOCGIFTSHOPTHEBESTGIFTSPRODUCT3IMAGE}
    Element should be visible                            ${LOCGIFTSHOPTHEBESTGIFTSPRODUCT3IMAGE}
    ${src}                                               Get Element Attribute  ${LOCGIFTSHOPTHEBESTGIFTSPRODUCT3IMAGE}  src
    Go To                                                ${src}
    Wait until element is visible                        css=img
    Go Back
    scroll element into view                                      ${LOCGIFTSHOPTHEBESTGIFTSPRODUCT3TITLE}
    ${GiftShopTheBestGiftProduct3Title}=            get text      ${LOCGIFTSHOPTHEBESTGIFTSPRODUCT3TITLE}
    Run keyword if          """${GiftShopTheBestGiftProduct3Title}"""!="""${TEXTGIFTSHOPTHEBESTGIFTSPRODUCT3TITLE}"""      Fail        Wrong Product name for third product. Actual content: ${GiftShopTheBestGiftProduct3Title} expected: ${TEXTGIFTSHOPTHEBESTGIFTSPRODUCT3TITLE}
    ${GiftShopTheBestGiftProduct3OrigPrice}=            get text      ${LOCGIFTSHOPTHEBESTGIFTSPRODUCT3ORIGPRICE}
    Run keyword if          """${GiftShopTheBestGiftProduct3OrigPrice}"""!="""${PUFFYWEIGHTEDBLANKETTWINORIGINAL}"""      Fail        Wrong price for third product. Actual content: ${GiftShopTheBestGiftProduct3OrigPrice} expected: ${PUFFYWEIGHTEDBLANKETTWINORIGINAL}
    ${GiftShopTheBestGiftProduct3CTA}=            get text      ${LOCGIFTSHOPTHEBESTGIFTSPRODUCT3CTA}
    Run keyword if          """${GiftShopTheBestGiftProduct3CTA}"""!="""${TEXTGIFTSHOPPRODUCTCTA}"""      Fail        Wrong Puffy Mattress CTA name for third product. Actual content: ${GiftShopTheBestGiftProduct3CTA} expected: ${TEXTGIFTSHOPPRODUCTCTA}
    scroll element into view    ${LOCGIFTSHOPTHEBESTGIFTSPRODUCT3CTA}
    Click Element               ${LOCGIFTSHOPTHEBESTGIFTSPRODUCT3CTA}
    Wait until page contains    ${TEXTPUFFYWEIGHTEDBLANKETH1}
    Location should Contain          ${PDPWEIGHTEDBLANKETURL}
    Go Back
Verify if the "The Best Gifts" fourth product is showing correctly and redirect to correct PDP
    Wait until page contains element                     ${LOCGIFTSHOPTHEBESTGIFTSPRODUCT4IMAGE}
    Page Should Contain Image                            ${LOCGIFTSHOPTHEBESTGIFTSPRODUCT4IMAGE}
    Element should be visible                            ${LOCGIFTSHOPTHEBESTGIFTSPRODUCT4IMAGE}
    ${src}                                               Get Element Attribute  ${LOCGIFTSHOPTHEBESTGIFTSPRODUCT4IMAGE}  src
    Go To                                                ${src}
    Wait until element is visible                        css=img
    Go Back
    scroll element into view                                      ${LOCGIFTSHOPLATESTCOMFYPRODUCTRELEASESTITLE}
    ${GiftShopTheBestGiftProduct4Title}=            get text      ${LOCGIFTSHOPTHEBESTGIFTSPRODUCT4TITLE}
    Run keyword if          """${GiftShopTheBestGiftProduct4Title}"""!="""${TEXTGIFTSHOPTHEBESTGIFTSPRODUCT4TITLE}"""      Fail        Wrong Product name for fourth product. Actual content: ${GiftShopTheBestGiftProduct4Title} expected: ${TEXTGIFTSHOPTHEBESTGIFTSPRODUCT4TITLE}
    ${GiftShopTheBestGiftProduct4OrigPrice}=            get text      ${LOCGIFTSHOPTHEBESTGIFTSPRODUCT4ORIGPRICE}
    Run keyword if          """${GiftShopTheBestGiftProduct4OrigPrice}"""!="""${PUFFYMATTRESSPADTWINORIGINAL}"""      Fail        Wrong price for fourth product. Actual content: ${GiftShopTheBestGiftProduct4OrigPrice} expected: ${PUFFYMATTRESSPADTWINORIGINAL}
    ${GiftShopTheBestGiftProduct4CTA}=            get text      ${LOCGIFTSHOPTHEBESTGIFTSPRODUCT4CTA}
    Run keyword if          """${GiftShopTheBestGiftProduct4CTA}"""!="""${TEXTGIFTSHOPPRODUCTCTA}"""      Fail        Wrong Puffy Mattress CTA name for fourth product. Actual content: ${GiftShopTheBestGiftProduct4CTA} expected: ${TEXTGIFTSHOPPRODUCTCTA}
    scroll element into view    ${LOCGIFTSHOPTHEBESTGIFTSPRODUCT4CTA}
    Click Element               ${LOCGIFTSHOPTHEBESTGIFTSPRODUCT4CTA}
    Wait until page contains    ${TEXTPUFFYMATTRESSPADH1}
    Location should Contain          ${PDPMATTRESSPADURL}
    Go Back
Verify if the "The Best Gifts" fifth product is showing correctly and redirect to correct PDP
    Wait until page contains element                     ${LOCGIFTSHOPTHEBESTGIFTSPRODUCT5IMAGE}
    Page Should Contain Image                            ${LOCGIFTSHOPTHEBESTGIFTSPRODUCT5IMAGE}
    Element should be visible                            ${LOCGIFTSHOPTHEBESTGIFTSPRODUCT5IMAGE}
    ${src}                                               Get Element Attribute  ${LOCGIFTSHOPTHEBESTGIFTSPRODUCT5IMAGE}  src
    Go To                                                ${src}
    Wait until element is visible                        css=img
    Go Back
    scroll element into view                                      ${LOCGIFTSHOPLATESTCOMFYPRODUCTRELEASESTITLE}
    ${GiftShopTheBestGiftProduct5Title}=            get text      ${LOCGIFTSHOPTHEBESTGIFTSPRODUCT5TITLE}
    Run keyword if          """${GiftShopTheBestGiftProduct5Title}"""!="""${TEXTGIFTSHOPTHEBESTGIFTSPRODUCT5TITLE}"""      Fail        Wrong Product name for fifth product. Actual content: ${GiftShopTheBestGiftProduct5Title} expected: ${TEXTGIFTSHOPTHEBESTGIFTSPRODUCT5TITLE}
    ${GiftShopTheBestGiftProduct5OrigPrice}=            get text      ${LOCGIFTSHOPTHEBESTGIFTSPRODUCT5ORIGPRICE}
    Run keyword if          """${GiftShopTheBestGiftProduct5OrigPrice}"""!="""${PUFFYTOPPERTWINORIGINAL}"""      Fail        Wrong price for fifth product. Actual content: ${GiftShopTheBestGiftProduct5OrigPrice} expected: ${PUFFYTOPPERTWINORIGINAL}
    ${GiftShopTheBestGiftProduct5CTA}=            get text      ${LOCGIFTSHOPTHEBESTGIFTSPRODUCT5CTA}
    Run keyword if          """${GiftShopTheBestGiftProduct5CTA}"""!="""${TEXTGIFTSHOPPRODUCTCTA}"""      Fail        Wrong Puffy Mattress CTA name for fifth product. Actual content: ${GiftShopTheBestGiftProduct5CTA} expected: ${TEXTGIFTSHOPPRODUCTCTA}
    scroll element into view    ${LOCGIFTSHOPTHEBESTGIFTSPRODUCT5CTA}
    Click Element               ${LOCGIFTSHOPTHEBESTGIFTSPRODUCT5CTA}
    Wait until page contains    ${TEXTPDPMATTRESSTOPPERH1}
    Location should Contain          ${PDPMATTRESSTOPPERURL}
    Go Back
Verify if the "The Best Gifts" sixth product is showing correctly and redirect to correct PDP
    Wait until page contains element                     ${LOCGIFTSHOPTHEBESTGIFTSPRODUCT6IMAGE}
    Page Should Contain Image                            ${LOCGIFTSHOPTHEBESTGIFTSPRODUCT6IMAGE}
    Element should be visible                            ${LOCGIFTSHOPTHEBESTGIFTSPRODUCT6IMAGE}
    ${src}                                               Get Element Attribute  ${LOCGIFTSHOPTHEBESTGIFTSPRODUCT6IMAGE}  src
    Go To                                                ${src}
    Wait until element is visible                        css=img
    Go Back
    scroll element into view                                      ${LOCGIFTSHOPLATESTCOMFYPRODUCTRELEASESTITLE}
    ${GiftShopTheBestGiftProduct6Title}=            get text      ${LOCGIFTSHOPTHEBESTGIFTSPRODUCT6TITLE}
    Run keyword if          """${GiftShopTheBestGiftProduct6Title}"""!="""${TEXTGIFTSHOPTHEBESTGIFTSPRODUCT6TITLE}"""      Fail        Wrong Product name for sixth product. Actual content: ${GiftShopTheBestGiftProduct6Title} expected: ${TEXTGIFTSHOPTHEBESTGIFTSPRODUCT6TITLE}
    ${GiftShopTheBestGiftProduct6OrigPrice}=            get text      ${LOCGIFTSHOPTHEBESTGIFTSPRODUCT6ORIGPRICE}
    Run keyword if          """${GiftShopTheBestGiftProduct6OrigPrice}"""!="""${PUFFYMATTRESSPROTECTORTWINORIGINAL}"""      Fail        Wrong price for sixth product. Actual content: ${GiftShopTheBestGiftProduct6OrigPrice} expected: ${PUFFYMATTRESSPROTECTORTWINORIGINAL}
    ${GiftShopTheBestGiftProduct6CTA}=            get text      ${LOCGIFTSHOPTHEBESTGIFTSPRODUCT6CTA}
    Run keyword if          """${GiftShopTheBestGiftProduct6CTA}"""!="""${TEXTGIFTSHOPPRODUCTCTA}"""      Fail        Wrong Puffy Mattress CTA name for sixth product. Actual content: ${GiftShopTheBestGiftProduct6CTA} expected: ${TEXTGIFTSHOPPRODUCTCTA}
    scroll element into view    ${LOCGIFTSHOPTHEBESTGIFTSPRODUCT6CTA}
    Click Element               ${LOCGIFTSHOPTHEBESTGIFTSPRODUCT6CTA}
    Wait until page contains    ${TEXTPDPMATTRESSPROTECTORH1}
    Location should Contain          ${PDPPUFFYMATTRESSPROTECTORURL}
    Go Back

#Verify if the "Latest Comfy Product" title description is displaying correctly
#Verify if the "Latest Comfy Product" title is displaying correctly
#Verify if the "Latest Comfy Product" first product is showing correctly and redirect to correct PDP
#Verify if the "Latest Comfy Product" second product is showing correctly and redirect to correct PDP
#Verify if the "Latest Comfy Product" third product is showing correctly and redirect to correct PDP