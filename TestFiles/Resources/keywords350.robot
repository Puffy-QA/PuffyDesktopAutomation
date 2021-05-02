*** Settings ***

Resource            ../Resources/VariableSizes.robot
Resource            ../Resources/VariableSettings.robot
Resource            ../Resources/VariableLocators.robot
Resource            ../Resources/VariablePrice.robot
Resource            ../Resources/VariableTexts.robot
*** Keywords ***
#=============================TEST REQUIREMENTS===================================================#
Initiate Video Recording
    Start Video Recording       alias=FallSale name=FallSale    monitor=3

Open Login Screen
    Open Browser            ${HOMEPAGE}  ${SYSTEMBROWSER}
    Maximize Browser Window
    wait until page contains element    css=#saleTimer > div:nth-child(1) > div

#=============================SEASON SALE KEYWORDS=================================================#

Check Seasonal Sale text on timer
    ${Content}=            get text        css=#saleTimer > div:nth-child(1) > div
    Run keyword if          "${Content}"!="${FOOTER350}"      Fail        Wrong Seasonal Sale timer Content Actual content: ${Content} Expected: ${FOOTER350}
    Click element           css=#saleTimer > span > svg

Banner Seasonal Sale text check (Mattress)
    sleep                   2s
    ${Content}=            get text        css=#NEW_YEAR_S_SALE_FREE_ACCESSORIES_UP_TO_440 > tspan:nth-child(1)
    Run keyword if          "${Content}"!="${SALENAME}"      Fail        Wrong Seasonal Sale Content Actual Result: ${Content}
Banner Seasonal Sale text check (Adjustable Base)
    sleep                   2s
    ${Content}=            get text        css=#NEW_YEAR_S_SALE_FREE_ACCESSORIES_UP_TO_440 > tspan:nth-child(1)
    Run keyword if          "${Content}"!="${SALENAME}"      Fail        Wrong Seasonal Sale Content Actual Result: ${Content}


Don't show seasonal sale content check
    Page Should Not Contain Element              css=#Presidents_Day_Sale_Product_Page_Banner > path.cls-product-mattress1

Don't show freebies content check
    Page Should Not Contain                      css=#shopify-section-product-puffy-template > div.container.main.content.product-name--puffy-mattress > div > div > div > div > div.seven.columns.medium-down--one-whole.alpha > div > div.promo-info
#=============================PRODUCT PAGE REDIRECTIONS=================================================#
Go to Puffy Mattress Product Page
    Mouse Over          ${LOCMATTRESSES}
    sleep               2s
    Click element       ${LOCPUFFYMATTRESS}
    Wait Until Page Contains    12 REASONS TO CHOOSE
    ${Content}=         get text        css=#shopify-section-product-puffy-template > div.container.main.content.product-name--puffy-mattress > div > div > div > div > div.seven.columns.medium-down--one-whole.alpha > div > div.product-head > div.product-head__text.product-head__text--boxed > div.product-head__headline > h1 > span
    Run keyword if      '${Content}'!='${TEXTPUFFYMATTRESSH1}'          Fail        Product name (H1) not found Expected: ${TEXTPUFFYMATTRESSH1} Actual: ${Content}

Go to Puffy Lux Mattress Product Page
    Mouse Over          ${LOCMATTRESSES}
    sleep               2s
    Click element       ${LOCPUFFYLUXMATTRESS}
    Wait Until Page Contains    12 REASONS TO CHOOSE

Go to Puffy Royal Mattress Product Page
    Mouse Over          ${LOCMATTRESSES}
    sleep               2s
    Click element       ${LOCPUFFYROYALMATTRESS}
    Wait Until Page Contains    12 REASONS TO CHOOSE

Go to Puffy Foundation Product Page
    Mouse Over          ${LOCBASES}
    sleep               2s
    Click element       ${LOCFOUNDATION}
    Wait Until Page Contains    12 REASONS TO CHOOSE

Go to Puffy Adjustable Base Product Page
    Mouse Over          ${LOCBASES}
    sleep               2s
    Click element       ${LOCADJUSTABLEBASE}
    Wait Until Page Contains    12 REASONS TO CHOOSE

Go to Puffy Bed Frame Product Page
    Mouse Over          ${LOCBASES}
    sleep               2s
    Click element       ${LOCBEDFRAME}
    Wait Until Page Contains    12 REASONS TO CHOOSE

Go to Puffy Comforter Product Page
    Mouse Over          ${LOCBEDDING}
    sleep               2s
    Click element       ${LOCCOMFORTER}
    Wait Until Page Contains    12 REASONS TO CHOOSE

Go to Puffy Pillow Product Page
    Mouse Over          ${LOCBEDDING}
    sleep               2s
    Click element       ${LOCPILLOW}
    Wait Until Page Contains    12 REASONS TO CHOOSE

Go to Puffy Body Pillow Product Page
    Mouse Over          ${LOCBEDDING}
    sleep               2s
    Click element       ${LOCBODYPILLOW}
    Wait Until Page Contains    12 REASONS TO CHOOSE


Go to Puffy Mattress Pad Product Page
    Mouse Over          ${LOCBEDDING}
    sleep               2s
    Click element       ${LOCMATTRESSPAD}
    Wait Until Page Contains    12 REASONS TO CHOOSE

Go to Puffy Mattress Protector Product Page
    Mouse Over          ${LOCBEDDING}
    sleep               2s
    Click element       ${LOCMATTRESSPROTECTOR}
    Wait Until Page Contains    12 REASONS TO CHOOSE

Go to Puffy Topper Product Page
    Mouse Over          ${LOCBEDDING}
    sleep               2s
    Click element       ${LOCTOPPER}
    Wait Until Page Contains    12 REASONS TO CHOOSE

Go to Puffy Blanket Product Page
    Mouse Over          ${LOCBEDDING}
    sleep               2s
    Click element       ${LOCBLANKET}
    Wait Until Page Contains    12 REASONS TO CHOOSE

Go to Puffy Weighted Blanket Product Page
    Mouse Over          ${LOCBEDDING}
    sleep               2s
    Click element       ${LOCWEIGHTEDBLANKET}
    Wait Until Page Contains    12 REASONS TO CHOOSE

Go to Puffy Sheets Product Page
    Mouse Over          ${LOCBEDDING}
    sleep               2s
    Click element       ${LOCSHEETS}
    Wait Until Page Contains    12 REASONS TO CHOOSE

Go to Puffy Dog Bed Product Page
    Mouse Over          ${LOCBEDROOM}
    sleep               2s
    Click element       ${LOCDOGBED}
    Wait Until Page Contains    12 REASONS TO CHOOSE

Go to Puffy Rug Product Page
    Mouse Over          ${LOCBEDROOM}
    sleep               2s
    Click element       ${LOCRUG}
    Wait Until Page Contains    12 REASONS TO CHOOSE


Go to Compare Mattress Page
    Mouse Over          ${LOCMATTRESSES}
    sleep               2s
    Click element       ${LOCCOMPARE}
    Wait Until Page Contains    CHOOSE YOUR PUFFY MATTRESS

Go To Store Page (Click on footer Store link)
    Click link       link:STORE

Go to Gift Shop page (Click on footer Gift Shop link)
    Click link          link:Gift Shop
#=============================DISCOUNTS AND FREEBIES=================================================#

PDP Discount Value and Freebie check
    ${Content}=            get text        css=#NEW_YEAR_S_SALE_FREE_ACCESSORIES_UP_TO_440 > tspan.cls-mattress-badge3
    Run keyword if          '${Content}'!='${SALE350DETAILS}'      Fail        Wrong Discount Value and Freebie Content Expected: ${SALE350DETAILS} Actual: ${Content}

Wait and dismiss popup
    sleep                   5s
    ${check}=               Run Keyword and Return Status  Element should be visible      xpath=/html/body/div[2]/div[2]/div/div[1]/img
    run keyword if          ${check} == False    Wait and dismiss popup
    ...     ELSE            Click element   css=#Layer_1 > polygon
#=============================PRODUCT SIZE DROPDOWNS=================================================#
Click size dropdown for Puffy Mattress
    wait until page contains element        css=#product_form_345108381730 > div.product-variants-holder > div > div > div
    Click element       css=#product_form_345108381730 > div.product-variants-holder > div > div > div

Click size dropdown for Puffy Lux Mattress
    wait until page contains element        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > div
    Click element       css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > div

Click size dropdown for Puffy Royal Mattress
    Click element       css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > div

Click Puffy Sheets Size dropdown
    Click element       css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > div

Click Puffy Sheets Color dropdown
    Click element       css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-color > div > div

Click Puffy Adjustable Base size dropdown
    Click element       css=#product_form_416170377250 > div.product-variants-holder > div > div > div

Click Puffy Foundation size dropdown
    Click element       css=#product_form_150983180312 > div.product-variants-holder > div > div > div

Click Puffy Bed Frame size dropdown
    Click element       css=#product_form_1528789401634 > div.product-variants-holder > div > div > div

Click Puffy Comforter size dropdown
    Click element       css=#product_form_1536090603554 > div.product-variants-holder > div > div > div

Click Puffy Pillow size dropdown
    Click element       css=#product_form_625398710306 > div.product-variants-holder > div > div > div

Click Puffy Mattress Pad size dropdown
    Click element       css=#product_form_4830838194210 > div.product-variants-holder > div > div > div

Click Puffy Mattress Protector size dropdown
    Click element       css=#product_form_1508181475362 > div.product-variants-holder > div > div > div

Click Puffy Topper feel dropdown
    Click element       css=#product_form_1837366476834 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-feel > div > div

Click Puffy Topper size dropdown
    Click element       css=#product_form_1837366476834 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > div

Click Puffy Blanket size dropdown
    Click element       css=#product_form_4412718972962 > div.product-variants-holder > div > div > div

Click Puffy Weighted Blanket size dropdown
    Click element       css=#product_form_3773124771874 > div.product-variants-holder > div > div > div

Click Puffy Dog Bed size dropdown
    Click element       css=#product_form_4365356662818 > div.product-variants-holder > div > div > div
Click Puffy Rug color dropdown
    Click element       css=#product_form_4125949657122 > div.product-variants-holder > div.product-variant.selector-wrapper.jsRealOptions.product-color > div > div
Click Puffy Rug size dropdown
    Click element       css=#product_form_4125949657122 > div.product-variants-holder > div.product-variant.selector-wrapper.jsRealOptions.product-size > div > div
#=============================PRODUCT DEFAULT SIZES=================================================#
Check Puffy Mattress PDP Default size
    ${DefaultSize}=            get text        css=#product_form_345108381730 > div.product-variants-holder > div > div > div > div > span.display-name.is--sale--price
    Run keyword if          '${DefaultSize}'!='${SIZEPUFFYMATTRESSDEFAULTSIZE}'      Fail        Wrong Puffy Mattress Default Size. Expected Result: ${SIZEPUFFYMATTRESSDEFAULTSIZE} Actual Result: ${DefaultSize}

Check Puffy Lux Mattress PDP Default size
    ${DefaultSize}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > div > div > span.display-name.is--sale--price
    Run keyword if          '${DefaultSize}'!='${SIZEPUFFYLUXMATTRESSDEFAULTSIZE}'      Fail        Wrong Puffy Lux Mattress Default Size. Expected Result: ${SIZEPUFFYLUXMATTRESSDEFAULTSIZE} Actual Result: ${DefaultSize}

Check Puffy Royal Mattress PDP Default size
    ${DefaultSize}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > div > div > span.display-name.is--sale--price
    Run keyword if          '${DefaultSize}'!='${SIZEPUFFYROYALMATTRESSDEFAULTSIZE}'      Fail        Wrong Puffy Royal Mattress Default Size. Expected Result: ${SIZEPUFFYROYALMATTRESSDEFAULTSIZE} Actual Result: ${DefaultSize}

Check Puffy Foundation PDP Default size
    wait until page contains element           css=#product_form_150983180312 > div.product-variants-holder > div > div > div > div > span.display-name.is--not--sale
    ${DefaultSize}=            get text        css=#product_form_150983180312 > div.product-variants-holder > div > div > div > div > span.display-name.is--not--sale
    Run keyword if          '${DefaultSize}'!='${SIZEPUFFYFOUNDATIONDEFAULTSIZE}'      Fail        Wrong Puffy Foundation Default Size. Expected Result: ${SIZEPUFFYFOUNDATIONDEFAULTSIZE} Actual Result: ${DefaultSize}

Check Puffy Adjustable Base PDP Default size
    ${DefaultSize}=            get text        css=#product_form_416170377250 > div.product-variants-holder > div > div > div > div > span.display-name.is--sale--price
    Run keyword if          '${DefaultSize}'!='${SIZEPUFFYADJUSTABLEBASEDEFAULTSIZE}'      Fail        Wrong Puffy Adjustable Base Default Size. Expected Result: ${SIZEPUFFYADJUSTABLEBASEDEFAULTSIZE} Actual Result: ${DefaultSize}

Check Puffy Bed Frame PDP Default size
    wait until page contains element           css=#product_form_1528789401634 > div.product-variants-holder > div > div > div > div > span.display-name.is--not--sale
    ${DefaultSize}=            get text        css=#product_form_1528789401634 > div.product-variants-holder > div > div > div > div > span.display-name.is--not--sale
    Run keyword if          '${DefaultSize}'!='${SIZEPUFFYBEDFRAMEDEFAULTSIZE}'      Fail        Wrong Puffy Bed Frame Default Size. Expected Result: ${SIZEPUFFYBEDFRAMEDEFAULTSIZE} Actual Result: ${DefaultSize}

Check Puffy Comforter PDP Default size
    wait until page contains element           css=#product_form_1536090603554 > div.product-variants-holder > div > div > div > div > span.display-name.is--not--sale
    ${DefaultSize}=            get text        css=#product_form_1536090603554 > div.product-variants-holder > div > div > div > div > span.display-name.is--not--sale
    Run keyword if          '${DefaultSize}'!='${SIZEPUFFYCOMFORTERDEFAULTSIZE}'      Fail        Wrong Puffy Comforter Default Size. Expected Result: ${SIZEPUFFYCOMFORTERDEFAULTSIZE} Actual Result: ${DefaultSize}

Check Puffy Pillow PDP Default size
    wait until page contains element           css=#product_form_625398710306 > div.product-variants-holder > div.product-variant.selector-wrapper.jsRealOptions.product-size > div > div > div > span.display-name.is--not--sale
    ${DefaultSize}=            get text        css=#product_form_625398710306 > div.product-variants-holder > div.product-variant.selector-wrapper.jsRealOptions.product-size > div > div > div > span.display-name.is--not--sale
    Run keyword if          '${DefaultSize}'!='${SIZEPUFFYPILLOWDEFAULTSIZE}'      Fail        Wrong Puffy Pillow Default Size. Expected Result: ${SIZEPUFFYPILLOWDEFAULTSIZE} Actual Result: ${DefaultSize}
Check Puffy Mattress Pad PDP Default size
    wait until page contains element           css=#product_form_4830838194210 > div.product-variants-holder > div > div > div > div > span.display-name.is--not--sale
    ${DefaultSize}=            get text        css=#product_form_4830838194210 > div.product-variants-holder > div > div > div > div > span.display-name.is--not--sale
    Run keyword if          '${DefaultSize}'!='${SIZEPUFFYMATTRESSPADDEFAULTSIZE}'      Fail        Wrong Puffy Mattress Pad Default Size. Expected Result: ${SIZEPUFFYMATTRESSPADDEFAULTSIZE} Actual Result: ${DefaultSize}

Check Puffy Mattress Protector PDP Default size
    wait until page contains element           css=#product_form_1508181475362 > div.product-variants-holder > div > div > div > div > span.display-name.is--not--sale
    ${DefaultSize}=            get text        css=#product_form_1508181475362 > div.product-variants-holder > div > div > div > div > span.display-name.is--not--sale
    Run keyword if          '${DefaultSize}'!='${SIZEPUFFYMATTRESSPROTECTORDEFAULTSIZE}'      Fail        Wrong Puffy Mattress Protector Default Size. Expected Result: ${SIZEPUFFYMATTRESSPADDEFAULTSIZE} Actual Result: ${DefaultSize}

Check Puffy Topper PDP Default size
    wait until page contains element           css=#product_form_1837366476834 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > div > div > span.display-name.is--not--sale
    ${DefaultSize}=            get text        css=#product_form_1837366476834 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > div > div > span.display-name.is--not--sale
    Run keyword if          '${DefaultSize}'!='${SIZEPUFFYTOPPERDEFAULTSIZE}'      Fail        Wrong Puffy Mattress Protector Default Size. Expected Result: ${SIZEPUFFYTOPPERDEFAULTSIZE} Actual Result: ${DefaultSize}
Check Puffy Topper PDP Default feel
    wait until page contains element           css=#product_form_1837366476834 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-feel > div > div > div > span.display-name.is--not--sale
    ${DefaultFeel}=            get text        css=#product_form_1837366476834 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-feel > div > div > div > span.display-name.is--not--sale
    Run keyword if          '${DefaultFeel}'!='${SIZEPUFFYTOPPERDEFAULTFEEL}'      Fail        Wrong Puffy Topper Default Feel. Expected Result: ${SIZEPUFFYTOPPERDEFAULTFEEL} Actual Result: ${DefaultFeel}

Check Puffy Blanket PDP Default size
    wait until page contains element           css=#product_form_4412718972962 > div.product-variants-holder > div > div > div > div > span.display-name.is--not--sale
    ${DefaultSize}=            get text        css=#product_form_4412718972962 > div.product-variants-holder > div > div > div > div > span.display-name.is--not--sale
    Run keyword if          '${DefaultSize}'!='${SIZEPUFFYBLANKETDEFAULTSIZE}'      Fail        Wrong Puffy Blanket Default Size. Expected Result: ${SIZEPUFFYBLANKETDEFAULTSIZE} Actual Result: ${DefaultSize}

Check Puffy Weighted Blanket PDP Default size
    wait until page contains element           css=#product_form_3773124771874 > div.product-variants-holder > div > div > div > div > span.display-name.is--not--sale
    ${DefaultSize}=            get text        css=#product_form_3773124771874 > div.product-variants-holder > div > div > div > div > span.display-name.is--not--sale
    Run keyword if          '${DefaultSize}'!='${SIZEPUFFYWEIGHTEDBLANKETDEFAULTSIZE}'      Fail        Wrong Puffy WeightedBlanket Default Size. Expected Result: ${SIZEPUFFYWEIGHTEDBLANKETDEFAULTSIZE} Actual Result: ${DefaultSize}

Check Puffy Sheets PDP Default color
    wait until page contains element           css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-color > div > div > div > span.display-name.is--not--sale
    ${DefaultSize}=            get text        css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-color > div > div > div > span.display-name.is--not--sale
    Run keyword if          '${DefaultSize}'!='${SIZEPUFFYSHEETSDEFAULTCOLOR}'      Fail        Wrong Puffy Sheets Default color. Expected Result: ${SIZEPUFFYSHEETSDEFAULTCOLOR} Actual Result: ${DefaultSize}
Check Puffy Sheets PDP Default size
    wait until page contains element           css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > div > div > span.display-name.is--not--sale
    ${DefaultSize}=            get text        css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > div > div > span.display-name.is--not--sale
    Run keyword if          '${DefaultSize}'!='${SIZEPUFFYSHEETSDEFAULTSIZE}'      Fail        Wrong Puffy Sheets Default Size. Expected Result: ${SIZEPUFFYSHEETSDEFAULTSIZE} Actual Result: ${DefaultSize}

Check Puffy Dog Bed PDP Default Size
    wait until page contains element           css=#product_form_4365356662818 > div.product-variants-holder > div > div > div > div > span.display-name.is--not--sale
    ${DefaultSize}=            get text        css=#product_form_4365356662818 > div.product-variants-holder > div > div > div > div > span.display-name.is--not--sale
    Run keyword if          '${DefaultSize}'!='${SIZEPUFFYDOGBEDDEFAULTSIZE}'      Fail        Wrong Puffy Dog Bed Default color. Expected Result: ${SIZEPUFFYDOGBEDDEFAULTSIZE} Actual Result: ${DefaultSize}
Check Puffy Rug PDP Default Color
    wait until page contains element           css=#product_form_4125949657122 > div.product-variants-holder > div.product-variant.selector-wrapper.jsRealOptions.product-color > div > div > div > span.display-name.is--not--sale
    ${DefaultSize}=            get text        css=#product_form_4125949657122 > div.product-variants-holder > div.product-variant.selector-wrapper.jsRealOptions.product-color > div > div > div > span.display-name.is--not--sale
    Run keyword if          '${DefaultSize}'!='${SIZEPUFFYRUGDEFAULTCOLOR}'      Fail        Wrong Puffy Rug Default Color. Expected Result: ${SIZEPUFFYRUGDEFAULTCOLOR} Actual Result: ${DefaultSize}
Check Puffy Rug PDP Default size
    wait until page contains element           css=#product_form_4125949657122 > div.product-variants-holder > div.product-variant.selector-wrapper.jsRealOptions.product-size > div > div > div > span.display-name.is--not--sale
    ${DefaultSize}=            get text        css=#product_form_4125949657122 > div.product-variants-holder > div.product-variant.selector-wrapper.jsRealOptions.product-size > div > div > div > span.display-name.is--not--sale
    Run keyword if          '${DefaultSize}'!='${SIZEPUFFYRUGDEFAULTSIZE}'      Fail        Wrong Puffy Rug Default Size. Expected Result: ${SIZEPUFFYRUGDEFAULTSIZE} Actual Result: ${DefaultSize}

#=============================PRODUCT ORIGINAL PRICE CHECKS===================================================#

Check Puffy Mattress sizes original prices

    Wait Until Element Is Visible          css=#product_form_345108381730 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > del > span.original-price

    ${Content}=            get text        css=#product_form_345108381730 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PUFFYMATTRESSTWINORIGINAL}'      Fail        Wrong Puffy Mattress Twin Size original price. Expected Result: ${PUFFYMATTRESSTWINORIGINAL} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_345108381730 > div.product-variants-holder > div > div > ul > li:nth-child(2) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PUFFYMATTRESSTWINXLORIGINAL}'      Fail        Wrong Puffy Mattress TwinXL Size original price. Expected Result: ${PUFFYMATTRESSTWINXLORIGINAL} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_345108381730 > div.product-variants-holder > div > div > ul > li:nth-child(3) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PUFFYMATTRESSFULLORIGINAL}'      Fail        Wrong Puffy Mattress Full Size original price. Expected Result: ${PUFFYMATTRESSFULLORIGINAL} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_345108381730 > div.product-variants-holder > div > div > ul > li.option.selected.focus > span > del > span.original-price
    Run keyword if          '${Content}'!='${PUFFYMATTRESSQUEENORIGINAL}'      Fail        Wrong Puffy Mattress Queen Size original price. Expected Result: ${PUFFYMATTRESSQUEENORIGINAL} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_345108381730 > div.product-variants-holder > div > div > ul > li:nth-child(5) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PUFFYMATTRESSKINGORIGINAL}'      Fail        Wrong Puffy Mattress King Size original price. Expected Result: ${PUFFYMATTRESSKINGORIGINAL} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_345108381730 > div.product-variants-holder > div > div > ul > li:nth-child(6) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PUFFYMATTRESSCALKINGORIGINAL}'      Fail        Wrong Puffy Mattress CalKing Size original price. Expected Result: ${PUFFYMATTRESSCALKINGORIGINAL} Actual Result: ${Content}


Check Puffy Lux Mattress sizes original prices

    Wait Until Element Is Visible          css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > del > span.original-price

    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PUFFYLUXMATTRESSTWINORIGINAL}'      Fail        Wrong Puffy Lux Twin Size original price. Expected Result: ${PUFFYLUXMATTRESSTWINORIGINAL} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(2) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PUFFYLUXMATTRESSTWINXLORIGINAL}'      Fail        Wrong Puffy Lux TwinXL Size original price. Expected Result: ${PUFFYLUXMATTRESSTWINXLORIGINAL} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(3) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PUFFYLUXMATTRESSFULLORIGINAL}'      Fail        Wrong Puffy Lux Full Size original price. Expected Result: ${PUFFYLUXMATTRESSFULLORIGINAL} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li.option.selected.focus > span > del > span.original-price
    Run keyword if          '${Content}'!='${PUFFYLUXMATTRESSQUEENORIGINAL}'      Fail        Wrong Puffy Lux Queen Size original price. Expected Result: ${PUFFYLUXMATTRESSQUEENORIGINAL} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(5) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PUFFYLUXMATTRESSKINGORIGINAL}'      Fail        Wrong Puffy Lux King Size original price. Expected Result: ${PUFFYLUXMATTRESSKINGORIGINAL} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(6) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PUFFYLUXMATTRESSCALKINGORIGINAL}'      Fail        Wrong Puffy Lux CalKing Size original price. Expected Result: ${PUFFYLUXMATTRESSCALKINGORIGINAL} Actual Result: ${Content}

Check Puffy Lux Hybrid sizes original prices

    Wait Until Element Is Visible          css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > del > span.hybrid-price
    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > del > span.hybrid-price
    Run keyword if          '${Content}'!='${PUFFYLUXMATTRESSTWINORIGINAL}'      Fail        Wrong Puffy Lux Hybrid Twin Size original price. Expected Result: ${PUFFYLUXMATTRESSTWINORIGINAL} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(2) > span > del > span.hybrid-price
    Run keyword if          '${Content}'!='${PUFFYLUXMATTRESSTWINXLORIGINAL}'      Fail        Wrong Puffy Lux Hybrid TwinXL Size original price. Expected Result: ${PUFFYLUXMATTRESSTWINXLORIGINAL} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(3) > span > del > span.hybrid-price
    Run keyword if          '${Content}'!='${PUFFYLUXMATTRESSFULLORIGINAL}'      Fail        Wrong Puffy Lux Hybrid Full Size original price. Expected Result: ${PUFFYLUXMATTRESSFULLORIGINAL} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(4) > span > del > span.hybrid-price
    Run keyword if          '${Content}'!='${PUFFYLUXMATTRESSQUEENORIGINAL}'      Fail        Wrong Puffy Lux Hybrid Queen Size original price. Expected Result: ${PUFFYLUXMATTRESSQUEENORIGINAL} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(5) > span > del > span.hybrid-price
    Run keyword if          '${Content}'!='${PUFFYLUXMATTRESSKINGORIGINAL}'      Fail        Wrong Puffy Lux Hybrid King Size original price. Expected Result: ${PUFFYLUXMATTRESSKINGORIGINAL} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(6) > span > del > span.hybrid-price
    Run keyword if          '${Content}'!='${PUFFYLUXMATTRESSCALKINGORIGINAL}'      Fail        Wrong Puffy Lux Hybrid CalKing Size original price. Expected Result: ${PUFFYLUXMATTRESSCALKINGORIGINAL} Actual Result: ${Content}


Check Puffy Royal sizes original prices

    Wait Until Element Is Visible          css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > del > span.original-price
    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PUFFYROYALMATTRESSTWINORIGINAL}'      Fail        Wrong Puffy Royal Twin Size original price. Expected Result: ${PUFFYROYALMATTRESSTWINORIGINAL} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(2) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PUFFYROYALMATTRESSTWINXLORIGINAL}'      Fail        Wrong Puffy Royal TwinXL Size original price. Expected Result: ${PUFFYROYALMATTRESSTWINXLORIGINAL} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(3) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PUFFYROYALMATTRESSFULLORIGINAL}'      Fail        Wrong Puffy Royal Full Size original price. Expected Result: ${PUFFYROYALMATTRESSFULLORIGINAL} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li.option.selected.focus > span > del > span.original-price
    Run keyword if          '${Content}'!='${PUFFYROYALMATTRESSQUEENORIGINAL}'      Fail        Wrong Puffy Royal Queen Size original price. Expected Result: ${PUFFYROYALMATTRESSQUEENORIGINAL} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(5) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PUFFYROYALMATTRESSKINGORIGINAL}'      Fail        Wrong Puffy Royal King Size original price. Expected Result: ${PUFFYROYALMATTRESSKINGORIGINAL} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(6) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PUFFYROYALMATTRESSCALKINGORIGINAL}'      Fail        Wrong Puffy Royal CalKing Size original price. Expected Result: ${PUFFYROYALMATTRESSCALKINGORIGINAL} Actual Result: ${Content}


Check Puffy Royal Hybrid sizes original prices

    Wait Until Element Is Visible          css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > del > span.hybrid-price
    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > del > span.hybrid-price
    Run keyword if          '${Content}'!='${PUFFYROYALMATTRESSTWINORIGINAL}'      Fail        Wrong Puffy Royal Hybrid Twin Size original price. Expected Result: ${PUFFYROYALMATTRESSTWINORIGINAL} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(2) > span > del > span.hybrid-price
    Run keyword if          '${Content}'!='${PUFFYROYALMATTRESSTWINXLORIGINAL}'      Fail        Wrong Puffy Royal Hybrid TwinXL Size original price. Expected Result: ${PUFFYROYALMATTRESSTWINXLORIGINAL} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(3) > span > del > span.hybrid-price
    Run keyword if          '${Content}'!='${PUFFYROYALMATTRESSFULLORIGINAL}'      Fail        Wrong Puffy Royal Hybrid Full Size original price. Expected Result: ${PUFFYROYALMATTRESSFULLORIGINAL} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(4) > span > del > span.hybrid-price
    Run keyword if          '${Content}'!='${PUFFYROYALMATTRESSQUEENORIGINAL}'      Fail        Wrong Puffy Royal Hybrid Queen Size original price. Expected Result: ${PUFFYROYALMATTRESSQUEENORIGINAL} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(5) > span > del > span.hybrid-price
    Run keyword if          '${Content}'!='${PUFFYROYALMATTRESSKINGORIGINAL}'      Fail        Wrong Puffy Royal Hybrid King Size original price. Expected Result: ${PUFFYROYALMATTRESSKINGORIGINAL} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(6) > span > del > span.hybrid-price
    Run keyword if          '${Content}'!='${PUFFYROYALMATTRESSCALKINGORIGINAL}'      Fail        Wrong Puffy Royal Hybrid CalKing Size original price. Expected Result: ${PUFFYROYALMATTRESSCALKINGORIGINAL} Actual Result: ${Content}
Check Puffy Foundation sizes original prices

    Wait Until Element Is Visible          css=#product_form_150983180312 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > span > span.original-price
    ${Content}=            get text        css=#product_form_150983180312 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PUFFYFOUNDATIONTWINORIGINAL}'      Fail        Wrong Puffy Foundation Twin Size original price. Expected Result: ${PUFFYFOUNDATIONTWINORIGINAL} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_150983180312 > div.product-variants-holder > div > div > ul > li:nth-child(2) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PUFFYFOUNDATIONTWINXLORIGINAL}'      Fail        Wrong Puffy Foundation TwinXL Size original price. Expected Result: ${PUFFYFOUNDATIONTWINXLORIGINAL} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_150983180312 > div.product-variants-holder > div > div > ul > li:nth-child(3) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PUFFYFOUNDATIONFULLORIGINAL}'      Fail        Wrong Puffy Foundation Full Size original price. Expected Result: ${PUFFYFOUNDATIONFULLORIGINAL} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_150983180312 > div.product-variants-holder > div > div > ul > li:nth-child(4) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PUFFYFOUNDATIONQUEENORIGINAL}'      Fail        Wrong Puffy Foundation Queen Size original price. Expected Result: ${PUFFYFOUNDATIONQUEENORIGINAL} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_150983180312 > div.product-variants-holder > div > div > ul > li:nth-child(5) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PUFFYFOUNDATIONKINGORIGINAL}'      Fail        Wrong Puffy Foundation King Size original price. Expected Result: ${PUFFYFOUNDATIONKINGORIGINAL} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_150983180312 > div.product-variants-holder > div > div > ul > li:nth-child(6) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PUFFYFOUNDATIONCALKINGORIGINAL}'      Fail        Wrong Puffy Foundation CalKing Size original price. Expected Result: ${PUFFYFOUNDATIONCALKINGORIGINAL} Actual Result: ${Content}

Check Puffy Foundation sizes 15OFF prices

    Wait Until Element Is Visible          css=#product_form_150983180312 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > span > span.original-price
    ${Content}=            get text        css=#product_form_150983180312 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PUFFYFOUNDATIONTWIN15OFF}'      Fail        Wrong Puffy Foundation Twin Size 15% Off price. Expected Result: ${PUFFYFOUNDATIONTWIN15OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_150983180312 > div.product-variants-holder > div > div > ul > li:nth-child(2) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PUFFYFOUNDATIONTWINXL15OFF}'      Fail        Wrong Puffy Foundation TwinXL Size 15% Off price. Expected Result: ${PUFFYFOUNDATIONTWINXL15OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_150983180312 > div.product-variants-holder > div > div > ul > li:nth-child(3) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PUFFYFOUNDATIONFULL15OFF}'      Fail        Wrong Puffy Foundation Full Size 15% Off price. Expected Result: ${PUFFYFOUNDATIONFULL15OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_150983180312 > div.product-variants-holder > div > div > ul > li:nth-child(4) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PUFFYFOUNDATIONQUEEN15OFF}'      Fail        Wrong Puffy Foundation Queen Size 15% Off price. Expected Result: ${PUFFYFOUNDATIONQUEEN15OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_150983180312 > div.product-variants-holder > div > div > ul > li:nth-child(5) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PUFFYFOUNDATIONKING15OFF}'      Fail        Wrong Puffy Foundation King Size 15% Off price. Expected Result: ${PUFFYFOUNDATIONKING15OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_150983180312 > div.product-variants-holder > div > div > ul > li:nth-child(6) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PUFFYFOUNDATIONCALKING15OFF}'      Fail        Wrong Puffy Foundation CalKing Size 15% Off price. Expected Result: ${PUFFYFOUNDATIONCALKING15OFF} Actual Result: ${Content}

Check Puffy Adjustable Base original prices

    Wait Until Element Is Visible          css=#product_form_416170377250 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > del > span.original-price
    ${Content}=            get text        css=#product_form_416170377250 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PUFFYADJUSTABLEBASETWINXLORIGINAL}'      Fail        Wrong Puffy Adjustable Base TwinXL Size original price. Expected Result: ${PUFFYADJUSTABLEBASETWINXLORIGINAL} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_416170377250 > div.product-variants-holder > div > div > ul > li:nth-child(2) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PUFFYADJUSTABLEBASEFULLORIGINAL}'      Fail        Wrong Puffy Adjustable Base Full Size original price. Expected Result: ${PUFFYADJUSTABLEBASEFULLORIGINAL} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_416170377250 > div.product-variants-holder > div > div > ul > li:nth-child(3) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PUFFYADJUSTABLEBASEQUEENORIGINAL}'      Fail        Wrong Puffy Adjustable Base Queen Size original price. Expected Result: ${PUFFYADJUSTABLEBASEQUEENORIGINAL} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_416170377250 > div.product-variants-holder > div > div > ul > li:nth-child(4) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PUFFYADJUSTABLEBASESPLITKINGORIGINAL}'      Fail        Wrong Puffy Adjustable Base Split King Size original price. Expected Result: ${PUFFYADJUSTABLEBASESPLITKINGORIGINAL} Actual Result: ${Content}

Check Puffy Bed Frame original prices

    Wait Until Element Is Visible          css=#product_form_1528789401634 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > span > span.original-price
    ${Content}=            get text        css=#product_form_1528789401634 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PUFFYBEDFRAMEFULLORIGINAL}'      Fail        Wrong Puffy Bed Frame Full Size original price. Expected Result: ${PUFFYBEDFRAMEFULLORIGINAL} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_1528789401634 > div.product-variants-holder > div > div > ul > li.option.selected.focus > span > span > span.original-price
    Run keyword if          '${Content}'!='${PUFFYBEDFRAMEQUEENORIGINAL}'      Fail        Wrong Puffy Bed Frame Queen Size original price. Expected Result: ${PUFFYBEDFRAMEQUEENORIGINAL} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_1528789401634 > div.product-variants-holder > div > div > ul > li:nth-child(3) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PUFFYBEDFRAMEKINGORIGINAL}'      Fail        Wrong Puffy Bed Frame King Size original price. Expected Result: ${PUFFYBEDFRAMEKINGORIGINAL} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_1528789401634 > div.product-variants-holder > div > div > ul > li:nth-child(4) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PUFFYBEDFRAMECALKINGORIGINAL}'      Fail        Wrong Puffy Bed Frame Cal King Size original price. Expected Result: ${PUFFYBEDFRAMECALKINGORIGINAL} Actual Result: ${Content}

Check Puffy Bed Frame sizes 15OFF prices
    Wait Until Element Is Visible          css=#product_form_1528789401634 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > span > span.original-price
    ${Content}=            get text        css=#product_form_1528789401634 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PUFFYBEDFRAMEFULL15OFF}'      Fail        Wrong Puffy Bed Frame Full Size original price. Expected Result: ${PUFFYBEDFRAMEFULL15OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_1528789401634 > div.product-variants-holder > div > div > ul > li:nth-child(2) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PUFFYBEDFRAMEQUEEN15OFF}'      Fail        Wrong Puffy Bed Frame Queen Size original price. Expected Result: ${PUFFYBEDFRAMEQUEEN15OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_1528789401634 > div.product-variants-holder > div > div > ul > li:nth-child(3) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PUFFYBEDFRAMEKING15OFF}'      Fail        Wrong Puffy Bed Frame King Size original price. Expected Result: ${PUFFYBEDFRAMEKING15OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_1528789401634 > div.product-variants-holder > div > div > ul > li:nth-child(4) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PUFFYBEDFRAMECALKING15OFF}'      Fail        Wrong Puffy Bed Frame Cal King Size original price. Expected Result: ${PUFFYBEDFRAMECALKING15OFF} Actual Result: ${Content}


Check Puffy Comforter original prices

    Wait Until Element Is Visible          css=#product_form_1536090603554 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > span > span.original-price
    ${Content}=            get text        css=#product_form_1536090603554 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PUFFYCOMFORTERTWIN/TWINXLORIGINAL}'      Fail        Wrong Puffy Comforter Twin/TwinXL Size original price. Expected Result: ${PUFFYCOMFORTERTWIN/TWINXLORIGINAL} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_1536090603554 > div.product-variants-holder > div > div > ul > li.option.selected.focus > span > span > span.original-price
    Run keyword if          '${Content}'!='${PUFFYCOMFORTERFULL/QUEENORIGINAL}'      Fail        Wrong Puffy Comforter Full/Queen Size original price. Expected Result: ${PUFFYCOMFORTERFULL/QUEENORIGINAL} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_1536090603554 > div.product-variants-holder > div > div > ul > li:nth-child(3) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PUFFYCOMFORTERKING/CALKINGORIGINAL}'      Fail        Wrong Puffy Comforter King/Cal King Size original price. Expected Result: ${PUFFYCOMFORTERKING/CALKINGORIGINAL} Actual Result: ${Content}

Check Puffy Comforter sizes 15OFF PRICES

    Wait Until Element Is Visible          css=#product_form_1536090603554 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > span > span.original-price
    ${Content}=            get text        css=#product_form_1536090603554 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PUFFYCOMFORTERTWIN/TWINXL15OFF}'      Fail        Wrong Puffy Comforter Twin/TwinXL Size 15% Off price. Expected Result: ${PUFFYCOMFORTERTWIN/TWINXL15OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_1536090603554 > div.product-variants-holder > div > div > ul > li:nth-child(2) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PUFFYCOMFORTERFULL/QUEEN15OFF}'      Fail        Wrong Puffy Comforter Full/Queen Size 15% Off price. Expected Result: ${PUFFYCOMFORTERFULL/QUEEN15OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_1536090603554 > div.product-variants-holder > div > div > ul > li:nth-child(3) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PUFFYCOMFORTERKING/CALKING15OFF}'      Fail        Wrong Puffy Comforter King/Cal King Size 15% Off price. Expected Result: ${PUFFYCOMFORTERKING/CALKING15OFF} Actual Result: ${Content}

Check Puffy Pillow original prices
    Wait Until Element Is Visible          css=#product_form_625398710306 > div.product-variants-holder > div > div > ul > li.option.selected.focus > span > span > span.original-price
    ${Content}=            get text        css=#product_form_625398710306 > div.product-variants-holder > div > div > ul > li.option.selected.focus > span > span > span.original-price
    Run keyword if          '${Content}'!='${PUFFYPILLOWSTANDARDORIGINAL}'      Fail        Wrong Puffy Pillow Standard Size original price. Expected Result: ${PUFFYPILLOWSTANDARDORIGINAL} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_625398710306 > div.product-variants-holder > div > div > ul > li:nth-child(2) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PUFFYPILLOWKINGORIGINAL}'      Fail        Wrong Puffy Comforter Full/Queen Size original price. Expected Result: ${PUFFYPILLOWKINGORIGINAL} Actual Result: ${Content}

Check Puffy Body Pillow original prices

    Wait Until Element Is Visible          css=#shopify-section-product-puffy-template > div.container.main.content.product-name--puffy-body-pillow > div > div > div > div > div.seven.columns.medium-down--one-whole.alpha > div > div.product-head.product-head--smaller > div > div.product-head__content > div.product-price > span
    ${Content}=            get text        css=#shopify-section-product-puffy-template > div.container.main.content.product-name--puffy-body-pillow > div > div > div > div > div.seven.columns.medium-down--one-whole.alpha > div > div.product-head.product-head--smaller > div > div.product-head__content > div.product-price > span
    Run keyword if          '${Content}'!='${PUFFYBODYPILLOWORIGINAL}'      Fail        Wrong Puffy Pillow Standard Size original price. Expected Result: ${PUFFYBODYPILLOWORIGINAL} Actual Result: ${Content}

Check Puffy Body Pillow sizes 15OFF prices

    Wait Until Element Is Visible          css=#shopify-section-product-puffy-template > div.container.main.content.product-name--puffy-body-pillow > div > div > div > div > div.seven.columns.medium-down--one-whole.alpha > div > div.product-head > div.product-head__content > div.product-price > div > span > span
    ${Content}=            get text        css=#shopify-section-product-puffy-template > div.container.main.content.product-name--puffy-body-pillow > div > div > div > div > div.seven.columns.medium-down--one-whole.alpha > div > div.product-head > div.product-head__content > div.product-price > div > span > span
    Run keyword if          '${Content}'!='${PUFFYBODYPILLOW15OFF}'      Fail        Wrong Puffy Pillow Standard Size 15% Off price. Expected Result: ${PUFFYBODYPILLOWORIGINAL} Actual Result: ${Content}

Check Puffy Mattress Pad original prices

    Wait Until Element Is Visible          css=#product_form_4830838194210 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > span > span.original-price
    ${Content}=            get text        css=#product_form_4830838194210 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PUFFYMATTRESSPADTWINORIGINAL}'      Fail        Wrong Puffy Mattress Pad Twin Size original price. Expected Result: ${PUFFYMATTRESSPADTWINORIGINAL} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4830838194210 > div.product-variants-holder > div > div > ul > li:nth-child(2) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PUFFYMATTRESSPADTWINXLORIGINAL}'      Fail        Wrong Puffy Mattress Pad Twin XL Size original price. Expected Result: ${PUFFYMATTRESSPADTWINXLORIGINAL} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4830838194210 > div.product-variants-holder > div > div > ul > li:nth-child(3) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PUFFYMATTRESSPADFULLORIGINAL}'      Fail        Wrong Puffy Mattress Pad Full Size original price. Expected Result: ${PUFFYMATTRESSPADFULLORIGINAL} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4830838194210 > div.product-variants-holder > div > div > ul > li.option.selected.focus > span > span > span.original-price
    Run keyword if          '${Content}'!='${PUFFYMATTRESSPADQUEENORIGINAL}'      Fail        Wrong Puffy Mattress Pad Queen Size original price. Expected Result: ${PUFFYMATTRESSPADQUEENORIGINAL} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4830838194210 > div.product-variants-holder > div > div > ul > li:nth-child(5) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PUFFYMATTRESSPADKINGORIGINAL}'      Fail        Wrong Puffy Mattress Pad King Size original price. Expected Result: ${PUFFYMATTRESSPADKINGORIGINAL} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4830838194210 > div.product-variants-holder > div > div > ul > li:nth-child(6) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PUFFYMATTRESSPADCALKINGORIGINAL}'      Fail        Wrong Puffy Mattress Pad Cal King Size original price. Expected Result: ${PUFFYMATTRESSPADKINGORIGINAL} Actual Result: ${Content}

Check Puffy Mattress Pad sizes 15OFF prices

    Wait Until Element Is Visible          css=#product_form_4830838194210 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > span > span.original-price
    ${Content}=            get text        css=#product_form_4830838194210 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PUFFYPADTWIN15OFF}'      Fail        Wrong Puffy Mattress Pad Twin Size 15% Off price. Expected Result: ${PUFFYPADTWIN15OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4830838194210 > div.product-variants-holder > div > div > ul > li:nth-child(2) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PUFFYPADTWINXL15OFF}'      Fail        Wrong Puffy Mattress Pad Twin XL Size 15% Off price. Expected Result: ${PUFFYPADTWINXL15OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4830838194210 > div.product-variants-holder > div > div > ul > li:nth-child(3) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PUFFYPADFULL15OFF}'      Fail        Wrong Puffy Mattress Pad Full Size 15% Off price. Expected Result: ${PUFFYPADFULL15OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4830838194210 > div.product-variants-holder > div > div > ul > li:nth-child(4) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PUFFYPADQUEEN15OFF}'      FAIL        Wrong Puffy Mattress Pad Queen Size 15% Off price. Expected Result: ${PUFFYPADQUEEN15OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4830838194210 > div.product-variants-holder > div > div > ul > li:nth-child(5) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PUFFYPADKING15OFF}'      Fail        Wrong Puffy Mattress Pad King Size 15% Off price. Expected Result: ${PUFFYPADKING15OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4830838194210 > div.product-variants-holder > div > div > ul > li:nth-child(6) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PUFFYPADCALKING15OFF}'      Fail        Wrong Puffy Mattress Pad Cal King Size 15% Off price. Expected Result: ${PUFFYPADCALKING15OFF} Actual Result: ${Content}

Check Puffy Mattress Protector original prices

    Wait Until Element Is Visible          css=#product_form_1508181475362 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > span > span.original-price
    ${Content}=            get text        css=#product_form_1508181475362 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PUFFYMATTRESSPROTECTORTWINORIGINAL}'      Fail        Wrong Puffy Mattress Protector Twin Size original price. Expected Result: ${PUFFYMATTRESSPROTECTORTWINORIGINAL} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_1508181475362 > div.product-variants-holder > div > div > ul > li:nth-child(2) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PUFFYMATTRESSPROTECTORTWINXLORIGINAL}'      Fail        Wrong Puffy Mattress Protector Twin XL Size original price. Expected Result: ${PUFFYMATTRESSPROTECTORTWINXLORIGINAL} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_1508181475362 > div.product-variants-holder > div > div > ul > li:nth-child(3) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PUFFYMATTRESSPROTECTORFULLORIGINAL}'      Fail        Wrong Puffy Mattress Protector Full Size original price. Expected Result: ${PUFFYMATTRESSPROTECTORFULLORIGINAL} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_1508181475362 > div.product-variants-holder > div > div > ul > li.option.selected.focus > span > span > span.original-price
    Run keyword if          '${Content}'!='${PUFFYMATTRESSPROTECTORQUEENORIGINAL}'      Fail        Wrong Puffy Mattress Protector Queen Size original price. Expected Result: ${PUFFYMATTRESSPROTECTORQUEENORIGINAL} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_1508181475362 > div.product-variants-holder > div > div > ul > li:nth-child(5) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PUFFYMATTRESSPROTECTORKINGORIGINAL}'      Fail        Wrong Puffy Mattress Protector King Size original price. Expected Result: ${PUFFYMATTRESSPROTECTORKINGORIGINAL} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_1508181475362 > div.product-variants-holder > div > div > ul > li:nth-child(6) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PUFFYMATTRESSPROTECTORCALKINGORIGINAL}'      Fail        Wrong Puffy Mattress Protector Cal King Size original price. Expected Result: ${PUFFYMATTRESSPROTECTORCALKINGORIGINAL} Actual Result: ${Content}

Check Puffy Mattress Protector sizes 15OFF prices

    Wait Until Element Is Visible          css=#product_form_1508181475362 > div.product-variants-holder > div > div > ul > li:nth-child(4) > span > span > span.original-price
    ${Content}=            get text        css=#product_form_1508181475362 > div.product-variants-holder > div > div > ul > li:nth-child(4) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PUFFYPROTECTORQUEEN15OFF}'      Fail        Wrong Puffy Mattress Protector Queen Size original price. Expected Result: ${PUFFYPROTECTORQUEEN15OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_1508181475362 > div.product-variants-holder > div > div > ul > li:nth-child(5) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PUFFYPROTECTORKING15OFF}'      Fail        Wrong Puffy Mattress Protector King Size original price. Expected Result: ${PUFFYPROTECTORKING15OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_1508181475362 > div.product-variants-holder > div > div > ul > li:nth-child(6) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PUFFYPROTECTORCALKING15OFF}'      Fail        Wrong Puffy Mattress Protector Cal King Size original price. Expected Result: ${PUFFYPROTECTORCALKING15OFF} Actual Result: ${Content}


Check Puffy Topper original prices

    Wait Until Element Is Visible          css=#product_form_1837366476834 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > span > span.original-price
    ${Content}=            get text        css=#product_form_1837366476834 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PUFFYTOPPERTWINORIGINAL}'      Fail        Wrong Puffy Topper Twin Size original price. Expected Result: ${PUFFYTOPPERTWINORIGINAL} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_1837366476834 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(2) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PUFFYTOPPERTWINXLORIGINAL}'      Fail        Wrong Puffy Topper Twin XL Size original price. Expected Result: ${PUFFYTOPPERTWINXLORIGINAL} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_1837366476834 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(3) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PUFFYTOPPERFULLORIGINAL}'      Fail        Wrong Puffy Topper Full Size original price. Expected Result: ${PUFFYTOPPERFULLORIGINAL} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_1837366476834 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(4) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PUFFYTOPPERQUEENORIGINAL}'      Fail        Wrong Puffy Topper Queen Size original price. Expected Result: ${PUFFYTOPPERQUEENORIGINAL} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_1837366476834 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(5) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PUFFYTOPPERKINGORIGINAL}'      Fail        Wrong Puffy Topper King Size original price. Expected Result: ${PUFFYTOPPERKINGORIGINAL} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_1837366476834 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(6) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PUFFYTOPPERCALKINGORIGINAL}'      Fail        Wrong Puffy Topper Cal King Size original price. Expected Result: ${PUFFYTOPPERCALKINGORIGINAL} Actual Result: ${Content}

Check Puffy Topper 15OFF prices

    Wait Until Element Is Visible          css=#product_form_1837366476834 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > span > span.original-price
    ${Content}=            get text        css=#product_form_1837366476834 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PUFFYTOPPERTWIN15OFF}'      Fail        Wrong Puffy Topper Twin Size 15% Off price. Expected Result: ${PUFFYTOPPERTWIN15OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_1837366476834 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(2) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PUFFYTOPPERTWINXL15OFF}'      Fail        Wrong Puffy Topper Twin XL Size 15% Off price. Expected Result: ${PUFFYTOPPERTWINXL15OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_1837366476834 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(3) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PUFFYTOPPERFULL15OFF}'      Fail        Wrong Puffy Topper Full Size 15% Off price. Expected Result: ${PUFFYTOPPERFULL15OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_1837366476834 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(4) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PUFFYTOPPERQUEEN15OFF}'      Fail        Wrong Puffy Topper Queen Size 15% Off price. Expected Result: ${PUFFYTOPPERQUEEN15OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_1837366476834 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(5) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PUFFYTOPPERKING15OFF}'      Fail        Wrong Puffy Topper King Size 15% Off price. Expected Result: ${PUFFYTOPPERKING15OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_1837366476834 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(6) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PUFFYTOPPERCALKING15OFF}'      Fail        Wrong Puffy Topper Cal King Size 15% Off price. Expected Result: ${PUFFYTOPPERCALKING15OFF} Actual Result: ${Content}

Check Puffy Blanket original prices

    Wait Until Element Is Visible          css=#product_form_4412718972962 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > span > span.original-price
    ${Content}=            get text        css=#product_form_4412718972962 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PUFFYBLANKETSMALLORIGINAL}'      Fail        Wrong Puffy Blanket Small Size original price. Expected Result: ${PUFFYBLANKETSMALLORIGINAL} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4412718972962 > div.product-variants-holder > div > div > ul > li.option.selected.focus > span > span > span.original-price
    Run keyword if          '${Content}'!='${PUFFYBLANKETMEDIUMORIGINAL}'      Fail        Wrong Puffy Blanket Medium Size original price. Expected Result: ${PUFFYBLANKETMEDIUMORIGINAL} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4412718972962 > div.product-variants-holder > div > div > ul > li:nth-child(3) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PUFFYBLANKETLARGEORIGINAL}'      Fail        Wrong Puffy Blanket Large Size original price. Expected Result: ${PUFFYBLANKETLARGEORIGINAL} Actual Result: ${Content}

Check Puffy Weighted Blanket original prices

    Wait Until Element Is Visible          css=#product_form_3773124771874 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > span > span.original-price
    ${Content}=            get text        css=#product_form_3773124771874 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PUFFYWEIGHTEDBLANKETTWINORIGINAL}'      Fail        Wrong Puffy Weighted Blanket Twin Size original price. Expected Result: ${PUFFYWEIGHTEDBLANKETTWINORIGINAL} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3773124771874 > div.product-variants-holder > div > div > ul > li:nth-child(2) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PUFFYWEIGHTEDBLANKETQUEENORIGINAL}'      Fail        Wrong Puffy Weighted Blanket Queen Size original price. Expected Result: ${PUFFYWEIGHTEDBLANKETQUEENORIGINAL} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3773124771874 > div.product-variants-holder > div > div > ul > li:nth-child(3) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PUFFYWEIGHTEDBLANKETKINGORIGINAL}'      Fail        Wrong Puffy Weighted Blanket Queen Size original price. Expected Result: ${PUFFYWEIGHTEDBLANKETKINGORIGINAL} Actual Result: ${Content}

Check Puffy Weighted Blanket 15OFF prices

    Wait Until Element Is Visible          css=#product_form_3773124771874 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > span > span.original-price
    ${Content}=            get text        css=#product_form_3773124771874 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PUFFYWEIGHTEDBLANKETTWIN15OFF}'      Fail        Wrong Puffy Weighted Blanket Twin Size 15% Off price. Expected Result: ${PUFFYWEIGHTEDBLANKETTWIN15OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3773124771874 > div.product-variants-holder > div > div > ul > li.option.selected.focus > span > span > span.original-price
    Run keyword if          '${Content}'!='${PUFFYWEIGHTEDBLANKETQUEEN15OFF}'      Fail        Wrong Puffy Weighted Blanket Queen Size 15% Off price. Expected Result: ${PUFFYWEIGHTEDBLANKETQUEEN15OFF} Actual Result: ${Content}


Check Puffy Sheets original prices

    Wait Until Element Is Visible          css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > span > span.original-price
    ${Content}=            get text        css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PUFFYSHEETSTWINORIGINAL}'      Fail        Wrong Puffy Sheets Twin Size original price. Expected Result: ${PUFFYSHEETSTWINORIGINAL} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(2) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PUFFYSHEETSTWINXLORIGINAL}'      Fail        Wrong Puffy Sheets Twin XL Size original price. Expected Result: ${PUFFYSHEETSTWINXLORIGINAL} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(3) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PUFFYSHEETSFULLORIGINAL}'      Fail        Wrong Puffy Sheets Full Size original price. Expected Result: ${PUFFYSHEETSFULLORIGINAL} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(4) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PUFFYSHEETSQUEENORIGINAL}'      Fail        Wrong Puffy Sheets Queen Size original price. Expected Result: ${PUFFYSHEETSQUEENORIGINAL} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(5) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PUFFYSHEETSKINGORIGINAL}'      Fail        Wrong Puffy Sheets King Size original price. Expected Result: ${PUFFYSHEETSKINGORIGINAL} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(6) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PUFFYSHEETSCALKINGORIGINAL}'      Fail        Wrong Puffy Sheets Cal King Size original price. Expected Result: ${PUFFYSHEETSCALKINGORIGINAL} Actual Result: ${Content}

Check Puffy Sheets 15OFF prices

    Wait Until Element Is Visible          css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(2) > span > span > span.original-price
    ${Content}=            get text        css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(2) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PUFFYSHEETSTWINXL15OFF}'      Fail        Wrong Puffy Sheets Twin XL Size 15% Off price. Expected Result: ${PUFFYSHEETSTWINXL15OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(3) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PUFFYSHEETSFULL15OFF}'      Fail        Wrong Puffy Sheets Full Size 15% Off price. Expected Result: ${PUFFYSHEETSFULL15OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(4) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PUFFYSHEETSQUEEN15OFF}'      Fail        Wrong Puffy Sheets Queen Size 15% Off price. Expected Result: ${PUFFYSHEETSQUEEN15OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(5) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PUFFYSHEETSKING15OFF}'      Fail        Wrong Puffy Sheets King Size 15% Off price. Expected Result: ${PUFFYSHEETSKING15OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(6) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PUFFYSHEETSCALKING15OFF}'      Fail        Wrong Puffy Sheets Cal King Size 15% Off price. Expected Result: ${PUFFYSHEETSCALKING15OFF} Actual Result: ${Content}


Check Puffy Dog Bed original prices

    Wait Until Element Is Visible          css=#product_form_4365356662818 > div.product-variants-holder > div > div > ul > li.option.selected.focus > span > span > span.original-price
    ${Content}=            get text        css=#product_form_4365356662818 > div.product-variants-holder > div > div > ul > li.option.selected.focus > span > span > span.original-price
    Run keyword if          '${Content}'!='${PUFFYDOGBEDSMALLORIGINAL}'      Fail        Wrong Puffy Dog Bed Small Size original price. Expected Result: ${PUFFYDOGBEDSMALLORIGINAL} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4365356662818 > div.product-variants-holder > div > div > ul > li:nth-child(2) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PUFFYDOGBEDMEDIUMORIGINAL}'      Fail        Wrong Puffy Dog Bed Medium Size original price. Expected Result: ${PUFFYDOGBEDMEDIUMORIGINAL} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4365356662818 > div.product-variants-holder > div > div > ul > li:nth-child(3) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PUFFYDOGBEDLARGEORIGINAL}'      Fail        Wrong Puffy Dog Bed Large Size original price. Expected Result: ${PUFFYDOGBEDLARGEORIGINAL} Actual Result: ${Content}

Check Puffy Dog Bed 15OFF prices

    Wait Until Element Is Visible          css=#product_form_4365356662818 > div.product-variants-holder > div > div > ul > li.option.selected.focus > span > span > span.original-price
    ${Content}=            get text        css=#product_form_4365356662818 > div.product-variants-holder > div > div > ul > li.option.selected.focus > span > span > span.original-price
    Run keyword if          '${Content}'!='${PUFFYDOGBEDSMALL15OFF}'      Fail        Wrong Puffy Dog Bed Small Size 15% Off price. Expected Result: ${PUFFYDOGBEDSMALL15OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4365356662818 > div.product-variants-holder > div > div > ul > li:nth-child(2) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PUFFYDOGBEDMEDIUM15OFF}'      Fail        Wrong Puffy Dog Bed Medium Size 15% Off price. Expected Result: ${PUFFYDOGBEDMEDIUM15OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4365356662818 > div.product-variants-holder > div > div > ul > li:nth-child(3) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PUFFYDOGBEDLARGE15OFF}'      Fail        Wrong Puffy Dog Bed Large Size 15% Off price. Expected Result: ${PUFFYDOGBEDLARGE15OFF} Actual Result: ${Content}



Check Puffy Rug original prices

    Wait Until Element Is Visible          css=#product_form_4125949657122 > div.product-variants-holder > div.product-variant.selector-wrapper.jsRealOptions.product-size > div > ul > li.option.selected.focus > span > span > span.original-price
    ${Content}=            get text        css=#product_form_4125949657122 > div.product-variants-holder > div.product-variant.selector-wrapper.jsRealOptions.product-size > div > ul > li.option.selected.focus > span > span > span.original-price
    Run keyword if          '${Content}'!='${PUFFYRUGMEDIUMORIGINAL}'      Fail        Wrong Puffy Rug Medium Size original price. Expected Result: ${PUFFYRUGMEDIUMORIGINAL} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4125949657122 > div.product-variants-holder > div.product-variant.selector-wrapper.jsRealOptions.product-size > div > ul > li:nth-child(2) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PUFFYRUGLARGEORIGINAL}'      Fail        Wrong Puffy Rug Large Size original price. Expected Result: ${PUFFYRUGLARGEORIGINAL} Actual Result: ${Content}

Check Puffy Rug 15OFF prices

    Wait Until Element Is Visible          css=#product_form_4125949657122 > div.product-variants-holder > div.product-variant.selector-wrapper.jsRealOptions.product-size > div > ul > li.option.selected.focus > span > span > span.original-price
    ${Content}=            get text        css=#product_form_4125949657122 > div.product-variants-holder > div.product-variant.selector-wrapper.jsRealOptions.product-size > div > ul > li.option.selected.focus > span > span > span.original-price
    Run keyword if          '${Content}'!='${PUFFYRUGMEDIUM15OFF}'      Fail        Wrong Puffy Rug Medium Size 15% Off price. Expected Result: ${PUFFYRUGMEDIUM15OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4125949657122 > div.product-variants-holder > div.product-variant.selector-wrapper.jsRealOptions.product-size > div > ul > li:nth-child(2) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PUFFYRUGLARGE15OFF}'      Fail        Wrong Puffy Rug Large Size 15% Off price. Expected Result: ${PUFFYRUGLARGE15OFF} Actual Result: ${Content}


#=============================PRODUCT 350 OFF PRICE CHECKS===================================================#

Check Puffy Mattress sizes 350OFF prices

    Wait Until Element Is Visible          css=#product_form_345108381730 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > span > span.original-price.jsDiscountedPrice

    ${Content}=            get text        css=#product_form_345108381730 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PUFFYMATTRESSTWIN350OFF}'      Fail        Wrong Puffy Mattress Twin Size 350 OFF price. Expected Result: ${PUFFYMATTRESSTWIN350OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_345108381730 > div.product-variants-holder > div > div > ul > li:nth-child(2) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PUFFYMATTRESSTWINXL350OFF}'      Fail        Wrong Puffy Mattress TwinXL Size 350 OFF price. Expected Result: ${PUFFYMATTRESSTWINXL350OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_345108381730 > div.product-variants-holder > div > div > ul > li:nth-child(3) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PUFFYMATTRESSFULL350OFF}'      Fail        Wrong Puffy Mattress Full Size 350 OFF price. Expected Result: ${PUFFYMATTRESSFULL350OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_345108381730 > div.product-variants-holder > div > div > ul > li.option.selected.focus > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PUFFYMATTRESSQUEEN350OFF}'      Fail        Wrong Puffy Mattress Queen Size 350 OFF price. Expected Result: ${PUFFYMATTRESSQUEEN350OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_345108381730 > div.product-variants-holder > div > div > ul > li:nth-child(5) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PUFFYMATTRESSKING350OFF}'      Fail        Wrong Puffy Mattress King Size 350 OFF price. Expected Result: ${PUFFYMATTRESSKING350OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_345108381730 > div.product-variants-holder > div > div > ul > li:nth-child(6) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PUFFYMATTRESSCALKING350OFF}'      Fail        Wrong Puffy Mattress CalKing Size 350 OFF price. Expected Result: ${PUFFYMATTRESSCALKING350OFF} Actual Result: ${Content}

Check Puffy Lux Mattress sizes 350OFF prices

    Wait Until Element Is Visible          css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > span > span.original-price.jsDiscountedPrice

    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PUFFYLUXMATTRESSTWIN350OFF}'      Fail        Wrong Puffy Lux Twin Size 350 OFF price. Expected Result: ${PUFFYLUXMATTRESSTWIN350OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(2) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PUFFYLUXMATTRESSTWINXL350OFF}'      Fail        Wrong Puffy Lux TwinXL Size 350 OFF price. Expected Result: ${PUFFYLUXMATTRESSTWINXL350OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(3) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PUFFYLUXMATTRESSFULL350OFF}'      Fail        Wrong Puffy Lux Full Size 350 OFF price. Expected Result: ${PUFFYLUXMATTRESSFULL350OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li.option.selected.focus > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PUFFYLUXMATTRESSQUEEN350OFF}'      Fail        Wrong Puffy Lux Queen Size 350 OFF price. Expected Result: ${PUFFYLUXMATTRESSQUEEN350OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(5) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PUFFYLUXMATTRESSKING350OFF}'      Fail        Wrong Puffy Lux King Size 350 OFF price. Expected Result: ${PUFFYLUXMATTRESSKING350OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(6) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PUFFYLUXMATTRESSCALKING350OFF}'      Fail        Wrong Puffy Lux CalKing Size 350 OFF price. Expected Result: ${PUFFYLUXMATTRESSCALKING350OFF} Actual Result: ${Content}

Check Puffy Lux Hybrid sizes 350OFF prices

    Wait Until Element Is Visible     css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > span > span.hybrid-price.jsDiscountedPrice

    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > span > span.hybrid-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PUFFYLUXMATTRESSTWIN350OFF}'      Fail        Wrong Puffy Lux Hybrid Twin Size 350 OFF price. Expected Result: ${PUFFYLUXMATTRESSTWIN350OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(2) > span > span > span.hybrid-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PUFFYLUXMATTRESSTWINXL350OFF}'      Fail        Wrong Puffy Lux Hybrid TwinXL Size 350 OFF price. Expected Result: ${PUFFYLUXMATTRESSTWINXL350OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(3) > span > span > span.hybrid-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PUFFYLUXMATTRESSFULL350OFF}'      Fail        Wrong Puffy Lux Hybrid Full Size 350 OFF price. Expected Result: ${PUFFYLUXMATTRESSFULL350OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(4) > span > span > span.hybrid-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PUFFYLUXMATTRESSQUEEN350OFF}'      Fail        Wrong Puffy Lux Hybrid Queen Size 350 OFF price. Expected Result: ${PUFFYLUXMATTRESSQUEEN350OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(5) > span > span > span.hybrid-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PUFFYLUXMATTRESSKING350OFF}'      Fail        Wrong Puffy Lux Hybrid King Size 350 OFF price. Expected Result: ${PUFFYLUXMATTRESSKING350OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(6) > span > span > span.hybrid-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PUFFYLUXMATTRESSCALKING350OFF}'      Fail        Wrong Puffy Lux Hybrid CalKing Size 350 OFF price. Expected Result: ${PUFFYLUXMATTRESSCALKING350OFF} Actual Result: ${Content}


Check Puffy Royal sizes 350OFF prices

    Wait Until Element Is Visible          css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > span > span.original-price.jsDiscountedPrice

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PUFFYROYALMATTRESSTWIN350OFF}'      Fail        Wrong Puffy Royal Twin Size 350 OFF price. Expected Result: ${PUFFYROYALMATTRESSTWIN350OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(2) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PUFFYROYALMATTRESSTWINXL350OFF}'      Fail        Wrong Puffy Royal TwinXL Size 350 OFF price. Expected Result: ${PUFFYROYALMATTRESSTWINXL350OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(3) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PUFFYROYALMATTRESSFULL350OFF}'      Fail        Wrong Puffy Royal Full Size 350 OFF price. Expected Result: ${PUFFYROYALMATTRESSFULL350OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li.option.selected.focus > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PUFFYROYALMATTRESSQUEEN350OFF}'      Fail        Wrong Puffy Royal Queen Size 350 OFF price. Expected Result: ${PUFFYROYALMATTRESSQUEEN350OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(5) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PUFFYROYALMATTRESSKING350OFF}'      Fail        Wrong Puffy Royal King Size 350 OFF price. Expected Result: ${PUFFYROYALMATTRESSKING350OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(6) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PUFFYROYALMATTRESSCALKING350OFF}'      Fail        Wrong Puffy Royal CalKing Size 350 OFF price. Expected Result: ${PUFFYROYALMATTRESSCALKING350OFF} Actual Result: ${Content}


Check Puffy Royal Hybrid sizes 350OFF prices

    Wait Until Element Is Visible     css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > span > span.hybrid-price.jsDiscountedPrice

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > span > span.hybrid-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PUFFYROYALMATTRESSTWIN350OFF}'      Fail        Wrong Puffy Royal Hybrid Twin Size 350 OFF price. Expected Result: ${PUFFYROYALMATTRESSTWIN350OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(2) > span > span > span.hybrid-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PUFFYROYALMATTRESSTWINXL350OFF}'      Fail        Wrong Puffy Royal Hybrid TwinXL Size 350 OFF price. Expected Result: ${PUFFYROYALMATTRESSTWINXL350OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(3) > span > span > span.hybrid-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PUFFYROYALMATTRESSFULL350OFF}'      Fail        Wrong Puffy Royal Hybrid Full Size 350 OFF price. Expected Result: ${PUFFYROYALMATTRESSFULL350OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(4) > span > span > span.hybrid-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PUFFYROYALMATTRESSQUEEN350OFF}'      Fail        Wrong Puffy Royal Hybrid Queen Size 350 OFF price. Expected Result: ${PUFFYROYALMATTRESSQUEEN350OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(5) > span > span > span.hybrid-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PUFFYROYALMATTRESSKING350OFF}'      Fail        Wrong Puffy Royal Hybrid King Size 350 OFF price. Expected Result: ${PUFFYROYALMATTRESSKING350OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(6) > span > span > span.hybrid-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PUFFYROYALMATTRESSCALKING350OFF}'      Fail        Wrong Puffy Royal Hybrid CalKing Size 350 OFF price. Expected Result: ${PUFFYROYALMATTRESSCALKING350OFF} Actual Result: ${Content}



Check Puffy Adjustable Base 350OFF prices

    Wait Until Element Is Visible     css=#product_form_416170377250 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > span > span.original-price.jsDiscountedPrice

    ${Content}=            get text        css=#product_form_416170377250 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PUFFYADJUSTABLEBASETWINXL350OFF}'      Fail        Wrong Puffy Adjustable Base TwinXL Size 350 OFF price. Expected Result: ${PUFFYADJUSTABLEBASETWINXL350OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_416170377250 > div.product-variants-holder > div > div > ul > li:nth-child(2) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PUFFYADJUSTABLEBASEFULL350OFF}'      Fail        Wrong Puffy Adjustable Base Full Size 350 OFF price. Expected Result: ${PUFFYADJUSTABLEBASEFULL350OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_416170377250 > div.product-variants-holder > div > div > ul > li:nth-child(3) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PUFFYADJUSTABLEBASEQUEEN350OFF}'      Fail        Wrong Puffy Adjustable Base Queen Size 350 OFF price. Expected Result: ${PUFFYADJUSTABLEBASEQUEEN350OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_416170377250 > div.product-variants-holder > div > div > ul > li:nth-child(4) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PUFFYADJUSTABLEBASESPLITKING350OFF}'      Fail        Wrong Puffy Adjustable Base Split King 350 OFF price. Expected Result: ${PUFFYADJUSTABLEBASESPLITKING350OFF} Actual Result: ${Content}
#=============================PRODUCT PDP SIZE ORDERING===================================================#

Check Puffy Mattress sizes list order

    Wait Until Element Is Visible          css=#product_form_345108381730 > div.product-variants-holder > div > div > ul > li:nth-child(1) > div > span.display-name.is--sale--price

    ${Content}=            get text        css=#product_form_345108381730 > div.product-variants-holder > div > div > ul > li:nth-child(1) > div > span.display-name.is--sale--price
    Run keyword if          '${Content}'!='${SIZEPuffyMattressPDPSizeOrder1}'      Fail        First size in Puffy Mattress PDP is Wrong. Expected Result: ${SIZEPuffyMattressPDPSizeOrder1} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_345108381730 > div.product-variants-holder > div > div > ul > li:nth-child(2) > div > span.display-name.is--sale--price
    Run keyword if          '${Content}'!='${SIZEPuffyMattressPDPSizeOrder2}'      Fail        Second size in Puffy Mattress PDP is Wrong. Expected Result: ${SIZEPuffyMattressPDPSizeOrder2} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_345108381730 > div.product-variants-holder > div > div > ul > li:nth-child(3) > div > span.display-name.is--sale--price
    Run keyword if          '${Content}'!='${SIZEPuffyMattressPDPSizeOrder3}'      Fail        Third size in Puffy Mattress PDP is Wrong. Expected Result: ${SIZEPuffyMattressPDPSizeOrder3} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_345108381730 > div.product-variants-holder > div > div > ul > li.option.selected.focus > div > span.display-name.is--sale--price
    Run keyword if          '${Content}'!='${SIZEPuffyMattressPDPSizeOrder4}'      Fail        Fourth size in Puffy Mattress PDP is Wrong. Expected Result: ${SIZEPuffyMattressPDPSizeOrder4} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_345108381730 > div.product-variants-holder > div > div > ul > li:nth-child(5) > div > span.display-name.is--sale--price
    Run keyword if          '${Content}'!='${SIZEPuffyMattressPDPSizeOrder5}'      Fail        Fifth size in Puffy Mattress PDP is Wrong. Expected Result: ${SIZEPuffyMattressPDPSizeOrder5} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_345108381730 > div.product-variants-holder > div > div > ul > li:nth-child(6) > div > span.display-name.is--sale--price
    Run keyword if          '${Content}'!='${SIZEPuffyMattressPDPSizeOrder6}'      Fail        Sixth size in Puffy Mattress PDP is Wrong. Expected Result: ${SIZEPuffyMattressPDPSizeOrder6} Actual Result: ${Content}

Check Puffy Lux Mattress sizes list order

    Wait Until Element Is Visible          css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > div > span.display-name.is--sale--price

    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > div > span.display-name.is--sale--price
    Run keyword if          '${Content}'!='${SIZEPuffyLuxMattressPDPSizeOrder1}'      Fail        First size in Puffy Lux Mattress PDP is Wrong. Expected Result: ${SIZEPuffyLuxMattressPDPSizeOrder1} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(2) > div > span.display-name.is--sale--price
    Run keyword if          '${Content}'!='${SIZEPuffyLuxMattressPDPSizeOrder2}'      Fail        Second size in Puffy Lux Mattress PDP is Wrong. Expected Result: ${SIZEPuffyLuxMattressPDPSizeOrder2} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(3) > div > span.display-name.is--sale--price
    Run keyword if          '${Content}'!='${SIZEPuffyLuxMattressPDPSizeOrder3}'      Fail        Third size in Puffy Lux Mattress PDP is Wrong. Expected Result: ${SIZEPuffyLuxMattressPDPSizeOrder3} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(4) > div > span.display-name.is--sale--price
    Run keyword if          '${Content}'!='${SIZEPuffyLuxMattressPDPSizeOrder4}'      Fail        Fourth size in Puffy Lux Mattress PDP is Wrong. Expected Result: ${SIZEPuffyLuxMattressPDPSizeOrder4} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(5) > div > span.display-name.is--sale--price
    Run keyword if          '${Content}'!='${SIZEPuffyLuxMattressPDPSizeOrder5}'      Fail        Fifth size in Puffy Lux Mattress PDP is Wrong. Expected Result: ${SIZEPuffyLuxMattressPDPSizeOrder5} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(6) > div > span.display-name.is--sale--price
    Run keyword if          '${Content}'!='${SIZEPuffyLuxMattressPDPSizeOrder6}'      Fail        Sixth size in Puffy Lux Mattress PDP is Wrong. Expected Result: ${SIZEPuffyLuxMattressPDPSizeOrder6} Actual Result: ${Content}


Check Puffy Royal Mattress sizes list order

    Wait Until Element Is Visible          css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > div > span.display-name.is--sale--price

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > div > span.display-name.is--sale--price
    Run keyword if          '${Content}'!='${SIZEPuffyRoyalMattressPDPSizeOrder1}'      Fail        First size in Puffy Royal Mattress PDP is Wrong. Expected Result: ${SIZEPuffyRoyalMattressPDPSizeOrder1} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(2) > div > span.display-name.is--sale--price
    Run keyword if          '${Content}'!='${SIZEPuffyRoyalMattressPDPSizeOrder2}'      Fail        Second size in Puffy Royal Mattress PDP is Wrong. Expected Result: ${SIZEPuffyRoyalMattressPDPSizeOrder2} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(3) > div > span.display-name.is--sale--price
    Run keyword if          '${Content}'!='${SIZEPuffyRoyalMattressPDPSizeOrder3}'      Fail        Third size in Puffy Royal Mattress PDP is Wrong. Expected Result: ${SIZEPuffyRoyalMattressPDPSizeOrder3} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(4) > div > span.display-name.is--sale--price
    Run keyword if          '${Content}'!='${SIZEPuffyRoyalMattressPDPSizeOrder4}'      Fail        Fourth size in Puffy Royal Mattress PDP is Wrong. Expected Result: ${SIZEPuffyRoyalMattressPDPSizeOrder4} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(5) > div > span.display-name.is--sale--price
    Run keyword if          '${Content}'!='${SIZEPuffyRoyalMattressPDPSizeOrder5}'      Fail        Fifth size in Puffy Royal Mattress PDP is Wrong. Expected Result: ${SIZEPuffyRoyalMattressPDPSizeOrder5} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(6) > div > span.display-name.is--sale--price
    Run keyword if          '${Content}'!='${SIZEPuffyRoyalMattressPDPSizeOrder6}'      Fail        Sixth size in Puffy Royal Mattress PDP is Wrong. Expected Result: ${SIZEPuffyRoyalMattressPDPSizeOrder6} Actual Result: ${Content}



Check Puffy Foundation sizes list order

    Wait Until Element Is Visible          css=#product_form_150983180312 > div.product-variants-holder > div > div > ul > li:nth-child(1) > div > span.display-name.is--not--sale

    ${Content}=            get text        css=#product_form_150983180312 > div.product-variants-holder > div > div > ul > li:nth-child(1) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${SIZEPUFFYFOUNDATIONPDPSIZEORDER1}'      Fail        First size in Puffy Foundation PDP is Wrong. Expected Result: ${SIZEPuffyFoundationPDPSizeOrder1} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_150983180312 > div.product-variants-holder > div > div > ul > li:nth-child(2) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${SIZEPuffyFoundationPDPSizeOrder2}'      Fail        Second size in Puffy Foundation PDP is Wrong. Expected Result: ${SIZEPuffyFoundationPDPSizeOrder2} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_150983180312 > div.product-variants-holder > div > div > ul > li:nth-child(3) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${SIZEPuffyFoundationPDPSizeOrder3}'      Fail        Third size in Puffy Foundation PDP is Wrong. Expected Result: ${SIZEPuffyFoundationPDPSizeOrder3} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_150983180312 > div.product-variants-holder > div > div > ul > li:nth-child(4) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${SIZEPuffyFoundationPDPSizeOrder4}'      Fail        Fourth size in Puffy Foundation PDP is Wrong. Expected Result: ${SIZEPuffyFoundationPDPSizeOrder4} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_150983180312 > div.product-variants-holder > div > div > ul > li:nth-child(5) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${SIZEPuffyFoundationPDPSizeOrder5}'      Fail        Fifth size in Puffy Foundation PDP is Wrong. Expected Result: ${SIZEPuffyFoundationPDPSizeOrder5} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_150983180312 > div.product-variants-holder > div > div > ul > li:nth-child(6) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${SIZEPuffyFoundationPDPSizeOrder6}'      Fail        Sixth size in Puffy Foundation PDP is Wrong. Expected Result: ${SIZEPuffyFoundationPDPSizeOrder6} Actual Result: ${Content}



Check Puffy ADjustable Base sizes list order

    Wait Until Element Is Visible          css=#product_form_416170377250 > div.product-variants-holder > div > div > ul > li:nth-child(1) > div > span.display-name.is--sale--price

    ${Content}=            get text        css=#product_form_416170377250 > div.product-variants-holder > div > div > ul > li:nth-child(1) > div > span.display-name.is--sale--price
    Run keyword if          '${Content}'!='${SIZEPuffyAdjustableBasePDPSizeOrder1}'      Fail        First size in Puffy Adjustable Base PDP is Wrong. Expected Result: ${SIZEPuffyAdjustableBasePDPSizeOrder1} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_416170377250 > div.product-variants-holder > div > div > ul > li:nth-child(2) > div > span.display-name.is--sale--price
    Run keyword if          '${Content}'!='${SIZEPuffyAdjustableBasePDPSizeOrder2}'      Fail        Second size in Puffy Adjustable Base PDP is Wrong. Expected Result: ${SIZEPuffyAdjustableBasePDPSizeOrder2} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_416170377250 > div.product-variants-holder > div > div > ul > li:nth-child(3) > div > span.display-name.is--sale--price
    Run keyword if          '${Content}'!='${SIZEPuffyAdjustableBasePDPSizeOrder3}'      Fail        Third size in Puffy Adjustable Base PDP is Wrong. Expected Result: ${SIZEPuffyAdjustableBasePDPSizeOrder3} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_416170377250 > div.product-variants-holder > div > div > ul > li:nth-child(4) > div > span.display-name.is--sale--price
    Run keyword if          '${Content}'!='${SIZEPuffyAdjustableBasePDPSizeOrder4}'      Fail        Fourth size in Puffy Adjustable Base PDP is Wrong. Expected Result: ${SIZEPuffyAdjustableBasePDPSizeOrder4} Actual Result: ${Content}


Check Puffy Bed Frame sizes list order

    Wait Until Element Is Visible          css=#product_form_1528789401634 > div.product-variants-holder > div > div > ul > li:nth-child(1) > div > span.display-name.is--not--sale

    ${Content}=            get text        css=#product_form_1528789401634 > div.product-variants-holder > div > div > ul > li:nth-child(1) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${SIZEPuffyBedFramePDPSizeOrder1}'      Fail        First size in Puffy Bed Frame PDP is Wrong. Expected Result: ${SIZEPuffyBedFramePDPSizeOrder1} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_1528789401634 > div.product-variants-holder > div > div > ul > li:nth-child(2) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${SIZEPuffyBedFramePDPSizeOrder2}'      Fail        Second size in Puffy Bed Frame PDP is Wrong. Expected Result: ${SIZEPuffyBedFramePDPSizeOrder2} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_1528789401634 > div.product-variants-holder > div > div > ul > li:nth-child(3) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${SIZEPuffyBedFramePDPSizeOrder3}'      Fail        Third size in Puffy Bed Frame PDP is Wrong. Expected Result: ${SIZEPuffyBedFramePDPSizeOrder3} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_1528789401634 > div.product-variants-holder > div > div > ul > li:nth-child(4) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${SIZEPuffyBedFramePDPSizeOrder4}'      Fail        Fourth size in Puffy Bed Frame PDP is Wrong. Expected Result: ${SIZEPuffyBedFramePDPSizeOrder4} Actual Result: ${Content}


Check Puffy Comforter sizes list order

    Wait Until Element Is Visible          css=#product_form_1536090603554 > div.product-variants-holder > div > div > ul > li:nth-child(1) > div > span.display-name.is--not--sale

    ${Content}=            get text        css=#product_form_1536090603554 > div.product-variants-holder > div > div > ul > li:nth-child(1) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${SIZEPuffyComforterPDPSizeOrder1}'      Fail        First size in Puffy Comforter PDP is Wrong. Expected Result: ${SIZEPuffyComforterPDPSizeOrder1} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_1536090603554 > div.product-variants-holder > div > div > ul > li.option.selected.focus > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${SIZEPuffyComforterPDPSizeOrder2}'      Fail        Second size in Puffy Comforter PDP is Wrong. Expected Result: ${SIZEPuffyComforterPDPSizeOrder2} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_1536090603554 > div.product-variants-holder > div > div > ul > li:nth-child(3) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${SIZEPuffyComforterPDPSizeOrder3}'      Fail        Third size in Puffy Comforter PDP is Wrong. Expected Result: ${SIZEPuffyComforterPDPSizeOrder3} Actual Result: ${Content}

Check Puffy Pillow sizes list order

    Wait Until Element Is Visible          css=#product_form_625398710306 > div.product-variants-holder > div > div > ul > li.option.selected.focus > div > span.display-name.is--not--sale

    ${Content}=            get text        css=#product_form_625398710306 > div.product-variants-holder > div > div > ul > li.option.selected.focus > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${SIZEPuffyPillowPDPSizeOrder1}'      Fail        First size in Puffy Pillow PDP is Wrong. Expected Result: ${SIZEPuffyPillowPDPSizeOrder1} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_625398710306 > div.product-variants-holder > div > div > ul > li:nth-child(2) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${SIZEPuffyPillowPDPSizeOrder2}'      Fail        Second size in Puffy Pillow PDP is Wrong. Expected Result: ${SIZEPuffyPillowPDPSizeOrder2} Actual Result: ${Content}

Check Puffy Mattress Pad sizes list order

    Wait Until Element Is Visible          css=#product_form_4830838194210 > div.product-variants-holder > div > div > ul > li:nth-child(1) > div > span.display-name.is--not--sale

    ${Content}=            get text        css=#product_form_4830838194210 > div.product-variants-holder > div > div > ul > li:nth-child(1) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${SIZEPuffyMattressPadPDPSizeOrder1}'      Fail        First size in Puffy Pillow PDP is Wrong. Expected Result: ${SIZEPuffyMattressPadPDPSizeOrder1} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4830838194210 > div.product-variants-holder > div > div > ul > li:nth-child(2) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${SIZEPuffyMattressPadPDPSizeOrder2}'      Fail        Second size in Puffy Pillow PDP is Wrong. Expected Result: ${SIZEPuffyMattressPadPDPSizeOrder2} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4830838194210 > div.product-variants-holder > div > div > ul > li:nth-child(3) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${SIZEPuffyMattressPadPDPSizeOrder3}'      Fail        Third size in Puffy Pillow PDP is Wrong. Expected Result: ${SIZEPuffyMattressPadPDPSizeOrder3} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4830838194210 > div.product-variants-holder > div > div > ul > li.option.selected.focus > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${SIZEPuffyMattressPadPDPSizeOrder4}'      Fail        Fourth size in Puffy Pillow PDP is Wrong. Expected Result: ${SIZEPuffyMattressPadPDPSizeOrder4} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4830838194210 > div.product-variants-holder > div > div > ul > li:nth-child(5) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${SIZEPuffyMattressPadPDPSizeOrder5}'      Fail        Fifth size in Puffy Pillow PDP is Wrong. Expected Result: ${SIZEPuffyMattressPadPDPSizeOrder5} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4830838194210 > div.product-variants-holder > div > div > ul > li:nth-child(6) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${SIZEPuffyMattressPadPDPSizeOrder6}'      Fail        Sixth size in Puffy Pillow PDP is Wrong. Expected Result: ${SIZEPuffyMattressPadPDPSizeOrder6} Actual Result: ${Content}

Check Puffy Mattress Protector sizes list order

    Wait Until Element Is Visible          css=#product_form_1508181475362 > div.product-variants-holder > div > div > ul > li:nth-child(1) > div > span.display-name.is--not--sale

    ${Content}=            get text        css=#product_form_1508181475362 > div.product-variants-holder > div > div > ul > li:nth-child(1) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${SIZEPuffyMattressProtectorPDPSizeOrder1}'      Fail        First size in Puffy Mattress Protector PDP is Wrong. Expected Result: ${SIZEPuffyMattressProtectorPDPSizeOrder1} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_1508181475362 > div.product-variants-holder > div > div > ul > li:nth-child(2) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${SIZEPuffyMattressProtectorPDPSizeOrder2}'      Fail        Second size in Puffy Mattress Protector PDP is Wrong. Expected Result: ${SIZEPuffyMattressProtectorPDPSizeOrder2} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_1508181475362 > div.product-variants-holder > div > div > ul > li:nth-child(3) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${SIZEPuffyMattressProtectorPDPSizeOrder3}'      Fail        Third size in Puffy Mattress Protector PDP is Wrong. Expected Result: ${SIZEPuffyMattressProtectorPDPSizeOrder3} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_1508181475362 > div.product-variants-holder > div > div > ul > li.option.selected.focus > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${SIZEPuffyMattressProtectorPDPSizeOrder4}'      Fail        Fourth size in Puffy Mattress Protector PDP is Wrong. Expected Result: ${SIZEPuffyMattressProtectorPDPSizeOrder4} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_1508181475362 > div.product-variants-holder > div > div > ul > li:nth-child(5) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${SIZEPuffyMattressProtectorPDPSizeOrder5}'      Fail        Fifth size in Puffy Mattress Protector PDP is Wrong. Expected Result: ${SIZEPuffyMattressProtectorPDPSizeOrder5} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_1508181475362 > div.product-variants-holder > div > div > ul > li:nth-child(6) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${SIZEPuffyMattressProtectorPDPSizeOrder6}'      Fail        Sixth size in Puffy Mattress Protector PDP is Wrong. Expected Result: ${SIZEPuffyMattressProtectorPDPSizeOrder6} Actual Result: ${Content}




Check Puffy Topper feel options

    Wait Until Element Is Visible          css=#product_form_1837366476834 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-feel > div > ul > li.option.selected.focus > div > span.display-name.is--not--sale

    ${Content}=            get text        css=#product_form_1837366476834 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-feel > div > ul > li.option.selected.focus > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${SIZEPuffyTopperPDPFeelOrder1}'      Fail        First feel option in Puffy Topper PDP is Wrong. Expected Result: ${SIZEPuffyTopperPDPFeelOrder1} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_1837366476834 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-feel > div > ul > li:nth-child(2) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${SIZEPuffyTopperPDPFeelOrder2}'      Fail        Second feel option in Puffy Topper PDP is Wrong. Expected Result: ${SIZEPuffyTopperPDPFeelOrder1} Actual Result: ${Content}. Expected Result: ${PuffyTopperPDPFeelOrder2} Actual Result: ${Content}

Check Puffy Topper sizes list order

    Wait Until Element Is Visible          css=#product_form_1837366476834 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > div > span.display-name.is--not--sale

    ${Content}=            get text        css=#product_form_1837366476834 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${SIZEPuffyTopperPDPSizeOrder1}'      Fail        First size in Puffy Topper PDP is Wrong. Expected Result: ${SIZEPuffyTopperPDPSizeOrder1} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_1837366476834 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(2) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${SIZEPuffyTopperPDPSizeOrder2}'      Fail        Second size in Puffy Topper PDP is Wrong. Expected Result: ${SIZEPuffyTopperPDPSizeOrder2} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_1837366476834 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(3) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${SIZEPuffyTopperPDPSizeOrder3}'      Fail        Third size in Puffy Topper PDP is Wrong. Expected Result: ${SIZEPuffyTopperPDPSizeOrder3} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_1837366476834 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(4) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${SIZEPuffyTopperPDPSizeOrder4}'      Fail        Fourth size in Puffy Topper PDP is Wrong. Expected Result: ${SIZEPuffyTopperPDPSizeOrder4} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_1837366476834 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(5) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${SIZEPuffyTopperPDPSizeOrder5}'      Fail        Fifth size in Puffy Topper PDP is Wrong. Expected Result: ${SIZEPuffyTopperPDPSizeOrder5} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_1837366476834 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(6) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${SIZEPuffyTopperPDPSizeOrder6}'      Fail        Sixth size in Puffy Topper PDP is Wrong. Expected Result: ${SIZEPuffyTopperPDPSizeOrder6} Actual Result: ${Content}


Check Puffy Blanket sizes list order

    Wait Until Element Is Visible          css=#product_form_4412718972962 > div.product-variants-holder > div > div > ul > li:nth-child(1) > div > span.display-name.is--not--sale
    ${Content}=            get text        css=#product_form_4412718972962 > div.product-variants-holder > div > div > ul > li:nth-child(1) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${SIZEPuffyBlanketPDPSizeOrder1}'      Fail        First size in Puffy Blanket PDP is Wrong. Expected Result: ${SIZEPuffyBlanketPDPSizeOrder1} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4412718972962 > div.product-variants-holder > div > div > ul > li.option.selected.focus > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${SIZEPuffyBlanketPDPSizeOrder2}'      Fail        Second size in Puffy Blanket PDP is Wrong. Expected Result: ${SIZEPuffyBlanketPDPSizeOrder2} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4412718972962 > div.product-variants-holder > div > div > ul > li:nth-child(3) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${SIZEPuffyBlanketPDPSizeOrder3}'      Fail        Third size in Puffy Blanket PDP is Wrong. Expected Result: ${SIZEPuffyBlanketPDPSizeOrder3} Actual Result: ${Content}

Check Puffy Weighted Blanket sizes list order

    Wait Until Element Is Visible          css=#product_form_3773124771874 > div.product-variants-holder > div > div > ul > li:nth-child(1) > div > span.display-name.is--not--sale
    ${Content}=            get text        css=#product_form_3773124771874 > div.product-variants-holder > div > div > ul > li:nth-child(1) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${SIZEPuffyWeightedBlanketPDPSizeOrder1}'      Fail        First size in Puffy Weighted Blanket PDP is Wrong. Expected Result: ${SIZEPuffyWeightedBlanketPDPSizeOrder1} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3773124771874 > div.product-variants-holder > div > div > ul > li:nth-child(2) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${SIZEPuffyWeightedBlanketPDPSizeOrder2}'      Fail        Second size in Puffy Weighted Blanket PDP is Wrong. Expected Result: ${SIZEPuffyWeightedBlanketPDPSizeOrder2} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3773124771874 > div.product-variants-holder > div > div > ul > li:nth-child(3) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${SIZEPuffyWeightedBlanketPDPSizeOrder3}'      Fail        Third size in Puffy Weighted Blanket PDP is Wrong. Expected Result: ${SIZEPuffyWeightedBlanketPDPSizeOrder3} Actual Result: ${Content}

Check Puffy Sheets color options

    Wait Until Element Is Visible          css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-color > div > ul > li.option.selected.focus > div > span.display-name.is--not--sale

    ${Content}=            get text        css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-color > div > ul > li.option.selected.focus > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${SIZEPuffySheetsPDPColorOrder1}'      Fail        First color option in Puffy Sheets PDP is Wrong. Expected Result: ${SIZEPuffySheetsPDPColorOrder1} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-color > div > ul > li:nth-child(2)
    Run keyword if          '${Content}'!='${SIZEPuffySheetsPDPColorOrder2}'      Fail        Second color option in Puffy Sheets PDP is Wrong. Expected Result: ${SIZEPuffySheetsPDPColorOrder2} Actual Result: ${Content}


Check Puffy Sheets sizes list order

    Wait Until Element Is Visible          css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > div > span.display-name.is--not--sale

    ${Content}=            get text        css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${SIZEPuffySheetsPDPSizeOrder1}'      Fail        First size in Puffy Sheets PDP is Wrong. Expected Result: ${SIZEPuffySheetsPDPSizeOrder1} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(2) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${SIZEPuffySheetsPDPSizeOrder2}'      Fail        Second size in Puffy Sheets PDP is Wrong. Expected Result: ${SIZEPuffySheetsPDPSizeOrder2} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(3) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${SIZEPuffySheetsPDPSizeOrder3}'      Fail        Third size in Puffy Sheets PDP is Wrong. Expected Result: ${SIZEPuffySheetsPDPSizeOrder3} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(4) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${SIZEPuffySheetsPDPSizeOrder4}'      Fail        Fourth size in Puffy Sheets PDP is Wrong. Expected Result: ${SIZEPuffySheetsPDPSizeOrder4} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(5) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${SIZEPuffySheetsPDPSizeOrder5}'      Fail        Fifth size in Puffy Sheets PDP is Wrong. Expected Result: ${SIZEPuffySheetsPDPSizeOrder5} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(6) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${SIZEPuffySheetsPDPSizeOrder6}'      Fail        Sixth size in Puffy Sheets PDP is Wrong. Expected Result: ${SIZEPuffySheetsPDPSizeOrder6} Actual Result: ${Content}

Check Puffy Dog Bed sizes list order

    Wait Until Element Is Visible          css=#product_form_4365356662818 > div.product-variants-holder > div > div > ul > li.option.selected.focus > div > span.display-name.is--not--sale

    ${Content}=            get text        css=#product_form_4365356662818 > div.product-variants-holder > div > div > ul > li.option.selected.focus > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${SIZEPuffyDogBedPDPSizeOrder1}'      Fail        First size in Puffy Dog Bed PDP is Wrong. Expected Result: ${SIZEPuffyDogBedPDPSizeOrder1} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4365356662818 > div.product-variants-holder > div > div > ul > li:nth-child(2) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${SIZEPuffyDogBedPDPSizeOrder2}'      Fail        Second size in Puffy Dog Bed PDP is Wrong. Expected Result: ${SIZEPuffyDogBedPDPSizeOrder2} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4365356662818 > div.product-variants-holder > div > div > ul > li:nth-child(3) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${SIZEPuffyDogBedPDPSizeOrder3}'      Fail        Third size in Puffy Dog Bed PDP is Wrong. Expected Result: ${SIZEPuffyDogBedPDPSizeOrder3} Actual Result: ${Content}

Check Puffy Rug sizes list order

    Wait Until Element Is Visible          css=#product_form_4125949657122 > div.product-variants-holder > div.product-variant.selector-wrapper.jsRealOptions.product-size > div > ul > li.option.selected.focus > div > span.display-name.is--not--sale

    ${Content}=            get text        css=#product_form_4125949657122 > div.product-variants-holder > div.product-variant.selector-wrapper.jsRealOptions.product-size > div > ul > li.option.selected.focus > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${SIZEPuffyRugPDPSizeOrder1}'      Fail        First size in Puffy Rug PDP is Wrong. Expected Result: ${SIZEPuffyRugPDPSizeOrder1} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4125949657122 > div.product-variants-holder > div.product-variant.selector-wrapper.jsRealOptions.product-size > div > ul > li:nth-child(2) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${SIZEPuffyRugPDPSizeOrder2}'      Fail        Second size in Puffy Rug PDP is Wrong. Expected Result: ${SIZEPuffyRugPDPSizeOrder2} Actual Result: ${Content}


#################################################Select Sizes#################################################
Select Puffy Mattress Twin
    Click element           css=#product_form_345108381730 > div.product-variants-holder > div > div > ul > li:nth-child(1)
Select Puffy Mattress TwinXL
    Click element           css=#product_form_345108381730 > div.product-variants-holder > div > div > ul > li:nth-child(2)
Select Puffy Mattress Full
    Click element           css=#product_form_345108381730 > div.product-variants-holder > div > div > ul > li:nth-child(3)
Select Puffy Mattress Queen
    Click element           css=#product_form_345108381730 > div.product-variants-holder > div > div > ul > li:nth-child(4)
Select Puffy Mattress King
    Click element           css=#product_form_345108381730 > div.product-variants-holder > div > div > ul > li:nth-child(5)
Select Puffy Mattress Cal King
    Click element           css=#product_form_345108381730 > div.product-variants-holder > div > div > ul > li:nth-child(6)

Select Puffy Lux Mattress Twin
    Click element           css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1)
Select Puffy Lux Mattress TwinXL
    Click element           css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(2)
Select Puffy Lux Mattress Full
    Click element           css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(3)
Select Puffy Lux Mattress Queen
    Click element           css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(4)
Select Puffy Lux Mattress King
    Click element           css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(5)
Select Puffy Lux Mattress Cal King
    Click element           css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(6)

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
    Click element           css=#product_form_150983180312 > div.product-variants-holder > div > div > ul > li:nth-child(1)
Select Puffy Foundation TwinXL
    Click element           css=#product_form_150983180312 > div.product-variants-holder > div > div > ul > li:nth-child(2)
Select Puffy Foundation Full
    Click element           css=#product_form_150983180312 > div.product-variants-holder > div > div > ul > li:nth-child(3)
Select Puffy Foundation Queen
    Click element           css=#product_form_150983180312 > div.product-variants-holder > div > div > ul > li:nth-child(4)
Select Puffy Foundation King
    Click element           css=#product_form_150983180312 > div.product-variants-holder > div > div > ul > li:nth-child(5)
Select Puffy Foundation Cal King
    Click element           css=#product_form_150983180312 > div.product-variants-holder > div > div > ul > li:nth-child(6)


Select Puffy Adjustable Base TwinXL
    Click element           css=#product_form_416170377250 > div.product-variants-holder > div > div > ul > li:nth-child(1)
Select Puffy Adjustable Base Full
    Click element           css=#product_form_416170377250 > div.product-variants-holder > div > div > ul > li:nth-child(2)
Select Puffy Adjustable Base Queen
    Click element           css=#product_form_416170377250 > div.product-variants-holder > div > div > ul > li:nth-child(3)
Select Puffy Adjustable Base Split King
    Click element           css=#product_form_416170377250 > div.product-variants-holder > div > div > ul > li:nth-child(4)


Select Puffy Bed Frame Full
    Click element           css=#product_form_1528789401634 > div.product-variants-holder > div > div > ul > li:nth-child(1)
Select Puffy Bed Frame Queen
    Click element           css=#product_form_1528789401634 > div.product-variants-holder > div > div > ul > li:nth-child(2)
Select Puffy Bed Frame King
    Click element           css=#product_form_1528789401634 > div.product-variants-holder > div > div > ul > li:nth-child(3)
Select Puffy Bed Frame Cal King
    Click element           css=#product_form_1528789401634 > div.product-variants-holder > div > div > ul > li:nth-child(4)

Select Puffy Comforter Twin/Twin XL
    Click element           css=#product_form_1536090603554 > div.product-variants-holder > div > div > ul > li:nth-child(1)
Select Puffy Comforter Full/Queen
    Click element           css=#product_form_1536090603554 > div.product-variants-holder > div > div > ul > li:nth-child(2)
Select Puffy Comforter King/Cal King
    Click element           css=#product_form_1536090603554 > div.product-variants-holder > div > div > ul > li:nth-child(3)

Select Puffy Pillow Standard
    Click element           css=#product_form_625398710306 > div.product-variants-holder > div > div > ul > li:nth-child(1)
Select Puffy Pillow King
    Click element           css=#product_form_625398710306 > div.product-variants-holder > div > div > ul > li:nth-child(2)

Select Puffy Mattress Pad Twin
    Click element           css=#product_form_4830838194210 > div.product-variants-holder > div > div > ul > li:nth-child(1)
Select Puffy Mattress Pad TwinXL
    Click element           css=#product_form_4830838194210 > div.product-variants-holder > div > div > ul > li:nth-child(2)
Select Puffy Mattress Pad Full
    Click element           css=#product_form_4830838194210 > div.product-variants-holder > div > div > ul > li:nth-child(3)
Select Puffy Mattress Pad Queen
    Click element           css=#product_form_4830838194210 > div.product-variants-holder > div > div > ul > li:nth-child(4)
Select Puffy Mattress Pad King
    Click element           css=#product_form_4830838194210 > div.product-variants-holder > div > div > ul > li:nth-child(5)
Select Puffy Mattress Pad Cal King
    Click element           css=#product_form_4830838194210 > div.product-variants-holder > div > div > ul > li:nth-child(6)

Select Puffy Mattress Protector Twin
    Click element           css=#product_form_1508181475362 > div.product-variants-holder > div > div > ul > li:nth-child(1)
Select Puffy Mattress Protector TwinXL
    Click element           css=#product_form_1508181475362 > div.product-variants-holder > div > div > ul > li:nth-child(2)
Select Puffy Mattress Protector Full
    Click element           css=#product_form_1508181475362 > div.product-variants-holder > div > div > ul > li:nth-child(3)
Select Puffy Mattress Protector Queen
    Click element           css=#product_form_1508181475362 > div.product-variants-holder > div > div > ul > li:nth-child(4)
Select Puffy Mattress Protector King
    Click element           css=#product_form_1508181475362 > div.product-variants-holder > div > div > ul > li:nth-child(5)
Select Puffy Mattress Protector Cal King
    Click element           css=#product_form_1508181475362 > div.product-variants-holder > div > div > ul > li:nth-child(6)
Select Puffy Topper Firm
    Click element           css=#product_form_1837366476834 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-feel > div > ul > li.option.selected.focus
Select Puffy Topper Soft
    Click element           css=#product_form_1837366476834 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-feel > div > ul > li:nth-child(2)
Select Puffy Topper Twin
    Click element           css=#product_form_1837366476834 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1)
Select Puffy Topper TwinXL
    Click element           css=#product_form_1837366476834 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(2)
Select Puffy Topper Full
    Click element           css=#product_form_1837366476834 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(3)
Select Puffy Topper Queen
    Click element           css=#product_form_1837366476834 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(4)
Select Puffy Topper King
    Click element           css=#product_form_1837366476834 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(5)
Select Puffy Topper Cal King
    Click element           css=#product_form_1837366476834 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(6)
Select Puffy Blanket Small
    Click element           css=#product_form_4412718972962 > div.product-variants-holder > div > div > ul > li:nth-child(1)
Select Puffy Blanket Medium
    Click element           css=#product_form_4412718972962 > div.product-variants-holder > div > div > ul > li:nth-child(2)
Select Puffy Blanket Large
    Click element           css=#product_form_4412718972962 > div.product-variants-holder > div > div > ul > li:nth-child(3)
Select Puffy Weighted Blanket Twin
    Click element           css=#product_form_3773124771874 > div.product-variants-holder > div > div > ul > li:nth-child(1)
Select Puffy Weighted Blanket Queen
    Click element           css=#product_form_3773124771874 > div.product-variants-holder > div > div > ul > li:nth-child(2)
Select Puffy Sheets Gray
    Click element           css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-color > div > ul > li.option.selected.focus
Select Puffy Sheets White
    Click element           css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-color > div > ul > li:nth-child(2)
Select Puffy Sheets Twin
    Click element           css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1)
Select Puffy Sheets TwinXL
    Click element           css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(2)
Select Puffy Sheets Full
    Click element           css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(3)
Select Puffy Sheets Queen
    Click element           css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(4)
Select Puffy Sheets King
    Click element           css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(5)
Select Puffy Sheets Cal King
    Click element           css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(6)
Select Puffy Dog Bed Small
    Click element           css=#product_form_4365356662818 > div.product-variants-holder > div > div > ul > li.option.selected.focus
Select Puffy Dog Bed Medium
    Click element           css=#product_form_4365356662818 > div.product-variants-holder > div > div > ul > li:nth-child(2)
Select Puffy Dog Bed Large
    Click element           css=#product_form_4365356662818 > div.product-variants-holder > div > div > ul > li:nth-child(3)
Select Puffy Rug Medium
    Click element           css=#product_form_4125949657122 > div.product-variants-holder > div.product-variant.selector-wrapper.jsRealOptions.product-size > div > div
Select Puffy Rug Large
    Click element           css=#product_form_4125949657122 > div.product-variants-holder > div.product-variant.selector-wrapper.jsRealOptions.product-size > div > ul > li:nth-child(2)
#################################################Check Monthly Payment terms#################################################
Check Puffy Mattress Twin size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_345108381730 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PUFFYMATTRESSTWINKLARNA350OFF}'      Fail        Wrong Puffy Mattress Twin Size monthly payment for Klarna. Expected Result: ${PUFFYMATTRESSTWINKLARNA350OFF} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_345108381730 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PUFFYMATTRESSTWINSPLITIT350OFF}'      Fail      Wrong Puffy Mattress Twin Size monthly payment for Splitit. Expected Result: ${PUFFYMATTRESSTWINSPLITIT350OFF} Actual Result: ${Splitit}

Check Puffy Mattress TwinXL size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_345108381730 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PUFFYMATTRESSTWINXLKLARNA350OFF}'      Fail        Wrong Puffy Mattress Twin XL Size monthly payment for Klarna. Expected Result: ${PUFFYMATTRESSTWINXLKLARNA350OFF} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_345108381730 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PUFFYMATTRESSTWINXLSPLITIT350OFF}'      Fail      Wrong Puffy Mattress Twin XL Size monthly payment for Splitit. Expected Result: ${PUFFYMATTRESSTWINXLSPLITIT350OFF} Actual Result: ${Splitit}

Check Puffy Mattress Full size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_345108381730 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PUFFYMATTRESSFULLKLARNA350OFF}'      Fail        Wrong Puffy Mattress Full Size monthly payment for Klarna. Expected Result: ${PUFFYMATTRESSFULLKLARNA350OFF} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_345108381730 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PUFFYMATTRESSFULLSPLITIT350OFF}'      Fail      Wrong Puffy Mattress Full Size monthly payment for Splitit. Expected Result: ${PUFFYMATTRESSFULLSPLITIT350OFF} Actual Result: ${Splitit}

Check Puffy Mattress Queen size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_345108381730 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PUFFYMATTRESSQUEENKLARNA350OFF}'      Fail        Wrong Puffy Mattress Queen Size monthly payment for Klarna. Expected Result: ${PUFFYMATTRESSQUEENKLARNA350OFF} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_345108381730 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PUFFYMATTRESSQUEENSPLITIT350OFF}'      Fail      Wrong Puffy Mattress Queen Size monthly payment for Splitit. Expected Result: ${PUFFYMATTRESSQUEENSPLITIT350OFF} Actual Result: ${Splitit}

Check Puffy Mattress King size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_345108381730 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PUFFYMATTRESSKINGKLARNA350OFF}'      Fail        Wrong Puffy Mattress King Size monthly payment for Klarna. Expected Result: ${PUFFYMATTRESSKINGKLARNA350OFF} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_345108381730 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PUFFYMATTRESSKINGSPLITIT350OFF}'      Fail      Wrong Puffy Mattress King Size monthly payment for Splitit. Expected Result: ${PUFFYMATTRESSKINGSPLITIT350OFF} Actual Result: ${Splitit}

Check Puffy Mattress Cal King size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_345108381730 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PUFFYMATTRESSCALKINGKLARNA350OFF}'      Fail        Wrong Puffy Mattress Cal King Size monthly payment for Klarna. Expected Result: ${PUFFYMATTRESSCALKINGKLARNA350OFF} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_345108381730 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PUFFYMATTRESSCALKINGSPLITIT350OFF}'      Fail      Wrong Puffy Mattress Cal King Size monthly payment for Splitit. Expected Result: ${PUFFYMATTRESSCALKINGSPLITIT350OFF} Actual Result: ${Splitit}


Check Puffy Lux Mattress Twin size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_549302042658 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PUFFYLUXMATTRESSTWINKLARNA350OFF}'      Fail        Wrong Puffy Lux Mattress Twin Size monthly payment for Klarna. Expected Result: ${PUFFYLUXMATTRESSTWINKLARNA350OFF} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_549302042658 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PUFFYLUXMATTRESSTWINSPLITIT350OFF}'      Fail      Wrong Puffy Lux Mattress Twin Size monthly payment for Splitit. Expected Result: ${PUFFYLUXMATTRESSTWINSPLITIT350OFF} Actual Result: ${Splitit}

Check Puffy Lux Mattress TwinXL size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_549302042658 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PUFFYLUXMATTRESSTWINXLKLARNA350OFF}'      Fail        Wrong Puffy Lux Mattress Twin XL Size monthly payment for Klarna. Expected Result: ${PUFFYLUXMATTRESSTWINXLKLARNA350OFF} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_549302042658 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PUFFYLUXMATTRESSTWINXLSPLITIT350OFF}'      Fail      Wrong Puffy Lux Mattress Twin XL Size monthly payment for Splitit. Expected Result: ${PUFFYLUXMATTRESSTWINXLSPLITIT350OFF} Actual Result: ${Splitit}

Check Puffy Lux Mattress Full size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_549302042658 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PUFFYLUXMATTRESSFULLKLARNA350OFF}'      Fail        Wrong Puffy Lux Mattress Full Size monthly payment for Klarna. Expected Result: ${PUFFYLUXMATTRESSFULLKLARNA350OFF} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_549302042658 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PUFFYLUXMATTRESSFULLSPLITIT350OFF}'      Fail      Wrong Puffy Lux Mattress Full Size monthly payment for Splitit. Expected Result: ${PUFFYLUXMATTRESSFULLSPLITIT350OFF} Actual Result: ${Splitit}

Check Puffy Lux Mattress Queen size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_549302042658 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PUFFYLUXMATTRESSQUEENKLARNA350OFF}'      Fail        Wrong Puffy Lux Mattress Queen Size monthly payment for Klarna. Expected Result: ${PUFFYLUXMATTRESSQUEENKLARNA350OFF} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_549302042658 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PUFFYLUXMATTRESSQUEENSPLITIT350OFF}'      Fail      Wrong Puffy Lux Mattress Queen Size monthly payment for Splitit. Expected Result: ${PUFFYLUXMATTRESSQUEENSPLITIT350OFF} Actual Result: ${Splitit}

Check Puffy Lux Mattress King size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_549302042658 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PUFFYLUXMATTRESSKINGKLARNA350OFF}'      Fail        Wrong Puffy Lux Mattress King Size monthly payment for Klarna. Expected Result: ${PUFFYLUXMATTRESSKINGKLARNA350OFF} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_549302042658 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PUFFYLUXMATTRESSKINGSPLITIT350OFF}'      Fail      Wrong Puffy Lux Mattress King Size monthly payment for Splitit. Expected Result: ${PUFFYLUXMATTRESSKINGSPLITIT350OFF} Actual Result: ${Splitit}

Check Puffy Lux Mattress Cal King size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_549302042658 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PUFFYLUXMATTRESSCALKINGKLARNA350OFF}'      Fail        Wrong Puffy Lux Mattress Cal King Size monthly payment for Klarna. Expected Result: ${PUFFYLUXMATTRESSCALKINGKLARNA350OFF} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_549302042658 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PUFFYLUXMATTRESSCALKINGSPLITIT350OFF}'      Fail      Wrong Puffy Lux Mattress Cal King Size monthly payment for Splitit. Expected Result: ${PUFFYLUXMATTRESSCALKINGSPLITIT350OFF} Actual Result: ${Splitit}

Check Puffy Royal Mattress Twin size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_3832788910114 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PUFFYROYALMATTRESSTWINKLARNA350OFF}'      Fail        Wrong Puffy Royal Mattress Twin Size monthly payment for Klarna. Expected Result: ${PUFFYROYALMATTRESSTWINKLARNA350OFF} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_3832788910114 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PUFFYROYALMATTRESSTWINSPLITIT350OFF}'      Fail      Wrong Puffy Royal Mattress Twin Size monthly payment for Splitit. Expected Result: ${PUFFYROYALMATTRESSTWINSPLITIT350OFF} Actual Result: ${Splitit}

Check Puffy Royal Mattress TwinXL size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_3832788910114 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PUFFYROYALMATTRESSTWINXLKLARNA350OFF}'      Fail        Wrong Puffy Royal Mattress Twin XL Size monthly payment for Klarna. Expected Result: ${PUFFYROYALMATTRESSTWINXLKLARNA350OFF} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_3832788910114 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PUFFYROYALMATTRESSTWINXLSPLITIT350OFF}'      Fail      Wrong Puffy Royal Mattress Twin XL Size monthly payment for Splitit. Expected Result: ${PUFFYROYALMATTRESSTWINXLSPLITIT350OFF} Actual Result: ${Splitit}

Check Puffy Royal Mattress Full size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_3832788910114 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PUFFYROYALMATTRESSFULLKLARNA350OFF}'      Fail        Wrong Puffy Royal Mattress Full Size monthly payment for Klarna. Expected Result: ${PUFFYROYALMATTRESSFULLKLARNA350OFF} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_3832788910114 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PUFFYROYALMATTRESSFULLSPLITIT350OFF}'      Fail      Wrong Puffy Royal Mattress Full Size monthly payment for Splitit. Expected Result: ${PUFFYROYALMATTRESSFULLSPLITIT350OFF} Actual Result: ${Splitit}

Check Puffy Royal Mattress Queen size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_3832788910114 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PUFFYROYALMATTRESSQUEENKLARNA350OFF}'      Fail        Wrong Puffy Royal Mattress Queen Size monthly payment for Klarna. Expected Result: ${PUFFYROYALMATTRESSQUEENKLARNA350OFF} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_3832788910114 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PUFFYROYALMATTRESSQUEENSPLITIT350OFF}'      Fail      Wrong Puffy Royal Mattress Queen Size monthly payment for Splitit. Expected Result: ${PUFFYROYALMATTRESSQUEENSPLITIT350OFF} Actual Result: ${Splitit}

Check Puffy Royal Mattress King size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_3832788910114 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PUFFYROYALMATTRESSKINGKLARNA350OFF}'      Fail        Wrong Puffy Royal Mattress King Size monthly payment for Klarna. Expected Result: ${PUFFYROYALMATTRESSKINGKLARNA350OFF} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_3832788910114 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PUFFYROYALMATTRESSKINGSPLITIT350OFF}'      Fail      Wrong Puffy Royal Mattress King Size monthly payment for Splitit. Expected Result: ${PUFFYROYALMATTRESSKINGSPLITIT350OFF} Actual Result: ${Splitit}

Check Puffy Royal Mattress Cal King size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_3832788910114 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PUFFYROYALMATTRESSCALKINGKLARNA350OFF}'      Fail        Wrong Puffy Royal Mattress Cal King Size monthly payment for Klarna. Expected Result: ${PUFFYROYALMATTRESSCALKINGKLARNA350OFF} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_3832788910114 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PUFFYROYALMATTRESSCALKINGSPLITIT350OFF}'      Fail      Wrong Puffy Royal Mattress Cal King Size monthly payment for Splitit. Expected Result: ${PUFFYROYALMATTRESSCALKINGSPLITIT350OFF} Actual Result: ${Splitit}

Check Puffy Foundation Twin size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_150983180312 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PUFFYFOUNDATIONTWINKLARNANOOFF}'      Fail        Wrong Puffy Foundation Twin Size monthly payment for Klarna. Expected Result: ${PUFFYFOUNDATIONTWINKLARNANOOFF} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_150983180312 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PUFFYFOUNDATIONTWINSPLITITNOOFF}'      Fail      Wrong Puffy Foundation Twin Size monthly payment for Splitit. Expected Result: ${PUFFYFOUNDATIONTWINSPLITITNOOFF} Actual Result: ${Splitit}

Check Puffy Foundation TwinXL size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_150983180312 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PUFFYFOUNDATIONTWINXLKLARNANOOFF}'      Fail        Wrong Puffy Lux Mattress Twin XL Size monthly payment for Klarna. Expected Result: ${PUFFYFOUNDATIONTWINXLKLARNANOOFF} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_150983180312 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PUFFYFOUNDATIONTWINXLSPLITITNOOFF}'      Fail      Wrong Puffy Lux Mattress Twin XL Size monthly payment for Splitit. Expected Result: ${PUFFYFOUNDATIONTWINXLSPLITITNOOFF} Actual Result: ${Splitit}

Check Puffy Foundation Full size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_150983180312 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PUFFYFOUNDATIONFULLKLARNANOOFF}'      Fail        Wrong Puffy Foundation Full Size monthly payment for Klarna. Expected Result: ${PUFFYFOUNDATIONFULLKLARNANOOFF} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_150983180312 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PUFFYFOUNDATIONFULLSPLITITNOOFF}'      Fail      Wrong Foundation Full Size monthly payment for Splitit. Expected Result: ${PUFFYFOUNDATIONFULLSPLITITNOOFF} Actual Result: ${Splitit}

Check Puffy Foundation Queen size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_150983180312 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PUFFYFOUNDATIONQUEENKLARNANOOFF}'     Fail        Wrong Puffy Foundation Queen Size monthly payment for Klarna. Expected Result: ${PUFFYFOUNDATIONQUEENKLARNANOOFF} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_150983180312 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PUFFYFOUNDATIONQUEENSPLITITNOOFF}'      Fail      Wrong Puffy Foundation Queen Size monthly payment for Splitit. Expected Result: ${PUFFYFOUNDATIONQUEENSPLITITNOOFF} Actual Result: ${Splitit}

Check Puffy Foundation King size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_150983180312 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PUFFYFOUNDATIONKINGKLARNANOOFF}'      Fail        Wrong Puffy Foundation King Size monthly payment for Klarna. Expected Result: ${PUFFYFOUNDATIONKINGKLARNANOOFF} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_150983180312 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PUFFYFOUNDATIONKINGSPLITITNOOFF}'      Fail      Wrong Puffy Foundation King Size monthly payment for Splitit. Expected Result: ${PUFFYFOUNDATIONKINGSPLITITNOOFF} Actual Result: ${Splitit}

Check Puffy Foundation Cal King size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_150983180312 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PUFFYFOUNDATIONCALKINGKLARNANOOFF}'      Fail        Wrong Puffy Foundation Cal King Size monthly payment for Klarna. Expected Result: ${PUFFYFOUNDATIONCALKINGKLARNANOOFF} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_150983180312 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PUFFYFOUNDATIONCALKINGSPLITITNOOFF}'      Fail      Wrong Puffy Foundation Cal King Size monthly payment for Splitit. Expected Result: ${PUFFYFOUNDATIONCALKINGSPLITITNOOFF} Actual Result: ${Splitit}

Check Puffy Adjustable Base TwinXL size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_416170377250 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PUFFYADJUSTABLEBASETWINXLKLARNA350OFF}'      Fail        Wrong Puffy Adjustable Base TwinXL Size monthly payment for Klarna. Expected Result: ${PUFFYADJUSTABLEBASETWINXLKLARNA350OFF} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_416170377250 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PUFFYADJUSTABLEBASETWINXLSPLITIT350OFF}'      Fail      Wrong Puffy Adjustable Base TwinXL Size monthly payment for Splitit. Expected Result: ${PUFFYADJUSTABLEBASETWINXLSPLITIT350OFF} Actual Result: ${Splitit}

Check Puffy Adjustable Base Full size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_416170377250 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PUFFYADJUSTABLEBASEFULLKLARNA350OFF}'      Fail        Wrong Puffy Adjustable Base Full Size monthly payment for Klarna. Expected Result: ${PUFFYADJUSTABLEBASEFULLKLARNA350OFF} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_416170377250 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PUFFYADJUSTABLEBASEFULLSPLITIT350OFF}'      Fail      Wrong Puffy Adjustable Base Full Size monthly payment for Splitit. Expected Result: ${PUFFYADJUSTABLEBASEFULLSPLITIT350OFF} Actual Result: ${Splitit}

Check Puffy Adjustable Base Queen size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_416170377250 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PUFFYADJUSTABLEBASEQUEENKLARNA350OFF}'      Fail        Wrong Puffy Adjustable Base Queen Size monthly payment for Klarna. Expected Result: ${PUFFYADJUSTABLEBASEQUEENKLARNA350OFF} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_416170377250 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PUFFYADJUSTABLEBASEQUEENSPLITIT350OFF}'      Fail      Wrong Puffy Adjustable Base Queen Size monthly payment for Splitit. Expected Result: ${PUFFYADJUSTABLEBASEQUEENSPLITIT350OFF} Actual Result: ${Splitit}

Check Puffy Adjustable Base Split King size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_416170377250 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PUFFYADJUSTABLEBASESPLITKINGKLARNA350OFF}'     Fail        Wrong Puffy Adjustable Base Split King Size monthly payment for Klarna. Expected Result: ${PUFFYADJUSTABLEBASESPLITKINGKLARNA350OFF} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_416170377250 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PUFFYADJUSTABLEBASESPLITKINGSPLITIT350OFF}'      Fail      Wrong Puffy Adjustable Base Split King Size monthly payment for Splitit. Expected Result: ${PUFFYADJUSTABLEBASESPLITKINGSPLITIT350OFF} Actual Result: ${Splitit}




Check Puffy Bed Frame Full size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_1528789401634 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PUFFYBEDFRAMEFULLKLARNANOOFF}'      Fail        Wrong Puffy Bed Frame Full Size monthly payment for Klarna. Expected Result: ${PUFFYBEDFRAMEFULLKLARNANOOFF} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_1528789401634 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PUFFYBEDFRAMEFULLSPLITITNOOFF}'      Fail      Wrong Puffy Bed Frame Full Size monthly payment for Splitit. Expected Result: ${PUFFYBEDFRAMEFULLSPLITITNOOFF} Actual Result: ${Splitit}

Check Puffy Bed Frame Queen size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_1528789401634 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PUFFYBEDFRAMEQUEENKLARNANOOFF}'      Fail        Wrong Puffy Bed Frame Queen Size monthly payment for Klarna. Expected Result: ${PUFFYBEDFRAMEQUEENKLARNANOOFF} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_1528789401634 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PUFFYBEDFRAMEQUEENSPLITITNOOFF}'      Fail      Wrong Puffy Bed Frame Queen Size monthly payment for Splitit. Expected Result: ${PUFFYBEDFRAMEQUEENSPLITIT15OFF} Actual Result: ${Splitit}

Check Puffy Bed Frame King size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_1528789401634 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PUFFYBEDFRAMEKINGKLARNANOOFF}'      Fail        Wrong Puffy Bed Frame King Size monthly payment for Klarna. Expected Result: ${PUFFYBEDFRAMEKINGKLARNANOOFF} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_1528789401634 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PUFFYBEDFRAMEKINGSPLITITNOOFF}'      Fail      Wrong Puffy Bed Frame King Size monthly payment for Splitit. Expected Result: ${PUFFYBEDFRAMEKINGSPLITIT15OFF} Actual Result: ${Splitit}

Check Puffy Bed Frame Cal King size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_1528789401634 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PUFFYBEDFRAMECALKINGKLARNANOOFF}'     Fail        Wrong Puffy Bed Frame Cal King Size monthly payment for Klarna. Expected Result: ${PUFFYBEDFRAMECALKINGKLARNANOOFF} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_1528789401634 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PUFFYBEDFRAMECALKINGSPLITITNOOFF}'      Fail      Wrong Puffy Bed Frame Cal King Size monthly payment for Splitit. Expected Result: ${PUFFYBEDFRAMECALKINGSPLITIT15OFF} Actual Result: ${Splitit}




Check Puffy Comforter Twin/Twin XL size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_1536090603554 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PUFFYCOMFORTERTWIN/TWINXLKLARNANOOFF}'      Fail        Wrong Puffy Comforter Twin/Twin XL Size monthly payment for Klarna. Expected Result: ${PUFFYCOMFORTERTWIN/TWINXLKLARNANOOFF} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_1536090603554 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PUFFYCOMFORTERTWIN/TWINXLSPLITITNOOFF}'      Fail      Wrong Puffy Comforter Twin/Twin XL Size monthly payment for Splitit. Expected Result: ${PUFFYCOMFORTERTWIN/TWINXLSPLITITNOOFF} Actual Result: ${Splitit}

Check Puffy Comforter Full/Queen size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_1536090603554 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PUFFYCOMFORTERFULL/QUEENKLARNANOOFF}'      Fail        Wrong Puffy Comforter Full/Queen Size monthly payment for Klarna. Expected Result: ${PUFFYCOMFORTERFULL/QUEENKLARNANOOFF} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_1536090603554 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PUFFYCOMFORTERFULL/QUEENSPLITITNOOFF}'      Fail      Wrong Puffy Comforter Full/Queen Size monthly payment for Splitit. Expected Result: ${PUFFYCOMFORTERFULL/QUEENSPLITITNOOFF} Actual Result: ${Splitit}

Check Puffy Comforter King/Cal King size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_1536090603554 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PUFFYCOMFORTERKING/CALKINGKLARNANOOFF}'      Fail        Wrong Puffy Comforter King/Cal King Size monthly payment for Klarna. Expected Result: ${PUFFYCOMFORTERKING/CALKINGKLARNANOOFF} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_1536090603554 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PUFFYCOMFORTERKING/CALKINGSPLITITNOOFF}'      Fail      Wrong Puffy Comforter King/Cal King Size monthly payment for Splitit. Expected Result: ${PUFFYCOMFORTERKING/CALKINGSPLITITNOOFF} Actual Result: ${Splitit}

Check Puffy Pillow Standard size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_625398710306 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PUFFYPILLOWSTANDARDKLARNANOOFF}'      Fail        Wrong Puffy Pillow Standard Size monthly payment for Klarna. Expected Result: ${PUFFYPILLOWSTANDARDKLARNANOOFF} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_625398710306 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PUFFYPILLOWSTANDARDSPLITITNOOFF}'      Fail      Wrong Puffy Pillow Standard Size monthly payment for Splitit. Expected Result: ${PUFFYPILLOWSTANDARDSPLITITNOOFF} Actual Result: ${Splitit}

Check Puffy Pillow King size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_625398710306 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PUFFYPILLOWKINGKLARNANOOFF}'      Fail        Wrong Puffy Pillow King Size monthly payment for Klarna. Expected Result: ${PUFFYPILLOWKINGKLARNANOOFF} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_625398710306 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PUFFYPILLOWKINGSPLITITNOOFF}'      Fail      Wrong Puffy Pillow King Size monthly payment for Splitit. Expected Result: ${PUFFYPILLOWKINGSPLITITNOOFF} Actual Result: ${Splitit}

Check Puffy Body Pillow monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_4431983280162 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PUFFYBODYPILLOWKLARNANOOFF}'      Fail        Wrong Puffy Body Pillow monthly payment for Klarna. Expected Result: ${PUFFYBODYPILLOWKLARNANOOFF} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_4431983280162 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PUFFYBODYPILLOWSPLITITNOOFF}'      Fail      Wrong Puffy Body Pillow monthly payment for Splitit. Expected Result: ${PUFFYBODYPILLOWSPLITITNOOFF} Actual Result: ${Splitit}

Check Puffy Mattress Pad Twin size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_4830838194210 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PUFFYMATTRESSPADTWINKLARNANOOFF}'      Fail        Wrong Puffy Mattress Pad Twin size monthly payment for Klarna. Expected Result: ${PUFFYMATTRESSPADTWINKLARNA15OFF} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_4830838194210 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PUFFYMATTRESSPADTWINSPLITITNOOFF}'      Fail      Wrong Puffy Mattress Pad Twin size monthly payment for Splitit. Expected Result: ${PUFFYMATTRESSPADTWINSPLITITNOOFF} Actual Result: ${Splitit}
Check Puffy Mattress Pad TwinXL size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_4830838194210 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PUFFYMATTRESSPADTWINXLKLARNANOOFF}'      Fail        Wrong Puffy Mattress Pad TwinXL size monthly payment for Klarna. Expected Result: ${PUFFYMATTRESSPADTWINXLKLARNANOOFF} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_4830838194210 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PUFFYMATTRESSPADTWINXLSPLITITNOOFF}'      Fail      Wrong Puffy Mattress Pad TwinXL size payment for Splitit. Expected Result: ${PUFFYMATTRESSPADTWINXLSPLITITNOOFF} Actual Result: ${Splitit}
Check Puffy Mattress Pad Full size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_4830838194210 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PUFFYMATTRESSPADFULLKLARNANOOFF}'      Fail        Wrong Puffy Mattress Pad Full size monthly payment for Klarna. Expected Result: ${PUFFYMATTRESSPADFULLKLARNANOOFF} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_4830838194210 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PUFFYMATTRESSPADFULLSPLITITNOOFF}'      Fail      Wrong Puffy Mattress Pad Full size payment for Splitit. Expected Result: ${PUFFYMATTRESSPADFULLSPLITITNOOFF} Actual Result: ${Splitit}
Check Puffy Mattress Pad Queen size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_4830838194210 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PUFFYMATTRESSPADQUEENKLARNANOOFF}'      Fail        Wrong Puffy Mattress Pad Queen size monthly payment for Klarna. Expected Result: ${PUFFYMATTRESSPADQUEENKLARNANOOFF} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_4830838194210 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PUFFYMATTRESSPADQUEENSPLITITNOOFF}'      Fail      Wrong Puffy Mattress Pad Queen size monthly payment for Splitit. Expected Result: ${PUFFYMATTRESSPADQUEENSPLITITNOOFF} Actual Result: ${Splitit}
Check Puffy Mattress Pad King size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_4830838194210 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PUFFYMATTRESSPADKINGKLARNANOOFF}'      Fail        Wrong Puffy Mattress Pad King size monthly payment for Klarna. Expected Result: ${PUFFYMATTRESSPADKINGKLARNANOOFF} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_4830838194210 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PUFFYMATTRESSPADKINGSPLITITNOOFF}'      Fail      Wrong Puffy Mattress Pad King size monthly payment for Splitit. Expected Result: ${PUFFYMATTRESSPADKINGSPLITITNOOFF} Actual Result: ${Splitit}
Check Puffy Mattress Pad Cal King size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_4830838194210 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PUFFYMATTRESSPADCALKINGKLARNANOOFF}'      Fail        Wrong Puffy Mattress Pad Cal King size monthly payment for Klarna. Expected Result: ${PUFFYMATTRESSPADCALKINGKLARNANOOFF} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_4830838194210 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PUFFYMATTRESSPADCALKINGSPLITITNOOFF}'      Fail      Wrong Puffy Mattress Pad Cal King size monthly payment for Splitit. Expected Result: ${PUFFYMATTRESSPADCALKINGSPLITITNOOFF} Actual Result: ${Splitit}

Check Puffy Mattress Protector Twin size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_1508181475362 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PUFFYMATTRESSPROTECTORTWINKLARNANOOFF}'      Fail        Wrong Puffy Mattress Protector Twin size monthly payment for Klarna. Expected Result: ${PUFFYMATTRESSPROTECTORTWINKLARNANOOFF} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_1508181475362 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PUFFYMATTRESSPROTECTORTWINSPLITITNOOFF}'      Fail      Wrong Puffy Mattress Protector Twin size monthly payment for Splitit. Expected Result: ${PUFFYMATTRESSPROTECTORTWINSPLITITNOOFF} Actual Result: ${Splitit}
Check Puffy Mattress Protector TwinXL size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_1508181475362 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PUFFYMATTRESSPROTECTORTWINXLKLARNANOOFF}'      Fail        Wrong Puffy Mattress Protector TwinXL size monthly payment for Klarna. Expected Result: ${PUFFYMATTRESSPROTECTORTWINXLKLARNANOOFF} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_1508181475362 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PUFFYMATTRESSPROTECTORTWINXLSPLITITNOOFF}'      Fail      Wrong Puffy Mattress Protector TwinXL size payment for Splitit. Expected Result: ${PUFFYMATTRESSPROTECTORTWINXLSPLITITNOOFF} Actual Result: ${Splitit}
Check Puffy Mattress Protector Full size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_1508181475362 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PUFFYMATTRESSPROTECTORFULLKLARNANOOFF}'      Fail        Wrong Puffy Mattress Protector Full size monthly payment for Klarna. Expected Result: ${PUFFYMATTRESSPROTECTORFULLKLARNANOOFF} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_1508181475362 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PUFFYMATTRESSPROTECTORFULLSPLITITNOOFF}'      Fail      Wrong Puffy Mattress Protector Full size payment for Splitit. Expected Result: ${PUFFYMATTRESSPROTECTORFULLSPLITITNOOFF} Actual Result: ${Splitit}
Check Puffy Mattress Protector Queen size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_1508181475362 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PUFFYMATTRESSPROTECTORQUEENKLARNANOOFF}'      Fail        Wrong Puffy Mattress Protector Queen size monthly payment for Klarna. Expected Result: ${PUFFYMATTRESSPROTECTORQUEENKLARNANOOFF} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_1508181475362 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PUFFYMATTRESSPROTECTORQUEENSPLITITNOOFF}'      Fail      Wrong Puffy Mattress Protector Queen size monthly payment for Splitit. Expected Result: ${PUFFYMATTRESSPROTECTORQUEENSPLITITNOOFF} Actual Result: ${Splitit}
Check Puffy Mattress Protector King size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_1508181475362 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PUFFYMATTRESSPROTECTORKINGKLARNANOOFF}'      Fail        Wrong Puffy Mattress Protector King size monthly payment for Klarna. Expected Result: ${PUFFYMATTRESSPROTECTORKINGKLARNANOOFF} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_1508181475362 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PUFFYMATTRESSPROTECTORKINGSPLITITNOOFF}'      Fail      Wrong Puffy Mattress Protector King size monthly payment for Splitit. Expected Result: ${PUFFYMATTRESSPROTECTORKINGSPLITITNOOFF} Actual Result: ${Splitit}
Check Puffy Mattress Protector Cal King size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_1508181475362 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PUFFYMATTRESSPROTECTORCALKINGKLARNANOOFF}'      Fail        Wrong Puffy Mattress Protector Cal King size monthly payment for Klarna. Expected Result: ${PUFFYMATTRESSPROTECTORCALKINGKLARNANOOFF} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_1508181475362 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PUFFYMATTRESSPROTECTORCALKINGSPLITITNOOFF}'      Fail      Wrong Puffy Mattress Protector Cal King size monthly payment for Splitit. Expected Result: ${PUFFYMATTRESSPROTECTORCALKINGSPLITITNOOFF} Actual Result: ${Splitit}


Check Puffy Topper Twin size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_1837366476834 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PUFFYTOPPERTWINKLARNANOOFF}'      Fail        Wrong Puffy Topper Twin size monthly payment for Klarna. Expected Result: ${PUFFYTOPPERTWINKLARNANOOFF} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_1837366476834 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PUFFYTOPPERTWINSPLITITNOOFF}'      Fail      Wrong Puffy Topper Twin size monthly payment for Splitit. Expected Result: ${PUFFYTOPPERTWINSPLITITNOOFF} Actual Result: ${Splitit}
Check Puffy Topper TwinXL size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_1837366476834 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PUFFYTOPPERTWINXLKLARNANOOFF}'      Fail        Wrong Puffy Topper TwinXL size monthly payment for Klarna. Expected Result: ${PUFFYTOPPERTWINXLKLARNANOOFF} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_1837366476834 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PUFFYTOPPERTWINXLSPLITITNOOFF}'      Fail      Wrong Puffy Topper TwinXL size payment for Splitit. Expected Result: ${PUFFYTOPPERTWINXLSPLITITNOOFF} Actual Result: ${Splitit}
Check Puffy Topper Full size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_1837366476834 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PUFFYTOPPERFULLKLARNANOOFF}'      Fail        Wrong Puffy Topper Full size monthly payment for Klarna. Expected Result: ${PUFFYTOPPERFULLKLARNANOOFF} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_1837366476834 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PUFFYTOPPERFULLSPLITITNOOFF}'      Fail      Wrong Puffy Topper Full size payment for Splitit. Expected Result: ${PUFFYTOPPERFULLSPLITITNOOFF} Actual Result: ${Splitit}
Check Puffy Topper Queen size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_1837366476834 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PUFFYTOPPERQUEENKLARNANOOFF}'      Fail        Wrong Puffy Topper Queen size monthly payment for Klarna. Expected Result: ${PUFFYTOPPERQUEENKLARNANOOFF} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_1837366476834 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PUFFYTOPPERQUEENSPLITITNOOFF}'      Fail      Wrong Puffy Topper Queen size monthly payment for Splitit. Expected Result: ${PUFFYTOPPERQUEENSPLITITNOOFF} Actual Result: ${Splitit}
Check Puffy Topper King size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_1837366476834 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PUFFYTOPPERKINGKLARNANOOFF}'      Fail        Wrong Puffy Topper King size monthly payment for Klarna. Expected Result: ${PUFFYTOPPERKINGKLARNANOOFF} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_1837366476834 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PUFFYTOPPERKINGSPLITITNOOFF}'      Fail      Wrong Puffy Topper King size monthly payment for Splitit. Expected Result: ${PUFFYTOPPERKINGSPLITITNOOFF} Actual Result: ${Splitit}
Check Puffy Topper Cal King size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_1837366476834 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PUFFYTOPPERCALKINGKLARNANOOFF}'      Fail        Wrong Puffy Topper Cal King size monthly payment for Klarna. Expected Result: ${PUFFYTOPPERCALKINGKLARNANOOFF} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_1837366476834 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PUFFYTOPPERCALKINGSPLITITNOOFF}'      Fail      Wrong Puffy Topper Cal King size monthly payment for Splitit. Expected Result: ${PUFFYTOPPERCALKINGSPLITITNOOFF} Actual Result: ${Splitit}


Check Puffy Blanket Small size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_4412718972962 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PUFFYBLANKETSMALLKLARNANOOFF}'      Fail        Wrong Puffy Blanket Small size monthly payment for Klarna. Expected Result: ${PUFFYBLANKETSMALLKLARNANOOFF} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_4412718972962 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PUFFYBLANKETSMALLSPLITITNOOFF}'      Fail      Wrong Puffy Blanket Small size monthly payment for Splitit. Expected Result: ${PUFFYBLANKETSMALLSPLITITNOOFF} Actual Result: ${Splitit}
Check Puffy Blanket Medium size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_4412718972962 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PUFFYBLANKETMEDIUMKLARNANOOFF}'      Fail        Wrong Puffy Blanket Medium size monthly payment for Klarna. Expected Result: ${PUFFYMATTRESSPADKINGKLARNANOOFF} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_4412718972962 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PUFFYBLANKETMEDIUMSPLITITNOOFF}'      Fail      Wrong Puffy Blanket Medium size monthly payment for Splitit. Expected Result: ${PUFFYBLANKETMEDIUMSPLITITNOOFF} Actual Result: ${Splitit}
Check Puffy Blanket Large size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_4412718972962 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PUFFYBLANKETLARGEKLARNANOOFF}'      Fail        Wrong Puffy Blanket Large size monthly payment for Klarna. Expected Result: ${PUFFYBLANKETLARGEKLARNANOOFF} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_4412718972962 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PUFFYBLANKETLARGESPLITITNOOFF}'      Fail      Wrong Puffy Blanket Large size monthly payment for Splitit. Expected Result: ${PUFFYBLANKETLARGESPLITITNOOFF} Actual Result: ${Splitit}

Check Puffy Weighted Blanket Twin size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_3773124771874 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PUFFYWEIGHTEDBLANKETTWINKLARNANOOFF}'      Fail        Wrong Puffy Weighted Blanket Twin size monthly payment for Klarna. Expected Result: ${PUFFYWEIGHTEDBLANKETTWINKLARNANOOFF} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_3773124771874 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PUFFYWEIGHTEDBLANKETTWINSPLITITNOOFF}'      Fail      Wrong Puffy Weighted Blanket Twin size monthly payment for Splitit. Expected Result: ${PUFFYWEIGHTEDBLANKETTWINSPLITITNOOFF} Actual Result: ${Splitit}
Check Puffy Weighted Blanket Queen size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_3773124771874 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PUFFYWEIGHTEDBLANKETQUEENKLARNANOOFF}'      Fail        Wrong Puffy Weighted Blanket Queen size monthly payment for Klarna. Expected Result: ${PUFFYWEIGHTEDBLANKETQUEENKLARNANOOFF} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_3773124771874 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PUFFYWEIGHTEDBLANKETQUEENSPLITITNOOFF}'      Fail      Wrong Puffy Weighted Blanket Queen size monthly payment for Splitit. Expected Result: ${PUFFYWEIGHTEDBLANKETQUEENSPLITITNOOFF} Actual Result: ${Splitit}

Check Puffy Sheets Twin size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_4359826341922 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PUFFYSHEETSTWINKLARNANOOFF}'      Fail        Wrong Puffy Sheets Twin size monthly payment for Klarna. Expected Result: ${PUFFYSHEETSTWINKLARNANOOFF} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_4359826341922 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PUFFYSHEETSTWINSPLITITNOOFF}'      Fail      Wrong Puffy Sheets Twin size monthly payment for Splitit. Expected Result: ${PUFFYSHEETSTWINSPLITITNOOFF} Actual Result: ${Splitit}
Check Puffy Sheets TwinXL size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_4359826341922 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PUFFYSHEETSTWINXLKLARNANOOFF}'      Fail        Wrong Puffy Sheets TwinXL size monthly payment for Klarna. Expected Result: ${PUFFYSHEETSTWINXLKLARNANOOFF} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_4359826341922 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PUFFYSHEETSTWINXLSPLITITNOOFF}'      Fail      Wrong Puffy Sheets TwinXL size payment for Splitit. Expected Result: ${PUFFYSHEETSTWINXLSPLITITNOOFF} Actual Result: ${Splitit}
Check Puffy Sheets Full size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_4359826341922 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PUFFYSHEETSFULLKLARNANOOFF}'      Fail        Wrong Puffy Sheets Full size monthly payment for Klarna. Expected Result: ${PUFFYSHEETSFULLKLARNANOOFF} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_4359826341922 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PUFFYSHEETSFULLSPLITITNOOFF}'      Fail      Wrong Puffy Sheets Full size payment for Splitit. Expected Result: ${PUFFYSHEETSFULLSPLITITNOOFF} Actual Result: ${Splitit}
Check Puffy Sheets Queen size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_4359826341922 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PUFFYSHEETSQUEENKLARNANOOFF}'      Fail        Wrong Puffy Sheets Queen size monthly payment for Klarna. Expected Result: ${PUFFYSHEETSQUEENKLARNANOOFF} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_4359826341922 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PUFFYSHEETSQUEENSPLITITNOOFF}'      Fail      Wrong Puffy Sheets Queen size monthly payment for Splitit. Expected Result: ${PUFFYSHEETSQUEENSPLITITNOOFF} Actual Result: ${Splitit}
Check Puffy Sheets King size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_4359826341922 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PUFFYSHEETSKINGKLARNANOOFF}'      Fail        Wrong Puffy Sheets King size monthly payment for Klarna. Expected Result: ${PUFFYSHEETSKINGKLARNANOOFF} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_4359826341922 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PUFFYSHEETSKINGSPLITITNOOFF}'      Fail      Wrong Puffy Sheets King size monthly payment for Splitit. Expected Result: ${PUFFYSHEETSKINGSPLITITNOOFF} Actual Result: ${Splitit}
Check Puffy Sheets Cal King size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_4359826341922 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PUFFYSHEETSCALKINGKLARNANOOFF}'      Fail        Wrong Puffy Sheets Cal King size monthly payment for Klarna. Expected Result: ${PUFFYSHEETSCALKINGKLARNANOOFF} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_4359826341922 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PUFFYSHEETSCALKINGSPLITITNOOFF}'      Fail      Wrong Puffy Sheets Cal King size monthly payment for Splitit. Expected Result: ${PUFFYSHEETSCALKINGSPLITITNOOFF} Actual Result: ${Splitit}

Check Puffy Dog Bed Small size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_4365356662818 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PUFFYDOGBEDSMALLKLARNANOOFF}'      Fail        Wrong Puffy Dog Bed Small size monthly payment for Klarna. Expected Result: ${PUFFYDOGBEDSMALLKLARNANOOFF} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_4365356662818 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PUFFYDOGBEDSMALLSPLITITNOOFF}'      Fail      Wrong Puffy Dog Bed Small size monthly payment for Splitit. Expected Result: ${PUFFYDOGBEDSMALLSPLITITNOOFF} Actual Result: ${Splitit}
Check Puffy Dog Bed Medium size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_4365356662818 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PUFFYDOGBEDMEDIUMKLARNANOOFF}'      Fail        Wrong Puffy Dog Bed Medium size monthly payment for Klarna. Expected Result: ${PUFFYDOGBEDMEDIUMKLARNANOOFF} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_4365356662818 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PUFFYDOGBEDMEDIUMSPLITITNOOFF}'      Fail      Wrong Puffy Dog Bed Medium size monthly payment for Splitit. Expected Result: ${PUFFYDOGBEDMEDIUMSPLITITNOOFF} Actual Result: ${Splitit}
Check Puffy Dog Bed Large size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_4365356662818 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PUFFYDOGBEDLARGEKLARNANOOFF}'      Fail        Wrong Puffy Dog Bed Large size monthly payment for Klarna. Expected Result: ${PUFFYDOGBEDLARGEKLARNANOOFF} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_4365356662818 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PUFFYDOGBEDLARGESPLITITNOOFF}'      Fail      Wrong Puffy Dog Bed Large size monthly payment for Splitit. Expected Result: ${PUFFYDOGBEDLARGESPLITITNOOFF} Actual Result: ${Splitit}

Check Puffy Rug Medium size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_4125949657122 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PUFFYRUGMEDIUMKLARNANOOFF}'      Fail        Wrong Puffy Rug Medium size monthly payment for Klarna. Expected Result: ${PUFFYDOGBEDMEDIUMKLARNANOOFF} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_4125949657122 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PUFFYRUGMEDIUMSPLITITNOOFF}'      Fail      Wrong Puffy Rug Medium size monthly payment for Splitit. Expected Result: ${PUFFYRUGMEDIUMSPLITITNOOFF} Actual Result: ${Splitit}
Check Puffy Rug Large size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_4125949657122 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PUFFYRUGLARGEKLARNANOOFF}'      Fail        Wrong Puffy Rug Large size monthly payment for Klarna. Expected Result: ${PUFFYDOGBEDLARGEKLARNANOOFF} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_4125949657122 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PUFFYRUGLARGESPLITITNOOFF}'      Fail      Wrong Puffy Rug Large size monthly payment for Splitit. Expected Result: ${PUFFYRUGLARGESPLITITNOOFF} Actual Result: ${Splitit}

##################################################################PRODUCT TOGGLE CHANGES##################################################################
Click on Puffy Lux Hybrid
    sleep                                       1s
    wait until page contains element            css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-type > div.hybrid-buttons > label.hybrid-buttons__item.hybrid-buttons__item--2 > span.hybrid-buttons__title
    Click element                               css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-type > div.hybrid-buttons > label.hybrid-buttons__item.hybrid-buttons__item--2 > span.hybrid-buttons__title
Click on Puffy Royal Hybrid
    sleep                                       1s
    wait until page contains element            css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-type > div.hybrid-buttons > label.hybrid-buttons__item.hybrid-buttons__item--2 > span.hybrid-buttons__title
    Click element                               css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-type > div.hybrid-buttons > label.hybrid-buttons__item.hybrid-buttons__item--2 > span.hybrid-buttons__title

###################################################################Compare Page Prices#################################################################

Get Puffy Mattress Price and compare to mid page
    sleep                                           1s
    ${PuffyMattressMinimumOriginalPricePDP}=        get text        css=#product_form_345108381730 > div.product-variants-holder > div > div > div > span > del > span.original-price
    ${PuffyMattressDiscountedPricePDP}=             get text        css=#product_form_345108381730 > div.product-variants-holder > div > div > div > span > span > span.original-price.jsDiscountedPrice
    ${PuffyMattressKlarnaPricePDP}=                 get text        css=#product_form_345108381730 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    #${PuffyMattressSplitItPricePDP}=                get text        css=#product_form_345108381730 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span

    Mouse Over          ${LOCMATTRESSES}
    sleep               2s
    Click element       ${LOCCOMPARE}
    Wait Until Page Contains    Puffy Mattress
    wait until page contains element                                        css=body > div.compare-page.content > div.compare-page__content > div.compare-boxes.is--puffy-mattress-and-puffy-lux > div:nth-child(2) > div > div.price-area > span > del
    ${PuffyMattressMinimumOriginalPriceComparePage}=        get text        css=body > div.compare-page.content > div.compare-page__content > div.compare-boxes.is--puffy-mattress-and-puffy-lux > div:nth-child(2) > div > div.price-area > span > del
    ${PuffyMattressDiscountedPriceComparePage}=             get text        css=body > div.compare-page.content > div.compare-page__content > div.compare-boxes.is--puffy-mattress-and-puffy-lux > div:nth-child(2) > div > div.price-area > span > span.price-area__price.jsDiscountedPrice
    ${PuffyMattressKlarnaPriceComparePage}=                 get text        css=body > div.compare-page.content > div.compare-page__content > div.compare-boxes.is--puffy-mattress-and-puffy-lux > div:nth-child(2) > div > div.finance-area.is--common > div:nth-child(1) > div > a > span.data-splitit-price.jsKlarna
    ${PuffyMattressSplitItPriceComparePage}=                get text        css=body > div.compare-page.content > div.compare-page__content > div.compare-boxes.is--puffy-mattress-and-puffy-lux > div:nth-child(2) > div > div.finance-area.is--common > div.finance-area__box.finance-area__box--separator > div > a > span.data-splitit-price.jsKlarna
    Run keyword if          '${PuffyMattressMinimumOriginalPricePDP}'!='${PuffyMattressMinimumOriginalPriceComparePage}'      Fail        Wrong Puffy Mattress Original in Comparison Page. Expected Result: ${PuffyMattressMinimumOriginalPricePDP} Actual Result: ${PuffyMattressMinimumOriginalPriceComparePage}
    Run keyword if          '${PuffyMattressDiscountedPricePDP}'!='${PuffyMattressDiscountedPriceComparePage}'      Fail        Wrong Puffy Mattress Discounted price in Comparison Page. Expected Result: ${PuffyMattressDiscountedPricePDP} Actual Result: ${PuffyMattressDiscountedPriceComparePage}
    Run keyword if          '${PuffyMattressKlarnaPricePDP}${text}'!='${PuffyMattressKlarnaPriceComparePage}'      Fail        Wrong Puffy Mattress Klarna Price in Comparison Page. Expected Result: ${PuffyMattressKlarnaPricePDP} Actual Result: ${PuffyMattressKlarnaPriceComparePage}
    Run keyword if          '${PUFFYMATTRESSTWINSPLITITMID350OFF}'!='${PuffyMattressSplitItPriceComparePage}'      Fail        Wrong Puffy Mattress SplitIt Price in Comparison Page. Expected Result: ${PUFFYMATTRESSTWINSPLITITMID350OFF} Actual Result: ${PuffyMattressSplitItPriceComparePage}

Get Puffy Lux Mattress Price and compare to mid page
    sleep                                           1s
    ${PuffyLuxMattressMinimumOriginalPricePDP}=     get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > div > span > del > span.original-price
    ${PuffyLuxMattressDiscountedPricePDP}=          get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > div > span > span > span.original-price.jsDiscountedPrice
    ${PuffyLuxMattressKlarnaPricePDP}=              get text        css=#product_form_549302042658 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    #${PuffyLuxMattressSplitItPricePDP}=             get text        css=#product_form_549302042658 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span

    Mouse Over          ${LOCMATTRESSES}
    sleep               2s
    Click element       ${LOCCOMPARE}
    Wait Until Page Contains    Puffy Mattress
    Wait until page contains element                                        css=body > div.compare-page.content > div.compare-page__content > div.compare-boxes.is--puffy-mattress-and-puffy-lux > div:nth-child(1) > div > div.price-area > span > del
    ${PuffyLuxMattressMinimumOriginalPriceComparePage}=     get text        css=body > div.compare-page.content > div.compare-page__content > div.compare-boxes.is--puffy-mattress-and-puffy-lux > div:nth-child(1) > div > div.price-area > span > del
    ${PuffyLuxMattressDiscountedPriceComparePage}=          get text        css=body > div.compare-page.content > div.compare-page__content > div.compare-boxes.is--puffy-mattress-and-puffy-lux > div:nth-child(1) > div > div.price-area > span > span.price-area__price.jsDiscountedPrice
    ${PuffyLuxMattressKlarnaPriceComparePage}=              get text        css=body > div.compare-page.content > div.compare-page__content > div.compare-boxes.is--puffy-mattress-and-puffy-lux > div:nth-child(1) > div > div.finance-area.is--common > div:nth-child(1) > div > a > span.data-splitit-price.jsKlarna
    ${PuffyLuxMattressSplitItPriceComparePage}=             get text        css=body > div.compare-page.content > div.compare-page__content > div.compare-boxes.is--puffy-mattress-and-puffy-lux > div:nth-child(1) > div > div.finance-area.is--common > div.finance-area__box.finance-area__box--separator > div > a > span.data-splitit-price.jsKlarna
    Run keyword if          '${PuffyLuxMattressMinimumOriginalPricePDP}'!='${PuffyLuxMattressMinimumOriginalPriceComparePage}'      Fail        Wrong Puffy Lux Mattress Original in Comparison Page. Expected Result: ${PuffyLuxMattressMinimumOriginalPricePDP} Actual Result: ${PuffyLuxMattressMinimumOriginalPriceComparePage}
    Run keyword if          '${PuffyLuxMattressDiscountedPricePDP}'!='${PuffyLuxMattressDiscountedPriceComparePage}'      Fail        Wrong Puffy Lux Mattress Discounted price in Comparison Page. Expected Result: ${PuffyLuxMattressDiscountedPricePDP} Actual Result: ${PuffyLuxMattressDiscountedPriceComparePage}
    Run keyword if          '${PuffyLuxMattressKlarnaPricePDP}${text}'!='${PuffyLuxMattressKlarnaPriceComparePage}'      Fail        Wrong Puffy Lux Mattress Klarna Price in Comparison Page. Expected Result: ${PuffyLuxMattressKlarnaPricePDP} Actual Result: ${PuffyLuxMattressKlarnaPriceComparePage}
    Run keyword if          '${PUFFYLUXMATTRESSTWINSPLITITMID350OFF}'!='${PuffyLuxMattressSplitItPriceComparePage}'      Fail        Wrong Puffy Lux Mattress SplitIt Price in Comparison Page. Expected Result: ${PUFFYLUXMATTRESSTWINSPLITITMID350OFF} Actual Result: ${PuffyLuxMattressSplitItPriceComparePage}

Get Puffy Lux Hybrid Mattress Price and compare to mid page
    sleep                                           1s
    ${PuffyLuxHybridMattressMinimumOriginalPricePDP}=     get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > div > span > del > span.hybrid-price
    sleep                                           1s
    ${PuffyLuxHybridMattressDiscountedPricePDP}=          get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > div > span > span > span.hybrid-price.jsDiscountedPrice
    ${PuffyLuxHybridMattressKlarnaPricePDP}=              get text        css=#product_form_549302042658 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    ${PuffyLuxHybridMattressSplitItPricePDP}=             get text        css=#product_form_549302042658 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span

    click link                                            link:Compare Hybrids
    Wait Until Page Contains element                                              css=body > div.compare-page > div.compare-page__content > div.compare-boxes.is--compare-hybrid-mattress-puffy-lux-and-royal > div:nth-child(2) > div > div.price-area > span > del
    ${PuffyLuxHybridMattressMinimumOriginalPriceComparePage}=     get text        css=body > div.compare-page > div.compare-page__content > div.compare-boxes.is--compare-hybrid-mattress-puffy-lux-and-royal > div:nth-child(2) > div > div.price-area > span > del
    ${PuffyLuxHybridMattressDiscountedPriceComparePage}=          get text        css=body > div.compare-page > div.compare-page__content > div.compare-boxes.is--compare-hybrid-mattress-puffy-lux-and-royal > div:nth-child(2) > div > div.price-area > span > span.price-area__price.jsDiscountedPrice
    ${PuffyLuxHybridMattressKlarnaPriceComparePage}=              get text        css=body > div.compare-page > div.compare-page__content > div.compare-boxes.is--compare-hybrid-mattress-puffy-lux-and-royal > div:nth-child(2) > div > div.finance-area.is--common > div:nth-child(1) > div > a > span.data-splitit-price.jsKlarna
    ${PuffyLuxHybridMattressSplitItPriceComparePage}=             get text        css=body > div.compare-page > div.compare-page__content > div.compare-boxes.is--compare-hybrid-mattress-puffy-lux-and-royal > div:nth-child(2) > div > div.finance-area.is--common > div.finance-area__box.finance-area__box--separator > div > a > span.data-splitit-price.jsKlarna
    Run keyword if          '${PuffyLuxHybridMattressMinimumOriginalPricePDP}'!='${PuffyLuxHybridMattressMinimumOriginalPriceComparePage}'      Fail        Wrong Puffy Lux Hybrid Mattress Original in Comparison Page. Expected Result: ${PuffyLuxHybridMattressMinimumOriginalPricePDP} Actual Result: ${PuffyLuxHybridMattressMinimumOriginalPriceComparePage}
    Run keyword if          '${PuffyLuxHybridMattressDiscountedPricePDP}'!='${PuffyLuxHybridMattressDiscountedPriceComparePage}'      Fail        Wrong Puffy Lux Hybrid Mattress Discounted price in Comparison Page. Expected Result: ${PuffyLuxHybridMattressDiscountedPricePDP} Actual Result: ${PuffyLuxHybridMattressDiscountedPriceComparePage}
    Run keyword if          '${PuffyLuxHybridMattressKlarnaPricePDP}${text}'!='${PuffyLuxHybridMattressKlarnaPriceComparePage}'      Fail        Wrong Puffy Lux Hybrid Mattress Klarna Price in Comparison Page. Expected Result: ${PuffyLuxHybridMattressKlarnaPricePDP} Actual Result: ${PuffyLuxHybridMattressKlarnaPriceComparePage}
    Run keyword if          '${PUFFYLUXHYBRIDTWINSPLITITMID350OFF}'!='${PuffyLuxHybridMattressSplitItPriceComparePage}'      Fail        Wrong Puffy Lux Hybrid Mattress SplitIt Price in Comparison Page. Expected Result: ${PUFFYLUXHYBRIDTWINSPLITITMID350OFF} Actual Result: ${PuffyLuxHybridMattressSplitItPriceComparePage}

Get Puffy Royal Hybrid Mattress Price and compare to mid PAGE
    sleep                                           1s
    ${PuffyRoyalHybridMattressMinimumOriginalPricePDP}=     get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > div > span > del > span.hybrid-price
    ${PuffyRoyalHybridMattressDiscountedPricePDP}=          get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > div > span > span > span.hybrid-price.jsDiscountedPrice
    ${PuffyRoyalHybridMattressKlarnaPricePDP}=              get text        css=#product_form_3832788910114 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    ${PuffyRoyalHybridMattressSplitItPricePDP}=             get text        css=#product_form_3832788910114 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span

    click link                                              link:Compare Hybrids
    Wait Until Page Contains element                                                css=body > div.compare-page > div.compare-page__content > div.compare-boxes.is--compare-hybrid-mattress-puffy-lux-and-royal > div:nth-child(1) > div > div.price-area > span > del
    ${PuffyRoyalHybridMattressMinimumOriginalPriceComparePage}=     get text        css=body > div.compare-page > div.compare-page__content > div.compare-boxes.is--compare-hybrid-mattress-puffy-lux-and-royal > div:nth-child(1) > div > div.price-area > span > del
    ${PuffyRoyalHybridMattressDiscountedPriceComparePage}=          get text        css=body > div.compare-page > div.compare-page__content > div.compare-boxes.is--compare-hybrid-mattress-puffy-lux-and-royal > div:nth-child(1) > div > div.price-area > span > span.price-area__price.jsDiscountedPrice
    ${PuffyRoyalHybridMattressKlarnaPriceComparePage}=              get text        css=body > div.compare-page > div.compare-page__content > div.compare-boxes.is--compare-hybrid-mattress-puffy-lux-and-royal > div:nth-child(1) > div > div.finance-area.is--common > div:nth-child(1) > div > a > span.data-splitit-price.jsKlarna
    ${PuffyRoyalHybridMattressSplitItPriceComparePage}=             get text        css=body > div.compare-page > div.compare-page__content > div.compare-boxes.is--compare-hybrid-mattress-puffy-lux-and-royal > div:nth-child(1) > div > div.finance-area.is--common > div.finance-area__box.finance-area__box--separator > div > a > span.data-splitit-price.jsKlarna
    Run keyword if          '${PuffyRoyalHybridMattressMinimumOriginalPricePDP}'!='${PuffyRoyalHybridMattressMinimumOriginalPriceComparePage}'      Fail        Wrong Puffy Royal Hybrid Mattress Original in Comparison Page. Expected Result: ${PuffyRoyalHybridMattressMinimumOriginalPricePDP} Actual Result: ${PuffyRoyalHybridMattressMinimumOriginalPriceComparePage}
    Run keyword if          '${PuffyRoyalHybridMattressDiscountedPricePDP}'!='${PuffyRoyalHybridMattressDiscountedPriceComparePage}'      Fail        Wrong Puffy Royal Hybrid Mattress Discounted price in Comparison Page. Expected Result: ${PuffyRoyalHybridMattressDiscountedPricePDP} Actual Result: ${PuffyRoyalHybridMattressDiscountedPriceComparePage}
    Run keyword if          '${PuffyRoyalHybridMattressKlarnaPricePDP}${text}'!='${PuffyRoyalHybridMattressKlarnaPriceComparePage}'      Fail        Wrong Puffy Royal Hybrid Mattress Klarna Price in Comparison Page. Expected Result: ${PuffyRoyalHybridMattressKlarnaPricePDP} Actual Result: ${PuffyRoyalHybridMattressKlarnaPriceComparePage}
    Run keyword if          '${PUFFYROYALHYBRIDTWINSPLITITMID350OFF}'!='${PuffyRoyalHybridMattressSplitItPriceComparePage}'      Fail        Wrong Puffy Royal Hybrid Mattress SplitIt Price in Comparison Page. Expected Result: ${PUFFYROYALHYBRIDTWINSPLITITMID350OFF} Actual Result: ${PuffyRoyalHybridMattressSplitItPriceComparePage}


#########################################################STORE PAGE###############################################################################

Check price in Store page for Puffy Mattress
    ${PuffyMattressMinOriginalStorePage}=     get text        css=#collectionProductsWrap > div:nth-child(1) > div > div.product-details > a.product-info__caption > span.price.sale > span.was_price > span
    Run keyword if          '${PUFFYMATTRESSTWINORIGINAL}'!='${PuffyMattressMinOriginalStorePage}'      Fail        Wrong Puffy Mattress "Starting From" Original amount in Store Page. Expected Result: ${PUFFYMATTRESSTWINORIGINAL} Actual Result: ${PuffyMattressMinOriginalStorePage}
    ${PuffyMattressMinDiscountedStorePage}=     get text        css=#collectionProductsWrap > div:nth-child(1) > div > div.product-details > a.product-info__caption > span.price.sale > span.money.jsDiscountedPrice
    Run keyword if          '${PUFFYMATTRESSTWIN350OFF}'!='${PuffyMattressMinDiscountedStorePage}'      Fail        Wrong Puffy Mattress "Starting From" discounted amount in Store Page. Expected Result: ${PUFFYMATTRESSTWIN350OFF} Actual Result: ${PuffyMattressMinDiscountedStorePage}

Check price in Store page for Puffy Lux Mattress
    ${PuffyLuxMattressMinOriginalStorePage}=     get text        css=#collectionProductsWrap > div:nth-child(2) > div > div.product-details > a.product-info__caption > span.price.sale > span.was_price > span
    Run keyword if          '${PUFFYLUXMATTRESSTWINORIGINAL}'!='${PuffyLuxMattressMinOriginalStorePage}'      Fail        Wrong Puffy Lux Mattress "Starting From" Original amount in Store Page. Expected Result: ${PUFFYLUXMATTRESSTWINORIGINAL} Actual Result: ${PuffyLuxMattressMinOriginalStorePage}
    ${PuffyLuxMinDiscountedStorePage}=     get text        css=#collectionProductsWrap > div:nth-child(2) > div > div.product-details > a.product-info__caption > span.price.sale > span.money.jsDiscountedPrice
    Run keyword if          '${PUFFYLUXMATTRESSTWIN350OFF}'!='${PuffyLuxMinDiscountedStorePage}'      Fail        Wrong Puffy Lux Mattress "Starting From" discounted amount in Store Page. Expected Result: ${PUFFYLUXMATTRESSTWIN350OFF} Actual Result: ${PuffyLuxMinDiscountedStorePage}
Check price in Store page for Puffy Royal Mattress
    ${PuffyRoyalMattressMinOriginalStorePage}=     get text        css=#collectionProductsWrap > div:nth-child(3) > div > div.product-details > a.product-info__caption > span.price.sale > span.was_price > span
    Run keyword if          '${PUFFYROYALMATTRESSTWINORIGINAL}'!='${PuffyRoyalMattressMinOriginalStorePage}'      Fail        Wrong Puffy Royal Mattress "Starting From" Original amount in Store Page. Expected Result: ${PUFFYROYALMATTRESSTWINORIGINAL} Actual Result: ${PuffyRoyalMattressMinOriginalStorePage}
    ${PuffyRoyalMinDiscountedStorePage}=     get text        css=#collectionProductsWrap > div:nth-child(3) > div > div.product-details > a.product-info__caption > span.price.sale > span.money.jsDiscountedPrice
    Run keyword if          '${PUFFYROYALMATTRESSTWIN350OFF}'!='${PuffyRoyalMinDiscountedStorePage}'      Fail        Wrong Puffy Royal Mattress "Starting From" discounted amount in Store Page. Expected Result: ${PUFFYROYALMATTRESSTWIN350OFF} Actual Result: ${PuffyRoyalMinDiscountedStorePage}
Check price in Store page for Puffy Foundation
    ${PuffyFoundationMinOriginalStorePage}=     get text        css=#collectionProductsWrap > div:nth-child(4) > div > div.product-details > a.product-info__caption > span.price > span
    Run keyword if          '${PUFFYFOUNDATIONTWINORIGINAL}'!='${PuffyFoundationMinOriginalStorePage}'      Fail        Wrong Puffy Foundation "Starting From" Original amount in Store Page. Expected Result: ${PUFFYFOUNDATIONTWINORIGINAL} Actual Result: ${PuffyFoundationMinOriginalStorePage}

Check price in Store page for Puffy Adjustable Base
    ${PuffyAdjustableBaseMinOriginalStorePage}=     get text        css=#collectionProductsWrap > div:nth-child(5) > div > div.product-details > a.product-info__caption > span.price.sale > span.was_price > span
    Run keyword if          '${PUFFYADJUSTABLEBASETWINXLORIGINAL}'!='${PuffyAdjustableBaseMinOriginalStorePage}'      Fail        Wrong Puffy Adjustable Base "Starting From" Original amount in Store Page. Expected Result: ${PUFFYADJUSTABLEBASETWINXLORIGINAL} Actual Result: ${PuffyAdjustableBaseMinOriginalStorePage}
    ${PuffyAdjustableBaseMinDiscountedStorePage}=     get text        css=#collectionProductsWrap > div:nth-child(5) > div > div.product-details > a.product-info__caption > span.price.sale > span.money.jsDiscountedPrice
    Run keyword if          '${PUFFYADJUSTABLEBASETWINXL350OFF}'!='${PuffyAdjustableBaseMinDiscountedStorePage}'      Fail        Wrong Puffy Adjustable Base "Starting From" discounted amount in Store Page. Expected Result: ${PUFFYADJUSTABLEBASETWINXL350OFF} Actual Result: ${PuffyAdjustableBaseMinDiscountedStorePage}

Check price in Store page for Puffy Bed Frame
    ${PuffyBedFrameMinOriginalStorePage}=     get text        css=#collectionProductsWrap > div:nth-child(6) > div > div.product-details > a.product-info__caption > span.price > span
    Run keyword if          '${PUFFYBEDFRAMEFULLORIGINAL}'!='${PuffyBedFrameMinOriginalStorePage}'      Fail        Wrong Puffy Bed Frame "Starting From" Original amount in Store Page. Expected Result: ${PUFFYBEDFRAMEFULLORIGINAL} Actual Result: ${PuffyBedFrameMinOriginalStorePage}
Check price in Store page for Puffy Pillow
    ${PuffyPillowMinOriginalStorePage}=     get text        css=#collectionProductsWrap > div:nth-child(7) > div > div.product-details > a.product-info__caption > span.price > span
    Run keyword if          '${PUFFYPILLOWSTANDARDORIGINAL}'!='${PuffyPillowMinOriginalStorePage}'      Fail        Wrong Puffy Pillow "Starting From" Original amount in Store Page. Expected Result: ${PUFFYPILLOWSTANDARDORIGINAL} Actual Result: ${PuffyPillowMinOriginalStorePage}
Check price in Store page for Puffy Body Pillow
    ${PuffyBodyPillowMinOriginalStorePage}=     get text        css=#collectionProductsWrap > div:nth-child(8) > div > div.product-details > a.product-info__caption > span.price > span
    Run keyword if          '${PUFFYBODYPILLOWORIGINAL}'!='${PuffyBodyPillowMinOriginalStorePage}'      Fail        Wrong Puffy Body Pillow "Starting From" Original amount in Store Page. Expected Result: ${PUFFYBODYPILLOWORIGINAL} Actual Result: ${PuffyBodyPillowMinOriginalStorePage}
Check price in Store page for Puffy Comforter
    ${PuffyComforterMinOriginalStorePage}=     get text        css=#collectionProductsWrap > div:nth-child(9) > div > div.product-details > a.product-info__caption > span.price > span
    Run keyword if          '${PUFFYCOMFORTERTWIN/TWINXLORIGINAL}'!='${PuffyComforterMinOriginalStorePage}'      Fail        Wrong Puffy Comforter "Starting From" Original amount in Store Page. Expected Result: ${PUFFYCOMFORTERTWIN/TWINXLORIGINAL} Actual Result: ${PuffyComforterMinOriginalStorePage}
Check price in Store page for Puffy Mattress Pad
    ${PuffyMattressPadMinOriginalStorePage}=     get text        css=#collectionProductsWrap > div:nth-child(10) > div > div.product-details > a.product-info__caption > span.price > span
    Run keyword if          '${PUFFYMATTRESSPADTWINORIGINAL}'!='${PuffyMattressPadMinOriginalStorePage}'      Fail        Wrong Puffy Mattress Pad "Starting From" Original amount in Store Page. Expected Result: ${PUFFYMATTRESSPADTWINORIGINAL} Actual Result: ${PuffyMattressPadMinOriginalStorePage}
Check price in Store page for Puffy Mattress Protector
    ${PuffyMattressProtectorMinOriginalStorePage}=     get text        css=#collectionProductsWrap > div:nth-child(11) > div > div.product-details > a.product-info__caption > span.price > span
    Run keyword if          '${PUFFYMATTRESSPROTECTORTWINORIGINAL}'!='${PuffyMattressProtectorMinOriginalStorePage}'      Fail        Wrong Puffy Mattress Protector "Starting From" Original amount in Store Page. Expected Result: ${PUFFYMATTRESSPROTECTORTWINORIGINAL} Actual Result: ${PuffyMattressProtectorMinOriginalStorePage}
Check price in Store page for Puffy Topper
    ${PuffyTopperMinOriginalStorePage}=     get text        css=#collectionProductsWrap > div:nth-child(12) > div > div.product-details > a.product-info__caption > span.price > span
    Run keyword if          '${PUFFYTOPPERTWINORIGINAL}'!='${PuffyTopperMinOriginalStorePage}'      Fail        Wrong Puffy Topper "Starting From" Original amount in Store Page. Expected Result: ${PUFFYTOPPERTWINORIGINAL} Actual Result: ${PuffyTopperMinOriginalStorePage}
Check price in Store page for Puffy Blanket
    ${PuffyBlanketMinOriginalStorePage}=     get text        css=#collectionProductsWrap > div:nth-child(13) > div > div.product-details > a.product-info__caption > span.price > span
    Run keyword if          '${PUFFYBLANKETSMALLORIGINAL}'!='${PuffyBlanketMinOriginalStorePage}'      Fail        Wrong Puffy Blanket "Starting From" Original amount in Store Page. Expected Result: ${PUFFYBLANKETSMALLORIGINAL} Actual Result: ${PuffyBlanketMinOriginalStorePage}
Check price in Store page for Puffy Weighted Blanket
    ${PuffyWeightedBlanketMinOriginalStorePage}=     get text        css=#collectionProductsWrap > div:nth-child(14) > div > div.product-details > a.product-info__caption > span.price > span
    Run keyword if          '${PUFFYWEIGHTEDBLANKETTWINORIGINAL}'!='${PuffyWeightedBlanketMinOriginalStorePage}'      Fail        Wrong Puffy Weighted Blanket "Starting From" Original amount in Store Page. Expected Result: ${PUFFYWEIGHTEDBLANKETTWINORIGINAL} Actual Result: ${PuffyWeightedBlanketMinOriginalStorePage}
Check price in Store page for Puffy Sheets
    ${PuffySheetsMinOriginalStorePage}=     get text        css=#collectionProductsWrap > div:nth-child(15) > div > div.product-details > a.product-info__caption > span.price > span
    Run keyword if          '${PUFFYSHEETSTWINORIGINAL}'!='${PuffySheetsMinOriginalStorePage}'      Fail        Wrong Puffy Sheets "Starting From" Original amount in Store Page. Expected Result: ${PUFFYSHEETSTWINORIGINAL} Actual Result: ${PuffySheetsMinOriginalStorePage}
Check price in Store page for Puffy Dog Bed
    ${PuffyDogBedMinOriginalStorePage}=     get text        css=#collectionProductsWrap > div:nth-child(16) > div > div.product-details > a.product-info__caption > span.price > span
    Run keyword if          '${PUFFYDOGBEDSMALLORIGINAL}'!='${PuffyDogBedMinOriginalStorePage}'      Fail        Wrong Puffy Dog Bed "Starting From" Original amount in Store Page. Expected Result: ${PUFFYDOGBEDSMALLORIGINAL} Actual Result: ${PuffyDogBedMinOriginalStorePage}
    ${PuffyDogBedMinDiscountedStorePage}=     get text        css=#collectionProductsWrap > div:nth-child(16) > div > div.product-details > a.product-info__caption > span.price.sale > span.money
    Run keyword if          '${PUFFYDOGBEDSMALLORIGINAL}'!='${PuffyDogBedMinDiscountedStorePage}'      Fail        Wrong Puffy Dog Bed "Starting From" Discounted amount in Store Page. Expected Result: ${PUFFYDOGBEDSMALLORIGINAL} Actual Result: ${PuffyDogBedMinDiscountedStorePage}
Check price in Store page for Puffy Rug
    ${PuffyRugMinOriginalStorePage}=     get text        css=#collectionProductsWrap > div:nth-child(17) > div > div.product-details > a.product-info__caption > span.price > span
    Run keyword if          '${PUFFYRUGMEDIUMORIGINAL}'!='${PuffyRugMinOriginalStorePage}'      Fail        Wrong Puffy Rug "Starting From" Original amount in Store Page. Expected Result: ${PUFFYRUGSMALLORIGINAL} Actual Result: ${PuffyRugMinOriginalStorePage}

####GIFT SHOP#####
Check price in GiftShop page for Puffy Pillow
    sleep                                   2s
    wait until page contains element                        css=body > div:nth-child(13) > div > div > div:nth-child(1) > div > a > div.product-box__content > div.product-box__desc > div.product-box__prices > strong
    ${PuffyPillowMinOriginalStorePage}=     get text        css=body > div:nth-child(13) > div > div > div:nth-child(1) > div > a > div.product-box__content > div.product-box__desc > div.product-box__prices > strong
    Run keyword if          '${PUFFYPILLOWSTANDARDORIGINAL}'!='${PuffyPillowMinOriginalStorePage}'      Fail        Wrong Puffy Pillow "Starting From" Original amount in Gift Page. Expected Result: ${PUFFYPILLOWSTANDARDORIGINAL} Actual Result: ${PuffyPillowMinOriginalStorePage}

Check price in GiftShop page for Puffy Comforter
    ${PuffyComforterMinOriginalStorePage}=     get text        css=body > div:nth-child(13) > div > div > div:nth-child(2) > div > a > div.product-box__content > div.product-box__desc > div.product-box__prices > strong
    Run keyword if          '${PUFFYCOMFORTERTWIN/TWINXLORIGINAL}'!='${PuffyComforterMinOriginalStorePage}'      Fail        Wrong Puffy Comforter "Starting From" Original amount in Gift Page. Expected Result: ${PUFFYCOMFORTERTWIN/TWINXLORIGINAL} Actual Result: ${PuffyComforterMinOriginalStorePage}

Check price in GiftShop page for Puffy Weighted Blanket
    ${PuffyWeightedBlanketMinOriginalStorePage}=     get text        css=body > div:nth-child(13) > div > div > div:nth-child(3) > div > a > div.product-box__content > div.product-box__desc > div.product-box__prices > strong
    Run keyword if          '${PUFFYWEIGHTEDBLANKETTWINORIGINAL}'!='${PuffyWeightedBlanketMinOriginalStorePage}'      Fail        Wrong Puffy Weighted Blanket "Starting From" Original amount in Gift Page. Expected Result: ${PUFFYWEIGHTEDBLANKETTWINORIGINAL} Actual Result: ${PuffyWeightedBlanketMinOriginalStorePage}

Check price in GiftShop page for Puffy Mattress Pad
    ${PuffyMattressPadMinOriginalStorePage}=     get text        css=body > div:nth-child(13) > div > div > div:nth-child(4) > div > a > div.product-box__content > div.product-box__desc > div.product-box__prices > strong
    Run keyword if          '${PUFFYMATTRESSPADTWINORIGINAL}'!='${PuffyMattressPadMinOriginalStorePage}'      Fail        Wrong Puffy Mattress Pad "Starting From" Original amount in Gift Page. Expected Result: ${PUFFYMATTRESSPADTWINORIGINAL} Actual Result: ${PuffyMattressPadMinOriginalStorePage}

Check price in GiftShop page for Puffy Mattress Topper
    ${PuffyTopperMinOriginalStorePage}=     get text        css=body > div:nth-child(13) > div > div > div:nth-child(5) > div > a > div.product-box__content > div.product-box__desc > div.product-box__prices > strong
    Run keyword if          '${PUFFYTOPPERTWINORIGINAL}'!='${PuffyTopperMinOriginalStorePage}'      Fail        Wrong Puffy Topper "Starting From" Original amount in Gift Page. Expected Result: ${PUFFYTOPPERTWINORIGINAL} Actual Result: ${PuffyTopperMinOriginalStorePage}

Check price in GiftShop page for Puffy Mattress Protector
    ${PuffyMattressProtectorMinOriginalStorePage}=     get text        css=body > div:nth-child(13) > div > div > div:nth-child(6) > div > a > div.product-box__content > div.product-box__desc > div.product-box__prices > strong
    Run keyword if          '${PUFFYMATTRESSPROTECTORTWINORIGINAL}'!='${PuffyMattressProtectorMinOriginalStorePage}'      Fail        Wrong Puffy Mattress Protector "Starting From" Original amount in Gift Page. Expected Result: ${PUFFYMATTRESSPROTECTORTWINORIGINAL} Actual Result: ${PuffyMattressProtectorMinOriginalStorePage}

Check price in GiftShop page for Puffy Blanket
    ${PuffyBlanketMinOriginalStorePage}=     get text        css=body > div.text-bar.text-bar--medium-text.text-bar--gift-shop > div > div > div:nth-child(2) > div > div:nth-child(1) > div > a > div.product-box__content > div.product-box__desc > div.product-box__prices > strong
    Run keyword if          '${PUFFYBLANKETSMALLORIGINAL}'!='${PuffyBlanketMinOriginalStorePage}'      Fail        Wrong Puffy Blanket "Starting From" Original amount in Gift Page. Expected Result: ${PUFFYBLANKETSMALLORIGINAL} Actual Result: ${PuffyBlanketMinOriginalStorePage}

Check price in GiftShop page for Puffy Body Pillow
    ${PuffyBodyPillowMinOriginalStorePage}=     get text        css=body > div.text-bar.text-bar--medium-text.text-bar--gift-shop > div > div > div:nth-child(2) > div > div:nth-child(2) > div > a > div.product-box__content > div.product-box__desc > div.product-box__prices > strong
    Run keyword if          '${PUFFYBODYPILLOWORIGINAL}'!='${PuffyBodyPillowMinOriginalStorePage}'      Fail        Wrong Puffy Body Pillow "Starting From" Original amount in Gift Page. Expected Result: ${PUFFYBODYPILLOWORIGINAL} Actual Result: ${PuffyBodyPillowMinOriginalStorePage}

Check price in GiftShop page for Puffy RUG
    ${PuffyRugMinOriginalStorePage}=     get text        css=body > div.text-bar.text-bar--medium-text.text-bar--gift-shop > div > div > div:nth-child(2) > div > div:nth-child(3) > div > a > div.product-box__content > div.product-box__desc > div.product-box__prices > strong
    Run keyword if          '${PuffyRugMediumOriginal}'!='${PuffyRugMinOriginalStorePage}'      Fail        Wrong Puffy Rug "Starting From" Original amount in Gift Page. Expected Result: ${PUFFYRUGSMALLORIGINAL} Actual Result: ${PuffyRugMinOriginalStorePage}

Check price in GiftShop page for Puffy Mattress
    ${PuffyMattressMinOriginalStorePage}=     get text        css=body > div:nth-child(16) > div > div > div:nth-child(1) > div > a > div.product-box__content > div.product-box__desc > div.product-box__prices > span > del
    Run keyword if          '${PUFFYMATTRESSTWINORIGINAL}'!='${PuffyMattressMinOriginalStorePage}'      Fail        Wrong Puffy Mattress "Starting From" Original amount in Gift Page. Expected Result: ${PUFFYMATTRESSTWINORIGINAL} Actual Result: ${PuffyMattressMinOriginalStorePage}

Check price in GiftShop page for Puffy Lux Hybrid
    ${PuffyLuxMattressMinOriginalStorePage}=     get text        css=body > div:nth-child(16) > div > div > div:nth-child(2) > div > a > div.product-box__content > div.product-box__desc > div.product-box__prices > span > del
    Run keyword if          '${PUFFYLUXMATTRESSTWINORIGINAL}'!='${PuffyLuxMattressMinOriginalStorePage}'      Fail        Wrong Puffy Lux Mattress "Starting From" Original amount in Gift Page. Expected Result: ${PUFFYLUXMATTRESSTWINORIGINAL} Actual Result: ${PuffyLuxMattressMinOriginalStorePage}

Check price in GiftShop page for Puffy Royal Hybrid
    ${PuffyRoyalMattressMinOriginalStorePage}=     get text        css=body > div:nth-child(16) > div > div > div:nth-child(3) > div > a > div.product-box__content > div.product-box__desc > div.product-box__prices > span > del
    Run keyword if          '${PUFFYROYALMATTRESSTWINORIGINAL}'!='${PuffyRoyalMattressMinOriginalStorePage}'      Fail        Wrong Puffy Royal Mattress "Starting From" Original amount in Gift Page. Expected Result: ${PUFFYROYALMATTRESSTWINORIGINAL} Actual Result: ${PuffyRoyalMattressMinOriginalStorePage}

Check price in GiftShop page for Puffy Adjustable Base
    ${PuffyAdjustableBaseMinOriginalStorePage}=     get text        css=body > div.text-bar.text-bar--medium-text.is--gray > div > div.text-bar__content.text-bar__content--single > div > div > div:nth-child(1) > div > a > div.product-box__content > div.product-box__desc > div.product-box__prices > span > del
    Run keyword if          '${PUFFYADJUSTABLEBASETWINXLORIGINAL}'!='${PuffyAdjustableBaseMinOriginalStorePage}'      Fail        Wrong Puffy Adjustable Base "Starting From" Original amount in Gift Page. Expected Result: ${PUFFYADJUSTABLEBASETWINXLORIGINAL} Actual Result: ${PuffyAdjustableBaseMinOriginalStorePage}

Check price in GiftShop page for Puffy Foundation
    ${PuffyFoundationMinOriginalStorePage}=     get text        css=body > div.text-bar.text-bar--medium-text.is--gray > div > div.text-bar__content.text-bar__content--single > div > div > div:nth-child(2) > div > a > div.product-box__content > div.product-box__desc > div.product-box__prices > strong
    Run keyword if          '${PUFFYFOUNDATIONTWINORIGINAL}'!='${PuffyFoundationMinOriginalStorePage}'      Fail        Wrong Puffy Foundation "Starting From" Original amount in Gift Page. Expected Result: ${PUFFYFOUNDATIONTWINORIGINAL} Actual Result: ${PuffyFoundationMinOriginalStorePage}

Check price in GiftShop page for Puffy Bed Frame
    ${PuffyBedFrameMinOriginalStorePage}=     get text        css=body > div.text-bar.text-bar--medium-text.is--gray > div > div.text-bar__content.text-bar__content--single > div > div > div:nth-child(3) > div > a > div.product-box__content > div.product-box__desc > div.product-box__prices > strong
    Run keyword if          '${PUFFYBEDFRAMEFULLORIGINAL}'!='${PuffyBedFrameMinOriginalStorePage}'      Fail        Wrong Puffy Bed Frame "Starting From" Original amount in Gift Page. Expected Result: ${PUFFYBEDFRAMEFULLORIGINAL} Actual Result: ${PuffyBedFrameMinOriginalStorePage}

Switch to Version A
    Click element   ${LOCTOGGLEA}
Switch to Version B
    Click element   ${LOCTOGGLEA}
    sleep                           10s
Switch to Version C
    Click element   ${LOCTOGGLEC}


Keyfail
    Capture Page Screenshot


Go to Finance page
    Click link                  link:Financing
Click Klarna See Details link
    Scroll element into view    css=body > div.text-bar.text-bar--financing > div.text-bar__inner > div > div.text-bar__klarna > a
    Click element               css=body > div.text-bar.text-bar--financing > div.text-bar__inner > div > div.text-bar__klarna > a
Check amount in Pay as low as for Klarna
    ${KlarnaPayAsLow}=     get text        css=body > div.financing__klarna > div.featured-financing.text-bar > div.featured-financing__desc > strong
    Run keyword if          '${$350PUFFYFINANCINGPAGEKLARNA}'!='${KlarnaPayAsLow}'      Fail        Wrong Amount for Klarna "Pay as low as" section. Expected Result: ${$350PuffyFinancingPageKlarna} Actual Result: ${KlarnaPayAsLow}

Scroll Up to Splitit
    Scroll Element Into View                css=body > div.text-bar.text-bar--financing > div.text-bar__inner > div > div.text-bar__splitit > div
Check amount in Pay as low as for SplitIt
    ${SplitItPayAsLow}=     get text        css=body > div.financing__splitit > div.featured-financing.text-bar > div.featured-financing__desc > strong
    Run keyword if          '${$350PUFFYFINANCINGPAGESPLITIT}'!='${SplitItPayAsLow}'      Fail      Wrong Amount for SplitIt "Pay as low as" section. Expected Result: ${$350PuffyFinancingPageSplitIt} Actual Result: ${SplitItPayAsLow}
Click Splitit See Details link
    wait until page contains element    css=body > div.text-bar.text-bar--financing > div.text-bar__inner > div > div.text-bar__splitit > a
    Click element                       css=body > div.text-bar.text-bar--financing > div.text-bar__inner > div > div.text-bar__splitit > a

Go to Discount page
    Go To                    https://puffy.com/pages/puffy-discount-code

Check discount details 1
    ${DiscountDetails1}=     get text        css=body > div.text-bar.is--blue > div > h2 > strong > span:nth-child(1)
    Run keyword if          '${DISCOUNTCODEPAGEDETAILS1}'!='${DiscountDetails1}'      Fail      Wrong Amount for SplitIt "Pay as low as" section. Expected Result: ${DISCOUNTCODEPAGEDETAILS1} Actual Result: ${DiscountDetails1}

Check discount details 2
    ${DiscountDetails2}=     get text        css=body > div.text-bar.is--blue > div > h2 > strong > span:nth-child(3)
    Run keyword if          '${DISCOUNTCODEPAGEDETAILS2}'!='${DiscountDetails2}'      Fail      Wrong Amount for SplitIt "Pay as low as" section. Expected Result: ${DISCOUNTCODEPAGEDETAILS2} Actual Result: ${DiscountDetails2}
Scroll down to Mattress Financing with Klarna
    Scroll Element Into View                    css=body > div.text-bar.is--gray.no-top-padding > div > h2

Scroll down to Mattress Payment plans with Splitit
    Scroll Element Into View                    css=body > div:nth-child(16) > div > h2
Check amount in Pay as low as for Klarna Discount Page
    ${KlarnaPayAsLow}=     get text        css=body > div.text-bar.is--gray.no-bottom-padding > div > div > strong
    Run keyword if          '${PUFFYDISCOUNTPAGEKLARNA}'!='${KlarnaPayAsLow}'      Fail        Wrong Amount for Klarna "Pay as low as" section. Expected Result: ${PUFFYDISCOUNTPAGEKLARNA} Actual Result: ${KlarnaPayAsLow}

Check amount in Pay as low as for SplitIt Discount Page
    ${SplitItPayAsLow}=     get text        css=body > div:nth-child(16) > div > div > strong
    Run keyword if          '${PUFFYDISCOUNTPAGESPLITIT}'!='${SplitItPayAsLow}'      Fail        Wrong Amount for Klarna "Pay as low as" section. Expected Result: ${PUFFYDISCOUNTPAGESPLITIT} Actual Result: ${SplitItPayAsLow}

Go to Save350 page
    Go to                           ${SAVE350}
    wait until page contains        Congratulations

Go to homepage
    Go to                           ${HOMEPAGE}
Go to checkout
    Go to                           https://puffy.com/17400017/checkouts/5619f740ae3cd56f1ca86f6ffec3626a?channel=online_store&preview_checkout_version=2021-01-25


#===================================SMOKE TEST===========================================================================================================================
*** Keywords ***

Go to Homepage (Click on Puffy Logo)
    sleep       2s
    Wait until page contains element    ${LOCLOGO}
    Click Element       ${LOCLOGO}
    sleep                                   2s
    Wait until page contains                Puffy Mattress
    wait until page contains element       css=body > div.index-sections > div.hero-area.is--mobile-reversed > div.hero-area__box.hero-area__box--hero-image > div > div.b-hero__inner > div.b-hero__content > h1
    ${Content}=            get text        css=body > div.index-sections > div.hero-area.is--mobile-reversed > div.hero-area__box.hero-area__box--hero-image > div > div.b-hero__inner > div.b-hero__content > h1
    Run keyword if          '${Content}'!='${TEXTPUFFYMATTRESSH1}'                Fail        Homepage main title (H1) not found Expected: ${TEXTPUFFYMATTRESSH1} Actual: ${Content}

Go to Puffy Lux Homepage
    sleep                   2s
    Click Link           link:Puffy Lux
    sleep                                   2s
    Wait until page contains                Puffy Lux Mattress
    Location should be                     https://puffy.com/pages/puffy-lux-mattress
    ${Content}=            get text        css=body > div.index-sections > div.hero-area.is--mobile-reversed > div.hero-area__box.hero-area__box--hero-image > div > div.b-hero__inner > div.b-hero__content > h1
    Run keyword if          '${Content}'!='${TEXTPUFFYLUXMATTRESSH1}'                Fail        Homepage main title (H1) not found Expected: ${TEXTPUFFYLUXMATTRESSH1} Actual: ${Content}

Go to Puffy Hybrid Homepage
    sleep                   5s
    Click Link           link:Puffy Hybrid
    sleep                                   2s
    Wait until page contains                Puffy Hybrid Mattress
    ${Content}=            get text        css=body > div.index-sections > div.hero-area.is--mobile-reversed > div.hero-area__box.hero-area__box--hero-image > div > div.b-hero__inner > div.b-hero__content > h1
    Run keyword if          '${Content}'!='${TEXTPUFFYHYBRIDMATTRESSH1}'                Fail        Homepage main title (H1) not found Expected: ${TEXTPUFFYHYBRIDMATTRESSH1} Actual: ${Content}

Check Seasonal Sale text on Homepage
    sleep                   2s
    ${Content}=            get text        css=#SPRING_SALE_NOW_300_OFF_2_FREE_PILLOW > tspan:nth-child(1)
    Run keyword if          "${Content}"!="${SALENAME}"        Fail        Wrong Seasonal Sale text on homepage Expected: ${SALENAME} Actual: ${Content}
Check Seasonal Sale text on Homepage (HYBRID)
    sleep                   2s
    ${Content}=            get text        css=#SPRING_SALE_NOW_300_OFF_2_FREE_PILLOW > tspan:nth-child(1)
    Run keyword if          "${Content}"!="${SALENAME}"        Fail        Wrong Seasonal Sale text on homepage Expected: ${SALENAME} Actual: ${Content}
Check discount value and freebie on Homepage
    ${Content}=            get text        css=#SPRING_SALE_NOW_300_OFF_2_FREE_PILLOW > tspan:nth-child(2)
    Run keyword if          "${Content}"!="${SALE350DETAILS}"         Fail        Wrong discount value and freebie text on homepage Expected: ${SALE350DETAILS} Actual: ${Content}
Check discount value and freebie on Homepage (HYBRID)
    ${Content}=            get text        css=#SPRING_SALE_NOW_300_OFF_2_FREE_PILLOW > tspan:nth-child(2)
    Run keyword if          "${Content}"!="${SALE350DETAILS}"         Fail        Wrong discount value and freebie text on homepage Expected: ${SALE350DETAILS} Actual: ${Content}

Check discount value and freebie on Mattress PDPs
    ${Content}=            get text        css=#NEW_YEAR_S_SALE_FREE_ACCESSORIES_UP_TO_440 > tspan.cls-mattress-badge3
    Run keyword if          "${Content}"!="${SALE350DETAILS}"         Fail        Wrong discount value and freebie text on mattress PDP Expected: ${SALE350DETAILS} Actual: ${Content}

Go to Store page
    sleep                   2s
    Click Link           link:Puffy Store
    sleep                   2s
    ${Content}=            get text        css=#collectionTitle
    Run keyword if          '${Content}'!='${TEXTPUFFYSTOREH1}'                Fail        Store main title (H1) not found Expected: ${TEXTPUFFYSTOREH1} Actual: ${Content}
    Scroll Element Into View            css=#collectionProductsWrap > div:nth-child(2) > div > div.product-details > a.product-info__caption > span.price.sale > span.money.jsDiscountedPrice
    sleep                               2s
    Scroll Element Into View            css=#collectionProductsWrap > div:nth-child(4) > div > div.product-details > a.action_button.button.shop-now

Check Seasonal Sale text on badges (Store/Giftshop Page)
    sleep                   2s
    ${Content}=            get text        css=#VALENTINE_S_DAY_SALE_NOW > tspan
    Run keyword if          "${Content}"!="${SALENAME}"            Fail        Wrong Seasonal Sale text on badges Expected: ${SALENAME} Actual: ${Content}
Check Seasonal Sale text on badges (PDP)
    sleep                   2s
    ${Content}=            get text        css=#NEW_YEAR_S_SALE_FREE_ACCESSORIES_UP_TO_440 > tspan:nth-child(1)
    Run keyword if          "${Content}"!="${SALENAME}"            Fail        Wrong Seasonal Sale text on badges Expected: ${Sale Name} Actual: ${Content}
Check Seasonal Sale text on badges (PDP Adjustable Base)
    sleep                   2s
    ${Content}=            get text        css=#NEW_YEAR_S_SALE_FREE_ACCESSORIES_UP_TO_440 > tspan:nth-child(1)
    Run keyword if          "${Content}"!="${SALENAME}"            Fail        Wrong Seasonal Sale text on badges Expected: ${Sale Name} Actual: ${Content}
Check discount value and freebie on badges for mattresses
    sleep                   2s
    ${Content}=            get text        css=#_300_OFF_FREE_PILLOW > tspan
    Run keyword if          "${Content}"!="${SALE350DETAILS}"         Fail        Wrong discount value and freebie text on badges for mattress Expected: ${SALE350DETAILS} Actual: ${Content}

Go to Gift Shop page
    sleep                   5s
    Click link              link:Gift Shop
    sleep                   2s
    ${Content}=            get text        css=body > div.container.main.content > div.top-banner.top-banner--gift-shop.mobile--left-aligned > div.top-banner__inner > div > h1 > span.top-banner__mobile-block
    Run keyword if          '${Content}'!='${TEXTPUFFYGIFTSHOPH1}'                Fail        Store main title (H1) not found Expected: ${TEXTPUFFYGIFTSHOPH1} Actual: ${Content}
    Scroll Element Into View            css=body > div.container.main.content > div:nth-child(7) > div > div > div:nth-child(2) > div > a > div.product-box__media.product-box__media--white > div.image-element__wrap
    sleep                               2s
    Scroll Element Into View            css=body > div.container.main.content > div.text-bar.text-bar--medium-text.is--gray > div > div.text-bar__content.text-bar__content--single > div > div > div:nth-child(1) > div > a > div.product-box__content > div.product-box__desc > div.product-box__title

Check discount value on badges for adjustable base
    sleep                   2s
    ${Content}=            get text        css=#_300_OFF > tspan
    Run keyword if          '${Content}'!='${DISCOUNTAMOUNT350}'      Fail        Wrong discount value text on badge for adjustable base Expected: ${DISCOUNTAMOUNT350} Actual: ${Content}

Check discount value on Adjustable Base PDP
    sleep                   2s
    ${Content}=            get text        css=#NEW_YEAR_S_SALE_FREE_ACCESSORIES_UP_TO_440 > tspan.cls-mattress-badge3
    Run keyword if          '${Content}'!='${DISCOUNTAMOUNT350}'      Fail        Wrong discount value on adjustable base PDP Expected: ${DISCOUNTAMOUNT350} Actual: ${Content}


Click on Puffy Lux Memory Foam Toggle
    Wait Until Element Is Visible       css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-type > div.hybrid-buttons > label.hybrid-buttons__item.hybrid-buttons__item--1 > span.hybrid-buttons__sub-title
    Click element       css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-type > div.hybrid-buttons > label.hybrid-buttons__item.hybrid-buttons__item--1 > span.hybrid-buttons__sub-title
    ${Content}=            get text         ${LOC12REASONSPDP}
    Run keyword if         '${Content}'!='${TEXTPUFFYLUXMATTRESSH2}'               Fail        Product Name (H1) not found Expected: ${TEXTPUFFYLUXMATTRESSH2} Actual: ${Content}
#enhancement

Click on Puffy Lux Hybrid Toggle
    Click element       css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-type > div.hybrid-buttons > label.hybrid-buttons__item.hybrid-buttons__item--2
    ${Content}=            get text         ${LOC12REASONSPDP}
    Run keyword if         '${Content}'!='${TEXTPUFFYLUXHYBRIDMATTRESSH2}'               Fail        Product Name (H1) not found Expected: ${TEXTPUFFYLUXHYBRIDMATTRESSH2} Actual: ${Content}
#enhancement



Click on Puffy Royal Memory Foam Toggle
    Wait Until Element Is Visible       css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-type > div.hybrid-buttons > label.hybrid-buttons__item.hybrid-buttons__item--1 > span.hybrid-buttons__sub-title
    Click element       css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-type > div.hybrid-buttons > label.hybrid-buttons__item.hybrid-buttons__item--1 > span.hybrid-buttons__sub-title
    ${Content}=            get text         ${LOC12REASONSPDP}
    Run keyword if         '${Content}'!='${TEXTPUFFYROYALMATTRESSH2}'               Fail        Product Name (H1) not found Expected: ${TEXTPUFFYROYALMATTRESSH2} Actual: ${Content}
#enhancement

Click on Puffy Royal Hybrid Toggle
    Wait Until Element Is Visible       css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-type > div.hybrid-buttons > label.hybrid-buttons__item.hybrid-buttons__item--2
    Click element       css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-type > div.hybrid-buttons > label.hybrid-buttons__item.hybrid-buttons__item--2
    ${Content}=            get text         ${LOC12REASONSPDP}
    Run keyword if         '${Content}'!='${TEXTPUFFYROYALHYBRIDMATTRESSH2}'               Fail        Product Name (H1) not found Expected: ${TEXTPUFFYROYALHYBRIDMATTRESSH2} Actual: ${Content}
#enhancement


Go to Puffy Sheets
    Mouse Over          ${LOCBEDDING}
    sleep               2s
    Click element       ${LOCSHEETS}
    sleep               2s
    Wait Until Page Contains    12 REASONS TO CHOOSE
    ${Content}=         get text        css=#shopify-section-product-puffy-template > div.container.main.content.product-name--puffy-sheets > div > div > div > div > div.seven.columns.medium-down--one-whole.alpha > div > div.product-head.product-head--smaller > div > div.product-head__headline > h1 > span
    Run keyword if      '${Content}'!='${TEXTPUFFYSHEETSH1}'          Fail        Product name (H1) not found on the page Expected: ${TEXTPUFFYSHEETSH1} Actual: ${Content}


Click Puffy Lux Size dropdown
    Click element       css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div

Click Puffy Royal Size dropdown
    Click element       css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > div


Check Puffy Mattress original prices (all sizes)
    Wait Until Element Is Visible          css=#product_form_345108381730 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > del > span.original-price
    ${Content}=            get text        css=#product_form_345108381730 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PUFFYMATTRESSTWINORIGINAL}'        Fail       Wrong original price for Puffy Mattress Twin Expected: ${PUFFYMATTRESSTWINORIGINAL} Actual: ${Content}
    ${Content}=            get text        css=#product_form_345108381730 > div.product-variants-holder > div > div > ul > li:nth-child(2) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PUFFYMATTRESSTWINXLORIGINAL}'      Fail       Wrong original price for Puffy Mattress Twin XL Expected: ${PUFFYMATTRESSTWINXLORIGINAL} Actual: ${Content}
    ${Content}=            get text        css=#product_form_345108381730 > div.product-variants-holder > div > div > ul > li:nth-child(3) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PUFFYMATTRESSFULLORIGINAL}'        Fail       Wrong original price for Puffy Mattress Full Expected: ${PUFFYMATTRESSFULLORIGINAL} Actual: ${Content}
    ${Content}=            get text        css=#product_form_345108381730 > div.product-variants-holder > div > div > ul > li:nth-child(4) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PUFFYMATTRESSQUEENORIGINAL}'       Fail       Wrong original price for Puffy Mattress Queen Expected: ${PUFFYMATTRESSQUEENORIGINAL} Actual: ${Content}
    ${Content}=            get text        css=#product_form_345108381730 > div.product-variants-holder > div > div > ul > li:nth-child(5) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PUFFYMATTRESSKINGORIGINAL}'        Fail       Wrong original price for Puffy Mattress King Expected: ${PUFFYMATTRESSKINGORIGINAL} Actual: ${Content}
    ${Content}=            get text        css=#product_form_345108381730 > div.product-variants-holder > div > div > ul > li:nth-child(6) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PUFFYMATTRESSCALKINGORIGINAL}'     Fail       Wrong original price for Puffy Mattress Cal King Expected: ${PUFFYMATTRESSCALKINGORIGINAL} Actual: ${Content}

Check Puffy Mattress 350OFF prices (all sizes)
    Wait Until Element Is Visible          css=#product_form_345108381730 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > span > span.original-price.jsDiscountedPrice
    ${Content}=            get text        css=#product_form_345108381730 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PUFFYMATTRESSTWIN350OFF}'          Fail        Wrong Discounted price for Puffy Mattress Twin Expected: ${PUFFYMATTRESSTWIN350OFF} Actual: ${Content}
    ${Content}=            get text        css=#product_form_345108381730 > div.product-variants-holder > div > div > ul > li:nth-child(2) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PUFFYMATTRESSTWINXL350OFF}'        Fail        Wrong Discounted price for Puffy Mattress Twin XL Expected: ${PUFFYMATTRESSTWINXL350OFF} Actual: ${Content}
    ${Content}=            get text        css=#product_form_345108381730 > div.product-variants-holder > div > div > ul > li:nth-child(3) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PUFFYMATTRESSFULL350OFF}'          Fail        Wrong Discounted price for Puffy Mattress Full Expected: ${PUFFYMATTRESSFULL350OFF} Actual: ${Content}
    ${Content}=            get text        css=#product_form_345108381730 > div.product-variants-holder > div > div > ul > li:nth-child(4) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PUFFYMATTRESSQUEEN350OFF}'         Fail        Wrong Discounted price for Puffy Mattress Queen Expected: ${PUFFYMATTRESSQUEEN350OFF} Actual: ${Content}
    ${Content}=            get text        css=#product_form_345108381730 > div.product-variants-holder > div > div > ul > li:nth-child(5) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PUFFYMATTRESSKING350OFF}'          Fail        Wrong Discounted price for Puffy Mattress King Expected: ${PUFFYMATTRESSKING350OFF} Actual: ${Content}
    ${Content}=            get text        css=#product_form_345108381730 > div.product-variants-holder > div > div > ul > li:nth-child(6) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PUFFYMATTRESSCALKING350OFF}'       Fail        Wrong Discounted price for Puffy Mattress Cal King Expected: ${PUFFYMATTRESSCALKING350OFF} Actual: ${Content}

Check Puffy Lux original prices (all sizes)
    Wait Until Element Is Visible          css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > del > span.original-price
    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PUFFYLUXMATTRESSTWINORIGINAL}'         Fail        Wrong original price for Puffy Lux Mattress Twin Expected: ${PUFFYLUXMATTRESSTWINORIGINAL} Actual: ${Content}
    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(2) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PUFFYLUXMATTRESSTWINXLORIGINAL}'       Fail        Wrong original price for Puffy Lux Mattress Twin XL Expected: ${PUFFYLUXMATTRESSTWINXLORIGINAL} Actual: ${Content}
    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(3) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PUFFYLUXMATTRESSFULLORIGINAL}'         Fail        Wrong original price for Puffy Lux Mattress Full Expected: ${PUFFYLUXMATTRESSFULLORIGINAL} Actual: ${Content}
    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(4) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PUFFYLUXMATTRESSQUEENORIGINAL}'        Fail        Wrong original price for Puffy Lux Mattress Queen Expected: ${PUFFYLUXMATTRESSQUEENORIGINAL} Actual: ${Content}
    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(5) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PUFFYLUXMATTRESSKINGORIGINAL}'         Fail        Wrong original price for Puffy Lux Mattress King Expected: ${PUFFYLUXMATTRESSKINGORIGINAL} Actual: ${Content}
    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(6) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PUFFYLUXMATTRESSCALKINGORIGINAL}'      Fail        Wrong original price for Puffy Lux Mattress Cal King Expected: ${PUFFYLUXMATTRESSCALKINGORIGINAL} Actual: ${Content}

Check Puffy Lux 350OFF prices (all sizes)
    Wait Until Element Is Visible          css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > span > span.original-price.jsDiscountedPrice
    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PUFFYLUXMATTRESSTWIN350OFF}'           Fail        Wrong Discounted price for Puffy Lux Mattress Twin Expected: ${PUFFYLUXMATTRESSTWIN350OFF} Actual: ${Content}
    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(2) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PUFFYLUXMATTRESSTWINXL350OFF}'         Fail        Wrong Discounted price for Puffy Lux Mattress Twin XL Expected: ${PUFFYLUXMATTRESSTWINXL350OFF} Actual: ${Content}
    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(3) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PUFFYLUXMATTRESSFULL350OFF}'           Fail        Wrong Discounted price for Puffy Lux Mattress Full Expected: ${PUFFYLUXMATTRESSFULL350OFF} Actual: ${Content}
    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(4) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PUFFYLUXMATTRESSQUEEN350OFF}'          Fail        Wrong Discounted price for Puffy Lux Mattress Queen Expected: ${PUFFYLUXMATTRESSQUEEN350OFF} Actual: ${Content}
    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(5) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PUFFYLUXMATTRESSKING350OFF}'           Fail        Wrong Discounted price for Puffy Lux Mattress King Expected: ${PUFFYLUXMATTRESSKING350OFF} Actual: ${Content}
    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(6) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PUFFYLUXMATTRESSCALKING350OFF}'        Fail        Wrong Discounted price for Puffy Lux Mattress Cal King Expected: ${PUFFYLUXMATTRESSCALKING350OFF} Actual: ${Content}

Check Puffy Lux Hybrid original prices (all sizes)
    Wait Until Element Is Visible          css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > del > span.hybrid-price
    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > del > span.hybrid-price
    Run keyword if          '${Content}'!='${PUFFYLUXMATTRESSTWINORIGINAL}'         Fail        Wrong original price for Puffy Lux Hybrid Mattress Twin Expected: ${PUFFYLUXMATTRESSTWINORIGINAL} Actual: ${Content}
    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(2) > span > del > span.hybrid-price
    Run keyword if          '${Content}'!='${PUFFYLUXMATTRESSTWINXLORIGINAL}'       Fail        Wrong original price for Puffy Lux Hybrid Mattress Twin XL Expected: ${PUFFYLUXMATTRESSTWINXLORIGINAL} Actual: ${Content}
    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(3) > span > del > span.hybrid-price
    Run keyword if          '${Content}'!='${PUFFYLUXMATTRESSFULLORIGINAL}'         Fail        Wrong original price for Puffy Lux Hybrid Mattress Full Expected: ${PUFFYLUXMATTRESSFULLORIGINAL} Actual: ${Content}
    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(4) > span > del > span.hybrid-price
    Run keyword if          '${Content}'!='${PUFFYLUXMATTRESSQUEENORIGINAL}'        Fail        Wrong original price for Puffy Lux Hybrid Mattress Queen Expected: ${PUFFYLUXMATTRESSQUEENORIGINAL} Actual: ${Content}
    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(5) > span > del > span.hybrid-price
    Run keyword if          '${Content}'!='${PUFFYLUXMATTRESSKINGORIGINAL}'         Fail        Wrong original price for Puffy Lux Hybrid Mattress King Expected: ${PUFFYLUXMATTRESSKINGORIGINAL} Actual: ${Content}
    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(6) > span > del > span.hybrid-price
    Run keyword if          '${Content}'!='${PUFFYLUXMATTRESSCALKINGORIGINAL}'      Fail        Wrong original price for Puffy Lux Hybrid Mattress Cal King Expected: ${PUFFYLUXMATTRESSCALKINGORIGINAL} Actual: ${Content}

Check Puffy Lux Hybrid 350OFF prices (all sizes)
    Wait Until Element Is Visible     css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > span > span.hybrid-price.jsDiscountedPrice
    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > span > span.hybrid-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PUFFYLUXMATTRESSTWIN350OFF}'           Fail        Wrong Discounted price for Puffy Lux Hybrid Mattrress Twin Expected: ${PUFFYLUXMATTRESSTWIN350OFF} Actual: ${Content}
    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(2) > span > span > span.hybrid-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PUFFYLUXMATTRESSTWINXL350OFF}'         Fail        Wrong Discounted price for Puffy Lux Hybrid Mattrress Twin XL Expected: ${PUFFYLUXMATTRESSTWINXL350OFF} Actual: ${Content}
    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(3) > span > span > span.hybrid-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PUFFYLUXMATTRESSFULL350OFF}'           Fail        Wrong Discounted price for Puffy Lux Hybrid Mattrress Full Expected: ${PUFFYLUXMATTRESSFULL350OFF} Actual: ${Content}
    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(4) > span > span > span.hybrid-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PUFFYLUXMATTRESSQUEEN350OFF}'          Fail        Wrong Discounted price for Puffy Lux Hybrid Mattrress Queen Expected: ${PUFFYLUXMATTRESSQUEEN350OFF} Actual: ${Content}
    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(5) > span > span > span.hybrid-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PUFFYLUXMATTRESSKING350OFF}'           Fail        Wrong Discounted price for Puffy Lux Hybrid Mattrress King Expected: ${PUFFYLUXMATTRESSKING350OFF} Actual: ${Content}
    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(6) > span > span > span.hybrid-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PUFFYLUXMATTRESSCALKING350OFF}'        Fail        Wrong Discounted price for Puffy Lux Hybrid Mattrress Cal King Expected: ${PUFFYLUXMATTRESSCALKING350OFF} Actual: ${Content}

Check Puffy Royal original prices (all sizes)
    Wait Until Element Is Visible          css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > del > span.original-price
    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PUFFYROYALMATTRESSTWINORIGINAL}'       Fail        Wrong original price for Puffy Royal Mattress Twin Expected: ${PUFFYROYALMATTRESSTWINORIGINAL} Actual: ${Content}
    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(2) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PUFFYROYALMATTRESSTWINXLORIGINAL}'     Fail        Wrong original price for Puffy Royal Mattress Twin XL Expected: ${PUFFYROYALMATTRESSTWINXLORIGINAL} Actual: ${Content}
    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(3) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PUFFYROYALMATTRESSFULLORIGINAL}'       Fail        Wrong original price for Puffy Royal Mattress Full Expected: ${PUFFYROYALMATTRESSFULLORIGINAL} Actual: ${Content}
    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(4) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PUFFYROYALMATTRESSQUEENORIGINAL}'      Fail        Wrong original price for Puffy Royal Mattress Queen Expected: ${PUFFYROYALMATTRESSQUEENORIGINAL} Actual: ${Content}
    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(5) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PUFFYROYALMATTRESSKINGORIGINAL}'       Fail        Wrong original price for Puffy Royal Mattress King Expected: ${PUFFYROYALMATTRESSKINGORIGINAL} Actual: ${Content}
    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(6) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PUFFYROYALMATTRESSCALKINGORIGINAL}'    Fail        Wrong original price for Puffy Royal Mattress Cal King Expected: ${PUFFYROYALMATTRESSCALKINGORIGINAL} Actual: ${Content}

Check Puffy Royal 350OFF prices (all sizes)
    Wait Until Element Is Visible          css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > span > span.original-price.jsDiscountedPrice
    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PUFFYROYALMATTRESSTWIN350OFF}'         Fail        Wrong Discounted price for Puffy Royal Mattress Twin Expected: ${PUFFYROYALMATTRESSTWIN350OFF} Actual: ${Content}
    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(2) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PUFFYROYALMATTRESSTWINXL350OFF}'       Fail        Wrong Discounted price for Puffy Royal Mattress Twin XL Expected: ${PUFFYROYALMATTRESSTWINXL350OFF} Actual: ${Content}
    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(3) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PUFFYROYALMATTRESSFULL350OFF}'         Fail        Wrong Discounted price for Puffy Royal Mattress Full Expected: ${PUFFYROYALMATTRESSFULL350OFF} Actual: ${Content}
    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(4) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PUFFYROYALMATTRESSQUEEN350OFF}'        Fail        Wrong Discounted price for Puffy Royal Mattress Queen Expected: ${PUFFYROYALMATTRESSQUEEN350OFF} Actual: ${Content}
    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(5) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PUFFYROYALMATTRESSKING350OFF}'         Fail        Wrong Discounted price for Puffy Royal Mattress King Expected: ${PUFFYROYALMATTRESSKING350OFF} Actual: ${Content}
    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(6) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PUFFYROYALMATTRESSCALKING350OFF}'      Fail        Wrong Discounted price for Puffy Royal Mattress Cal King Expected: ${PUFFYROYALMATTRESSCALKING350OFF} Actual: ${Content}

Check Puffy Royal Hybrid original prices (all sizes)
    Wait Until Element Is Visible          css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > del > span.hybrid-price
    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > del > span.hybrid-price
    Run keyword if          '${Content}'!='${PUFFYROYALMATTRESSTWINORIGINAL}'       Fail        Wrong original price for Puffy Royal Hybrid Mattress Twin Expected: ${PUFFYROYALMATTRESSTWINORIGINAL} Actual: ${Content}
    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(2) > span > del > span.hybrid-price
    Run keyword if          '${Content}'!='${PUFFYROYALMATTRESSTWINXLORIGINAL}'     Fail        Wrong original price for Puffy Royal Hybrid Mattress Twin XL Expected: ${PUFFYROYALMATTRESSTWINXLORIGINAL} Actual: ${Content}
    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(3) > span > del > span.hybrid-price
    Run keyword if          '${Content}'!='${PUFFYROYALMATTRESSFULLORIGINAL}'       Fail        Wrong original price for Puffy Royal Hybrid Mattress Full Expected: ${PUFFYROYALMATTRESSFULLORIGINAL} Actual: ${Content}
    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(4) > span > del > span.hybrid-price
    Run keyword if          '${Content}'!='${PUFFYROYALMATTRESSQUEENORIGINAL}'      Fail        Wrong original price for Puffy Royal Hybrid Mattress Queen Expected: ${PUFFYROYALMATTRESSQUEENORIGINAL} Actual: ${Content}
    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(5) > span > del > span.hybrid-price
    Run keyword if          '${Content}'!='${PUFFYROYALMATTRESSKINGORIGINAL}'       Fail        Wrong original price for Puffy Royal Hybrid Mattress King Expected: ${PUFFYROYALMATTRESSKINGORIGINAL} Actual: ${Content}
    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(6) > span > del > span.hybrid-price
    Run keyword if          '${Content}'!='${PUFFYROYALMATTRESSCALKINGORIGINAL}'    Fail        Wrong original price for Puffy Royal Hybrid Mattress Cal King Expected: ${PUFFYROYALMATTRESSCALKINGORIGINAL} Actual: ${Content}

Check Puffy Royal Hybrid 350OFF prices (all sizes)
    Wait Until Element Is Visible     css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > span > span.hybrid-price.jsDiscountedPrice
    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > span > span.hybrid-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PUFFYROYALMATTRESSTWIN350OFF}'         Fail        Wrong Discounted price for Puffy Royal Hybrid Mattress Twin Expected: ${PUFFYROYALMATTRESSTWIN350OFF} Actual: ${Content}
    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(2) > span > span > span.hybrid-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PUFFYROYALMATTRESSTWINXL350OFF}'       Fail        Wrong Discounted price for Puffy Royal Hybrid Mattress Twin XL Expected: ${PUFFYROYALMATTRESSTWINXL350OFF} Actual: ${Content}
    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(3) > span > span > span.hybrid-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PUFFYROYALMATTRESSFULL350OFF}'         Fail        Wrong Discounted price for Puffy Royal Hybrid Mattress Full Expected: ${PUFFYROYALMATTRESSFULL350OFF} Actual: ${Content}
    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(4) > span > span > span.hybrid-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PUFFYROYALMATTRESSQUEEN350OFF}'        Fail        Wrong Discounted price for Puffy Royal Hybrid Mattress Queen Expected: ${PUFFYROYALMATTRESSQUEEN350OFF} Actual: ${Content}
    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(5) > span > span > span.hybrid-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PUFFYROYALMATTRESSKING350OFF}'         Fail        Wrong Discounted price for Puffy Royal Hybrid Mattress King Expected: ${PUFFYROYALMATTRESSKING350OFF} Actual: ${Content}
    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(6) > span > span > span.hybrid-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PUFFYROYALMATTRESSCALKING350OFF}'      Fail        Wrong Discounted price for Puffy Royal Hybrid Mattress Cal King Expected: ${PUFFYROYALMATTRESSCALKING350OFF} Actual: ${Content}

Check Puffy Adjustable Base original prices (all sizes)
    Wait Until Element Is Visible          css=#product_form_416170377250 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > del > span.original-price
    ${Content}=            get text        css=#product_form_416170377250 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffyAdjustableBaseTwinXLOriginal}'        Fail        Wrong original price for Puffy Adjustable Base Twin XL Expected: ${PuffyAdjustableBaseTwinXLOriginal} Actual: ${Content}
    ${Content}=            get text        css=#product_form_416170377250 > div.product-variants-holder > div > div > ul > li:nth-child(2) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffyAdjustableBaseFullOriginal}'          Fail        Wrong original price for Puffy Adjustable Base Full Expected: ${PuffyAdjustableBaseFullOriginal} Actual: ${Content}
    ${Content}=            get text        css=#product_form_416170377250 > div.product-variants-holder > div > div > ul > li:nth-child(3) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffyAdjustableBaseQueenOriginal}'         Fail        Wrong original price for Puffy Adjustable Base Queen Expected: ${PuffyAdjustableBaseQueenOriginal} Actual: ${Content}
    ${Content}=            get text        css=#product_form_416170377250 > div.product-variants-holder > div > div > ul > li:nth-child(4) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffyAdjustableBaseSplitKingOriginal}'     Fail        Wrong original price for Puffy Adjustable Base Split King Expected: ${PuffyAdjustableBaseSplitKingOriginal} Actual: ${Content}

Check Puffy Adjustable Base 350OFF prices (all sizes)
    ${Content}=            get text        css=#product_form_416170377250 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyAdjustableBaseTwinXL350OFF}'          Fail        Wrong Discounted price for Puffy Adjustable Base Twin XL Expected: ${PuffyAdjustableBaseTwinXL350OFF} Actual: ${Content}
    ${Content}=            get text        css=#product_form_416170377250 > div.product-variants-holder > div > div > ul > li:nth-child(2) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyAdjustableBaseFull350OFF}'            Fail        Wrong Discounted price for Puffy Adjustable Base Full Expected: ${PuffyAdjustableBaseFull350OFF} Actual: ${Content}
    ${Content}=            get text        css=#product_form_416170377250 > div.product-variants-holder > div > div > ul > li:nth-child(3) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyAdjustableBaseQueen350OFF}'           Fail        Wrong Discounted price for Puffy Adjustable Base Queen Expected: ${PuffyAdjustableBaseQueen350OFF} Actual: ${Content}
    ${Content}=            get text        css=#product_form_416170377250 > div.product-variants-holder > div > div > ul > li:nth-child(4) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyAdjustableBaseSplitKing350OFF}'       Fail        Wrong Discounted price for Puffy Adjustable Base Split King Expected: ${PuffyAdjustableBaseSplitKing350OFF} Actual: ${Content}

Check Puffy Sheets original prices (all sizes)
    Wait Until Element Is Visible          css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > span > span.original-price
    ${Content}=            get text        css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffySheetsTwinOriginal}'      Fail        Wrong original price for Puffy Sheets Twin Expected: ${PuffySheetsTwinOriginal} Actual: ${Content}
    ${Content}=            get text        css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(2) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffySheetsTwinXLOriginal}'    Fail        Wrong original price for Puffy Sheets Twin XL Expected: ${PuffySheetsTwinXLOriginal} Actual: ${Content}
    ${Content}=            get text        css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(3) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffySheetsFullOriginal}'      Fail        Wrong original price for Puffy Sheets Full Expected: ${PuffySheetsFullOriginal} Actual: ${Content}
    ${Content}=            get text        css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(4) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffySheetsQueenOriginal}'     Fail        Wrong original price for Puffy Sheets Queen Expected: ${PuffySheetsQueenOriginal} Actual: ${Content}
    ${Content}=            get text        css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(5) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffySheetsKingOriginal}'      Fail        Wrong original price for Puffy Sheets King Expected: ${PuffySheetsKingOriginal} Actual: ${Content}
    ${Content}=            get text        css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(6) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffySheetsCalKingOriginal}'   Fail        Wrong original price for Puffy Sheets Cal King Expected: ${PuffySheetsCalKingOriginal} Actual: ${Content}

Check Puffy Sheets 15OFF prices (all sizes)
    Wait Until Element Is Visible          css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(2) > span > span > span.original-price
    ${Content}=            get text        css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(2) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffySheetsTwinXL15OFF}'      Fail        Wrong 15% OFF price for Puffy Sheets Twin XL Expected: ${PuffySheetsTwinXL15OFF} Actual: ${Content}
    ${Content}=            get text        css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(3) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffySheetsFull15OFF}'        Fail        Wrong 15% OFF price for Puffy Sheets Full Expected: ${PuffySheetsFull15OFF} Actual: ${Content}
    ${Content}=            get text        css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(4) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffySheetsQueen15OFF}'       Fail        Wrong 15% OFF price for Puffy Sheets Queen Expected: ${PuffySheetsQueen15OFF} Actual: ${Content}
    ${Content}=            get text        css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(5) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffySheetsKing15OFF}'        Fail        Wrong 15% OFF price for Puffy Sheets King Expected: ${PuffySheetsKing15OFF} Actual: ${Content}
    ${Content}=            get text        css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(6) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffySheetsCalKing15OFF}'     Fail        Wrong 15% OFF price for Puffy Sheets Cal King Expected: ${PuffySheetsCalKing15OFF} Actual: ${Content}

Select Puffy Mattress Size (Queen)
    Click element           css=#product_form_345108381730 > div.product-variants-holder > div > div > ul > li:nth-child(4)

Select Puffy Lux Size (King)
    Click element           css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(5)

Select Puffy Lux Size (Cal King)
    Click element           css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(6)

Select Puffy Royal Size (Twin)
    Click element           css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1)

Select Puffy Royal Size (Twin XL)
    Click element           css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(2)

Select Puffy Sheets Size (Queen)
    Click element           css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(4)

Select Puffy Sheets Color (White)
    Click element           css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-color > div > ul > li:nth-child(2)

Select Puffy Adjustable Base Size (Split King)
    Wait Until Element Is Visible       css=#product_form_416170377250 > div.product-variants-holder > div > div > ul > li:nth-child(4) > div > span.display-name.is--sale--price
    Click element           css=#product_form_416170377250 > div.product-variants-holder > div > div > ul > li:nth-child(4) > div > span.display-name.is--sale--price

Add Puffy Mattress to cart
    Click element           css=#product_form_345108381730 > div.purchase-details > div > button
    sleep                   5s
    wait until page contains element        css=#main-header
    ${Content}=            get text        css=#main-header
    Run keyword if          '${Content}'!='${INFOTABHEADER}'     Fail        Wrong Header on Checkout page Information Tab. Expected: ${INFOTABHEADER} Actual: ${Content}
Click Return to cart
    sleep                   1s
    Click element           css=body > div.main_wrapper > div > div.wrap > div.main > div.main__content > div.step > form > div.step__footer > a > span
    Wait until page contains element    ${LOCCARTHEADER}

Add Puffy Lux to cart
    click element           css=#product_form_549302042658 > div.purchase-details > div > button
    sleep                   5s
    wait until page contains element        css=#main-header
    ${Content}=            get text        css=#main-header
    Run keyword if          '${Content}'!='${INFOTABHEADER}'     Fail        Wrong Header on Checkout page Information Tab. Expected: ${INFOTABHEADER} Actual: ${Content}
Add Puffy Royal to cart
    click element           css=#product_form_3832788910114 > div.purchase-details > div > button
    sleep                   5s
    wait until page contains element        css=#main-header
    ${Content}=            get text        css=#main-header
    Run keyword if          '${Content}'!='${INFOTABHEADER}'     Fail        Wrong Header on Checkout page Information Tab. Expected: ${INFOTABHEADER} Actual: ${Content}
Add Puffy Adjustable Base to cart
    click element                   css=#product_form_416170377250 > div.purchase-details > div > button
    sleep                   5s
    wait until page contains element        css=#main-header
    ${Content}=            get text        css=#main-header
    Run keyword if          '${Content}'!='${INFOTABHEADER}'     Fail        Wrong Header on Checkout page Information Tab. Expected: ${INFOTABHEADER} Actual: ${Content}
Add Puffy Body Pillow to cart
    Click element           css=#product_form_4431983280162 > div.purchase-details > div > button
    sleep                   5s
    wait until page contains element        css=#main-header
    ${Content}=            get text        css=#main-header
    Run keyword if          '${Content}'!='${INFOTABHEADER}'     Fail        Wrong Header on Checkout page Information Tab. Expected: ${INFOTABHEADER} Actual: ${Content}
Add Puffy Sheets to cart
    click element           css=#product_form_4359826341922 > div.purchase-details > div > button
    sleep                   5s
    wait until page contains element        css=#main-header
    ${Content}=            get text        css=#main-header
    Run keyword if          '${Content}'!='${INFOTABHEADER}'     Fail        Wrong Header on Checkout page Information Tab. Expected: ${INFOTABHEADER} Actual: ${Content}
Close cart
    sleep                   1s
    Click element           css=body > div.cart_content.jsCartContent.cart-content-mob > div.cart-close > span.cart-close-btn.cart-close__icon
    Wait until page contains element    ${LOCLOGO}

Check current cart count
    ${CartText}   get text  css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.cart_container > div > a > span
    set test variable       ${CartCount}    ${carttext}

Check current cart count (Lux Hybrid)
    ${CartText}   get text  css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.cart_container > div > a > span
    set test variable       ${CartCount}    ${CartText}

Check cart count after adding a mattress
    ${BeforeShopping} =     evaluate    ${CartCount}
    sleep                   2s
    Check Current Cart Count
    ${AfterShopping}=       evaluate    ${CartCount}-3
    Run keyword if          ${BeforeShopping}!=${AfterShopping}       Fail    Wrong cart count after adding a mattress

Check cart count after adding a mattress (Lux Hybrid)
    ${BeforeShopping} =     evaluate    ${CartCount}
    sleep                   2s
    Check Current Cart Count (Lux Hybrid)
    ${AfterShopping}=       evaluate    ${CartCount}-3
    Run keyword if          ${BeforeShopping}!=${AfterShopping}       Fail    Wrong cart count after adding a mattress

Check cart count after adding an accessory
    ${BeforeShopping} =     evaluate    ${CartCount}
    sleep                   2s
    Check Current Cart Count
    ${AfterShopping}=       evaluate    ${CartCount}-1
    Run keyword if          ${BeforeShopping}!=${AfterShopping}       Fail    Wrong cart count after adding an accessory

Open cart
    click element           ${LOCCART}
    #${Content}=            get text        class:cart-close__title
    #Run keyword if          '${Content}'!='${CartDrawerNote}'     Fail        Cart Drawer was not displayed Expected: ${CartDrawerNote} Actual: ${Content}
#improvecart

Check product redirection in cart
    click link                      link:Puffy Sheets
    sleep                           2s
    Wait Until Page Contains        Puffy Sheets
    ${Content}=            get text        css=#shopify-section-product-puffy-template > div.container.main.content.product-name--puffy-sheets > div > div > div > div > div.seven.columns.medium-down--one-whole.alpha > div > div.product-head.product-head--smaller > div > div.product-head__headline > h1 > span
    Run keyword if          '${Content}'!='${TEXTPUFFYSHEETSH1}'     Fail        Product name (H1) not found Expected: ${PuffySheetsH1} Actual: ${Content}

Click checkout
    Click link              link:CHECKOUT
    sleep                               2s
    Wait Until Page Contains Element    css=body > div.checkout-header > div.checkout-header__right > div > div:nth-child(1) > img

Select Mattress Pad from Complete your Bedroom Set in checkout
    sleep                               5s
    Scroll Element Into View            css=body > div.main_wrapper > div > div.wrap > div.sidebar > div.sidebar__content > div.sidebar_bottom > div > div > div > div:nth-child(6) > a > div.upsell-boxes__media > img
    Wait Until Page Contains Element    css=body > div.main_wrapper > div > div.wrap > div.sidebar > div.sidebar__content > div.sidebar_bottom > div > div > div > div:nth-child(6) > a > div.upsell-boxes__media > img
    click element                       xpath=/html/body/div[2]/div/div[2]/div[2]/div[2]/div[4]/div/div/div/div[6]/a/div[1]/img
    Wait Until Page Contains            Puffy Mattress Pad
    ${Content}=            get text        css=#shopify-section-product-puffy-template > div.container.main.content.product-name--puffy-mattress-pad > div > div > div > div > div.seven.columns.medium-down--one-whole.alpha > div > div.product-head > div.product-head__headline > h1
    Run keyword if          '${Content}'!='${TEXTPUFFYMATTRESSPADH1}'     Fail        Product name (H1) not found Expected: ${PuffyMattressPadH1} Actual: ${Content}

Fill out Information tab in checkout
    ${Content}=            get text     css=#main-header
    Run keyword if          '${Content}'!='${TEXTCHECKOUTINFORMATIONH1}'     Fail        Checkout - Information tab (H1) not found Expected: ${TEXTCHECKOUTINFORMATIONH1} Actual: ${Content}
    Input text                          xpath=//*[@id="checkout_email"]     ${EMAIL}
    sleep                               1s
    Input text                          xpath=//*[@id="checkout_shipping_address_first_name"]     ${FIRSTNAME}
    sleep                               1s
    Input text                          xpath=//*[@id="checkout_shipping_address_last_name"]     ${LASTNAME}
    sleep                               1s
    Press Keys	                        xpath=//*[@id="checkout_shipping_address_address1"]	123
    sleep                               1s
    Press Keys	                        xpath=//*[@id="checkout_shipping_address_province"]	New+York
    sleep                               1s
    Click Element                       css=body > div.main_wrapper > div > div.wrap > div.main > div.main__content > div.step > form > div.step__sections > div.section.section--shipping-address > div.section__content > div > div.address-fields > div:nth-child(16)
    sleep                               2s
    Press Keys	                        button	RETURN
    sleep                               1s
    wait until page contains element    xpath=//*[@id="checkout_shipping_address_city"]
    sleep                               1s
    Input text                          xpath=//*[@id="checkout_shipping_address_city"]          ${CITY}
    sleep                               2s
    Input text                          xpath=//*[@id="checkout_shipping_address_zip"]           ${ZIPCODE}
    sleep                               2s
    Input text                          xpath=//*[@id="checkout_shipping_address_phone"]         ${PHONE}
    sleep                               2s
    Input text                          xpath=//*[@id="checkout_shipping_address_zip"]           ${ZIPCODE}
    sleep                               1s
Continue to Shipping tab
    Press Keys	                        button	RETURN
    wait until page contains            automation@puffy.com
    wait until page contains            123, New York NH 03087, United States
    sleep                               10s
    wait until page contains element    css=body > div.main_wrapper > div > div.wrap > div.main > div.main__content > div.step > form > div.step__sections > div.section.section--shipping-method > div.section__content > div > div > div > label > span.radio__label__primary
    ${Content}=            get text     css=#main-header
    Run keyword if          '${Content}'!='${TEXTCHECKOUTSHIPPINGH1}'     Fail        Checkout - Information tab (H1) not found Expected: ${TEXTCHECKOUTSHIPPINGH1} Actual: ${Content}
Continue to Payment tab
    Click Element                       xpath=//*[@id="continue_button"]
    sleep                               2s
    wait until page contains element    css=#main-header
    wait until page contains            All transactions are secure and encrypted.
    sleep                               2s
    ${Content}=            get text     css=#main-header
    Run keyword if          '${Content}'!='${TEXTCHECKOUTPAYMENTH1}'     Fail        Checkout - Information tab (H1) not found Expected: ${TEXTCHECKOUTPAYMENTH1} Actual: ${Content}

Select and proceed with Paypal
    Wait until page contains element    css=#checkout_payment_gateway_22050897954
    click element                       css=#checkout_payment_gateway_22050897954
    sleep                               2s
    click element                       css=#checkout_different_billing_address_false
    sleep                               2s
    click element                       xpath=//*[@id="continue_button"]
    sleep                               5s
    wait until page contains element    css=#acceptAllButton
    sleep                               2s
    Element should be visible           css=#acceptAllButton
    Click element                       css=#acceptAllButton
    wait until page contains            Cancel and return to Puffy LLC
    ${Content}=            get text     css=#headerText
    Run keyword if          '${Content}'!='${TEXTPAYPALH1}'     Fail        Paypal (H1) not found Expected: ${TEXTPAYPALH1} Actual: ${Content}
    sleep                               2s
    click link                          link:Cancel and return to Puffy LLC
    sleep                               5s
    wait until page contains            All transactions are secure and encrypted.
Select and proceed with Splitit
    Wait until page contains element    css=#checkout_payment_gateway_40271216674
    Click Element                       css=#checkout_payment_gateway_40271216674
    sleep                               2s
    click element                       xpath=//*[@id="continue_button"]
    sleep                               5s
    wait until page contains            Order Total
    ${Content}=            get text     css=#maincontent > app-main-page > div > app-footer > footer > div > div.how-works.ng-star-inserted > a
    Run keyword if          '${Content}'!='${TEXTSPLITITH1}'     Fail        Checkout - Information tab (H1) not found Expected: ${TEXTSPLITITH1} Actual: ${Content}
    sleep                               2s
    Go Back
    sleep                               5s
    Handle Alert
    sleep                               2s
    wait until page contains            All transactions are secure and encrypted.

Select and proceed with Klarna
    sleep                               2s
    wait until page contains element    css=#checkout_payment_gateway_122164302
    Click Element                       css=#checkout_payment_gateway_122164302
    sleep                               2s
    click element                       xpath=//*[@id="continue_button"]
    sleep                               5s
    wait until page contains            Change Payment Method
    sleep                               5s
    #wait until page contains            ${TEXTKLARNAH1}
    #${Content}=            get text     css=#message-component-root__header__title
    #Run keyword if          '${Content}'!='${TEXTKLARNAH1}'     Fail        Checkout - Information tab (H1) not found Expected: ${TEXTKLARNAH1} Actual: ${Content}
    #sleep                               2s
    Click element                       css=#changePaymentMethod > a
    sleep                               2s
    wait until page contains            All transactions are secure and encrypted.
Click on "Shop The Mattress" on the Homepage
    Click Element                       css=body > div.index-sections > div.hero-area.is--mobile-reversed > div.hero-area__box.hero-area__box--hero-image > div > div.b-hero__inner > div.b-hero__content > a

Verify H1 on Comparison Page
    sleep                               5s
    Wait until page contains element    css=body > div.compare-page.content > div.compare-page__headline > h1
    ${Content}=            get text     css=body > div.compare-page.content > div.compare-page__headline > h1
    Run keyword if          '${Content}'!='${TEXTCOMPAREPAGEH1}'     Fail        Checkout - Information tab (H1) not found Expected: ${TEXTCOMPAREPAGEH1} Actual: ${Content}

Click "Shop Now" button for Puffy
    Click Element                       css=body > div.compare-page.content > div.compare-page__content > div.compare-boxes.is--puffy-mattress-and-puffy-lux > div:nth-child(2) > div > div.compare-boxes__action > a

Verify H1 on Puffy PDP
    Wait until page Contains element    css=#shopify-section-product-puffy-template > div.container.main.content.product-name--puffy-mattress > div > div > div > div > div.seven.columns.medium-down--one-whole.alpha > div > div.product-head > div.product-head__text.product-head__text--boxed > div.product-head__headline > h1 > span
    ${Content}=            get text     css=#shopify-section-product-puffy-template > div.container.main.content.product-name--puffy-mattress > div > div > div > div > div.seven.columns.medium-down--one-whole.alpha > div > div.product-head > div.product-head__text.product-head__text--boxed > div.product-head__headline > h1 > span
    Run keyword if          '${Content}'!='${TEXTPUFFYMATTRESSH1}'     Fail        Checkout - Information tab (H1) not found Expected: ${TEXTPUFFYMATTRESSH1} Actual: ${Content}

Go back to Compare Page
    Go Back
    #Wait until page contains            ${TEXTCOMPAREPAGEH1}

click on "Shop Now" button for Puffy Lux
    Click Element                       css=body > div.compare-page.content > div.compare-page__content > div.compare-boxes.is--puffy-mattress-and-puffy-lux > div:nth-child(1) > div > div.compare-boxes__action > a

Verify H1 on Puffy Lux
    Wait Until Page contains element    class:product-head__title
##################################Checkout Product List#############################################

Verify if Puffy Sheets is in Order Summary and details are correct

    Wait Until Element Is Visible               css=#order-summary > div > div.order-summary__section.order-summary__section--product-list > div > table > tbody > tr:nth-child(1) > th > span.product__description__name.order-summary__emphasis
    ${ProductName}=            get text         css=#order-summary > div > div.order-summary__section.order-summary__section--product-list > div > table > tbody > tr:nth-child(1) > th > span.product__description__name.order-summary__emphasis
    Run keyword if          '${ProductName}'!='${ORDERSUMMARYPUFFYSHEETS}'      Fail        Wrong Product in Order Summary. Expected: ${ORDERSUMMARYPUFFYSHEETS} Actual: ${ProductName}
    ${ColorSize}=              get text         css=#order-summary > div > div.order-summary__section.order-summary__section--product-list > div > table > tbody > tr:nth-child(1) > th > span.product__description__variant.order-summary__small-text
    Run keyword if          '${ColorSize}'!='${ORDERSUMMARYPUFFYSHEETSSIZECOLOR}'    Fail        Wrong Size / Color in Order Summary. Expected: ${ORDERSUMMARYPUFFYSHEETSSIZECOLOR} Actual: ${ColorSize}
    ${Quantity}=               get text         css=#order-summary > div > div.order-summary__section.order-summary__section--product-list > div > table > tbody > tr:nth-child(1) > td.product__image > div > span
    Run keyword if          '${Quantity}'!='${ORDERSUMMARYPUFFYSHEETSQTY}'      Fail        Wrong product QTY in Order Summary. Expected: ${ORDERSUMMARYPUFFYSHEETSQTY} Actual: ${Quantity}
    ${Price}=                  get text         css=#order-summary > div > div.order-summary__section.order-summary__section--product-list > div > table > tbody > tr:nth-child(1) > td.product__price > span
    Run keyword if          '${Price}'!='${ORDERSUMMARYPUFFYSHEETSPRICE}'      Fail        Wrong product price in Order Summary. Expected: ${ORDERSUMMARYPUFFYSHEETSPRICE} Actual: ${Price}

Verify if Puffy Body Pillow is in Order Summary and details are correct
    ${ProductName}=            get text         css=#order-summary > div > div.order-summary__section.order-summary__section--product-list > div > table > tbody > tr:nth-child(2) > th > span.product__description__name.order-summary__emphasis
    Run keyword if          '${ProductName}'!='${ORDERSUMMARYPUFFYBODYPILLOW}'      Fail        Wrong Product in Order Summary. Expected: ${ORDERSUMMARYPUFFYBODYPILLOW} Actual: ${ProductName}
    ${Quantity}=               get text         css=#order-summary > div > div.order-summary__section.order-summary__section--product-list > div > table > tbody > tr:nth-child(2) > td.product__image > div > span
    Run keyword if          '${Quantity}'!='${ORDERSUMMARYPUFFYBODYPILLOWQTY}'      Fail        Wrong product QTY in Order Summary. Expected: ${ORDERSUMMARYPUFFYBODYPILLOWQTY} Actual: ${Quantity}
    ${Price}=                  get text         css=#order-summary > div > div.order-summary__section.order-summary__section--product-list > div > table > tbody > tr:nth-child(2) > td.product__price > span
    Run keyword if          '${Price}'!='${ORDERSUMMARYPUFFYBODYPILLOWPRICE}'      Fail        Wrong product price in Order Summary. Expected: ${ORDERSUMMARYPUFFYBODYPILLOWPRICE} Actual: ${Price}

Verify if Puffy Adjustable Base is in Order Summary and details are correct
    ${ProductName}=            get text         css=#order-summary > div > div.order-summary__section.order-summary__section--product-list > div > table > tbody > tr:nth-child(3) > th > span.product__description__name.order-summary__emphasis
    Run keyword if          '${ProductName}'!='${ORDERSUMMARYPUFFYADJUSTABLEBASE}'      Fail        Wrong Product in Order Summary. Expected: ${ORDERSUMMARYPUFFYADJUSTABLEBASE} Actual: ${ProductName}
    ${Size}=              get text         css=#order-summary > div > div.order-summary__section.order-summary__section--product-list > div > table > tbody > tr:nth-child(3) > th > span.product__description__variant.order-summary__small-text
    Run keyword if          '${Size}'!='${ORDERSUMMARYPUFFYADJUSTABLEBASESIZE}'    Fail        Wrong Size / Color in Order Summary. Expected: ${ORDERSUMMARYPUFFYADJUSTABLEBASESIZE} Actual: ${Size}
    ${Quantity}=               get text         css=#order-summary > div > div.order-summary__section.order-summary__section--product-list > div > table > tbody > tr:nth-child(3) > td.product__image > div > span
    Run keyword if          '${Quantity}'!='${ORDERSUMMARYPUFFYADJUSTABLEBASEQTY}'      Fail        Wrong product QTY in Order Summary. Expected: ${ORDERSUMMARYPUFFYADJUSTABLEBASEQTY} Actual: ${Quantity}
    ${DiscountedPrice}=                  get text         css=#order-summary > div > div.order-summary__section.order-summary__section--product-list > div > table > tbody > tr:nth-child(3) > td.product__price > span
    Run keyword if          '${DiscountedPrice}'!='${ORDERSUMMARYPUFFYADJUSTABLEBASEDISCOUNTEDPRICE350}'      Fail        Wrong product price in Order Summary. Expected: ${ORDERSUMMARYPUFFYADJUSTABLEBASEDISCOUNTEDPRICE350} Actual: ${DiscountedPrice}
    ${OriginalPrice}=               get text         css=#order-summary > div > div.order-summary__section.order-summary__section--product-list > div > table > tbody > tr:nth-child(3) > td.product__price > del
    Run keyword if          '${OriginalPrice}'!='${ORDERSUMMARYPUFFYADJUSTABLEBASEORIGINALPRICE}'      Fail        Wrong product QTY in Order Summary. Expected: ${ORDERSUMMARYPUFFYADJUSTABLEBASEORIGINALPRICE} Actual: ${OriginalPrice}
    ${DiscountCode}=                  get text         css=#order-summary > div > div.order-summary__section.order-summary__section--product-list > div > table > tbody > tr:nth-child(3) > th > ul > li > span
    Run keyword if          '${DiscountCode}'!='${ORDERSUMMARYDISCOUNTCODE5}'      Fail        Wrong product price in Order Summary. Expected: ${ORDERSUMMARYDISCOUNTCODE5} Actual: ${DiscountCode}

Verify if Puffy Royal Hybrid is in Order Summary and details are correct
    ${ProductName}=            get text         css=#order-summary > div > div.order-summary__section.order-summary__section--product-list > div > table > tbody > tr:nth-child(4) > th > span.product__description__name.order-summary__emphasis
    Run keyword if          '${ProductName}'!='${ORDERSUMMARYPUFFYROYALHYBRIDMATTRESS}'      Fail        Wrong Product in Order Summary. Expected: ${ORDERSUMMARYPUFFYROYALHYBRIDMATTRESS} Actual: ${ProductName}
    ${Size}=              get text         css=#order-summary > div > div.order-summary__section.order-summary__section--product-list > div > table > tbody > tr:nth-child(4) > th > span.product__description__variant.order-summary__small-text
    Run keyword if          '${Size}'!='${ORDERSUMMARYPUFFYROYALHYBRIDMATTRESSSIZE}'    Fail        Wrong Size / Color in Order Summary. Expected: ${ORDERSUMMARYPUFFYROYALHYBRIDMATTRESSSIZE} Actual: ${Size}
    ${Quantity}=               get text         css=#order-summary > div > div.order-summary__section.order-summary__section--product-list > div > table > tbody > tr:nth-child(4) > td.product__image > div > span
    Run keyword if          '${Quantity}'!='${ORDERSUMMARYPUFFYROYALHYBRIDMATTRESSQTY}'      Fail        Wrong product QTY in Order Summary. Expected: ${ORDERSUMMARYPUFFYROYALHYBRIDMATTRESSQTY} Actual: ${Quantity}
    ${DiscountedPrice}=                  get text         css=#order-summary > div > div.order-summary__section.order-summary__section--product-list > div > table > tbody > tr:nth-child(4) > td.product__price > span
    Run keyword if          '${DiscountedPrice}'!='${ORDERSUMMARYPUFFYROYALHYBRIDMATTRESSDISCOUNTEDPRICE350}'      Fail        Wrong product discounted price in Order Summary. Expected: ${ORDERSUMMARYPUFFYROYALHYBRIDMATTRESSDISCOUNTEDPRICE350} Actual: ${DiscountedPrice}
    ${OriginalPrice}=               get text         css=#order-summary > div > div.order-summary__section.order-summary__section--product-list > div > table > tbody > tr:nth-child(4) > td.product__price > del
    Run keyword if          '${OriginalPrice}'!='${ORDERSUMMARYPUFFYROYALHYBRIDMATTRESSORIGINALPRICE}'      Fail        Wrong product original price in Order Summary. Expected: ${ORDERSUMMARYPUFFYROYALHYBRIDMATTRESSORIGINALPRICE} Actual: ${OriginalPrice}
    ${DiscountCode}=                  get text         css=#order-summary > div > div.order-summary__section.order-summary__section--product-list > div > table > tbody > tr:nth-child(4) > th > ul > li > span
    Run keyword if          '${DiscountCode}'!='${ORDERSUMMARYDISCOUNTCODE5}'      Fail        Wrong Discount code displayed in Product Summary. Expected: ${ORDERSUMMARYDISCOUNTCODE5} Actual: ${DiscountCode}

Verify if Puffy Royal is in Order Summary and details are correct
    ${ProductName}=            get text         css=#order-summary > div > div.order-summary__section.order-summary__section--product-list > div > table > tbody > tr:nth-child(5) > th > span.product__description__name.order-summary__emphasis
    Run keyword if          '${ProductName}'!='${ORDERSUMMARYPUFFYROYALMATTRESS}'      Fail        Wrong Product in Order Summary. Expected: ${ORDERSUMMARYPUFFYROYALMATTRESS} Actual: ${ProductName}
    ${Size}=              get text         css=#order-summary > div > div.order-summary__section.order-summary__section--product-list > div > table > tbody > tr:nth-child(5) > th > span.product__description__variant.order-summary__small-text
    Run keyword if          '${Size}'!='${ORDERSUMMARYPUFFYROYALMATTRESSSIZE}'    Fail        Wrong Size / Color in Order Summary. Expected: ${ORDERSUMMARYPUFFYROYALMATTRESSSIZE} Actual: ${Size}
    ${Quantity}=               get text         css=#order-summary > div > div.order-summary__section.order-summary__section--product-list > div > table > tbody > tr:nth-child(5) > td.product__image > div > span
    Run keyword if          '${Quantity}'!='${ORDERSUMMARYPUFFYROYALMATTRESSQTY}'      Fail        Wrong product QTY in Order Summary. Expected: ${ORDERSUMMARYPUFFYROYALMATTRESSQTY} Actual: ${Quantity}
    ${DiscountedPrice}=                  get text         css=#order-summary > div > div.order-summary__section.order-summary__section--product-list > div > table > tbody > tr:nth-child(5) > td.product__price > span
    Run keyword if          '${DiscountedPrice}'!='${ORDERSUMMARYPUFFYROYALMATTRESSDISCOUNTEDPRICE350}'      Fail        Wrong product discounted price in Order Summary. Expected: ${ORDERSUMMARYPUFFYROYALMATTRESSDISCOUNTEDPRICE350} Actual: ${DiscountedPrice}
    ${OriginalPrice}=               get text         css=#order-summary > div > div.order-summary__section.order-summary__section--product-list > div > table > tbody > tr:nth-child(5) > td.product__price > del
    Run keyword if          '${OriginalPrice}'!='${ORDERSUMMARYPUFFYROYALMATTRESSORIGINALPRICE}'      Fail        Wrong product original price in Order Summary. Expected: ${ORDERSUMMARYPUFFYROYALMATTRESSORIGINALPRICE} Actual: ${OriginalPrice}
    ${DiscountCode}=                  get text         css=#order-summary > div > div.order-summary__section.order-summary__section--product-list > div > table > tbody > tr:nth-child(5) > th > ul > li > span
    Run keyword if          '${DiscountCode}'!='${ORDERSUMMARYDISCOUNTCODE5}'      Fail        Wrong Discount code displayed in Product Summary. Expected: ${ORDERSUMMARYDISCOUNTCODE5} Actual: ${DiscountCode}

Verify if Puffy Lux Hybrid is in Order Summary and details are correct
    ${ProductName}=            get text         css=#order-summary > div > div.order-summary__section.order-summary__section--product-list > div > table > tbody > tr:nth-child(6) > th > span.product__description__name.order-summary__emphasis
    Run keyword if          '${ProductName}'!='${ORDERSUMMARYPUFFYLUXHYBRIDMATTRESS}'      Fail        Wrong Product in Order Summary. Expected: ${ORDERSUMMARYPUFFYLUXHYBRIDMATTRESS} Actual: ${ProductName}
    ${Size}=              get text         css=#order-summary > div > div.order-summary__section.order-summary__section--product-list > div > table > tbody > tr:nth-child(6) > th > span.product__description__variant.order-summary__small-text
    Run keyword if          '${Size}'!='${ORDERSUMMARYPUFFYLUXHYBRIDMATTRESSSIZE}'    Fail        Wrong Size / Color in Order Summary. Expected: ${ORDERSUMMARYPUFFYLUXHYBRIDMATTRESSSIZE} Actual: ${Size}
    ${Quantity}=               get text         css=#order-summary > div > div.order-summary__section.order-summary__section--product-list > div > table > tbody > tr:nth-child(6) > td.product__image > div > span
    Run keyword if          '${Quantity}'!='${ORDERSUMMARYPUFFYLUXHYBRIDMATTRESSQTY}'      Fail        Wrong product QTY in Order Summary. Expected: ${ORDERSUMMARYPUFFYLUXHYBRIDMATTRESSQTY} Actual: ${Quantity}
    ${DiscountedPrice}=                  get text         css=#order-summary > div > div.order-summary__section.order-summary__section--product-list > div > table > tbody > tr:nth-child(6) > td.product__price > span
    Run keyword if          '${DiscountedPrice}'!='${ORDERSUMMARYPUFFYLUXHYBRIDMATTRESSDISCOUNTEDPRICE350}'      Fail        Wrong product discounted price in Order Summary. Expected: ${ORDERSUMMARYPUFFYLUXHYBRIDMATTRESSDISCOUNTEDPRICE350} Actual: ${DiscountedPrice}
    ${OriginalPrice}=               get text         css=#order-summary > div > div.order-summary__section.order-summary__section--product-list > div > table > tbody > tr:nth-child(6) > td.product__price > del
    Run keyword if          '${OriginalPrice}'!='${ORDERSUMMARYPUFFYLUXHYBRIDMATTRESSORIGINALPRICE}'      Fail        Wrong product original price in Order Summary. Expected: ${ORDERSUMMARYPUFFYLUXHYBRIDMATTRESSORIGINALPRICE} Actual: ${OriginalPrice}
    ${DiscountCode}=                  get text         css=#order-summary > div > div.order-summary__section.order-summary__section--product-list > div > table > tbody > tr:nth-child(6) > th > ul > li > span
    Run keyword if          '${DiscountCode}'!='${ORDERSUMMARYDISCOUNTCODE5}'      Fail        Wrong Discount code displayed in Product Summary. Expected: ${ORDERSUMMARYDISCOUNTCODE5} Actual: ${DiscountCode}

Verify if Puffy Lux is in Order Summary and details are correct
    ${ProductName}=            get text         css=#order-summary > div > div.order-summary__section.order-summary__section--product-list > div > table > tbody > tr:nth-child(7) > th > span.product__description__name.order-summary__emphasis
    Run keyword if          '${ProductName}'!='${ORDERSUMMARYPUFFYLUXMATTRESS}'      Fail        Wrong Product in Order Summary. Expected: ${ORDERSUMMARYPUFFYLUXMATTRESS} Actual: ${ProductName}
    ${Size}=              get text         css=#order-summary > div > div.order-summary__section.order-summary__section--product-list > div > table > tbody > tr:nth-child(7) > th > span.product__description__variant.order-summary__small-text
    Run keyword if          '${Size}'!='${ORDERSUMMARYPUFFYLUXMATTRESSSIZE}'    Fail        Wrong Size / Color in Order Summary. Expected: ${ORDERSUMMARYPUFFYLUXMATTRESSSIZE} Actual: ${Size}
    ${Quantity}=               get text         css=#order-summary > div > div.order-summary__section.order-summary__section--product-list > div > table > tbody > tr:nth-child(7) > td.product__image > div > span
    Run keyword if          '${Quantity}'!='${ORDERSUMMARYPUFFYLUXMATTRESSQTY}'      Fail        Wrong product QTY in Order Summary. Expected: ${ORDERSUMMARYPUFFYLUXMATTRESSQTY} Actual: ${Quantity}
    ${DiscountedPrice}=                  get text         css=#order-summary > div > div.order-summary__section.order-summary__section--product-list > div > table > tbody > tr:nth-child(7) > td.product__price > span
    Run keyword if          '${DiscountedPrice}'!='${ORDERSUMMARYPUFFYLUXMATTRESSDISCOUNTEDPRICE350}'      Fail        Wrong product discounted price in Order Summary. Expected: ${ORDERSUMMARYPUFFYLUXMATTRESSDISCOUNTEDPRICE350} Actual: ${DiscountedPrice}
    ${OriginalPrice}=               get text         css=#order-summary > div > div.order-summary__section.order-summary__section--product-list > div > table > tbody > tr:nth-child(7) > td.product__price > del
    Run keyword if          '${OriginalPrice}'!='${ORDERSUMMARYPUFFYLUXMATTRESSORIGINALPRICE}'      Fail        Wrong product original price in Order Summary. Expected: ${ORDERSUMMARYPUFFYLUXMATTRESSORIGINALPRICE} Actual: ${OriginalPrice}
    ${DiscountCode}=                  get text         css=#order-summary > div > div.order-summary__section.order-summary__section--product-list > div > table > tbody > tr:nth-child(7) > th > ul > li > span
    Run keyword if          '${DiscountCode}'!='${ORDERSUMMARYDISCOUNTCODE5}'      Fail        Wrong Discount code displayed in Product Summary. Expected: ${ORDERSUMMARYDISCOUNTCODE5} Actual: ${DiscountCode}

Verify if Puffy Mattress is in Order Summary and details are correct
    ${ProductName}=            get text         css=#order-summary > div > div.order-summary__section.order-summary__section--product-list > div > table > tbody > tr:nth-child(8) > th > span.product__description__name.order-summary__emphasis
    Run keyword if          '${ProductName}'!='${ORDERSUMMARYPUFFYMATTRESS}'      Fail        Wrong Product in Order Summary. Expected: ${ORDERSUMMARYPUFFYMATTRESS} Actual: ${ProductName}
    ${Size}=              get text         css=#order-summary > div > div.order-summary__section.order-summary__section--product-list > div > table > tbody > tr:nth-child(8) > th > span.product__description__variant.order-summary__small-text
    Run keyword if          '${Size}'!='${ORDERSUMMARYPUFFYMATTRESSSIZE}'    Fail        Wrong Size / Color in Order Summary. Expected: ${ORDERSUMMARYPUFFYMATTRESSSIZE} Actual: ${Size}
    ${Quantity}=               get text         css=#order-summary > div > div.order-summary__section.order-summary__section--product-list > div > table > tbody > tr:nth-child(8) > td.product__image > div > span
    Run keyword if          '${Quantity}'!='${ORDERSUMMARYPUFFYMATTRESSQTY}'      Fail        Wrong product QTY in Order Summary. Expected: ${ORDERSUMMARYPUFFYMATTRESSQTY} Actual: ${Quantity}
    ${DiscountedPrice}=                  get text         css=#order-summary > div > div.order-summary__section.order-summary__section--product-list > div > table > tbody > tr:nth-child(8) > td.product__price > span
    Run keyword if          '${DiscountedPrice}'!='${ORDERSUMMARYPUFFYMATTRESSDISCOUNTEDPRICE350}'      Fail        Wrong product discounted price in Order Summary. Expected: ${ORDERSUMMARYPUFFYMATTRESSDISCOUNTEDPRICE350} Actual: ${DiscountedPrice}
    ${OriginalPrice}=               get text         css=#order-summary > div > div.order-summary__section.order-summary__section--product-list > div > table > tbody > tr:nth-child(8) > td.product__price > del
    Run keyword if          '${OriginalPrice}'!='${ORDERSUMMARYPUFFYMATTRESSORIGINALPRICE}'      Fail        Wrong product original price in Order Summary. Expected: ${ORDERSUMMARYPUFFYMATTRESSORIGINALPRICE} Actual: ${OriginalPrice}
    ${DiscountCode}=                  get text         css=#order-summary > div > div.order-summary__section.order-summary__section--product-list > div > table > tbody > tr:nth-child(8) > th > ul > li > span
    Run keyword if          '${DiscountCode}'!='${ORDERSUMMARYDISCOUNTCODE5}'      Fail        Wrong Discount code displayed in Product Summary. Expected: ${ORDERSUMMARYDISCOUNTCODE5} Actual: ${DiscountCode}

Verify if White Standard Free Puffy Pillow is in Order Summary and details are correct
    ${ProductName}=            get text         css=#order-summary > div > div.order-summary__section.order-summary__section--product-list > div > table > tbody > tr:nth-child(9) > th > span.product__description__name.order-summary__emphasis
    Run keyword if          '${ProductName}'!='${ORDERSUMMARYPUFFYPILLOWSTANDARD}'      Fail        Wrong Product in Order Summary. Expected: ${ORDERSUMMARYPUFFYPILLOWSTANDARD} Actual: ${ProductName}
    ${Size}=              get text         css=#order-summary > div > div.order-summary__section.order-summary__section--product-list > div > table > tbody > tr:nth-child(9) > th > span.product__description__variant.order-summary__small-text
    Run keyword if          '${Size}'!='${ORDERSUMMARYPUFFYPILLOWSTANDARDSIZE}'    Fail        Wrong Size / Color in Order Summary. Expected: ${ORDERSUMMARYPUFFYPILLOWSTANDARDSIZE} Actual: ${Size}
    ${Quantity}=               get text         css=#order-summary > div > div.order-summary__section.order-summary__section--product-list > div > table > tbody > tr:nth-child(9) > td.product__image > div > span
    Run keyword if          '${Quantity}'!='${ORDERSUMMARYPUFFYPILLOWSTANDARDQTY}'      Fail        Wrong product QTY in Order Summary. Expected: ${ORDERSUMMARYPUFFYPILLOWSTANDARDQTY} Actual: ${Quantity}
    ${DiscountedPrice}=                  get text         css=#order-summary > div > div.order-summary__section.order-summary__section--product-list > div > table > tbody > tr:nth-child(9) > td.product__price > span
    Run keyword if          '${DiscountedPrice}'!='${ORDERSUMMARYPUFFYPILLOWSTANDARDDISCOUNTEDPRICE}'      Fail        Wrong product discounted price in Order Summary. Expected: ${ORDERSUMMARYPUFFYPILLOWSTANDARDDISCOUNTEDPRICE} Actual: ${DiscountedPrice}
    ${OriginalPrice}=               get text         css=#order-summary > div > div.order-summary__section.order-summary__section--product-list > div > table > tbody > tr:nth-child(9) > td.product__price > del
    Run keyword if          '${OriginalPrice}'!='${ORDERSUMMARYPUFFYPILLOWSTANDARDORIGINALPRICE}'      Fail        Wrong product original price in Order Summary. Expected: ${ORDERSUMMARYPUFFYPILLOWSTANDARDORIGINALPRICE} Actual: ${OriginalPrice}
    ${DiscountCode}=                  get text         css=#order-summary > div > div.order-summary__section.order-summary__section--product-list > div > table > tbody > tr:nth-child(9) > th > ul > li > span
    Run keyword if          '${DiscountCode}'!='${ORDERSUMMARYDISCOUNTCODE3}'      Fail        Wrong Discount code displayed in Product Summary. Expected: ${ORDERSUMMARYDISCOUNTCODE3} Actual: ${DiscountCode}

Verify if White King Free Puffy Pillow is in Order Summary and details are correct
    ${ProductName}=            get text         css=#order-summary > div > div.order-summary__section.order-summary__section--product-list > div > table > tbody > tr:nth-child(10) > th > span.product__description__name.order-summary__emphasis
    Run keyword if          '${ProductName}'!='${ORDERSUMMARYPUFFYPILLOWKINGWHITE}'      Fail        Wrong Product in Order Summary. Expected: ${ORDERSUMMARYPUFFYPILLOWKINGWHITE} Actual: ${ProductName}
    ${Size}=              get text         css=#order-summary > div > div.order-summary__section.order-summary__section--product-list > div > table > tbody > tr:nth-child(10) > th > span.product__description__variant.order-summary__small-text
    Run keyword if          '${Size}'!='${ORDERSUMMARYPUFFYPILLOWKINGWHITESIZE}'    Fail        Wrong Size / Color in Order Summary. Expected: ${ORDERSUMMARYPUFFYPILLOWKINGWHITESIZE} Actual: ${Size}
    ${Quantity}=               get text         css=#order-summary > div > div.order-summary__section.order-summary__section--product-list > div > table > tbody > tr:nth-child(10) > td.product__image > div > span
    Run keyword if          '${Quantity}'!='${ORDERSUMMARYPUFFYPILLOWKINGWHITEQTY}'      Fail        Wrong product QTY in Order Summary. Expected: ${ORDERSUMMARYPUFFYPILLOWKINGWHITEQTY} Actual: ${Quantity}
    ${DiscountedPrice}=                  get text         css=#order-summary > div > div.order-summary__section.order-summary__section--product-list > div > table > tbody > tr:nth-child(10) > td.product__price > span
    Run keyword if          '${DiscountedPrice}'!='${ORDERSUMMARYPUFFYPILLOWKINGWHITEDISCOUNTEDPRICE}'      Fail        Wrong product discounted price in Order Summary. Expected: ${ORDERSUMMARYPUFFYPILLOWKINGWHITEDISCOUNTEDPRICE} Actual: ${DiscountedPrice}
    ${OriginalPrice}=               get text         css=#order-summary > div > div.order-summary__section.order-summary__section--product-list > div > table > tbody > tr:nth-child(10) > td.product__price > del
    Run keyword if          '${OriginalPrice}'!='${ORDERSUMMARYPUFFYPILLOWKINGWHITEORIGINALPRICE}'      Fail        Wrong product original price in Order Summary. Expected: ${ORDERSUMMARYPUFFYPILLOWKINGWHITEORIGINALPRICE} Actual: ${OriginalPrice}
    ${DiscountCode}=                  get text         css=#order-summary > div > div.order-summary__section.order-summary__section--product-list > div > table > tbody > tr:nth-child(10) > th > ul > li > span
    Run keyword if          '${DiscountCode}'!='${ORDERSUMMARYDISCOUNTCODE2}'      Fail        Wrong Discount code displayed in Product Summary. Expected: ${ORDERSUMMARYDISCOUNTCODE2} Actual: ${DiscountCode}

Verify if Gray Free Puffy Pillow is in Order Summary and details are correct
    ${ProductName}=            get text         css=#order-summary > div > div.order-summary__section.order-summary__section--product-list > div > table > tbody > tr:nth-child(11) > th > span.product__description__name.order-summary__emphasis
    Run keyword if          '${ProductName}'!='${ORDERSUMMARYPUFFYPILLOWKINGGRAY}'      Fail        Wrong Product in Order Summary. Expected: ${ORDERSUMMARYPUFFYPILLOWKINGGRAY} Actual: ${ProductName}
    ${Size}=              get text         css=#order-summary > div > div.order-summary__section.order-summary__section--product-list > div > table > tbody > tr:nth-child(11) > th > span.product__description__variant.order-summary__small-text
    Run keyword if          '${Size}'!='${ORDERSUMMARYPUFFYPILLOWKINGGRAYSIZE}'    Fail        Wrong Size / Color in Order Summary. Expected: ${ORDERSUMMARYPUFFYPILLOWKINGGRAYSIZE} Actual: ${Size}
    ${Quantity}=               get text         css=#order-summary > div > div.order-summary__section.order-summary__section--product-list > div > table > tbody > tr:nth-child(11) > td.product__image > div > span
    Run keyword if          '${Quantity}'!='${ORDERSUMMARYPUFFYPILLOWKINGGRAYQTY}'      Fail        Wrong product QTY in Order Summary. Expected: ${ORDERSUMMARYPUFFYPILLOWKINGGRAYQTY} Actual: ${Quantity}
    ${DiscountedPrice}=                  get text         css=#order-summary > div > div.order-summary__section.order-summary__section--product-list > div > table > tbody > tr:nth-child(11) > td.product__price > span
    Run keyword if          '${DiscountedPrice}'!='${ORDERSUMMARYPUFFYPILLOWKINGGRAYDISCOUNTEDPRICE}'      Fail        Wrong product discounted price in Order Summary. Expected: ${ORDERSUMMARYPUFFYPILLOWKINGGRAYDISCOUNTEDPRICE} Actual: ${DiscountedPrice}
    ${OriginalPrice}=               get text         css=#order-summary > div > div.order-summary__section.order-summary__section--product-list > div > table > tbody > tr:nth-child(11) > td.product__price > del
    Run keyword if          '${OriginalPrice}'!='${ORDERSUMMARYPUFFYPILLOWKINGGRAYORIGINALPRICE}'      Fail        Wrong product original price in Order Summary. Expected: ${ORDERSUMMARYPUFFYPILLOWKINGGRAYORIGINALPRICE} Actual: ${OriginalPrice}
    ${DiscountCode}=                  get text         css=#order-summary > div > div.order-summary__section.order-summary__section--product-list > div > table > tbody > tr:nth-child(11) > th > ul > li > span
    Run keyword if          '${DiscountCode}'!='${ORDERSUMMARYDISCOUNTCODE4}'      Fail        Wrong Discount code displayed in Product Summary. Expected: ${ORDERSUMMARYDISCOUNTCODE4} Actual: ${DiscountCode}
Verify if Total Savings amount is correct
    ${TotalSavings}=            get text         css=#order-summary > div > div.sidebar__discount > div > span
    Run keyword if          '${TotalSavings}'!='${TOTALSAVINGS}'      Fail        Wrong Product in Order Summary. Expected: ${TOTALSAVINGS} Actual: ${TotalSavings}
Verify if Subtotal amount is correct
    ${SubTotal}=            get text         css=#order-summary > div > div.order-summary__section.order-summary__section--total-lines > table > tbody > tr.total-line.total-line--subtotal > td > span
    Run keyword if          '${SubTotal}'!='${SUBTOTAL}'      Fail        Wrong Product in Order Summary. Expected: ${SUBTOTAL} Actual: ${SubTotal}
Verify if Shipping amount is correct
    ${Shipping}=            get text         css=#order-summary > div > div.order-summary__section.order-summary__section--total-lines > table > tbody > tr.total-line.total-line--shipping > td > span
    Run keyword if          '${Shipping}'!='${SHIPPING}'      Fail        Wrong Product in Order Summary. Expected: ${SHIPPING} Actual: ${Shipping}
Verify if Total amount is correct
    ${Total}=            get text         css=#order-summary > div > div.order-summary__section.order-summary__section--total-lines > table > tfoot > tr > td > span.payment-due__price.skeleton-while-loading--lg
    Run keyword if          '${Total}'!='${TOTAL}'      Fail        Wrong Product in Order Summary. Expected: ${TOTAL} Actual: ${Total}

#####################STORE CATEGORIES##########################

Click Mattresses category
    Click Element                                   css=#shopify-section-collection-template > div > div.sixteen.columns.puffy-store__container > div.collection-tabs > div > a:nth-child(2)
    wait until page contains element                css=#shopify-section-collection-template > div > div.sixteen.columns.puffy-store__container > div.collection-tabs > div > a:nth-child(2)
Click Compare Mattresses button
    Wait until page contains element                css=#collection-cta-container > a
    Click element                                   css=#collection-cta-container > a
Verify if redirected to Compare Page
    Wait until page contains element                css=body > div.compare-page.content > div.compare-page__headline > h1
    Location should be                              https://puffy.com/pages/puffy-mattress-and-puffy-lux
Click Bases Category
    wait until page contains element                css=#shopify-section-collection-template > div > div.sixteen.columns.puffy-store__container > div.collection-tabs > div > a:nth-child(3)
    Click Element                                   css=#shopify-section-collection-template > div > div.sixteen.columns.puffy-store__container > div.collection-tabs > div > a:nth-child(3)
    wait until page contains element                css=#collection-cta-container > a
Click See All Bases button
    Element should be visible                       css=#collection-cta-container > a
    Click Element                                   css=#collection-cta-container > a
Verify if redirected to Bases collection page
    wait until page contains element                css=#verifyEligibility > div > div > div.b-hero__inner > div > h1
    Location should be                              https://puffy.com/collections/bed-frames
Verify if the prices in bases collection page are correct
    Element should be visible                       css=body > div.item-boxes.bed-frames-products > div > div > div:nth-child(1) > div.item-boxes__ribbon > div > span:nth-child(2)
    ${FoundationStartingAt}=            get text    css=body > div.item-boxes.bed-frames-products > div > div > div:nth-child(1) > div.item-boxes__ribbon > div > span:nth-child(2)
    Run keyword if          '${FoundationStartingAt}'!='${PUFFYFOUNDATIONTWINORIGINAL}'      Fail        Wrong Puffy Foundation Starting at price in Bed Frame Collection page. Expected: ${PUFFYFOUNDATIONTWINORIGINAL}  Actual: ${FoundationStartingAt}
    ${AdjustableBaseStartingAt}=            get text    css=body > div.item-boxes.bed-frames-products > div > div > div:nth-child(2) > div.item-boxes__ribbon > div > span.jsDiscountedPrice
    Run keyword if          '${AdjustableBaseStartingAt}'!='${PUFFYADJUSTABLEBASETWINXL350OFF}'      Fail        Wrong Puffy Adjustable Base Starting at price in Bed Frame Collection page. Expected: ${PUFFYADJUSTABLEBASETWINXL350OFF}  Actual: ${AdjustableBaseStartingAt}
    ${BedFrameStartingAt}=            get text    css=body > div.item-boxes.bed-frames-products > div > div > div:nth-child(3) > div.item-boxes__ribbon > div > span:nth-child(2)
    Run keyword if          '${BedFrameStartingAt}'!='${PUFFYBEDFRAMEFULLORIGINAL}'      Fail        Wrong Puffy Bed Frame Starting at price in Bed Frame Collection page. Expected: ${PUFFYBEDFRAMEFULLORIGINAL}  Actual: ${BedFrameStartingAt}

Click Bedding Category
    wait until page contains element                css=#shopify-section-collection-template > div > div.sixteen.columns.puffy-store__container > div.collection-tabs > div > a:nth-child(4)
    Click Element                                   css=#shopify-section-collection-template > div > div.sixteen.columns.puffy-store__container > div.collection-tabs > div > a:nth-child(4)
    wait until page contains element                css=#collection-cta-container > a
Click See All Bedding Button
    Element should be visible                       css=#collection-cta-container > a
    Click Element                                   css=#collection-cta-container > a
Verify if redirected to Bedding collection page
    wait until page contains element                css=#verifyEligibility > div > div > div.b-hero__inner.b-hero__inner--beddings-content > div > h1
    Location should be                              https://puffy.com/collections/bedding
Verify if the prices in bedding collection page are correct
    Element should be visible                        css=body > div.item-boxes.beddings-products > div > div > div:nth-child(1) > div.item-boxes__ribbon > div > span:nth-child(2)
    ${PuffyPillowStartingAt}=            get text    css=body > div.item-boxes.beddings-products > div > div > div:nth-child(1) > div.item-boxes__ribbon > div > span:nth-child(2)
    Run keyword if          '${PuffyPillowStartingAt}'!='${PUFFYPILLOWSTANDARDORIGINAL}'      Fail        Wrong Puffy Pillow Starting at price in Bedding Collection page. Expected: ${PUFFYPILLOWSTANDARDORIGINAL}  Actual: ${PuffyPillowStartingAt}
    ${PuffyBodyPillowStartingAt}=            get text    css=body > div.item-boxes.beddings-products > div > div > div:nth-child(2) > div.item-boxes__ribbon > div > span:nth-child(2)
    Run keyword if          '${PuffyBodyPillowStartingAt}'!='${PUFFYBODYPILLOWORIGINAL}'      Fail        Wrong Puffy Body Pillow Starting at price in Bedding Collection page. Expected: ${PUFFYBODYPILLOWORIGINAL}  Actual: ${PuffyBodyPillowStartingAt}
    ${PuffyComforterStartingAt}=            get text    css=body > div.item-boxes.beddings-products > div > div > div:nth-child(3) > div.item-boxes__ribbon > div > span:nth-child(2)
    Run keyword if          '${PuffyComforterStartingAt}'!='${PUFFYCOMFORTERTWIN/TWINXLORIGINAL}'      Fail        Wrong Puffy Comforter Starting at price in Bedding Collection page. Expected: ${PUFFYCOMFORTERTWIN/TWINXLORIGINAL}  Actual: ${PuffyComforterStartingAt}
    ${PuffyMattressPadStartingAt}=            get text    css=body > div.item-boxes.beddings-products > div > div > div:nth-child(4) > div.item-boxes__ribbon > div > span:nth-child(2)
    Run keyword if          '${PuffyMattressPadStartingAt}'!='${PUFFYMATTRESSPADTWINORIGINAL}'      Fail        Wrong Puffy Mattress Pad Starting at price in Bedding Collection page. Expected: ${PUFFYMATTRESSPADTWINORIGINAL}  Actual: ${PuffyMattressPadStartingAt}
    ${PuffyMattressProtectorStartingAt}=            get text    css=body > div.item-boxes.beddings-products > div > div > div:nth-child(5) > div.item-boxes__ribbon > div > span:nth-child(2)
    Run keyword if          '${PuffyMattressProtectorStartingAt}'!='${PUFFYMATTRESSPROTECTORTWINORIGINAL}'      Fail        Wrong Puffy Mattress Protector Starting at price in Bedding Collection page. Expected: ${PUFFYMATTRESSPROTECTORTWINORIGINAL}  Actual: ${PuffyMattressProtectorStartingAt}
    ${PuffyMattressTopperStartingAt}=            get text    css=body > div.item-boxes.beddings-products > div > div > div:nth-child(6) > div.item-boxes__ribbon > div > span:nth-child(2)
    Run keyword if          '${PuffyMattressTopperStartingAt}'!='${PUFFYTOPPERTWINORIGINAL}'      Fail        Wrong Puffy Mattress Topper Starting at price in Bedding Collection page. Expected: ${PUFFYTOPPERTWINORIGINAL}  Actual: ${PuffyMattressTopperStartingAt}
    ${PuffyBlanketStartingAt}=            get text    css=body > div.item-boxes.beddings-products > div > div > div:nth-child(7) > div.item-boxes__ribbon > div > span:nth-child(2)
    Run keyword if          '${PuffyBlanketStartingAt}'!='${PUFFYBLANKETSMALLORIGINAL}'      Fail        Wrong Puffy Blanket Starting at price in Bedding Collection page. Expected: ${PUFFYBLANKETSMALLORIGINAL}  Actual: ${PuffyBlanketStartingAt}
    ${PuffyWeightedBlanketStartingAt}=            get text    css=body > div.item-boxes.beddings-products > div > div > div:nth-child(8) > div.item-boxes__ribbon > div > span:nth-child(2)
    Run keyword if          '${PuffyWeightedBlanketStartingAt}'!='${PUFFYWEIGHTEDBLANKETTWINORIGINAL}'      Fail        Wrong Puffy Weighted Blanket Starting at price in Bedding Collection page. Expected: ${PUFFYWEIGHTEDBLANKETTWINORIGINAL}  Actual: ${PuffyWeightedBlanketStartingAt}
    ${PuffySheetsStartingAt}=            get text    css=body > div.item-boxes.beddings-products > div > div > div:nth-child(9) > div.item-boxes__ribbon > div > span:nth-child(2)
    Run keyword if          '${PuffySheetsStartingAt}'!='${PUFFYSHEETSTWINORIGINAL}'      Fail        Wrong Puffy Sheets Starting at price in Bedding Collection page. Expected: ${PUFFYSHEETSTWINORIGINAL}  Actual: ${PuffySheetsStartingAt}
Click on Bedroom category
    wait until page contains element                css=#shopify-section-collection-template > div > div.sixteen.columns.puffy-store__container > div.collection-tabs > div > a:nth-child(5)
    Click Element                                   css=#shopify-section-collection-template > div > div.sixteen.columns.puffy-store__container > div.collection-tabs > div > a:nth-child(5)
    wait until page contains element                css=#collection-cta-container > a
Click See All Bedroom Button
    Element should be visible                       css=#collection-cta-container > a
    Click Element                                   css=#collection-cta-container > a
Verify if redirected to Bedroom collection page
    wait until page contains element                css=#verifyEligibility > div > div > div.b-hero__inner.b-hero__inner--bedroom-content > div > h1
    Location should be                              https://puffy.com/collections/bedroom
Verify if the prices in bedroom collection page are correct
    Element should be visible                        css=body > div.item-boxes.bedroom-products > div > div > div:nth-child(1) > div.item-boxes__ribbon > div > span:nth-child(2)
    ${PuffyDogBedStartingAt}=            get text    css=body > div.item-boxes.bedroom-products > div > div > div:nth-child(1) > div.item-boxes__ribbon > div > span:nth-child(2)
    Run keyword if          '${PuffyDogBedStartingAt}'!='${PUFFYDOGBEDSMALLORIGINAL}'      Fail        Wrong Puffy Dog Bed Starting at price in Bedroom Collection page. Expected: ${PUFFYDOGBEDSMALLORIGINAL}  Actual: ${PuffyDogBedStartingAt}
    ${PuffyBodyPillowStartingAt}=            get text    css=body > div.item-boxes.bedroom-products > div > div > div:nth-child(2) > div.item-boxes__ribbon > div > span:nth-child(2)
    Run keyword if          '${PuffyBodyPillowStartingAt}'!='${PUFFYRUGMEDIUMORIGINAL}'      Fail        Wrong Puffy Rug Starting at price in Bedroom Collection page. Expected: ${PUFFYRUGMEDIUMORIGINAL}  Actual: ${PuffyBodyPillowStartingAt}
