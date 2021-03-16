*** Keywords ***
Initiate Video Recording
    Start Video Recording       alias=FallSale name=FallSale

Open Login Screen
    Open Browser            ${HOMEPAGE}  ${SYSTEMBROWSER}
    Maximize Browser Window
    wait until page contains element    css=#saleTimer > div:nth-child(1) > div
Check Seasonal Sale text on timer
    ${Content}=            get text        css=#saleTimer > div:nth-child(1) > div
    Run keyword if          "${Content}"!="${FOOTER}"      Fail        Wrong Seasonal Sale timer Content Actual content: ${Content} Expected: ${FOOTER}
    Click element           css=#saleTimer > span > svg
Wait and dismiss popup
    sleep                   5s
    ${check}=               Run Keyword and Return Status  Element should be visible      xpath=/html/body/div[2]/div[2]/div/div[1]/img
    run keyword if          ${check} == False    Wait and dismiss popup
    ...     ELSE            Click element   css=#Layer_1 > polygon
Scroll to Footer section
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(1) > div
Footer Spell check for word Puffy
    ${FooterPuffyMattress}=               get text           ${LOCFOOTERPUFFY}
    Run keyword if          '${FooterPuffyMattress}'!='${FOOTERPUFFYMATTRESSSPELLING}'      Fail        Wrong Puffy Spelling in Footer. Actual content: ${FooterPuffyMattress} expected: ${FOOTERPUFFYMATTRESSSPELLING}
Footer Spell check for word Puffy Lux
    ${FooterPuffyLuxMattress}=            get text        ${LOCFOOTERPUFFYLUX}
    Run keyword if          '${FooterPuffyLuxMattress}'!='${FOOTERPUFFYLUXMATTRESSSPELLING}'      Fail        Wrong Puffy Lux Spelling in Footer. Actual content: ${FooterPuffyLuxMattress} expected: ${FOOTERPUFFYLUXMATTRESSSPELLING}
Footer Spell check for word Puffy Royal
    ${FooterPuffyRoyalMattress}=          get text      ${LOCFOOTERPUFFYROYAL}
    Run keyword if          '${FooterPuffyRoyalMattress}'!='${FOOTERPUFFYROYALMATTRESSSPELLING}'      Fail        Wrong Puffy Royal Spelling in Footer. Actual content: ${FooterPuffyRoyalMattress} expected: ${FOOTERPUFFYROYALMATTRESSSPELLING}
Footer Spell check for word Puffy Hybrid
    ${FooterPuffyHybridMattress}=               get text           ${LOCFOOTERPUFFYHYBRID}
    Run keyword if          '${FooterPuffyHybridMattress}'!='${FOOTERPUFFYHYBRIDMATTRESSSPELLING}'      Fail        Wrong Puffy Hybrid Spelling in Footer. Actual content: ${FooterPuffyHybridMattress} expected: ${FOOTERPUFFYHYBRIDMATTRESSSPELLING}
Footer Spell check for word Comforter
    ${FooterComforter}=            get text        ${LOCFOOTERCOMFORTER}
    Run keyword if          '${FooterComforter}'!='${FOOTERPUFFYCOMFORTERSPELLING}'      Fail        Wrong Comforter Spelling in Footer. Actual content: ${FooterComforter} expected: ${FOOTERPUFFYCOMFORTERSPELLING}
Footer Spell check for word Mattress Protector
    ${FooterMattressProtector}=          get text      ${LOCFOOTERMATTRESSPROTECTOR}
    Run keyword if          '${FooterMattressProtector}'!='${FOOTERPUFFYMATTRESSPROTECTORSPELLING}'      Fail        Wrong Mattress Protector Spelling in Footer. Actual content: ${FooterMattressProtector} expected: ${FOOTERPUFFYMATTRESSPROTECTORSPELLING}
Footer Spell check for word Mattress Topper
    ${FooterMattressTopper}=               get text           ${LOCFOOTERMATTRESSTOPPER}
    Run keyword if          '${FooterMattressTopper}'!='${FOOTERPUFFYMATTRESSTOPPERSPELLING}'      Fail        Wrong Mattress Topper Spelling in Footer. Actual content: ${FooterMattressTopper} expected: ${FOOTERPUFFYMATTRESSTOPPERSPELLING}
Footer Spell check for word Weighted Blanket
    ${FooterWeightedBlanket}=            get text        ${LOCFOOTERWEIGHTEDBLANKET}
    Run keyword if          '${FooterWeightedBlanket}'!='${FOOTERPUFFYWEIGHTEDBLANKETSPELLING}'      Fail        Wrong Weighted Blanket Spelling in Footer. Actual content: ${FooterWeightedBlanket} expected: ${FOOTERPUFFYWEIGHTEDBLANKETSPELLING}
Footer Spell check for word Dog Bed
    ${FooterDogBed}=          get text      ${LOCFOOTERDOGBED}
    Run keyword if          '${FooterDogBed}'!='${FOOTERPUFFYDOGBEDSPELLING}'      Fail        Wrong Dog Bed Spelling in Footer. Actual content: ${FooterDogBed} expected: ${FOOTERPUFFYDOGBEDSPELLING}
Footer Spell check for word Bed Frame
    ${FooterBedFrame}=               get text           ${LOCFOOTERBEDFRAME}
    Run keyword if          '${FooterBedFrame}'!='${FOOTERPUFFYBEDFRAMESPELLING}'      Fail        Wrong Puffy Mattress Spelling in Footer. Actual content: ${FooterBedFrame} expected: ${FOOTERPUFFYBEDFRAMESPELLING}
Footer Spell check for word Foundation
    ${FooterFoundation}=            get text        ${LOCFOOTERFOUNDATION}
    Run keyword if          '${FooterFoundation}'!='${FOOTERPUFFYFOUNDATIONSPELLING}'      Fail        Wrong Foundation Spelling in Footer. Actual content: ${FooterFoundation} expected: ${FOOTERPUFFYFOUNDATIONSPELLING}
Footer Spell check for word Adjustable Base
    ${FooterAdjustableBase}=          get text      ${LOCFOOTERADJUSTABLEBASE}
    Run keyword if          '${FooterAdjustableBase}'!='${FOOTERPUFFYADJUSTABLEBASESPELLING}'      Fail        Wrong Adjustable Base Spelling in Footer. Actual content: ${FooterAdjustableBase} expected: ${FOOTERPUFFYADJUSTABLEBASESPELLING}
Footer Spell check for word Pillow
    ${FooterPillow}=               get text           ${LOCFOOTERPILLOW}
    Run keyword if          '${FooterPillow}'!='${FOOTERPUFFYPILLOWSPELLING}'      Fail        Wrong Pillow Spelling in Footer. Actual content: ${FooterPillow} expected: ${FOOTERPUFFYPILLOWSPELLING}
Footer Spell check for word Body Pillow
    ${FooterBodyPillow}=            get text        ${LOCFOOTERBODYPILLOW}
    Run keyword if          '${FooterBodyPillow}'!='${FOOTERPUFFYBODYPILLOWSPELLING}'      Fail        Wrong Body Pillow Spelling in Footer. Actual content: ${FooterBodyPillow} expected: ${FOOTERPUFFYBODYPILLOWSPELLING}
Footer Spell check for word Mattress Pad
    ${FooterMattressPad}=          get text      ${LOCFOOTERMATTRESSPAD}
    Run keyword if          '${FooterMattressPad}'!='${FOOTERPUFFYMATTRESSPADSPELLING}'      Fail        Wrong Mattress Pad Spelling in Footer. Actual content: ${FooterMattressPad} expected: ${FOOTERPUFFYMATTRESSPADSPELLING}
Footer Spell check for word Puffy Blanket
    ${FooterPuffyBlanket}=               get text           ${LOCFOOTERPUFFYBLANKET}
    Run keyword if          '${FooterPuffyBlanket}'!='${FOOTERPUFFYBLANKETSPELLING}'      Fail        Wrong Puffy Blanket Spelling in Footer. Actual content: ${FooterPuffyBlanket} expected: ${FOOTERPUFFYBLANKETSPELLING}
Footer Spell check for word Puffy Sheets
    ${FooterPuffySheets}=            get text        ${LOCFOOTERPUFFYSHEETS}
    Run keyword if          '${FooterPuffySheets}'!='${FOOTERPUFFYSHEETSSPELLING}'      Fail        Wrong Puffy Sheets Spelling in Footer. Actual content: ${FooterPuffySheets} expected: ${FOOTERPUFFYSHEETSSPELLING}
Footer Spell check for word Puffy Rug
    ${FooterPuffyRug}=          get text      ${LOCFOOTERPUFFYRUG}
    Run keyword if          '${FooterPuffyRug}'!='${FOOTERPUFFYRUGSPELLING}'      Fail        Wrong Puffy Rug Spelling in Footer. Actual content: ${FooterPuffyRug} expected: ${FOOTERPUFFYRUGSPELLING}


Check Product Section Redirection
Click on Puffy and check redirection URL
    sleep                                   1s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(1) > div
    Click element                           ${LOCFOOTERPUFFY}
    Location Should Be                      ${PDPPUFFYMATTRESSURL}
    wait until page contains                ${FOOTERPUFFYMATTRESSSPELLING}

Click on Puffy Lux and check redirection URL
    sleep                                   1s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(1) > div
    Click element                           ${LOCFOOTERPUFFYLUX}
    Location Should Be                      ${HOMEPAGEPUFFYLUXURL}
    wait until page contains                Puffy Lux Mattress

Click on Puffy Royal and check redirection URL
    sleep                                   1s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(1) > div
    Click element                           ${LOCFOOTERPUFFYROYAL}
    Location Should Be                      ${PDPPUFFYROYALMATTRESSURL}
    wait until page contains element        css=#shopify-section-product-puffy-template > div.container.main.content.product-name--puffy-royal-mattress > div > div > div > div > div.seven.columns.medium-down--one-whole.alpha > div > div.product-head > div.product-head__text.product-head__text--boxed > div.product-head__headline.product-head__headline--hybrid > h1 > span.product-head__title-line

Click on Puffy Hybrid and check redirection URL
    sleep                                   1s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(1) > div
    Click element                           ${LOCFOOTERPUFFYHYBRID}
    Location Should Be                      ${HOMEPAGEPUFFYHYBRIDURL}
    wait until page contains                Puffy Hybrid Mattress

Click on Comforter and check redirection URL
    sleep                                   1s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(1) > div
    Click element                           ${LOCFOOTERCOMFORTER}
    Location Should Be                      ${PDPPUFFYCOMFORTERURL}
    wait until page contains                Puffy Comforter

Click on Mattress Protector and check redirection URL
    sleep                                   1s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(1) > div
    Click element                           ${LOCFOOTERMATTRESSPROTECTOR}
    Location Should Be                      ${PDPPUFFYMATTRESSPROTECTORURL}
    wait until page contains                Puffy Mattress Protector

Click on Mattress Topper and check redirection URL
    sleep                                   1s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(1) > div
    Click element                           ${LOCFOOTERMATTRESSTOPPER}
    Location Should Be                      ${PDPMATTRESSTOPPERURL}
    wait until page contains                Puffy Topper

Click on Weighted Blanket and check redirection URL
    sleep                                   1s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(1) > div
    Click element                           ${LOCFOOTERWEIGHTEDBLANKET}
    Location Should Be                      ${PDPWEIGHTEDBLANKETURL}
    wait until page contains                Puffy Weighted Blanket

Click on Dog Bed and check redirection URL
    sleep                                   1s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(1) > div
    Click element                           ${LOCFOOTERDOGBED}
    Location Should Be                      ${PDPDOGBEDURL}
    wait until page contains                Puffy Dog Bed

Click on Bed Frame and check redirection URL
    sleep                                   1s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(1) > div
    Click element                           ${LOCFOOTERBEDFRAME}
    Location Should Be                      ${PDPBEDFRAMEURL}
    wait until page contains                Puffy Bed Frame

Click on Foundation and check redirection URL
    sleep                                   1s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(1) > div
    Click element                           ${LOCFOOTERFOUNDATION}
    Location Should Be                      ${PDPFOUNDATIONURL}
    wait until page contains                Puffy Mattress Foundation

Click on Adjustable Base and check redirection URL
    sleep                                   1s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(1) > div
    Click element                           ${LOCFOOTERADJUSTABLEBASE}
    Location Should Be                      ${PDPADJUSTABLEBASEURL}
    wait until page contains                Puffy Adjustable Base

Click on Pillow and check redirection URL
    sleep                                   1s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(1) > div
    Click element                           ${LOCFOOTERPILLOW}
    Location Should Be                      ${PDPPILLOWURL}
    wait until page contains                Puffy Pillow

Click on Body Pillow and check redirection URL
    sleep                                   1s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(1) > div
    Click element                           ${LOCFOOTERBODYPILLOW}
    Location Should Be                      ${PDPBODYPILLOWURL}
    wait until page contains                Puffy Body Pillow

Click on Mattress Pad and check redirection URL
    sleep                                   1s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(1) > div
    Click element                           ${LOCFOOTERMATTRESSPAD}
    Location Should Be                      ${PDPMATTRESSPADURL}
    wait until page contains                Puffy Mattress Pad

Click on Puffy Blanket and check redirection URL
    sleep                                   1s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(1) > div
    Click element                           ${LOCFOOTERPUFFYBLANKET}
    Location Should Be                      ${PDPPUFFYBLANKETURL}
    wait until page contains                Puffy Blanket

Click on Puffy Sheets and check redirection URL
    sleep                                   1s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(1) > div
    Click element                           ${LOCFOOTERPUFFYSHEETS}
    Location Should Be                      ${PDPPUFFYSHEETSURL}
    wait until page contains                Puffy Sheets

Click on Puffy Rug and check redirection URL
    sleep                                   1s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(1) > div
    Click element                           ${LOCFOOTERPUFFYRUG}
    Location Should Be                      ${PDPPUFFYRUGURL}
    wait until page contains                Puffy Rug

Footer Spell check for word 101-Night Sleep Trial
    ${Footer101NightSleepTrial}=               get text           ${LOCFOOTER101NIGHTSLEEPTRIAL}
    Run keyword if          '${Footer101NightSleepTrial}'!='${FOOTER101NIGHTSLEEPTRIALSPELLING}'      Fail        Wrong 101-Night Sleep Trial Spelling in Footer. Actual content: ${Footer101NightSleepTrial} expected: ${FOOTER101NIGHTSLEEPTRIALSPELLING}
Footer Spell check for word How it's Made
    ${FooterHowItsMade}=            get text        ${LOCFOOTERHOWITSMADE}
    Run keyword if          "${FooterHowItsMade}"!="${FOOTERHOWITSMADESPELLING}"      Fail        Wrong How It's Made Spelling in Footer. Actual content: ${FooterHowItsMade} expected: ${FOOTERHOWITSMADESPELLING}
Footer Spell check for word Mattress Layers
    ${FooterMattressLayers}=          get text      ${LOCFOOTERMATTRESSLAYERS}
    Run keyword if          '${FooterMattressLayers}'!='${FOOTERMATTRESSLAYERSSPELLING}'      Fail        Wrong Mattress Layers Spelling in Footer. Actual content: ${FooterMattressLayers} expected: ${FOOTERMATTRESSLAYERSSPELLING}
Footer Spell check for word Perfect Sleep
    ${FooterPerfectSleep}=               get text           ${LOCFOOTERPERFECTSLEEP}
    Run keyword if          '${FooterPerfectSleep}'!='${FOOTERPERFECTSLEEPSPELLING}'      Fail        Wrong Perfect Sleep Spelling in Footer. Actual content: ${FooterPerfectSleep} expected: ${FOOTERPERFECTSLEEPSPELLING}
Footer Spell check for word Mattress Awards
    ${FooterMattressAwards}=               get text           ${LOCFOOTERMATTRESSAWARDS}
    Run keyword if          '${FooterMattressAwards}'!='${FOOTERMATTRESSAWARDS}'      Fail        Wrong Perfect Sleep Spelling in Footer. Actual content: ${FooterMattressAwards} expected: ${FOOTERMATTRESSAWARDS}
Footer Spell check for word Compare Mattress
    ${FooterCompareMattress}=            get text        ${LOCFOOTERCOMPAREMATTRESS}
    Run keyword if          '${FooterCompareMattress}'!='${FOOTERCOMPAREMATTRESSSPELLING}'      Fail        Wrong Compare Mattress Spelling in Footer. Actual content: ${FooterCompareMattress} expected: ${FOOTERCOMPAREHYBRIDSSPELLING}
Footer Spell check for word Compare Hybrids
    ${FooterCompareHybrid}=          get text      ${LOCFOOTERCOMPAREHYBRIDS}
    Run keyword if          '${FooterCompareHybrid}'!='${FOOTERCOMPAREHYBRIDSSPELLING}'      Fail        Wrong Compare Hybrid Spelling in Footer. Actual content: ${FooterCompareHybrid} expected: ${FOOTERCOMPAREHYBRIDSSPELLING}
Footer Spell check for word Puffy Donations
    ${FooterPuffyDonations}=               get text           ${LOCFOOTERPUFFYDONATIONS}
    Run keyword if          '${FooterPuffyDonations}'!='${FOOTERPUFFYDONATIONSSPELLING}'      Fail        Wrong Puffy Donations Spelling in Footer. Actual content: ${FooterPuffyDonations} expected: ${FOOTERPUFFYDONATIONSSPELLING}
Footer Spell check for word Affiliate Program
    ${FooterAffiliateProgram}=            get text        ${LOCFOOTERAFFILIATEPROGRAM}
    Run keyword if          '${FooterAffiliateProgram}'!='${FOOTERAFFILIATEPROGRAMSPELLING}'      Fail        Wrong Affiliate Program Spelling in Footer. Actual content: ${FooterAffiliateProgram} expected: ${FOOTERAFFILIATEPROGRAMSPELLING}
Footer Spell check for word Refer a Friend
    ${FooterReferAFriend}=          get text      ${LOCFOOTERREFERAFRIEND}
    Run keyword if          '${FooterReferAFriend}'!='${FOOTERREFERAFRIENDSPELLING}'      Fail        Wrong Refer a Friend Spelling in Footer. Actual content: ${FooterReferAFriend} expected: ${FOOTERREFERAFRIENDSPELLING}
Footer Spell check for word Gift Shop
    ${FooterGiftShop}=            get text        ${LOCFOOTERGIFTSHOP}
    Run keyword if          '${FooterGiftShop}'!='${FOOTERGIFTSHOPSPELLING}'      Fail        Wrong Gift Shop Spelling in Footer. Actual content: ${FooterGiftShop} expected: ${FOOTERGIFTSHOPSPELLING}
Footer Spell check for word Puffy Store
    ${FooterPuffyStore}=          get text      ${LOCFOOTERPUFFYSTORE}
    Run keyword if          '${FooterPuffyStore}'!='${FOOTERPUFFYSTORESPELLING}'      Fail        Wrong Puffy Store Spelling in Footer. Actual content: ${FooterPuffyStore} expected: ${FOOTERPUFFYSTORESPELLING}
Footer Spell check for word Puffy Blog
    ${FooterPuffyBlog}=               get text           ${LOCFOOTERPUFFYBLOG}
    Run keyword if          '${FooterPuffyBlog}'!='${FOOTERPUFFYBLOGSPELLING}'      Fail        Wrong Puffy Blog Spelling in Footer. Actual content: ${FooterPuffyBlog} expected: ${FOOTERPUFFYBLOGSPELLING}
Footer Spell check for word Puffy Review
    ${FooterPuffyReview}=            get text        ${LOCFOOTERPUFFYREVIEW}
    Run keyword if          '${FooterPuffyReview}'!='${FOOTERPUFFYREVIEWSPELLING}'      Fail        Wrong Puffy Review Spelling in Footer. Actual content: ${FooterPuffyReview} expected: ${FOOTERPUFFYREVIEWSPELLING}
Footer Spell check for word Puffy Lux Review
    ${FooterPuffyLuxReview}=          get text      ${LOCFOOTERPUFFYLUXREVIEW}
    Run keyword if          '${FooterPuffyLuxReview}'!='${FOOTERPUFFYLUXREVIEWSPELLING}'      Fail        Wrong Puffy Lux Review Spelling in Footer. Actual content: ${FooterPuffyLuxReview} expected: ${FOOTERPUFFYLUXREVIEWSPELLING}
Footer Spell check for word Puffy Royal Review
    ${FooterPuffyRoyalReview}=               get text           ${LOCFOOTERPUFFYROYALREVIEW}
    Run keyword if          '${FooterPuffyRoyalReview}'!='${FOOTERPUFFYROYALREVIEWSPELLING}'      Fail        Wrong Puffy Royal Review Spelling in Footer. Actual content: ${FooterPuffyRoyalReview} expected: ${FOOTERPUFFYROYALREVIEWSPELLING}
Footer Spell check for word Puffy Mattress Review
    ${FooterPuffyMattressReview}=            get text        ${LOCFOOTERPUFFYMATTRESSREVIEW}
    Run keyword if          '${FooterPuffyMattressReview}'!='${FOOTERPUFFYMATTRESSREVIEWSPELLING}'      Fail        Wrong Puffy Mattress Review Spelling in Footer. Actual content: ${FooterPuffyMattressReview} expected: ${FOOTERPUFFYMATTRESSREVIEWSPELLING}
Footer Spell check for word Healthcare Discount
    ${FooterHealthcareDiscount}=            get text        ${LOCFOOTERHEALTHCAREDISCOUNT}
    Run keyword if          '${FooterHealthcareDiscount}'!='${FOOTERHEALTHCAREDISCOUNT}'      Fail        Wrong Puffy Mattress Review Spelling in Footer. Actual content: ${FooterHealthcareDiscount} expected: ${FOOTERHEALTHCAREDISCOUNT}
Footer Spell check for word Military Discount
    ${FooterMilitaryDiscount}=            get text        ${LOCFOOTERMILITARYDISCOUNT}
    Run keyword if          '${FooterMilitaryDiscount}'!='${FOOTERMILITARYDISCOUNTSPELLING}'      Fail        Wrong Puffy Mattress Review Spelling in Footer. Actual content: ${FooterPuffyMattressReview} expected: ${FOOTERMILITARYDISCOUNTSPELLING}

Click on 101-Night Sleep Trial and check redirection URL
    sleep                                   2s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(2) > div
    Click element                           ${LOCFOOTER101NIGHTSLEEPTRIAL}
    Location Should Be                      ${PUFFY101NIGHTSLEEPTRIALURL}
    wait until page contains                101-Night Sleep Trial

Click on How it’s Made and check redirection URL
    sleep                                   2s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(2) > div
    Click element                           ${LOCFOOTERHOWITSMADE}
    Location Should Be                      ${PUFFYHOWITSMADEURL}
    wait until page contains                Making the Perfect Mattress

Click on Mattress Layers and check redirection URL
    sleep                                   2s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(2) > div
    Click element                           ${LOCFOOTERMATTRESSLAYERS}
    Location Should Be                      ${PUFFYMATTRESSLAYERSURL}
    wait until page contains                Puffy Sleep System

Click on Perfect Sleep and check redirection URL
    sleep                                   2s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(2) > div
    Click element                           ${LOCFOOTERPERFECTSLEEP}
    Location Should Be                      ${PUFFYPERFECTSLEEPURL}
    wait until page contains                Perfect Sleep

Click on Mattress Awards and check redirection URL
    sleep                                   2s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(2) > div
    Click element                           ${LOCFOOTERMATTRESSAWARDS}
    Location Should Be                      ${PUFFYMATTRESSAWARDSURL}
    wait until page contains                Award-Winning

Click on Compare Mattress and check redirection URL
    sleep                                   2s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(2) > div
    Click element                           ${LOCFOOTERCOMPAREMATTRESS}
    Location Should Be                      ${PUFFYCOMPAREMATTRESSURL}
    wait until page contains                choose your

Click on Compare Hybrids and check redirection URL
    sleep                                   2s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(2) > div
    Click element                           ${LOCFOOTERCOMPAREHYBRIDS}
    Location Should Be                      ${PUFFYCOMPAREHYBRIDSURL}
    wait until page contains                choose your

Click on Puffy Donations and check redirection URL
    sleep                                   2s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(2) > div
    Click element                           ${LOCFOOTERPUFFYDONATIONS}
    Location Should Be                      ${PUFFYDONATIONSURL}
    wait until page contains                Every Child Deserves

Click on Affiliate Program and check redirection URL
    sleep                                   2s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(2) > div
    Click element                           ${LOCFOOTERAFFILIATEPROGRAM}
    ${WindowHandles}=                       Get Window Handles
    Sleep                                   2s
    ${WindowIdentifier}=                    Get Window Identifiers
    Sleep                                   2s
    ${WindowNames}=                         Get Window Names
    Sleep                                   2s
    Switch Window                           ${WindowHandles}[1]
    Location Should Be                      ${PUFFYAFFILIATEPROGRAMURL}
    wait until page contains                © 2021 ShareASale.com, Inc. -
    Close Window
    sleep                                   2s
    Switch Window                           ${WindowHandles}[0]

Click on Refer a Friend and check redirection URL

    Click element                           ${LOCFOOTERREFERAFRIEND}
    Location Should Be                      ${PUFFYREFERAFRIENDURL}
    sleep                                   5s
    wait until page contains                Refer a Friend

Click on Gift Shop and check redirection URL
    sleep                                   2s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(2) > div
    Click element                           ${LOCFOOTERGIFTSHOP}
    Location Should Be                      ${PUFFYGIFTSHOPURL}
    wait until page contains                Gift Ideas For

Click on Puffy Store and check redirection URL
    sleep                                   2s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(2) > div
    Click element                           ${LOCFOOTERPUFFYSTORE}
    Location Should Be                      ${PUFFYSTOREURL}
    wait until page contains                Puffy Store

Click on Puffy Blog and check redirection URL
    sleep                                   2s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(2) > div
    Click element                           ${LOCFOOTERPUFFYBLOG}
    Location Should Be                      ${PUFFYBLOGURL}
    wait until page contains                In The Clouds

Click on Puffy Review and check redirection URL
    sleep                                   2s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(2) > div
    Click element                           ${LOCFOOTERPUFFYREVIEW}
    ${WindowHandles}=                       Get Window Handles
    Sleep                                   2s
    Switch Window                           ${WindowHandles}[1]
    Location Should Be                      ${PUFFYREVIEWURL}
    wait until page contains                Puffy
    Close Window
    sleep                                   2s
    Switch Window                           ${WindowHandles}[0]

Click on Puffy Lux Review and check redirection URL

    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(2) > div
    Click element                           ${LOCFOOTERPUFFYLUXREVIEW}
    ${WindowHandles}=                       Get Window Handles
    Sleep                                   2s
    Switch Window                           ${WindowHandles}[1]
    Location Should Be                      ${PUFFYLUXREVIEWURL}
    wait until page contains                Puffy Lux Mattress Review
    Close Window
    sleep                                   2s
    Switch Window                           ${WindowHandles}[0]

Click on Puffy Royal Review and check redirection URL
    Click element                           ${LOCFOOTERPUFFYROYALREVIEW}
    ${WindowHandles}=                       Get Window Handles
    Sleep                                   2s
    Switch Window                           ${WindowHandles}[1]
    Location Should Be                      ${PUFFYROYALREVIEWURL}
    wait until page contains                Puffy Royal Mattress
    Close Window
    sleep                                   2s
    Switch Window                           ${WindowHandles}[0]
Click on Puffy Mattress Review and check redirection URL
    Click element                           ${LOCFOOTERPUFFYMATTRESSREVIEW}
    ${WindowHandles}=                       Get Window Handles
    Sleep                                   2s
    Switch Window                           ${WindowHandles}[1]
    Location Should Be                      ${PUFFYMATTRESSREVIEWURL}
    wait until page contains                Puffy Mattress Review
    Close Window
    Switch Window                           ${WindowHandles}[0]

Click on Healthcare Discount and check redirection URL
    sleep                                   2s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(2) > div
    Click element                           ${LOCFOOTERMILITARYDISCOUNT}
    Location Should Be                      ${PUFFYMILITARYURL}
    wait until page contains                Exclusive Military Discount

Click on Military Discount and check redirection URL
    sleep                                   2s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(2) > div
    Click element                           ${LOCFOOTERHEALTHCAREDISCOUNT}
    Location Should Be                      ${PUFFYHEALTHCAREURL}
    wait until page contains                Healthcare Professionals

Footer Spell check for word Reviews
    ${FooterReviews}=               get text           ${LOCFOOTERREVIEWS}
    Run keyword if          '${FooterReviews}'!='${FOOTERREVIEWSSPELLING}'      Fail        Wrong Reviews Spelling in Footer. Actual content: ${FooterReviews} expected: ${FOOTERREVIEWSSPELLING}
Footer Spell check for word Contact Us
    ${FooterContactUs}=            get text        ${LOCFOOTERCONTACTUS}
    Run keyword if          '${FooterContactUs}'!='${FOOTERCONTACTUSSPELLING}'      Fail        Wrong Contact Us Spelling in Footer. Actual content: ${FooterContactUs} expected: ${FOOTERCONTACTUSSPELLING}
Footer Spell check for word FAQs
    ${FooterFAQs}=          get text      ${LOCFOOTERFAQS}
    Run keyword if          '${FooterFAQs}'!='${FOOTERFAQSSPELLING}'      Fail        Wrong FAQs Spelling in Footer. Actual content: ${FooterFAQs} expected: ${FOOTERFAQSSPELLING}
Footer Spell check for word Financing
    ${FooterFinancing}=               get text           ${LOCFOOTERFINANCING}
    Run keyword if          '${FooterFinancing}'!='${FOOTERFINANCINGSPELLING}'      Fail        Wrong Financing Spelling in Footer. Actual content: ${FooterFinancing} expected: ${FOOTERFINANCINGSPELLING}
Footer Spell check for word Return Policy
    ${FooterReturnPolicy}=            get text        ${LOCFOOTERRETURNPOLICY}
    Run keyword if          '${FooterReturnPolicy}'!='${FOOTERRETURNPOLICYSPELLING}'      Fail        Wrong Return Policy Spelling in Footer. Actual content: ${FooterReturnPolicy} expected: ${FOOTERRETURNPOLICYSPELLING}
Footer Spell check for word Puffy Guarantee
    ${FooterPuffyGuarantee}=          get text      ${LOCFOOTERPUFFYGUARANTEE}
    Run keyword if          '${FooterPuffyGuarantee}'!='${FOOTERPUFFYGUARANTEESPELLING}'      Fail        Wrong Puffy Guarantee Spelling in Footer. Actual content: ${FooterPuffyGuarantee} expected: ${FOOTERPUFFYGUARANTEESPELLING}

Click on Reviews and check redirection URL
    sleep                                   2s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(3) > div
    Click element                           ${LOCFOOTERREVIEWS}
    Location Should Be                      ${SUPPORTREVIEWSURL}
    wait until page contains                Puffy Mattress Reviews

Click on Contact Us and check redirection URL
    sleep                                   2s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(3) > div
    Click element                           ${LOCFOOTERCONTACTUS}
    Location Should Be                      ${SUPPORTCONTACTUSURL}
    wait until page contains                Ask Away.

Click on FAQs and check redirection URL
    sleep                                   2s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(3) > div
    Click element                           ${LOCFOOTERFAQS}
    Location Should Be                      ${SUPPORTFAQSURL}
    wait until page contains                Frequently Asked Questions

Click on Financing and check redirection URL
    sleep                                   2s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(3) > div
    Click element                           ${LOCFOOTERFINANCING}
    Location Should Be                      ${SUPPORTFINANCINGURL}
    wait until page contains                You choose

Click on Return Policy and check redirection URL
    sleep                                   2s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(3) > div
    Click element                           ${LOCFOOTERRETURNPOLICY}
    Location Should Be                      ${SUPPORTRETURNPOLICYURL}
    wait until page contains                Return Policy

Click on Puffy Guarantee and check redirection URL
    sleep                                   2s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(3) > div
    Click element                           ${LOCFOOTERPUFFYGUARANTEE}
    Location Should Be                      ${SUPPORTPUFFYGUARANTEEURL}
    wait until page contains                REST EASY

Check Social Media Section Redirection
Click on Facebook icon and check redirection URL
    sleep                                   2s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(4) > div > ul
    Click element                           ${LOCFOOTERFACEBOOK}
    ${WindowHandles}=                       Get Window Handles
    Sleep                                   2s
    Switch Window                           ${WindowHandles}[1]
    Location Should Be                      ${SOCIALFACEBOOKURL}
    Close Window
    sleep                                   2s
    Switch Window                           ${WindowHandles}[0]
Click on Twitter icon and check redirection URL
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(4) > div > ul
    Click element                           ${LOCFOOTERTWITTER}
    ${WindowHandles}=                       Get Window Handles
    Sleep                                   2s
    Switch Window                           ${WindowHandles}[1]
    Location Should Be                      ${SOCIALTWITTERURL}
    Close Window
    sleep                                   2s
    Switch Window                           ${WindowHandles}[0]
Click on Instagram icon and check redirection URL
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(4) > div > ul
    Click element                           ${LOCFOOTERINSTAGRAM}
    ${WindowHandles}=                       Get Window Handles
    Sleep                                   2s
    Switch Window                           ${WindowHandles}[1]
    Location Should Be                      ${SOCIALINSTAGRAMURL}
    Close Window
    sleep                                   2s
    Switch Window                           ${WindowHandles}[0]
Click on Youtube icon and check redirection URL
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(4) > div > ul
    Click element                           ${LOCFOOTERYOUTUBE}
    ${WindowHandles}=                       Get Window Handles
    Sleep                                   2s
    Switch Window                           ${WindowHandles}[1]
    Location Should Be                      ${SOCIALYOUTUBEURL}
    Close Window
    sleep                                   2s
    Switch Window                           ${WindowHandles}[0]
    #sleep                                   2s
    #Switch Window                           ${WindowHandles}[0]
    #Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(4) > div > ul
    #Click element                           ${LOCFOOTERLINKEDIN}
    #${WindowHandles}=                       Get Window Handles
    #Sleep                                   2s
    #Switch Window                           ${WindowHandles}[1]
    #Location Should Be                      ${SOCIALLINKEDINURL}
    #Close Window


Click on Pinterest icon and check redirection URL
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(4) > div > ul
    Click element                           ${LOCFOOTERPINTEREST}
    ${WindowHandles}=                       Get Window Handles
    Sleep                                   2s
    Switch Window                           ${WindowHandles}[1]
    Location Should Be                      ${SOCIALPINTERESTURL}
    Close Window
    Switch Window                           ${WindowHandles}[0]

Footer Spell check for word Privacy
    ${FooterPrivacy}=               get text           ${LOCFOOTERPRIVACY}
    Run keyword if          '${FooterPrivacy}'!='${FOOTERPRIVACYSPELLING}'      Fail        Wrong Privacy Spelling in Footer. Actual content: ${FooterPrivacy} expected: ${FOOTERPRIVACYSPELLING}
Footer Spell check for word Terms
    ${FooterTerms}=            get text        ${LOCFOOTERTERMS}
    Run keyword if          '${FooterTerms}'!='${FOOTERTERMSSPELLING}'      Fail        Wrong Terms Spelling in Footer. Actual content: ${FooterTerms} expected: ${FOOTERTERMSSPELLING}
Footer Spell check for word Warranty
    ${FooterWarranty}=          get text      ${LOCFOOTERWARRANTY}
    Run keyword if          '${FooterWarranty}'!='${FOOTERWARRANTYSPELLING}'      Fail        Wrong Warranty Spelling in Footer. Actual content: ${FooterWarranty} expected: ${FOOTERWARRANTYSPELLING}
Footer Spell check for word Do Not Sell My Personal Information
    ${FooterDNSMPI}=          get text      ${LOCFOOTERDNSMPI}
    Run keyword if          '${FooterDNSMPI}'!='${FOOTERDNSMPISPELLING}'      Fail        Wrong Warranty Spelling in Footer. Actual content: ${FooterDNSMPI} expected: ${FOOTERDNSMPISPELLING}
Footer Spell check for copyright section
    ${FooterCopyright}=          get text      ${LOCFOOTERCOPYRIGHT}
    Run keyword if          '${FooterCopyright}'!='${FOOTERCOPYRIGHTSPELLING}'      Fail        Wrong Copyright details in Footer. Actual content: ${FooterCopyright} expected: ${FOOTERCOPYRIGHTSPELLING}

Click on Privacy and check redirection URL
    sleep                                   2s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.footer-bottom > div > div:nth-child(1) > div
    Click element                           ${LOCFOOTERPRIVACY}
    Location Should Be                      ${AUXPRIVACYURL}
    wait until page contains                PRIVACY STATEMENT

Click on Terms and check redirection URL
    sleep                                   2s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.footer-bottom > div > div:nth-child(1) > div
    Click element                           ${LOCFOOTERTERMS}
    Location Should Be                      ${AUXTERMSURL}
    wait until page contains                Terms and Conditions

Click on Warranty and check redirection URL
    sleep                                   2s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.footer-bottom > div > div:nth-child(1) > div
    Click element                           ${LOCFOOTERWARRANTY}
    Location Should Be                      ${AUXWARRANTYURL}
    wait until page contains                Puffy Warranty Information

Click on Do Not Sell My Personal Information and check redirection URL
    sleep                                   2s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.footer-bottom > div > div:nth-child(1) > div
    Click element                           ${LOCFOOTERDNSMPI}
    Location Should Be                      ${AUXDNSMPIURL}
    wait until page contains                Do Not Sell My Personal Information

Click on Copyright and check redirection URL
    sleep                                   2s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.footer-bottom > div > div:nth-child(2)
    Click element                           ${LOCFOOTERCOPYRIGHT}
    Location Should Be                      ${AUXCOPYRIGHTURL}
    wait until page contains                Puffy Mattress

Click sign up without email address
    Scroll Element Into View                ${LOCFOOTERSIGNUP}
    Click Element                           ${LOCFOOTERSIGNUP}
    Page Should Contain                     This field is required

Click Sign up without email domain
    Input Text                              ${LOCSIGNUPTEXTFIELD}     ${SignUpNoDomain}
    Click Element                           ${LOCFOOTERSIGNUP}
    Page Should Contain                     Please enter a valid email address

Click Sign up with valid email address
    Input Text                              ${LOCSIGNUPTEXTFIELD}     ${SignUpValidEmail}
    Click Element                           ${LOCFOOTERSIGNUP}
    Sleep                                   5s
    Page Should Contain                     You've signed up successfully.

Switch to Version A
    Click element   ${LOCTOGGLEA}
Switch to Version B
    Click element   ${LOCTOGGLEB}
Switch to Version C
    Click element   ${LOCTOGGLEC}

###########################################################MEGA MENU KEYWORDS###########################################################

*** Keywords ***
Check the spelling of MATTRESSES items in main menu
    Mouse Over          ${LOCMATTRESSES}
    ${PuffyMattress}=               get text           ${LOCMENUPUFFYMATTRESSTEXT}
    Run keyword if          '${PuffyMattress}'!='${MENUPUFFYMATTRESSSPELLING}'      Fail        Wrong Puffy Mattress Spelling in Mattresses Menu. Actual content: ${PuffyMattress} expected: ${MENUPUFFYMATTRESSSPELLING}
    ${PuffyLuxMattress}=            get text        ${LOCMENUPUFFYLUXMATTRESSTEXT}
    Run keyword if          '${PuffyLuxMattress}'!='${MENUPUFFYLUXMATTRESSSPELLING}'      Fail        Wrong Puffy Lux Mattress Spelling in Mattresses Menu. Actual content: ${PuffyLuxMattress} expected: ${MENUPUFFYLUXMATTRESSSPELLING}
    ${PuffyRoyalMattress}=          get text      ${LOCMENUPUFFYROYALMATTRESSTEXT}
    Run keyword if          '${PuffyRoyalMattress}'!='${MENUPUFFYROYALMATTRESSSPELLING}'      Fail        Wrong Puffy Royal Mattress Spelling in Mattresses Menu. Actual content: ${PuffyRoyalMattress} expected: ${MENUPUFFYROYALMATTRESSSPELLING}

Check the spelling of BASES items in main menu
    Mouse Over          ${LOCBASES}
    ${PuffyFoundation}=               get text           ${LOCMENUPUFFYFOUNDATIONTEXT}
    Run keyword if          '${PuffyFoundation}'!='${MENUPUFFYFOUNDATIONSPELLING}'      Fail        Wrong Puffy Foundation Spelling in Bases Menu. Actual content: ${PuffyFoundation} expected: ${MENUPUFFYFOUNDATIONSPELLING}
    ${PuffyAdjustableBase}=            get text        ${LOCMENUPUFFYADJUSTABLEBASETEXT}
    Run keyword if          '${PuffyAdjustableBase}'!='${MENUPUFFYADJUSTABLEBASESPELLING}'      Fail        Wrong Puffy Adjustable Base Spelling in Bases Menu. Actual content: ${PuffyAdjustableBase} expected: ${MENUPUFFYADJUSTABLEBASESPELLING}
    ${PuffyBedFrame}=          get text      ${LOCMENUPUFFYBEDFRAMETEXT}
    Run keyword if          '${PuffyBedFrame}'!='${MENUPUFFYBEDFRAMESPELLING}'      Fail        Wrong Puffy Bed Frame Spelling in Bases Menu. Actual content: ${PuffyBedFrame} expected: ${MENUPUFFYBEDFRAMESPELLING}

Check the spelling of BEDDING items in main menu
    Mouse Over          ${LOCBEDDING}
    ${PuffyComforter}=               get text           ${LOCMENUPUFFYCOMFORTERTEXT}
    Run keyword if          '${PuffyComforter}'!='${MENUPUFFYCOMFORTERSPELLING}'      Fail        Wrong Puffy Comforter Spelling in Bedding Menu. Actual content: ${PuffyComforter} expected: ${MENUPUFFYCOMFORTERSPELLING}
    ${PuffyPillow}=            get text        ${LOCMENUPUFFYPILLOWTEXT}
    Run keyword if          '${PuffyPillow}'!='${MENUPUFFYPILLOWSPELLING}'      Fail        Wrong Puffy Pillow Spelling in Bedding Menu. Actual content: ${PuffyPillow} expected: ${MENUPUFFYPILLOWSPELLING}
    ${PuffyBodyPillow}=          get text      ${LOCMENUPUFFYBODYPILLOWTEXT}
    Run keyword if          '${PuffyBodyPillow}'!='${MENUPUFFYBODYPILLOWSPELLING}'      Fail        Wrong Puffy Body Pillow Spelling in Bedding Menu. Actual content: ${PuffyBodyPillow} expected: ${MENUPUFFYBODYPILLOWSPELLING}
    ${PuffyMattressPad}=               get text           ${LOCMENUPUFFYMATTRESSPADTEXT}
    Run keyword if          '${PuffyMattressPad}'!='${MENUPUFFYMATTRESSPADSPELLING}'      Fail        Wrong Puffy Mattress Pad Spelling in Bedding Menu. Actual content: ${PuffyMattressPad} expected: ${MENUPUFFYMATTRESSPADSPELLING}
    ${PuffyMattressProtector}=            get text        ${LOCMENUPUFFYMATTRESSPROTECTORTEXT}
    Run keyword if          '${PuffyMattressProtector}'!='${MENUPUFFYMATTRESSPROTECTORSPELLING}'      Fail        Wrong Puffy Mattress Protector Spelling in Bedding Menu. Actual content: ${PuffyMattressProtector} expected: ${MENUPUFFYMATTRESSPROTECTORSPELLING}
    ${PuffyMattressTopper}=          get text      ${LOCMENUPUFFYMATTRESSTOPPERTEXT}
    Run keyword if          '${PuffyMattressTopper}'!='${MENUPUFFYMATTRESSTOPPERSPELLING}'      Fail        Wrong Puffy Mattress Topper Spelling in Bedding Menu. Actual content: ${PuffyMattressTopper} expected: ${MENUPUFFYMATTRESSTOPPERSPELLING}
    ${PuffyBlanket}=               get text           ${LOCMENUPUFFYBLANKETTEXT}
    Run keyword if          '${PuffyBlanket}'!='${MENUPUFFYBLANKETSPELLING}'      Fail        Wrong Puffy Blanket Spelling in Bedding Menu. Actual content: ${PuffyBlanket} expected: ${MENUPUFFYBLANKETSPELLING}
    ${PuffyWeightedBlanket}=            get text        ${LOCMENUPUFFYWEIGHTEDBLANKETTEXT}
    Run keyword if          '${PuffyWeightedBlanket}'!='${MENUPUFFYWEIGHTEDBLANKETSPELLING}'      Fail        Wrong Puffy Weighted Blanket Spelling in Bedding Menu. Actual content: ${PuffyWeightedBlanket} expected: ${MENUPUFFYWEIGHTEDBLANKETSPELLING}
    ${PuffySheets}=          get text      ${LOCMENUPUFFYSHEETSTEXT}
    Run keyword if          '${PuffySheets}'!='${MENUPUFFYSHEETSSPELLING}'      Fail        Wrong Puffy Sheets Spelling in Bedding Menu. Actual content: ${PuffySheets} expected: ${MENUPUFFYSHEETSSPELLING}

Check the spelling of BEDROOM items in main menu
    Mouse Over          ${LOCBEDROOM}
    ${PuffyDogBed}=               get text           ${LOCMENUPUFFYDOGBEDTEXT}
    Run keyword if          '${PuffyDogBed}'!='${MENUPUFFYDOGBEDSPELLING}'      Fail        Wrong Puffy Dog Bed Spelling in Bedroom Menu. Actual content: ${PuffyDogBed} expected: ${MENUPUFFYDOGBEDSPELLING}
    ${PuffyRug}=            get text        ${LOCMENUPUFFYRUGTEXT}
    Run keyword if          '${PuffyRug}'!='${MENUPUFFYRUGSPELLING}'      Fail        Wrong Puffy Rug Spelling in Bedroom Menu. Actual content: ${PuffyRug} expected: ${MENUPUFFYRUGSPELLING}

Check the spelling of STORE button the header
    ${STOREHeader}=               get text           ${LOCHEADERSTORE}
    Run keyword if          '${STOREHeader}'!='${HEADERSTORESPELLING}'      Fail        Wrong STORE Spelling in Header. Actual content: ${STOREHeader} expected: ${HEADERSTORESPELLING}


MATTRESSES Submenu redirection checks
    Mouse Over          ${LOCMATTRESSES}
    Click element       ${LOCMENUPUFFYMATTRESSIMAGE}
    Location Should Be  ${PDPPUFFYMATTRESSURL}
    wait until page contains        ${TEXTPUFFYMATTRESSH1}

    sleep               1s
    Mouse Over          ${LOCMATTRESSES}
    Click element       ${LOCMENUPUFFYLUXMATTRESSIMAGE}
    Location Should Be  ${PDPPUFFYLUXMATTRESSURL}
    wait until page contains        ${TEXTPUFFYLUXMATTRESSH1}

    sleep               1s
    Mouse Over          ${LOCMATTRESSES}
    Click element       ${LOCMENUPUFFYROYALMATTRESSIMAGE}
    Location Should Be  ${PDPPUFFYROYALMATTRESSURL}
    wait until page contains        ${TEXTPUFFYROYALMATTRESSH1}

BASES Submenu redirection checks
    sleep               1s
    Mouse Over          ${LOCBASES}
    Click element       ${LOCMENUPUFFYFOUNDATIONIMAGE}
    Location Should Be  ${PDPFOUNDATIONURL}
    wait until page contains        ${TEXTPUFFYFOUNDATIONH1}

    sleep               1s
    Mouse Over          ${LOCBASES}
    Click element       ${LOCMENUPUFFYADJUSTABLEBASEIMAGE}
    Location Should Be  ${PDPADJUSTABLEBASEURL}
    wait until page contains        ${TEXTPUFFYADJUSTABLEBASEH1}

    sleep               1s
    Mouse Over          ${LOCBASES}
    Click element       ${LOCMENUPUFFYBEDFRAMEIMAGE}
    Location Should Be  ${PDPBEDFRAMEURL}
    wait until page contains        ${TEXTPUFFYBEDFRAMEH1}

BEDDING Submenu redirection checks
    sleep               1s
    Mouse Over          ${LOCBEDDING}
    Click element       ${LOCMENUPUFFYCOMFORTERIMAGE}
    Location Should Be  ${PDPPUFFYCOMFORTERURL}
    wait until page contains        ${TEXTPUFFYCOMFORTERH1}

    sleep               1s
    Mouse Over          ${LOCBEDDING}
    Click element       ${LOCMENUPUFFYPILLOWIMAGE}
    Location Should Be  ${PDPPILLOWURL}
    wait until page contains        ${TEXTPUFFYPILLOWH1}

    sleep               1s
    Mouse Over          ${LOCBEDDING}
    Click element       ${LOCMENUPUFFYBODYPILLOWIMAGE}
    Location Should Be  ${PDPBODYPILLOWURL}
    wait until page contains        ${TEXTPUFFYBODYPILLOWH1}

    sleep               1s
    Mouse Over          ${LOCBEDDING}
    Click element       ${LOCMENUPUFFYMATTRESSPADIMAGE}
    Location Should Be  ${PDPMATTRESSPADURL}
    wait until page contains        ${TEXTPUFFYMATTRESSPADH1}

    sleep               1s
    Mouse Over          ${LOCBEDDING}
    Click element       ${LOCMENUPUFFYMATTRESSPROTECTORIMAGE}
    Location Should Be  ${PDPPUFFYMATTRESSPROTECTORURL}
    wait until page contains        ${TEXTPUFFYMATTRESSPROTECTORH1}

    sleep               1s
    Mouse Over          ${LOCBEDDING}
    Click element       ${LOCMENUPUFFYMATTRESSTOPPERIMAGE}
    Location Should Be  ${PDPMATTRESSTOPPERURL}
    wait until page contains        ${TEXTPUFFYMATTRESSTOPPERH1}

    sleep               1s
    Mouse Over          ${LOCBEDDING}
    Click element       ${LOCMENUPUFFYBLANKETIMAGE}
    Location Should Be  ${PDPPUFFYBLANKETURL}
    wait until page contains        ${TEXTPUFFYBLANKETH1}

    sleep               1s
    Mouse Over          ${LOCBEDDING}
    Click element       ${LOCMENUPUFFYWEIGHTEDBLANKETIMAGE}
    Location Should Be  ${PDPWEIGHTEDBLANKETURL}
    wait until page contains        ${TEXTPUFFYWEIGHTEDBLANKETH1}

    sleep               1s
    Mouse Over          ${LOCBEDDING}
    Click element       ${LOCMENUPUFFYSHEETSIMAGE}
    Location Should Be  ${PDPPUFFYSHEETSURL}
    wait until page contains        ${TEXTPUFFYSHEETSH1}

BEDROOM Submenu redirection checks
    sleep               1s
    Mouse Over          ${LOCBEDROOM}
    Click element       ${LOCMENUPUFFYDOGBEDIMAGE}
    Location Should Be  ${PDPDOGBEDURL}
    wait until page contains        ${TEXTPUFFYDOGBEDH1}

    sleep               1s
    Mouse Over          ${LOCBEDROOM}
    Click element       ${LOCMENUPUFFYRUGIMAGE}
    Location Should Be  ${PDPPUFFYRUGURL}
    wait until page contains        ${TEXTPUFFYRUGH1}

REVIEWS Submenu redirection checks
    sleep               1s
    Mouse Over          ${LOCMENUREVIEWS}
    Click element       ${LOCMENUCUSTOMERREVIEWS}
    Location Should Be  ${SUPPORTREVIEWSURL}
    wait until page contains        ${TEXTPUFFYMATTRESSREVIEWSH1}

    sleep               1s
    Mouse Over          ${LOCMENUREVIEWS}
    Click element       ${LOCMENUVIDEOREVIEWS}
    Location Should Be  ${SUPPORTREVIEWVIDEOSURL}
    wait until page contains        ${TEXTPUFFYMATTRESSREVIEWVIDEOSH1}

    sleep               1s
    Mouse Over          ${LOCMENUREVIEWS}
    Click element       ${LOCMENUAWARDS}
    Location Should Be  ${PUFFYMATTRESSAWARDSURL}
    wait until page contains         ${TEXTPUFFYMATTRESSAWARDSH1}

SUPPORT Submenu redirection checks
    sleep               1s
    Mouse Over          ${LOCSUPPORT}
    Click element       ${LOCMENUCONTACTUS}
    Location Should Be  ${SUPPORTCONTACTUSURL}
    wait until page contains        ${TEXTCONTACTUSH1}

    sleep               1s
    Mouse Over          ${LOCSUPPORT}
    Click element       ${LOCMENUFAQS}
    Location Should Be  ${SUPPORTFAQSURL}
    wait until page contains        ${TEXTFAQH2}

    sleep               1s
    Mouse Over          ${LOCSUPPORT}
    Click element       ${LOCMENUFINANCING}
    Location Should Be  ${SUPPORTFINANCINGURL}
    wait until page contains         ${TEXTFINANCINGH1}

STORE button redirection checks
    sleep               1s
    click element       ${LOCHEADERSTORE}
    Location should be  ${PUFFYSTOREURL}
    wait until page contains        ${TEXTSTOREH1}

Puffy Logo redirection checks
    wait until page contains element               ${LOCHEADERPUFFYLOGO}
    click element       ${LOCHEADERPUFFYLOGO}
    Location should be  ${HEADERPUFFYICONURL}
    wait until page contains    ${TEXTHOMEPAGEH1}


MATTRESSES Submenu redirection checks using name text
    Mouse Over          ${LOCMATTRESSES}
    Click element       ${LOCMENUPUFFYMATTRESSTEXT}
    Location Should Be  ${PDPPUFFYMATTRESSURL}
    wait until page contains        ${TEXTPUFFYMATTRESSH1}

    sleep               1s
    Mouse Over          ${LOCMATTRESSES}
    Click element       ${LOCMENUPUFFYLUXMATTRESSTEXT}
    Location Should Be  ${PDPPUFFYLUXMATTRESSURL}
    wait until page contains        ${TEXTPUFFYLUXMATTRESSH1}

    sleep               1s
    Mouse Over          ${LOCMATTRESSES}
    Click element       ${LOCMENUPUFFYROYALMATTRESSTEXT}
    Location Should Be  ${PDPPUFFYROYALMATTRESSURL}
    wait until page contains        ${TEXTPUFFYROYALMATTRESSH1}

BASES Submenu redirection checks using name text
    sleep               1s
    Mouse Over          ${LOCBASES}
    Click element       ${LOCMENUPUFFYFOUNDATIONTEXT}
    Location Should Be  ${PDPFOUNDATIONURL}
    wait until page contains        ${TEXTPUFFYFOUNDATIONH1}

    sleep               1s
    Mouse Over          ${LOCBASES}
    Click element       ${LOCMENUPUFFYADJUSTABLEBASETEXT}
    Location Should Be  ${PDPADJUSTABLEBASEURL}
    wait until page contains        ${TEXTPUFFYADJUSTABLEBASEH1}

    sleep               1s
    Mouse Over          ${LOCBASES}
    Click element       ${LOCMENUPUFFYBEDFRAMETEXT}
    Location Should Be  ${PDPBEDFRAMEURL}
    wait until page contains        ${TEXTPUFFYBEDFRAMEH1}

BEDDING Submenu redirection checks using name text
    sleep               1s
    Mouse Over          ${LOCBEDDING}
    Click element       ${LOCMENUPUFFYCOMFORTERTEXT}
    Location Should Be  ${PDPPUFFYCOMFORTERURL}
    wait until page contains        ${TEXTPUFFYCOMFORTERH1}

    sleep               1s
    Mouse Over          ${LOCBEDDING}
    Click element       ${LOCMENUPUFFYPILLOWTEXT}
    Location Should Be  ${PDPPILLOWURL}
    wait until page contains        ${TEXTPUFFYPILLOWH1}

    sleep               1s
    Mouse Over          ${LOCBEDDING}
    Click element       ${LOCMENUPUFFYBODYPILLOWTEXT}
    Location Should Be  ${PDPBODYPILLOWURL}
    wait until page contains        ${TEXTPUFFYBODYPILLOWH1}

    sleep               1s
    Mouse Over          ${LOCBEDDING}
    Click element       ${LOCMENUPUFFYMATTRESSPADTEXT}
    Location Should Be  ${PDPMATTRESSPADURL}
    wait until page contains        ${TEXTPUFFYMATTRESSPADH1}

    sleep               1s
    Mouse Over          ${LOCBEDDING}
    Click element       ${LOCMENUPUFFYMATTRESSPROTECTORTEXT}
    Location Should Be  ${PDPPUFFYMATTRESSPROTECTORURL}
    wait until page contains        ${TEXTPUFFYMATTRESSPROTECTORH1}

    sleep               1s
    Mouse Over          ${LOCBEDDING}
    Click element       ${LOCMENUPUFFYMATTRESSTOPPERTEXT}
    Location Should Be  ${PDPMATTRESSTOPPERURL}
    wait until page contains        ${TEXTPUFFYMATTRESSTOPPERH1}

    sleep               1s
    Mouse Over          ${LOCBEDDING}
    Click element       ${LOCMENUPUFFYBLANKETTEXT}
    Location Should Be  ${PDPPUFFYBLANKETURL}
    wait until page contains        ${TEXTPUFFYBLANKETH1}

    sleep               1s
    Mouse Over          ${LOCBEDDING}
    Click element       ${LOCMENUPUFFYWEIGHTEDBLANKETTEXT}
    Location Should Be  ${PDPWEIGHTEDBLANKETURL}
    wait until page contains        ${TEXTPUFFYWEIGHTEDBLANKETH1}

    sleep               1s
    Mouse Over          ${LOCBEDDING}
    Click element       ${LOCMENUPUFFYSHEETSTEXT}
    Location Should Be  ${PDPPUFFYSHEETSURL}
    wait until page contains        ${TEXTPUFFYSHEETSH1}

BEDROOM Submenu redirection checks using name text
    sleep               1s
    Mouse Over          ${LOCBEDROOM}
    Click element       ${LOCMENUPUFFYDOGBEDTEXT}
    Location Should Be  ${PDPDOGBEDURL}
    wait until page contains        ${TEXTPUFFYDOGBEDH1}

    sleep               1s
    Mouse Over          ${LOCBEDROOM}
    Click element       ${LOCMENUPUFFYRUGTEXT}
    Location Should Be  ${PDPPUFFYRUGURL}
    wait until page contains        ${TEXTPUFFYRUGH1}

Main Menu click checks
    Sleep               1s
    Mouse Over          ${LOCMATTRESSES}
    Click Element       ${LOCMATTRESSES}
    Page Should Contain            Find Your Perfect Mattress

    Sleep               1s
    Mouse Over          ${LOCBASES}
    Click Element       ${LOCBASES}
    Page Should Not Contain     ${LOCMENUPUFFYFOUNDATIONTEXT}

    Sleep               1s
    Mouse Over          ${LOCBEDDING}
    Click Element       ${LOCBEDDING}
    Page Should Not Contain     ${LOCMENUPUFFYCOMFORTERTEXT}

    Sleep               1s
    Mouse Over          ${LOCBEDROOM}
    Click Element       ${LOCBEDROOM}
    Page Should Not Contain     ${LOCMENUPUFFYRUGTEXT}

    Sleep               1s
    Mouse Over          ${LOCMENUREVIEWS}
    Click Element       ${LOCMENUREVIEWS}
    Page Should Not Contain     ${LOCMENUAWARDS}

    Sleep               1s
    Mouse Over          ${LOCSUPPORT}
    Click Element       ${LOCSUPPORT}
    Location Should be     ${SUPPORTFAQSURL}
    wait until page contains        ${TEXTFAQH2}

