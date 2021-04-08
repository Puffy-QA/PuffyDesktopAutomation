*** Keywords ***
Initiate Video Recording
    Start Video Recording       alias=FallSale name=FallSale    monitor=3

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


#Check Product Section Redirection
Click on Puffy and check redirection URL
    sleep                                   1s
    Scroll Element Into View                css=.footer-menu-wrap
    Click element                           ${LOCFOOTERPUFFY}
    Take Screenshot                         ${MonitorID}
    wait until page contains                Puffy Mattress
    Take Screenshot                         ${MonitorID}
    sleep                                   5s
    Location Should Be                      ${PDPPUFFYMATTRESSURL}


Click on Puffy Lux and check redirection URL
    sleep                                   1s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(1) > div
    Click element                           ${LOCFOOTERPUFFYLUX}
    Take Screenshot                         ${MonitorID}
    wait until page contains                Puffy Lux Mattress
    Take Screenshot                         ${MonitorID}
    Location Should Be                      ${HOMEPAGEPUFFYLUXURL}
    wait until page contains                Puffy Lux Mattress

Click on Puffy Royal and check redirection URL
    sleep                                   1s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(1) > div
    Click element                           ${LOCFOOTERPUFFYROYAL}
    Take Screenshot                         ${MonitorID}
    wait until page contains element        css=#shopify-section-product-puffy-template > div.container.main.content.product-name--puffy-royal-mattress > div > div > div > div > div.seven.columns.medium-down--one-whole.alpha > div > div.product-head > div.product-head__text.product-head__text--boxed > div.product-head__headline.product-head__headline--hybrid > h1 > span.product-head__title-line
    Take Screenshot                         ${MonitorID}
    Location Should Be                      ${PDPPUFFYROYALMATTRESSURL}


Click on Puffy Hybrid and check redirection URL
    sleep                                   1s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(1) > div
    Click element                           ${LOCFOOTERPUFFYHYBRID}
    Take Screenshot                         ${MonitorID}
    wait until page contains                Puffy Hybrid Mattress
    Take Screenshot                         ${MonitorID}
    Location Should Be                      ${HOMEPAGEPUFFYHYBRIDURL}


Click on Comforter and check redirection URL
    sleep                                   1s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(1) > div
    Click element                           ${LOCFOOTERCOMFORTER}
    Take Screenshot                         ${MonitorID}
    wait until page contains                Puffy Comforter
    Take Screenshot                         ${MonitorID}
    Location Should Be                      ${PDPPUFFYCOMFORTERURL}


Click on Mattress Protector and check redirection URL
    sleep                                   1s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(1) > div
    Click element                           ${LOCFOOTERMATTRESSPROTECTOR}
    Take Screenshot                         ${MonitorID}
    wait until page contains                Puffy Mattress Protector
    Take Screenshot                         ${MonitorID}
    Location Should Be                      ${PDPPUFFYMATTRESSPROTECTORURL}

Click on Mattress Topper and check redirection URL
    sleep                                   1s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(1) > div
    Click element                           ${LOCFOOTERMATTRESSTOPPER}
    Take Screenshot                         ${MonitorID}
    wait until page contains                Puffy Topper
    Take Screenshot                         ${MonitorID}
    Location Should Be                      ${PDPMATTRESSTOPPERURL}


Click on Weighted Blanket and check redirection URL
    sleep                                   1s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(1) > div
    Click element                           ${LOCFOOTERWEIGHTEDBLANKET}
    Take Screenshot                         ${MonitorID}
    wait until page contains                Puffy Weighted Blanket
    Take Screenshot                         ${MonitorID}
    Location Should Be                      ${PDPWEIGHTEDBLANKETURL}


Click on Dog Bed and check redirection URL
    sleep                                   1s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(1) > div
    Click element                           ${LOCFOOTERDOGBED}
    Take Screenshot                         ${MonitorID}
    wait until page contains                Puffy Dog Bed
    Take Screenshot                         ${MonitorID}
    Location Should Be                      ${PDPDOGBEDURL}


Click on Bed Frame and check redirection URL
    sleep                                   1s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(1) > div
    Click element                           ${LOCFOOTERBEDFRAME}
    Take Screenshot                         ${MonitorID}
    wait until page contains                Puffy Bed Frame
    Take Screenshot                         ${MonitorID}
    Location Should Be                      ${PDPBEDFRAMEURL}


Click on Foundation and check redirection URL
    sleep                                   1s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(1) > div
    Click element                           ${LOCFOOTERFOUNDATION}
    Take Screenshot                         ${MonitorID}
    wait until page contains                Puffy Mattress Foundation
    Take Screenshot                         ${MonitorID}
    Location Should Be                      ${PDPFOUNDATIONURL}


Click on Adjustable Base and check redirection URL
    sleep                                   1s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(1) > div
    Click element                           ${LOCFOOTERADJUSTABLEBASE}
    Take Screenshot                         ${MonitorID}
    wait until page contains                Puffy Adjustable Base
    Take Screenshot                         ${MonitorID}
    Location Should Be                      ${PDPADJUSTABLEBASEURL}


Click on Pillow and check redirection URL
    sleep                                   1s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(1) > div
    Click element                           ${LOCFOOTERPILLOW}
    Take Screenshot                         ${MonitorID}
    wait until page contains                Puffy Pillow
    Take Screenshot                         ${MonitorID}
    Location Should Be                      ${PDPPILLOWURL}


Click on Body Pillow and check redirection URL
    sleep                                   1s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(1) > div
    Click element                           ${LOCFOOTERBODYPILLOW}
    Take Screenshot                         ${MonitorID}
    wait until page contains                Puffy Body Pillow
    Take Screenshot                         ${MonitorID}
    Location Should Be                      ${PDPBODYPILLOWURL}


Click on Mattress Pad and check redirection URL
    sleep                                   1s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(1) > div
    Click element                           ${LOCFOOTERMATTRESSPAD}
    Take Screenshot                         ${MonitorID}
    wait until page contains                Puffy Mattress Pad
    Take Screenshot                         ${MonitorID}
    Location Should Be                      ${PDPMATTRESSPADURL}

Click on Puffy Blanket and check redirection URL
    sleep                                   1s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(1) > div
    Click element                           ${LOCFOOTERPUFFYBLANKET}
    Take Screenshot                         ${MonitorID}
    wait until page contains                Puffy Blanket
    Take Screenshot                         ${MonitorID}
    Location Should Be                      ${PDPPUFFYBLANKETURL}

Click on Puffy Sheets and check redirection URL
    sleep                                   1s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(1) > div
    Click element                           ${LOCFOOTERPUFFYSHEETS}
    Take Screenshot                         ${MonitorID}
    wait until page contains                Puffy Sheets
    Take Screenshot                         ${MonitorID}
    Location Should Be                      ${PDPPUFFYSHEETSURL}

Click on Puffy Rug and check redirection URL
    sleep                                   1s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(1) > div
    Click element                           ${LOCFOOTERPUFFYRUG}
    Take Screenshot                         ${MonitorID}
    wait until page contains                Puffy Rug
    Take Screenshot                         ${MonitorID}
    Location Should Be                      ${PDPPUFFYRUGURL}

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
    Run keyword if          '${FooterCompareMattress}'!='${FOOTERCOMPAREMATTRESSSPELLING}'      Fail        Wrong Compare Mattress Spelling in Footer. Actual content: ${FooterCompareMattress} expected: ${FOOTERCOMPAREMATTRESSSPELLING}
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
    Take Screenshot                         ${MonitorID}
    wait until page contains                101-Night Sleep Trial
    Take Screenshot                         ${MonitorID}
    Location Should Be                      ${PUFFY101NIGHTSLEEPTRIALURL}

Click on How it’s Made and check redirection URL
    sleep                                   2s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(2) > div
    Click element                           ${LOCFOOTERHOWITSMADE}
    Take Screenshot                         ${MonitorID}
    wait until page contains                Making the Perfect Mattress
    Take Screenshot                         ${MonitorID}
    Location Should Be                      ${PUFFYHOWITSMADEURL}


Click on Mattress Layers and check redirection URL
    sleep                                   2s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(2) > div
    Click element                           ${LOCFOOTERMATTRESSLAYERS}
    Take Screenshot                         ${MonitorID}
    wait until page contains                Puffy Sleep System
    Take Screenshot                         ${MonitorID}
    Location Should Be                      ${PUFFYMATTRESSLAYERSURL}

Click on Perfect Sleep and check redirection URL
    sleep                                   2s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(2) > div
    Click element                           ${LOCFOOTERPERFECTSLEEP}
    Take Screenshot                         ${MonitorID}
    wait until page contains                Perfect Sleep
    Take Screenshot                         ${MonitorID}
    Location Should Be                      ${PUFFYPERFECTSLEEPURL}

Click on Mattress Awards and check redirection URL
    sleep                                   2s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(2) > div
    Click element                           ${LOCFOOTERMATTRESSAWARDS}
    Take Screenshot                         ${MonitorID}
    wait until page contains                Award-Winning
    Take Screenshot                         ${MonitorID}
    Location Should Be                      ${PUFFYMATTRESSAWARDSURL}

Click on Compare Mattress and check redirection URL
    sleep                                   2s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(2) > div
    Click element                           ${LOCFOOTERCOMPAREMATTRESS}
    Take Screenshot                         ${MonitorID}
    wait until page contains                choose your
    Take Screenshot                         ${MonitorID}
    Location Should Be                      ${PUFFYCOMPAREMATTRESSURL}

Click on Compare Hybrids and check redirection URL
    sleep                                   2s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(2) > div
    Click element                           ${LOCFOOTERCOMPAREHYBRIDS}
    Take Screenshot                         ${MonitorID}
    wait until page contains                choose your
    Take Screenshot                         ${MonitorID}
    Location Should Be                      ${PUFFYCOMPAREHYBRIDSURL}

Click on Puffy Donations and check redirection URL
    sleep                                   2s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(2) > div
    Click element                           ${LOCFOOTERPUFFYDONATIONS}
    Take Screenshot                         ${MonitorID}
    wait until page contains                Every Child Deserves
    Take Screenshot                         ${MonitorID}
    Location Should Be                      ${PUFFYDONATIONSURL}

Click on Affiliate Program and check redirection URL
    sleep                                   2s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(2) > div
    Click element                           ${LOCFOOTERAFFILIATEPROGRAM}
    sleep                                   2s
    ${WindowHandles}=                       Get Window Handles
    Sleep                                   2s
    ${WindowIdentifier}=                    Get Window Identifiers
    Sleep                                   2s
    ${WindowNames}=                         Get Window Names
    Sleep                                   2s
    Switch Window                           ${WindowHandles}[1]
    Take Screenshot                         ${MonitorID}
    wait until page contains                © 2021 ShareASale.com, Inc. -
    Take Screenshot                         ${MonitorID}
    Location Should Be                      ${PUFFYAFFILIATEPROGRAMURL}
    Close Window
    sleep                                   2s
    Switch Window                           ${WindowHandles}[0]

Click on Refer a Friend and check redirection URL

    Click element                           ${LOCFOOTERREFERAFRIEND}
    sleep                                   2s
    Take Screenshot                         ${MonitorID}
    wait until page contains                Refer a Friend
    Take Screenshot                         ${MonitorID}
    Location Should Be                      ${PUFFYREFERAFRIENDURL}
    sleep                                   5s

Click on Gift Shop and check redirection URL
    sleep                                   2s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(2) > div
    Click element                           ${LOCFOOTERGIFTSHOP}
    Take Screenshot                         ${MonitorID}
    wait until page contains                Gift Ideas For
    Take Screenshot                         ${MonitorID}
    Location Should Be                      ${PUFFYGIFTSHOPURL}

Click on Puffy Store and check redirection URL
    sleep                                   2s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(2) > div
    Click element                           ${LOCFOOTERPUFFYSTORE}
    Take Screenshot                         ${MonitorID}
    wait until page contains                Puffy Store
    Take Screenshot                         ${MonitorID}
    Location Should Be                      ${PUFFYSTOREURL}

Click on Puffy Blog and check redirection URL
    sleep                                   2s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(2) > div
    Click element                           ${LOCFOOTERPUFFYBLOG}
    Take Screenshot                         ${MonitorID}
    wait until page contains                In The Clouds
    Take Screenshot                         ${MonitorID}
    Location Should Be                      ${PUFFYBLOGURL}

Click on Puffy Review and check redirection URL
    sleep                                   2s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(2) > div
    Click element                           ${LOCFOOTERPUFFYREVIEW}
    sleep                                   2s
    ${WindowHandles}=                       Get Window Handles
    Sleep                                   2s
    Switch Window                           ${WindowHandles}[1]
    Take Screenshot                         ${MonitorID}
    wait until page contains                Puffy
    Take Screenshot                         ${MonitorID}
    Location Should Be                      ${PUFFYREVIEWURL}
    Close Window
    sleep                                   2s
    Switch Window                           ${WindowHandles}[0]

Click on Puffy Lux Review and check redirection URL

    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(2) > div
    Click element                           ${LOCFOOTERPUFFYLUXREVIEW}
    sleep                                   2s
    ${WindowHandles}=                       Get Window Handles
    Sleep                                   2s
    Switch Window                           ${WindowHandles}[1]
    Take Screenshot                         ${MonitorID}
    wait until page contains                Puffy Lux Mattress Review
    Take Screenshot                         ${MonitorID}
    Location Should Be                      ${PUFFYLUXREVIEWURL}
    Close Window
    sleep                                   2s
    Switch Window                           ${WindowHandles}[0]

Click on Puffy Royal Review and check redirection URL
    Click element                           ${LOCFOOTERPUFFYROYALREVIEW}
    sleep                                   2s
    ${WindowHandles}=                       Get Window Handles
    Sleep                                   2s
    Switch Window                           ${WindowHandles}[1]
    Take Screenshot                         ${MonitorID}
    wait until page contains                Puffy Royal Mattress
    Take Screenshot                         ${MonitorID}
    Location Should Be                      ${PUFFYROYALREVIEWURL}
    Close Window
    sleep                                   2s
    Switch Window                           ${WindowHandles}[0]
Click on Puffy Mattress Review and check redirection URL
    Click element                           ${LOCFOOTERPUFFYMATTRESSREVIEW}
    sleep                                   2s
    ${WindowHandles}=                       Get Window Handles
    Sleep                                   2s
    Switch Window                           ${WindowHandles}[1]
    Take Screenshot                         ${MonitorID}
    wait until page contains                Puffy Mattress Review
    Take Screenshot                         ${MonitorID}
    Location Should Be                      ${PUFFYMATTRESSREVIEWURL}
    Close Window
    Switch Window                           ${WindowHandles}[0]

Click on Healthcare Discount and check redirection URL
    sleep                                   2s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(2) > div
    Click element                           ${LOCFOOTERMILITARYDISCOUNT}
    sleep                                   2s
    Take Screenshot                         ${MonitorID}
    wait until page contains                Exclusive Military Discount
    Take Screenshot                         ${MonitorID}
    Location Should Be                      ${PUFFYMILITARYURL}

Click on Military Discount and check redirection URL
    sleep                                   2s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(2) > div
    Click element                           ${LOCFOOTERHEALTHCAREDISCOUNT}
    Take Screenshot                         ${MonitorID}
    wait until page contains                Healthcare Professionals
    Take Screenshot                         ${MonitorID}
    Location Should Be                      ${PUFFYHEALTHCAREURL}

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
    Take Screenshot                         ${MonitorID}
    wait until page contains                Puffy Mattress Reviews
    Take Screenshot                         ${MonitorID}
    Location Should Be                      ${SUPPORTREVIEWSURL}

Click on Contact Us and check redirection URL
    sleep                                   2s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(3) > div
    Click element                           ${LOCFOOTERCONTACTUS}
    Take Screenshot                         ${MonitorID}
    wait until page contains                Ask Away.
    Take Screenshot                         ${MonitorID}
    Location Should Be                      ${SUPPORTCONTACTUSURL}

Click on FAQs and check redirection URL
    sleep                                   2s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(3) > div
    Click element                           ${LOCFOOTERFAQS}
    Take Screenshot                         ${MonitorID}
    wait until page contains                Frequently Asked Questions
    Take Screenshot                         ${MonitorID}
    Location Should Be                      ${SUPPORTFAQSURL}

Click on Financing and check redirection URL
    sleep                                   2s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(3) > div
    Click element                           ${LOCFOOTERFINANCING}
    Take Screenshot                         ${MonitorID}
    wait until page contains                You choose
    Take Screenshot                         ${MonitorID}
    Location Should Be                      ${SUPPORTFINANCINGURL}

Click on Return Policy and check redirection URL
    sleep                                   2s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(3) > div
    Click element                           ${LOCFOOTERRETURNPOLICY}
    Take Screenshot                         ${MonitorID}
    wait until page contains                Return Policy
    Take Screenshot                         ${MonitorID}
    Location Should Be                      ${SUPPORTRETURNPOLICYURL}

Click on Puffy Guarantee and check redirection URL
    sleep                                   2s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(3) > div
    Click element                           ${LOCFOOTERPUFFYGUARANTEE}
    Take Screenshot                         ${MonitorID}
    wait until page contains                REST EASY
    Take Screenshot                         ${MonitorID}
    Location Should Be                      ${SUPPORTPUFFYGUARANTEEURL}

Check Social Media Section Redirection
Click on Facebook icon and check redirection URL
    sleep                                   2s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(4) > div > ul
    Click element                           ${LOCFOOTERFACEBOOK}
    sleep                                   2s
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
    sleep                                   2s
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
    sleep                                   2s
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
    sleep                                   2s
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
    Sleep                                   2s
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
    Take Screenshot                         ${MonitorID}
    wait until page contains                PRIVACY STATEMENT
    Take Screenshot                         ${MonitorID}
    Location Should Be                      ${AUXPRIVACYURL}

Click on Terms and check redirection URL
    sleep                                   2s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.footer-bottom > div > div:nth-child(1) > div
    Click element                           ${LOCFOOTERTERMS}
    Take Screenshot                         ${MonitorID}
    wait until page contains                Terms and Conditions
    Take Screenshot                         ${MonitorID}
    Location Should Be                      ${AUXTERMSURL}

Click on Warranty and check redirection URL
    sleep                                   2s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.footer-bottom > div > div:nth-child(1) > div
    Click element                           ${LOCFOOTERWARRANTY}
    Take Screenshot                         ${MonitorID}
    wait until page contains                Puffy Warranty Information
    Take Screenshot                         ${MonitorID}
    Location Should Be                      ${AUXWARRANTYURL}

Click on Do Not Sell My Personal Information and check redirection URL
    sleep                                   2s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.footer-bottom > div > div:nth-child(1) > div
    Click element                           ${LOCFOOTERDNSMPI}
    Take Screenshot                         ${MonitorID}
    wait until page contains                Do Not Sell My Personal Information
    Take Screenshot                         ${MonitorID}
    Location Should Be                      ${AUXDNSMPIURL}

Click on Copyright and check redirection URL
    sleep                                   2s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.footer-bottom > div > div:nth-child(2)
    Click element                           ${LOCFOOTERCOPYRIGHT}
    Take Screenshot                         ${MonitorID}
    wait until page contains                Puffy Mattress
    Take Screenshot                         ${MonitorID}
    Location Should Be                      ${AUXCOPYRIGHTURL}

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
Mouse over the MATTRESSES in Mega Menu
    Mouse Over          ${LOCMATTRESSES}
Look at the MATTRESSES mega menu spelling for Puffy Mattress
    ${PuffyMattress}=               get text           ${LOCMENUPUFFYMATTRESSTEXT}
    Run keyword if          '${PuffyMattress}'!='${MENUPUFFYMATTRESSSPELLING}'      Fail        Wrong Puffy Mattress Spelling in Mattresses Menu. Actual content: ${PuffyMattress} expected: ${MENUPUFFYMATTRESSSPELLING}
Look at the MATTRESSES mega menu spelling for Puffy Lux Mattress
    ${PuffyLuxMattress}=            get text        ${LOCMENUPUFFYLUXMATTRESSTEXT}
    Run keyword if          '${PuffyLuxMattress}'!='${MENUPUFFYLUXMATTRESSSPELLING}'      Fail        Wrong Puffy Lux Mattress Spelling in Mattresses Menu. Actual content: ${PuffyLuxMattress} expected: ${MENUPUFFYLUXMATTRESSSPELLING}
Look at the MATTRESSES mega menu spelling for Puffy Royal Mattress
    ${PuffyRoyalMattress}=          get text      ${LOCMENUPUFFYROYALMATTRESSTEXT}
    Run keyword if          '${PuffyRoyalMattress}'!='${MENUPUFFYROYALMATTRESSSPELLING}'      Fail        Wrong Puffy Royal Mattress Spelling in Mattresses Menu. Actual content: ${PuffyRoyalMattress} expected: ${MENUPUFFYROYALMATTRESSSPELLING}

Mouse over the BASES in Mega Menu
    Mouse Over          ${LOCBASES}
Look at the BASES mega menu spelling for Puffy Foundation
    ${PuffyFoundation}=               get text           ${LOCMENUPUFFYFOUNDATIONTEXT}
    Run keyword if          '${PuffyFoundation}'!='${MENUPUFFYFOUNDATIONSPELLING}'      Fail        Wrong Puffy Foundation Spelling in Bases Menu. Actual content: ${PuffyFoundation} expected: ${MENUPUFFYFOUNDATIONSPELLING}
Look at the BASES mega menu spelling for Puffy Adjustable Base
    ${PuffyAdjustableBase}=            get text        ${LOCMENUPUFFYADJUSTABLEBASETEXT}
    Run keyword if          '${PuffyAdjustableBase}'!='${MENUPUFFYADJUSTABLEBASESPELLING}'      Fail        Wrong Puffy Adjustable Base Spelling in Bases Menu. Actual content: ${PuffyAdjustableBase} expected: ${MENUPUFFYADJUSTABLEBASESPELLING}
Look at the BASES mega menu spelling for Puffy Bed Frame
    ${PuffyBedFrame}=          get text      ${LOCMENUPUFFYBEDFRAMETEXT}
    Run keyword if          '${PuffyBedFrame}'!='${MENUPUFFYBEDFRAMESPELLING}'      Fail        Wrong Puffy Bed Frame Spelling in Bases Menu. Actual content: ${PuffyBedFrame} expected: ${MENUPUFFYBEDFRAMESPELLING}

Mouse over the BEDDING in Mega Menu
    Mouse Over          ${LOCBEDDING}
Look at the BEDDING mega menu spelling for Comforter
    ${PuffyComforter}=               get text           ${LOCMENUPUFFYCOMFORTERTEXT}
    Run keyword if          '${PuffyComforter}'!='${MENUPUFFYCOMFORTERSPELLING}'      Fail        Wrong Puffy Comforter Spelling in Bedding Menu. Actual content: ${PuffyComforter} expected: ${MENUPUFFYCOMFORTERSPELLING}
Look at the BEDDING mega menu spelling for Puffy Pillow
    ${PuffyPillow}=            get text        ${LOCMENUPUFFYPILLOWTEXT}
    Run keyword if          '${PuffyPillow}'!='${MENUPUFFYPILLOWSPELLING}'      Fail        Wrong Puffy Pillow Spelling in Bedding Menu. Actual content: ${PuffyPillow} expected: ${MENUPUFFYPILLOWSPELLING}
Look at the BEDDING mega menu spelling for Puffy Body Pillow
    ${PuffyBodyPillow}=          get text      ${LOCMENUPUFFYBODYPILLOWTEXT}
    Run keyword if          '${PuffyBodyPillow}'!='${MENUPUFFYBODYPILLOWSPELLING}'      Fail        Wrong Puffy Body Pillow Spelling in Bedding Menu. Actual content: ${PuffyBodyPillow} expected: ${MENUPUFFYBODYPILLOWSPELLING}
Look at the BEDDING mega menu spelling for Puffy Mattress Pad
    ${PuffyMattressPad}=               get text           ${LOCMENUPUFFYMATTRESSPADTEXT}
    Run keyword if          '${PuffyMattressPad}'!='${MENUPUFFYMATTRESSPADSPELLING}'      Fail        Wrong Puffy Mattress Pad Spelling in Bedding Menu. Actual content: ${PuffyMattressPad} expected: ${MENUPUFFYMATTRESSPADSPELLING}
Look at the BEDDING mega menu spelling for Puffy Mattress Protector
    ${PuffyMattressProtector}=            get text        ${LOCMENUPUFFYMATTRESSPROTECTORTEXT}
    Run keyword if          '${PuffyMattressProtector}'!='${MENUPUFFYMATTRESSPROTECTORSPELLING}'      Fail        Wrong Puffy Mattress Protector Spelling in Bedding Menu. Actual content: ${PuffyMattressProtector} expected: ${MENUPUFFYMATTRESSPROTECTORSPELLING}
Look at the BEDDING mega menu spelling for Puffy Mattress Topper
    ${PuffyMattressTopper}=          get text      ${LOCMENUPUFFYMATTRESSTOPPERTEXT}
    Run keyword if          '${PuffyMattressTopper}'!='${MENUPUFFYMATTRESSTOPPERSPELLING}'      Fail        Wrong Puffy Mattress Topper Spelling in Bedding Menu. Actual content: ${PuffyMattressTopper} expected: ${MENUPUFFYMATTRESSTOPPERSPELLING}
Look at the BEDDING mega menu spelling for Puffy Blanket
    ${PuffyBlanket}=               get text           ${LOCMENUPUFFYBLANKETTEXT}
    Run keyword if          '${PuffyBlanket}'!='${MENUPUFFYBLANKETSPELLING}'      Fail        Wrong Puffy Blanket Spelling in Bedding Menu. Actual content: ${PuffyBlanket} expected: ${MENUPUFFYBLANKETSPELLING}
Look at the BEDDING mega menu spelling for Puffy Weighted Blanket
    ${PuffyWeightedBlanket}=            get text        ${LOCMENUPUFFYWEIGHTEDBLANKETTEXT}
    Run keyword if          '${PuffyWeightedBlanket}'!='${MENUPUFFYWEIGHTEDBLANKETSPELLING}'      Fail        Wrong Puffy Weighted Blanket Spelling in Bedding Menu. Actual content: ${PuffyWeightedBlanket} expected: ${MENUPUFFYWEIGHTEDBLANKETSPELLING}
Look at the BEDDING mega menu spelling for Puffy Sheets
    ${PuffySheets}=          get text      ${LOCMENUPUFFYSHEETSTEXT}
    Run keyword if          '${PuffySheets}'!='${MENUPUFFYSHEETSSPELLING}'      Fail        Wrong Puffy Sheets Spelling in Bedding Menu. Actual content: ${PuffySheets} expected: ${MENUPUFFYSHEETSSPELLING}

Mouse over the BEDROOM in Mega Menu
    Mouse Over          ${LOCBEDROOM}
Look at the BEDROOM mega menu spelling for Puffy Dog Bed
    ${PuffyDogBed}=               get text           ${LOCMENUPUFFYDOGBEDTEXT}
    Run keyword if          '${PuffyDogBed}'!='${MENUPUFFYDOGBEDSPELLING}'      Fail        Wrong Puffy Dog Bed Spelling in Bedroom Menu. Actual content: ${PuffyDogBed} expected: ${MENUPUFFYDOGBEDSPELLING}
Look at the BEDROOM mega menu spelling for Puffy Rug
    ${PuffyRug}=            get text        ${LOCMENUPUFFYRUGTEXT}
    Run keyword if          '${PuffyRug}'!='${MENUPUFFYRUGSPELLING}'      Fail        Wrong Puffy Rug Spelling in Bedroom Menu. Actual content: ${PuffyRug} expected: ${MENUPUFFYRUGSPELLING}

Look at the store mega menu spelling for STORE
    ${STOREHeader}=               get text           ${LOCHEADERSTORE}
    Run keyword if          '${STOREHeader}'!='${HEADERSTORESPELLING}'      Fail        Wrong STORE Spelling in Header. Actual content: ${STOREHeader} expected: ${HEADERSTORESPELLING}

Mouse over the REVIEWS in Mega Menu
    Mouse Over          ${LOCREVIEWS}
Look at the REVIEWS mega menu spelling for Customer Reviews
    ${CustomerReviews}=            get text        ${LOCMENUCUSTOMERREVIEWS}
    Run keyword if          '${CustomerReviews}'!='${MENUCUSTOMERREVIEWSSPELLING}'      Fail        Wrong Customer Reviews Spelling in Reviews Menu. Actual content: ${CustomerReviews} expected: ${MENUCUSTOMERREVIEWSSPELLING}

Look at the REVIEWS mega menu spelling for Video Reviews
    ${VideoReviews}=            get text        ${LOCMENUVIDEOREVIEWS}
    Run keyword if          '${VideoReviews}'!='${MENUVIDEOREVIEWSSPELLING}'      Fail        Wrong Video Reviews Spelling in Reviews Menu. Actual content: ${VideoReviews} expected: ${MENUVIDEOREVIEWSSPELLING}

Look at the REVIEWS mega menu spelling for Awards
    ${Awards}=            get text        ${LOCMENUAWARDS}
    Run keyword if          '${Awards}'!='${MENUMENUAWARDSSPELLING}'      Fail        Wrong Awards Spelling in Reviews Menu. Actual content: ${Awards} expected: ${MENUMENUAWARDSSPELLING}

Mouse over the SUPPORT in Mega Menu
    Mouse Over          ${LOCSUPPORT}
Look at the SUPPORT mega menu spelling for Contact US
    ${ContactUs}=            get text        ${LOCMENUCONTACTUS}
    Run keyword if          '${ContactUs}'!='${MENUCONTACTUSSPELLING}'      Fail        Wrong Contact Us Spelling in SUPPORT Menu. Actual content: ${ContactUs} expected: ${MENUCONTACTUSSPELLING}

Look at the SUPPORT mega menu spelling for FAQs
    ${FAQs}=            get text        ${LOCMENUFAQS}
    Run keyword if          '${FAQs}'!='${MENUFAQSSPELLING}'      Fail        Wrong FAQs Spelling in SUPPORT Menu. Actual content: ${FAQs} expected: ${MENUFAQSSPELLING}

Look at the SUPPORT mega menu spelling for Financing
    ${Financing}=            get text        ${LOCMENUFINANCING}
    Run keyword if          '${Financing}'!='${MENUFINANCINGSPELLING}'      Fail        Wrong Financing Spelling in SUPPORT Menu. Actual content: ${Financing} expected: ${MENUFINANCINGSPELLING}

Click on Mega Menu Image (Puffy Mattress)
    Mouse Over          ${LOCMATTRESSES}
    Click element       ${LOCMENUPUFFYMATTRESSIMAGE}
    Take Screenshot                 ${MonitorID}
    wait until page contains        ${TEXTPUFFYMATTRESSH1}
    Take Screenshot                     ${MonitorID}
    Location Should Be  ${PDPPUFFYMATTRESSURL}

Click on Mega Menu Image (Puffy Lux Mattress)
    sleep               1s
    Mouse Over          ${LOCMATTRESSES}
    Click element       ${LOCMENUPUFFYLUXMATTRESSIMAGE}
    Take Screenshot                 ${MonitorID}
    wait until page contains        ${TEXTPUFFYLUXMATTRESSH1}
    Take Screenshot                 ${MonitorID}
    Location Should Be  ${PDPPUFFYLUXMATTRESSURL}
Click on Mega Menu Image (Puffy Royal Mattress)
    sleep               1s
    Mouse Over          ${LOCMATTRESSES}
    Click element       ${LOCMENUPUFFYROYALMATTRESSIMAGE}
    Take Screenshot                         ${MonitorID}
    wait until page contains        ${TEXTPUFFYROYALMATTRESSH1}
    Take Screenshot                         ${MonitorID}
    Location Should Be  ${PDPPUFFYROYALMATTRESSURL}
Click on Mega Menu Image (Foundation)
    sleep               1s
    Mouse Over          ${LOCBASES}
    Click element       ${LOCMENUPUFFYFOUNDATIONIMAGE}
    Take Screenshot                         ${MonitorID}
    wait until page contains        ${TEXTPUFFYFOUNDATIONH1}
    Take Screenshot                         ${MonitorID}
    Location Should Be  ${PDPFOUNDATIONURL}
Click on Mega Menu Image (Adjustable Base)
    sleep               1s
    Mouse Over          ${LOCBASES}
    Click element       ${LOCMENUPUFFYADJUSTABLEBASEIMAGE}
    Take Screenshot                         ${MonitorID}
    wait until page contains        ${TEXTPUFFYADJUSTABLEBASEH1}
    Take Screenshot                         ${MonitorID}
    Location Should Be  ${PDPADJUSTABLEBASEURL}
Click on Mega Menu Image (Bed Frame)
    sleep               1s
    Mouse Over          ${LOCBASES}
    Click element       ${LOCMENUPUFFYBEDFRAMEIMAGE}
    Take Screenshot                         ${MonitorID}
    wait until page contains        ${TEXTPUFFYBEDFRAMEH1}
    Take Screenshot                         ${MonitorID}
    Location Should Be  ${PDPBEDFRAMEURL}
Click on Mega Menu Image (Comforter)
    sleep               1s
    Mouse Over          ${LOCBEDDING}
    Click element       ${LOCMENUPUFFYCOMFORTERIMAGE}
    Take Screenshot                         ${MonitorID}
    wait until page contains        ${TEXTPUFFYCOMFORTERH1}
    Take Screenshot                         ${MonitorID}
    Location Should Be  ${PDPPUFFYCOMFORTERURL}
Click on Mega Menu Image (Pillow)
    sleep               1s
    Mouse Over          ${LOCBEDDING}
    Click element       ${LOCMENUPUFFYPILLOWIMAGE}
    Take Screenshot                         ${MonitorID}
    wait until page contains        ${TEXTPUFFYPILLOWH1}
    Take Screenshot                         ${MonitorID}
    Location Should Be  ${PDPPILLOWURL}

Click on Mega Menu Image (Body Pillow)
    sleep               1s
    Mouse Over          ${LOCBEDDING}
    Click element       ${LOCMENUPUFFYBODYPILLOWIMAGE}
    Take Screenshot                         ${MonitorID}
    wait until page contains        ${TEXTPUFFYBODYPILLOWH1}
    Take Screenshot                         ${MonitorID}
    Location Should Be  ${PDPBODYPILLOWURL}
Click on Mega Menu Image (Mattress Pad)
    sleep               1s
    Mouse Over          ${LOCBEDDING}
    Click element       ${LOCMENUPUFFYMATTRESSPADIMAGE}
    Take Screenshot                         ${MonitorID}
    wait until page contains        ${TEXTPUFFYMATTRESSPADH1}
    Take Screenshot                         ${MonitorID}
    Location Should Be  ${PDPMATTRESSPADURL}
Click on Mega Menu Image (Mattress Protector)
    sleep               1s
    Mouse Over          ${LOCBEDDING}
    Click element       ${LOCMENUPUFFYMATTRESSPROTECTORIMAGE}
    Take Screenshot                         ${MonitorID}
    wait until page contains        ${TEXTPUFFYMATTRESSPROTECTORH1}
    Take Screenshot                         ${MonitorID}
    Location Should Be  ${PDPPUFFYMATTRESSPROTECTORURL}
Click on Mega Menu Image (Mattress Topper)
    sleep               1s
    Mouse Over          ${LOCBEDDING}
    Click element       ${LOCMENUPUFFYMATTRESSTOPPERIMAGE}
    Take Screenshot                         ${MonitorID}
    wait until page contains        ${TEXTPUFFYMATTRESSTOPPERH1}
    Take Screenshot                         ${MonitorID}
    Location Should Be  ${PDPMATTRESSTOPPERURL}
Click on Mega Menu Image (Blanket)
    sleep               1s
    Mouse Over          ${LOCBEDDING}
    Click element       ${LOCMENUPUFFYBLANKETIMAGE}
    Take Screenshot                         ${MonitorID}
    wait until page contains        ${TEXTPUFFYBLANKETH1}
    Take Screenshot                         ${MonitorID}
    Location Should Be  ${PDPPUFFYBLANKETURL}
Click on Mega Menu Image (Weighted Blanket)
    sleep               1s
    Mouse Over          ${LOCBEDDING}
    Click element       ${LOCMENUPUFFYWEIGHTEDBLANKETIMAGE}
    Take Screenshot                         ${MonitorID}
    wait until page contains        ${TEXTPUFFYWEIGHTEDBLANKETH1}
    Take Screenshot                         ${MonitorID}
    Location Should Be  ${PDPWEIGHTEDBLANKETURL}
Click on Mega Menu Image (Sheets)
    sleep               1s
    Mouse Over          ${LOCBEDDING}
    Click element       ${LOCMENUPUFFYSHEETSIMAGE}
    Take Screenshot                         ${MonitorID}
    wait until page contains        ${TEXTPUFFYSHEETSH1}
    Take Screenshot                         ${MonitorID}
    Location Should Be  ${PDPPUFFYSHEETSURL}
Click on Mega Menu Image (Dog Bed)
    sleep               1s
    Mouse Over          ${LOCBEDROOM}
    Click element       ${LOCMENUPUFFYDOGBEDIMAGE}
    Take Screenshot                         ${MonitorID}
    wait until page contains        ${TEXTPUFFYDOGBEDH1}
    Take Screenshot                         ${MonitorID}
    Location Should Be  ${PDPDOGBEDURL}
Click on Mega Menu Image (Rug)
    sleep               1s
    Mouse Over          ${LOCBEDROOM}
    Click element       ${LOCMENUPUFFYRUGIMAGE}
    Take Screenshot                         ${MonitorID}
    wait until page contains        ${TEXTPUFFYRUGH1}
    Take Screenshot                         ${MonitorID}
    Location Should Be  ${PDPPUFFYRUGURL}

Click on Mega Menu Image (Customer Reviews)
    sleep               1s
    Mouse Over          ${LOCMENUREVIEWS}
    Click Image       ${LOCMENUCUSTOMERREVIEWSIMAGE}
    Take Screenshot                         ${MonitorID}
    wait until page contains        ${TEXTPUFFYMATTRESSREVIEWSH1}
    Take Screenshot                         ${MonitorID}
    Location Should Be  ${SUPPORTREVIEWSURL}
Click on Mega Menu Image (Video Reviews)
    sleep               1s
    Mouse Over          ${LOCMENUREVIEWS}
    Click element       ${LOCMENUVIDEOREVIEWSIMAGE}
    Take Screenshot                         ${MonitorID}
    wait until page contains        ${TEXTPUFFYMATTRESSREVIEWVIDEOSH1}
    Take Screenshot                         ${MonitorID}
    Location Should Be  ${SUPPORTREVIEWVIDEOSURL}
Click on Mega Menu Image (Awards)
    sleep               1s
    Mouse Over          ${LOCMENUREVIEWS}
    Click element       ${LOCMENUAWARDSIMAGE}
    Take Screenshot                         ${MonitorID}
    wait until page contains         ${TEXTPUFFYMATTRESSAWARDSH1}
    Take Screenshot                         ${MonitorID}
    Location Should Be  ${PUFFYMATTRESSAWARDSURL}
Click on Mega Menu Image (Contact Us)
    sleep               1s
    Mouse Over          ${LOCSUPPORT}
    Click element       ${LOCMENUCONTACTUS}
    Take Screenshot                         ${MonitorID}
    wait until page contains        ${TEXTCONTACTUSH1}
    Take Screenshot                         ${MonitorID}
    Location Should Be  ${SUPPORTCONTACTUSURL}
Click on Mega Menu Image (FAQs)
    sleep               1s
    Mouse Over          ${LOCSUPPORT}
    Click element       ${LOCMENUFAQS}
    Take Screenshot                         ${MonitorID}
    wait until page contains        ${TEXTFAQH2}
    Take Screenshot                         ${MonitorID}
    Location Should Be  ${SUPPORTFAQSURL}
Click on Mega Menu Image (Financing)
    sleep               1s
    Mouse Over          ${LOCSUPPORT}
    Click element       ${LOCMENUFINANCING}
    Take Screenshot                         ${MonitorID}
    wait until page contains         ${TEXTFINANCINGH1}
    Take Screenshot                         ${MonitorID}
    Location Should Be  ${SUPPORTFINANCINGURL}

Click on STORE button from Mega Menu section
    sleep               1s
    click element       ${LOCHEADERSTORE}
    Take Screenshot                         ${MonitorID}
    wait until page contains        ${TEXTSTOREH1}
    Take Screenshot                         ${MonitorID}
    Location should be  ${PUFFYSTOREURL}

Click on Puffy Logo
    wait until page contains element               ${LOCHEADERPUFFYLOGO}
    click element       ${LOCHEADERPUFFYLOGO}
    Take Screenshot                         ${MonitorID}
    wait until page contains    ${TEXTHOMEPAGEH1}
    Take Screenshot                         ${MonitorID}
    Location should be  ${HEADERPUFFYICONURL}


Click on text name (Puffy Mattress)
    Mouse Over          ${LOCMATTRESSES}
    Click element       ${LOCMENUPUFFYMATTRESSTEXT}
    Take Screenshot                         ${MonitorID}
    wait until page contains        ${TEXTPUFFYMATTRESSH1}
    Take Screenshot                         ${MonitorID}
    Location Should Be  ${PDPPUFFYMATTRESSURL}
Click on text name (Puffy Lux Mattress)
    sleep               1s
    Mouse Over          ${LOCMATTRESSES}
    Click element       ${LOCMENUPUFFYLUXMATTRESSTEXT}
    Take Screenshot                         ${MonitorID}
    wait until page contains        ${TEXTPUFFYLUXMATTRESSH1}
    Take Screenshot                         ${MonitorID}
    Location Should Be  ${PDPPUFFYLUXMATTRESSURL}
Click on text name (Puffy Royal Mattress)
    sleep               1s
    Mouse Over          ${LOCMATTRESSES}
    Click element       ${LOCMENUPUFFYROYALMATTRESSTEXT}
    Take Screenshot                         ${MonitorID}
    wait until page contains        ${TEXTPUFFYROYALMATTRESSH1}
    Take Screenshot                         ${MonitorID}
    Location Should Be  ${PDPPUFFYROYALMATTRESSURL}

Click on text name (Foundation)
    sleep               1s
    Mouse Over          ${LOCBASES}
    Click element       ${LOCMENUPUFFYFOUNDATIONTEXT}
    Take Screenshot                         ${MonitorID}
    wait until page contains        ${TEXTPUFFYFOUNDATIONH1}
    Take Screenshot                         ${MonitorID}
    Location Should Be  ${PDPFOUNDATIONURL}
Click on text name (Adjustable Base)
    sleep               1s
    Mouse Over          ${LOCBASES}
    Click element       ${LOCMENUPUFFYADJUSTABLEBASETEXT}
    Take Screenshot                         ${MonitorID}
    wait until page contains        ${TEXTPUFFYADJUSTABLEBASEH1}
    Take Screenshot                         ${MonitorID}
    Location Should Be  ${PDPADJUSTABLEBASEURL}
Click on text name (Bed Frame)
    sleep               1s
    Mouse Over          ${LOCBASES}
    Click element       ${LOCMENUPUFFYBEDFRAMETEXT}
    Take Screenshot                         ${MonitorID}
    wait until page contains        ${TEXTPUFFYBEDFRAMEH1}
    Take Screenshot                         ${MonitorID}
    Location Should Be  ${PDPBEDFRAMEURL}
Click on text name (Comforter)
    sleep               1s
    Mouse Over          ${LOCBEDDING}
    Click element       ${LOCMENUPUFFYCOMFORTERTEXT}
    Take Screenshot                         ${MonitorID}
    wait until page contains        ${TEXTPUFFYCOMFORTERH1}
    Take Screenshot                         ${MonitorID}
    Location Should Be  ${PDPPUFFYCOMFORTERURL}
Click on text name (Pillow)
    sleep               1s
    Mouse Over          ${LOCBEDDING}
    Click element       ${LOCMENUPUFFYPILLOWTEXT}
    Take Screenshot                         ${MonitorID}
    wait until page contains        ${TEXTPUFFYPILLOWH1}
    Take Screenshot                         ${MonitorID}
    Location Should Be  ${PDPPILLOWURL}
Click on text name (Body Pillow)
    sleep               1s
    Mouse Over          ${LOCBEDDING}
    Click element       ${LOCMENUPUFFYBODYPILLOWTEXT}
    Take Screenshot                         ${MonitorID}
    wait until page contains        ${TEXTPUFFYBODYPILLOWH1}
    Take Screenshot                         ${MonitorID}
    Location Should Be  ${PDPBODYPILLOWURL}
Click on text name (Mattress Pad)
    sleep               1s
    Mouse Over          ${LOCBEDDING}
    Click element       ${LOCMENUPUFFYMATTRESSPADTEXT}
    Take Screenshot                         ${MonitorID}
    wait until page contains        ${TEXTPUFFYMATTRESSPADH1}
    Take Screenshot                         ${MonitorID}
    Location Should Be  ${PDPMATTRESSPADURL}
Click on text name (Mattress Protector)
    sleep               1s
    Mouse Over          ${LOCBEDDING}
    Click element       ${LOCMENUPUFFYMATTRESSPROTECTORTEXT}
    Take Screenshot                         ${MonitorID}
    wait until page contains        ${TEXTPUFFYMATTRESSPROTECTORH1}
    Take Screenshot                         ${MonitorID}
    Location Should Be  ${PDPPUFFYMATTRESSPROTECTORURL}
Click on text name (Mattress Topper)
    sleep               1s
    Mouse Over          ${LOCBEDDING}
    Click element       ${LOCMENUPUFFYMATTRESSTOPPERTEXT}
    Take Screenshot                         ${MonitorID}
    wait until page contains        ${TEXTPUFFYMATTRESSTOPPERH1}
    Take Screenshot                         ${MonitorID}
    Location Should Be  ${PDPMATTRESSTOPPERURL}
Click on text name (Blanket)
    sleep               1s
    Mouse Over          ${LOCBEDDING}
    Click element       ${LOCMENUPUFFYBLANKETTEXT}
    Take Screenshot                         ${MonitorID}
    wait until page contains        ${TEXTPUFFYBLANKETH1}
    Take Screenshot                         ${MonitorID}
    Location Should Be  ${PDPPUFFYBLANKETURL}
Click on text name (Weighted Blanket)
    sleep               1s
    Mouse Over          ${LOCBEDDING}
    Click element       ${LOCMENUPUFFYWEIGHTEDBLANKETTEXT}
    Take Screenshot                         ${MonitorID}
    wait until page contains        ${TEXTPUFFYWEIGHTEDBLANKETH1}
    Take Screenshot                         ${MonitorID}
    Location Should Be  ${PDPWEIGHTEDBLANKETURL}
Click on text name (Sheets)
    sleep               1s
    Mouse Over          ${LOCBEDDING}
    Click element       ${LOCMENUPUFFYSHEETSTEXT}
    Take Screenshot                         ${MonitorID}
    wait until page contains        ${TEXTPUFFYSHEETSH1}
    Take Screenshot                         ${MonitorID}
    Location Should Be  ${PDPPUFFYSHEETSURL}
Click on text name (Dog Bed)
    sleep               1s
    Mouse Over          ${LOCBEDROOM}
    Click element       ${LOCMENUPUFFYDOGBEDTEXT}
    Take Screenshot                         ${MonitorID}
    wait until page contains        ${TEXTPUFFYDOGBEDH1}
    Take Screenshot                         ${MonitorID}
    Location Should Be  ${PDPDOGBEDURL}
Click on text name (Rug)
    sleep               1s
    Mouse Over          ${LOCBEDROOM}
    Click element       ${LOCMENUPUFFYRUGTEXT}
    Take Screenshot                         ${MonitorID}
    wait until page contains        ${TEXTPUFFYRUGH1}
    Take Screenshot                         ${MonitorID}
    Location Should Be  ${PDPPUFFYRUGURL}
Click on text name (Customer Reviews)
    sleep               1s
    Mouse Over          ${LOCMENUREVIEWS}
    Click element       ${LOCMENUCUSTOMERREVIEWS}
    Take Screenshot                         ${MonitorID}
    wait until page contains        ${TEXTPUFFYMATTRESSREVIEWSH1}
    Take Screenshot                         ${MonitorID}
    Location Should Be  ${SUPPORTREVIEWSURL}
Click on text name (Video Reviews)
    sleep               1s
    Mouse Over          ${LOCMENUREVIEWS}
    Click Link          link:Video Reviews
    Take Screenshot                         ${MonitorID}
    wait until page contains        ${TEXTPUFFYMATTRESSREVIEWVIDEOSH1}
    Take Screenshot                         ${MonitorID}
    Location Should Be  ${SUPPORTREVIEWVIDEOSURL}
Click on text name (Awards)
    sleep               1s
    Mouse Over          ${LOCMENUREVIEWS}
    Click Link          link:Awards
    Take Screenshot                         ${MonitorID}
    wait until page contains        ${TEXTPUFFYMATTRESSAWARDSH1}
    Take Screenshot                         ${MonitorID}
    Location Should Be  ${PUFFYMATTRESSAWARDSURL}
Click on text name (Contact Us)
    sleep               1s
    Mouse Over          ${LOCSUPPORT}
    Click element       ${LOCMENUCONTACTUS}
    Take Screenshot                         ${MonitorID}
    wait until page contains        ${TEXTCONTACTUSH1}
    Take Screenshot                         ${MonitorID}
    Location Should Be  ${SUPPORTCONTACTUSURL}
Click on text name (FAQs)
    sleep               1s
    Mouse Over          ${LOCSUPPORT}
    Click element       ${LOCMENUFAQS}
    Take Screenshot                         ${MonitorID}
    wait until page contains        ${TEXTFAQH1}
    Take Screenshot                         ${MonitorID}
    Location Should Be  ${SUPPORTFAQSURL}
Click on text name (Financing)
    sleep               1s
    Mouse Over          ${LOCSUPPORT}
    Click element       ${LOCMENUFINANCING}
    Take Screenshot                         ${MonitorID}
    wait until page contains        ${TEXTFINANCINGH1}
    Take Screenshot                         ${MonitorID}
    Location Should Be  ${SUPPORTFINANCINGURL}
Click on Main Menu text (MATTRESSES)
    Sleep               1s
    Mouse Over          ${LOCMATTRESSES}
    Click Element       ${LOCMATTRESSES}
    Take Screenshot                         ${MonitorID}
    wait until page contains            Find Your Perfect Mattress
    Take Screenshot                         ${MonitorID}
    Location Should be  https://puffy.com/#mattresses
Click on Main Menu text (BASES)
    Sleep               1s
    Mouse Over          ${LOCBASES}
    Click Element       ${LOCBASES}
    Take Screenshot                         ${MonitorID}
    wait until page contains     Modern Bed Frames
    Take Screenshot                         ${MonitorID}
    Location should be  https://puffy.com/collections/bed-frames
Click on Main Menu text (BEDDING)
    Sleep               1s
    Mouse Over          ${LOCBEDDING}
    Click Element       ${LOCBEDDING}
    Take Screenshot                         ${MonitorID}
    wait until page contains     Ultra-cozy Bedding Collection
    Take Screenshot                         ${MonitorID}
    Location should be  https://puffy.com/collections/bedding
Click on Main Menu text (BEDROOM)
    Sleep               1s
    Mouse Over          ${LOCBEDROOM}
    Click Element       ${LOCBEDROOM}
    Take Screenshot                         ${MonitorID}
    wait until page contains     Lux Bedroom Essentials
    Take Screenshot                         ${MonitorID}
    Location should be  https://puffy.com/collections/bedroom
Click on Main Menu text (REVIEWS)
    Sleep               1s
    Mouse Over          ${LOCMENUREVIEWS}
    Click Element       ${LOCMENUREVIEWS}
    sleep                           5s
    Page Should Not Contain     ${LOCMENUAWARDS}
Click on Main Menu text (SUPPORT)
    Sleep               1s
    Mouse Over          ${LOCSUPPORT}
    Click Element       ${LOCSUPPORT}
    Take Screenshot                         ${MonitorID}
    wait until page contains         Puffy Support
    Take Screenshot                         ${MonitorID}
    Location Should be     https://puffy.com/pages/contact-puffy-mattress
Check if breadcrumb product is visible
    Page Should Not Contain         ${LOCFOOTERBREADCRUMB}
###############################CONTACT US###############################

Check the URL for Contact Us if it is correct
    Location should be                      ${SUPPORTCONTACTUSURL}

Check if the Contact us title is showing
    Wait until page contains element        ${LOCCONTACTUSTITLE}

Look at the Title Content for Contact US
    ${ContactUsTitle}=            get text        ${LOCCONTACTUSTITLE}
    Run keyword if          '${ContactUsTitle}'!='${TEXTCONTACTUSH1}'      Fail        Wrong Contact Us Title Content in Contact Us Page. Actual content: ${ContactUsTitle} expected: ${TEXTCONTACTUSH1}

Check if the Contact us title description is showing
    Wait until page contains element        ${LOCCONTACTUSTITLEDESCRIPTION}

Look at the Title description Content for Contact US
    ${ContactUsTitleDescription}=            get text        ${LOCCONTACTUSTITLEDESCRIPTION}
    Run keyword if          '${ContactUsTitleDescription}'!='${TEXTCONTACTUSTITLEDESCRIPTION}'      Fail        Wrong Contact Us Title description Content in Contact Us Page. Actual content: ${ContactUsTitleDescription} expected: ${TEXTCONTACTUSTITLEDESCRIPTION}

Check if the email icon in Contact Us is showing
    Page Should Contain Image       ${LOCCONTACTUSEMAILICON}

Look at the Email icon content for Contact US
    ${SendUsAnEmail}=            get text        ${LOCSENDUSANEMAIL}
    Run keyword if          '${SendUsAnEmail}'!='${TEXTCONTACTUSEMAIL}'      Fail        Wrong Email icon text in Contact Us Page. Actual content: ${SendUsAnEmail} expected: ${TEXTCONTACTUSEMAIL}

Look for the email address and see if it showing correct email address
    Wait until page contains element             ${LOCCONTACTUSEMAILADD}
    ${EmailAddress}=            get text        ${LOCCONTACTUSEMAILADD}
    Run keyword if          '${EmailAddress}'!='${TEXTEMAILADDRESS}'      Fail        Wrong Email Address in Contact Us Page. Actual content: ${EmailAddress} expected: ${TEXTEMAILADDRESS}

Check if the Phone icon in Contact Us is showing
    Page Should Contain Image       ${LOCCONTACTUSPHONEICON}

Look at the Phone icon content for Contact US
    ${GiveUsACall}=            get text        ${LOCGIVEUSACALL}
    Run keyword if          '${GiveUsACall}'!='${TEXTCONTACTUSPHONE}'      Fail        Wrong Phone icon text in Contact Us Page. Actual content: ${GiveUsACall} expected: ${TEXTCONTACTUSPHONE}

Look for the Phone Number and see if it showing correct details
    Wait until page contains element             ${LOCCONTACTUSPHONENUMBER}
    ${PhoneNumber}=            get text        ${LOCCONTACTUSPHONENUMBER}
    Run keyword if          '${PhoneNumber}'!='${TEXTPHONENUMBER}'      Fail        Wrong Phone Number in Contact Us Page. Actual content: ${PhoneNumber} expected: ${TEXPHONENUMBER}

Look for Contact Us form subject and see if it is showing correct text and spelling
    Wait until page contains element             ${LOCCONTACTUSFORMSUBJECT}
    ${ContactUsFormSubject}=            get text        ${LOCCONTACTUSFORMSUBJECT}
    Run keyword if          '${ContactUsFormSubject}'!='${TEXTCONTACTUSFORMSUBJECT}'      Fail        Wrong Phone Number in Contact Us Page. Actual content: ${ContactUsFormSubject} expected: ${TEXTCONTACTUSFORMSUBJECT}

Look for NAME textbox and check the label if it is showing and correctly spelled
    Wait until page contains element             ${LOCCONTACTUSNAMELABEL}
    ${ContactUsFormNameLabel}=            get text        ${LOCCONTACTUSNAMELABEL}
    Run keyword if          '${ContactUsFormNameLabel}'!='${TEXTCONTACTUSNAMELABEL}'      Fail        Wrong Name label in Contact Us form. Actual content: ${ContactUsFormNameLabel} expected: ${TEXTCONTACTUSNAMELABEL}
Look for EMAIL textbox and check the label if it is showing and correctly spelled
    Wait until page contains element             ${LOCCONTACTUSEMAILLABEL}
    ${ContactUsFormEmailLabel}=            get text        ${LOCCONTACTUSEMAILLABEL}
    Run keyword if          '${ContactUsFormEmailLabel}'!='${TEXTCONTACTUSEMAILLABEL}'      Fail        Wrong Email Label in Contact Us Form. Actual content: ${ContactUsFormEmailLabel} expected: ${TEXTCONTACTUSEMAILLABEL}
Look for REASON dropdown box and check the label if it is showing and correctly spelled
    Wait until page contains element             ${LOCCONTACTUSREASONLABEL}
    ${ContactUsFormReasonLabel}=            get text        ${LOCCONTACTUSREASONLABEL}
    Run keyword if          '${ContactUsFormReasonLabel}'!='${TEXTCONTACTUSREASONLABEL}'      Fail        Wrong Reason Label in Contact Us Form. Actual content: ${ContactUsFormReasonLabel} expected: ${TEXTCONTACTUSREASONLABEL}
Look for MESSAGE textbox and check the label if it is showing and correctly spelled
    Wait until page contains element             ${LOCCONTACTUSMESSAGELABEL}
    ${ContactUsFormMessageLabel}=            get text        ${LOCCONTACTUSMESSAGELABEL}
    Run keyword if          '${ContactUsFormMessageLabel}'!='${TEXTCONTACTUSMESSAGELABEL}'      Fail        Wrong Message Label in Contact Us Form. Actual content: ${ContactUsFormMessageLabel} expected: ${TEXTCONTACTUSMESSAGELABEL}
Check if the Name Textbox is showing
    Page Should Contain Element                         ${LOCCONTACTUSNAMETEXTBOX}
Check if the Email Textbox is showing
    Page Should Contain Element                         ${LOCCONTACTUSEMAILTEXTBOX}
Check if the Reason Dropdown is showing
    Page Should Contain Element                         ${LOCCONTACTUSREASONDROPDOWNBOX}
Check if the Message Textbox is showing
    Page Should Contain Element                         ${LOCCONTACTUSMESSAGETEXTBOX}
Check if the Send Message action button is showing
    Page Should Contain Element                         ${LOCCONTACTUSSENDMESSAGE}
Check if the field validation is working in contact us form
    Element Should Not Be Visible                       ${LOCCONTACTUSORDERNUMBERTEXTBOX}
    Click element                                       ${LOCCONTACTUSSENDMESSAGE}
    Location should be                                  ${SUPPORTCONTACTUSURL}
    Input Text                                          ${LOCCONTACTUSNAMETEXTBOX}      ${FIRSTNAME}
    Click element                                       ${LOCCONTACTUSSENDMESSAGE}
    Location should be                                  ${SUPPORTCONTACTUSURL}
    Input Text                                          ${LOCCONTACTUSEMAILTEXTBOX}     ${EMAIL}
    Click element                                       ${LOCCONTACTUSSENDMESSAGE}
    Location should be                                  ${SUPPORTCONTACTUSURL}
    Select from list by value                           contact-category    Contact Form - Shipping and Tracking - CF002
    Page Should Contain Textfield                       ${LOCCONTACTUSORDERNUMBERTEXTBOX}
    Click element                                       ${LOCCONTACTUSSENDMESSAGE}
    Location should be                                  ${SUPPORTCONTACTUSURL}
    Select from list by value                           contact-category    Contact Form - Warranty - CF003
    Element Should Not Be Visible                       ${LOCCONTACTUSORDERNUMBERTEXTBOX}
    Click element                                       ${LOCCONTACTUSSENDMESSAGE}
    Location should be                                  ${SUPPORTCONTACTUSURL}
    Select from list by value                           contact-category    Contact Form - Returns and Exchanges - CF004
    Page Should Contain Textfield                       ${LOCCONTACTUSORDERNUMBERTEXTBOX}
    Click element                                       ${LOCCONTACTUSSENDMESSAGE}
    Location should be                                  ${SUPPORTCONTACTUSURL}
    Go To                                               ${HOMEPAGE}
    Go To                                               ${SUPPORTCONTACTUSURL}
Fill out Contact Us form
    Input text                                          ${LOCCONTACTUSNAMETEXTBOX}      ${FIRSTNAME}
    Input Text                                          ${LOCCONTACTUSEMAILTEXTBOX}     ${EMAIL}
    Element Should Not Be Visible                       ${LOCCONTACTUSORDERNUMBERTEXTBOX}
    Select from list by value                           contact-category    Contact Form - Shipping and Tracking - CF002
    Page Should Contain Textfield                       ${LOCCONTACTUSORDERNUMBERTEXTBOX}
    Input Text                                          ${LOCCONTACTUSMESSAGETEXTBOX}       Hi
    Click element                                       ${LOCCONTACTUSSENDMESSAGE}
    Location should be                                  ${CONTACTFORMCHALLENGEURL}
######################################FINANCING PAGE##############################################
Go to Financing Page
    sleep                                   2s
    Scroll Element Into View                ${LOCFOOTERSECTION}
    Click element                           ${LOCFOOTERFINANCING}
    Location should be                      ${SUPPORTFINANCINGURL}
Check if top-banner__image is showing
    sleep                                   5s
    Page Should Contain Image               ${LOCFINANCINGTOPBANNERIMAGE}
    Element Should Be Visible               ${LOCFINANCINGTOPBANNERIMAGE}
Check if the Top Banner title is showing and with correct content
    Element should be Visible               ${LOCFINANCINGTOPBANNERTITLE}
    Wait until page contains                ${TEXTFINANCINGH1}
Check if the Top Banner description is showing and with correct content
    Element should be Visible               ${LOCFINANCINGTOPBANNERTITLEDESC}
    Wait until page contains                ${TEXTFINANCINGTOPBANNERTITLEDESC}
Check if Top Banner CTA button is showing and with correct text and functionality
    Element should be Visible                   ${LOCFINANCINGTOPBANNERCTA}
    ${TopBannerCTA}=            get text        ${LOCFINANCINGTOPBANNERCTA}
    Run keyword if          '${TopBannerCTA}'!='${TEXTSHOPTHEMATTRESSCTA}'      Fail        Wrong CTA label name for Top Banner. Actual content: ${TopBannerCTA} expected: ${TEXTSHOPTHEMATTRESSCTA}
Check if Financing option title is showing and with correct content
    Scroll Element Into View                    ${LOCFINANCINGKLARNAHEADER}
    Element should be Visible                   ${LOCFINANCINGFINANCEOPTIONHEADER}
    Wait until page contains                    ${TEXTFINANCEOPTIONHEADER}
Check if Klarna image is showing
    sleep                                       5s
    element should be visible                   ${LOCFINANCINGFINANCEKLARNAIMAGE}
Check if Klarna Summary is showing and with correct content
    element should be visible                   ${LOCFINANCINGKLARNASUMMARY}
    ${KlarnaFirstSummary}=            get text        ${LOCFINANCINGKLARNASUMMARYFIRST}
    Run keyword if          '${KlarnaFirstSummary}'!='${TEXTKLARNAFIRSTSUMMARY}'      Fail        Wrong Klarna First Summary. Actual content: ${KlarnaFirstSummary} expected: ${TEXTKLARNAFIRSTSUMMARY}
    ${KlarnaSecondSummary}=            get text        ${LOCFINANCINGKLARNASUMMARYSECOND}
    Run keyword if          '${KlarnaSecondSummary}'!='${TEXTKLARNASECONDSUMMARY}'      Fail        Wrong Klarna Second Summary. Actual content: ${KlarnaSecondSummary} expected: ${TEXTKLARNASECONDSUMMARY}
    ${KlarnaThirdSummary}=            get text        ${LOCFINANCINGKLARNASUMMARYTHIRD}
    Run keyword if          '${KlarnaThirdSummary}'!='${TEXTKLARNATHIRDSUMMARY}'      Fail        Wrong Klarna Third Summary. Actual content: ${KlarnaThirdSummary} expected: ${TEXTKLARNATHIRDSUMMARY}
    ${KlarnaFourthSummary}=            get text        ${LOCFINANCINGKLARNASUMMARYFOURTH}
    Run keyword if          '${KlarnaFourthSummary}'!='${TEXTKLARNAFOURTHSUMMARY}'      Fail        Wrong Klarna Fourth Summary. Actual content: ${KlarnaFourthSummary} expected: ${TEXTKLARNAFOURTHSUMMARY}
Check if See Details in Klarna is showing and redirecting to correct section
    ${KlarnaSeeDetails}=            get text        ${LOCFINANCINGKLARNASEEDETAILS}
    Run keyword if          '${KlarnaSeeDetails}'!='${TEXTFINANCINGSEEDETAILS}'      Fail        Wrong Klarna button label for see details. Actual content: ${KlarnaSeeDetails} expected: ${TEXTFINANCINGSEEDETAILS}
    Click element                                   ${LOCFINANCINGKLARNASEEDETAILS}
    Location should be                              ${FINANCINGKLARNASECTION}
    Go Back
Check if Splitit image is showing
    sleep                                       5s
    element should be visible                   ${LOCFINANCINGFINANCESPLITITIMAGE}
Check if Splitit Summary is showing with correct content
    element should be visible                   ${LOCFINANCINGSPLITITSUMMARY}
    ${SplititFirstSummary}=            get text        ${LOCFINANCINGSPLITITSUMMARYFIRST}
    Run keyword if          '${SplititFirstSummary}'!='${TEXTSPLITITFIRSTSUMMARY}'      Fail        Wrong Klarna First Summary. Actual content: ${SplititFirstSummary} expected: ${TEXTSPLITITFIRSTSUMMARY}
    ${SplititSecondSummary}=            get text        ${LOCFINANCINGSPLITITSUMMARYSECOND}
    Run keyword if          '${SplititSecondSummary}'!='${TEXTSPLITITSECONDSUMMARY}'      Fail        Wrong Klarna Second Summary. Actual content: ${SplititSecondSummary} expected: ${TEXTSPLITITSECONDSUMMARY}
    ${SplititThirdSummary}=            get text        ${LOCFINANCINGSPLITITSUMMARYTHIRD}
    Run keyword if          '${SplititThirdSummary}'!='${TEXTSPLITITTHIRDSUMMARY}'      Fail        Wrong Klarna Third Summary. Actual content: ${SplititThirdSummary} expected: ${TEXTSPLITITTHIRDSUMMARY}
    ${SplititFourthSummary}=            get text        ${LOCFINANCINGSPLITITSUMMARYFOURTH}
    Run keyword if          '${SplititFourthSummary}'!='${TEXTSPLITITFOURTHSUMMARY}'      Fail        Wrong Klarna Fourth Summary. Actual content: ${SplititFourthSummary} expected: ${TEXTSPLITITFOURTHSUMMARY}
Check if See Details in Splitit is showing and redirecting to correct section
    ${SplititSeeDetails}=            get text        ${LOCFINANCINGSPLITITSEEDETAILS}
    Run keyword if          '${SplititSeeDetails}'!='${TEXTFINANCINGSEEDETAILS}'      Fail        Wrong Splitit button label for see details. Actual content: ${SplititSeeDetails} expected: ${TEXTFINANCINGSEEDETAILS}
    Click element                                   ${LOCFINANCINGSPLITITSEEDETAILS}
    Location should be                              ${FINANCINGSPLITITSECTION}
    Go Back
Click See Details in Klarna
    ${KlarnaSeeDetails}=            get text        ${LOCFINANCINGKLARNASEEDETAILS}
    Run keyword if          '${KlarnaSeeDetails}'!='${TEXTFINANCINGSEEDETAILS}'      Fail        Wrong Klarna button label for see details. Actual content: ${KlarnaSeeDetails} expected: ${TEXTFINANCINGSEEDETAILS}
    Click element                                   ${LOCFINANCINGKLARNASEEDETAILS}
    Location should be                              ${FINANCINGKLARNASECTION}
Check if Klarna image in finance is showing
    Element should be visible                       css=body > div.financing__klarna > div.featured-financing.text-bar > div.featured-financing__icon
Check if Klarna section title is showing and with correct content
    Element should be visible                       ${LOCKLARNAFINANCETITLE}
    ${KlarnaFinanceTitle}=            get text      ${LOCKLARNAFINANCETITLE}
    Run keyword if          '${KlarnaFinanceTitle}'!='${TEXTKLARNAFINANCETITLE}'      Fail        Wrong Klarna Finance title. Actual content: ${KlarnaFinanceTitle} expected: ${TEXTKLARNAFINANCETITLE}
Check if Klarna featured financing is showing with correct content (Including the amount per month)
    Element should be visible                       ${LOCKLARNAFINANCETITLEDESC}
    ${KlarnaFinanceTitleDesc}=            get text      ${LOCKLARNAFINANCETITLEDESC}
    Run keyword if          '${KlarnaFinanceTitleDesc}'!='${TEXTKLARNAFINANCETITLEDESC}'      Fail        Wrong Klarna Finance title description. Actual content: ${KlarnaFinanceTitleDesc} expected: ${TEXTKLARNAFINANCETITLE}
Check if Klarna Financing Icon is Showing
    Element should be visible                       ${LOCKLARNAAPRFINANCINGICON}
Check if Klarna Financing feature title is showing with correct content
    Element Should be Visible                       ${LOCKLARNAAPRFINANCINGTITLE}
    ${KlarnaAPRFinaningTitle}=            get text      ${LOCKLARNAAPRFINANCINGTITLE}
    Run keyword if          '${KlarnaAPRFinaningTitle}'!='${TEXTKLARNAAPRFINANCING}'      Fail        Wrong Klarna APR Financing title. Actual content: ${KlarnaAPRFinaningTitle} expected: ${TEXTKLARNAAPRFINANCING}
Check if Klarna Financing feature Description is showing with correct content
    Element Should be Visible                       ${LOCKLARNAAPRFINANCINGTITLEDESC}
    ${KlarnaAPRFinaningTitleDesc}=            get text      ${LOCKLARNAAPRFINANCINGTITLEDESC}
    Run keyword if          '${KlarnaAPRFinaningTitleDesc}'!='${TEXTKLARNAAPRFINANCINGDESC}'      Fail        Wrong Klarna APR Financing title desc. Actual content: ${KlarnaAPRFinaningTitleDesc} expected: ${TEXTKLARNAAPRFINANCINGDESC}
Check if Klarna Apply in Minutes icon is showing
    Element should be visible                       ${LOCKLARNAAPPLYINMINICON}
Check if Klarna Apply in Minutes Title is showing and with correct content
    Element Should be Visible                       ${LOCKLARNAAPPLYINMINTITLE}
    ${KlarnaApplyInMinTitle}=            get text      ${LOCKLARNAAPPLYINMINTITLE}
    Run keyword if          '${KlarnaApplyInMinTitle}'!='${TEXTKLARNAAPPLYINMIN}'      Fail        Wrong Klarna APR Financing title. Actual content: ${KlarnaApplyInMinTitle} expected: ${TEXTKLARNAAPPLYINMIN}
Check if Klarna Apply in Minutes description is showing and with correct content
    Element Should be Visible                       ${LOCKLARNAAPPLYINMINTITLEDESC}
    ${KlarnaApplyInMinTitleDesc}=            get text      ${LOCKLARNAAPPLYINMINTITLEDESC}
    Run keyword if          '${KlarnaApplyInMinTitleDesc}'!='${TEXTKLARNAAPPLYINMINDESC}'      Fail        Wrong Klarna APR Financing title desc. Actual content: ${KlarnaApplyInMinTitleDesc} expected: ${TEXTKLARNAAPPLYINMINDESC}
Check if Klarna Simple repayment icon is showing
    Element should be visible                       ${LOCKLARNASIMPLEREPAYMENTSICON}
Check if Klarna Simple repayment Title is showing and with correct content
    Element Should be Visible                       ${LOCKLARNASIMPLEREPAYMENTSTITLE}
    ${KlarnaSimpleRepaymentTitle}=            get text      ${LOCKLARNASIMPLEREPAYMENTSTITLE}
    Run keyword if          '${KlarnaSimpleRepaymentTitle}'!='${TEXTKLARNASIMPLEREPAYMENTS}'      Fail        Wrong Klarna APR Financing title. Actual content: ${KlarnaSimpleRepaymentTitle} expected: ${TEXTKLARNASIMPLEREPAYMENTS}
Check if Klarna Simple repayment description is showing and with correct content
    Element Should be Visible                       ${LOCKLARNASIMPLEREPAYMENTSTITLEDESC}
    ${KlarnaSimpleRepaymentsTitleDesc}=            get text      ${LOCKLARNASIMPLEREPAYMENTSTITLEDESC}
    Run keyword if          '${KlarnaSimpleRepaymentsTitleDesc}'!='${TEXTLARNASIMPLEREPAYMENTSTITLEDESC}'      Fail        Wrong Klarna APR Financing title desc. Actual content: ${KlarnaSimpleRepaymentsTitleDesc} expected: ${TEXTLARNASIMPLEREPAYMENTSTITLEDESC}
Check if Select Klarna at checkout is showing
    Element Should be Visible                       ${LOCSELECTKLARNA}
    ${SelectKlarnaAtCheckout}=            get text      ${LOCSELECTKLARNA}
    Run keyword if          "${SelectKlarnaAtCheckout}"!="${TEXTSELECTKLARNA}"      Fail        Wrong Klarna APR Financing title desc. Actual content: ${SelectKlarnaAtCheckout} expected: ${TEXTSELECTKLARNA}
Check Klarna Section CTA button is showing with correct content and functionality
    Element Should be Visible                       css=body > div.financing__klarna > div.featured-financing.text-bar > span
    Element Should not be Visible                   css=body > iframe.klarna-upstream-interstitial-frame
    Click element                                   css=body > div.financing__klarna > div.featured-financing.text-bar > span
    Element should be visible                       css=body > iframe.klarna-upstream-interstitial-frame
    sleep                                           5s
    unselect frame
    Select Frame                                    css:iframe[class="klarna-upstream-interstitial-frame"]
    Click element                                   css=#eligibility-service-amount-screen > div > div > div > div > div:nth-child(1) > div > div:nth-child(3) > button > div > div
    scroll element into view                        css=body > div.financing__klarna > div.text-bar.text-bar--small-text.text-bar--financing-info > div.text-bar__inner > div > p
Check the first question in the list if showing and with correct content (Klarna)
    Element should be visible                       ${LOCKLARNAFIRSTFAQ}
    ${KlarnaFAQFirstQuestion}=            get text      ${LOCKLARNAFIRSTFAQ}
    Run keyword if          "${KlarnaFAQFirstQuestion}"!="${TEXTKLARNAFIRSTFAQ}"      Fail        Wrong Klarna First FAQ. Actual content: ${KlarnaFAQFirstQuestion} expected: ${TEXTKLARNAFIRSTFAQ}
Click first question to see if it will expand (Klarna)
    Element Should Not Be Visible                   ${LOCKLARNAFIRSTFAQANSWER}
    Click Element                                   ${LOCKLARNAFIRSTFAQ}
    Element Should Be Visible                       ${LOCKLARNAFIRSTFAQANSWER}
Check if the first answer will show with correct content (Klarna)
    ${KlarnaFAQFirstQuestionAnswer}=            get text      ${LOCKLARNAFIRSTFAQANSWER}
    Run keyword if          "${KlarnaFAQFirstQuestionAnswer}"!="${TEXTKLARNAFIRSTFAQANSWER}"      Fail        Wrong Klarna First FAQ Answer. Actual content: ${KlarnaFAQFirstQuestionAnswer} expected: ${TEXTKLARNAFIRSTFAQANSWER}
Click the first question to see if it will collapse (Klarna)
    Click Element                                   ${LOCKLARNAFIRSTFAQ}
    sleep                                           2s
    Element Should Not Be Visible                   ${LOCKLARNAFIRSTFAQANSWER}
Check the second question in the list if showing and with correct content (Klarna)
    Element should be visible                       ${LOCKLARNASECONDFAQ}
    ${KlarnaFAQSecondQuestion}=            get text      ${LOCKLARNASECONDFAQ}
    Run keyword if          "${KlarnaFAQSecondQuestion}"!="${TEXTKLARNASECONDFAQ}"      Fail        Wrong Klarna Second FAQ. Actual content: ${KlarnaFAQSecondQuestion} expected: ${TEXTKLARNASECONDFAQ}
Click second question to see if it will expand (Klarna)
    Element Should Not Be Visible                   ${LOCKLARNASECONDFAQANSWER}
    Click Element                                   ${LOCKLARNASECONDFAQ}
    Element Should Be Visible                       ${LOCKLARNASECONDFAQANSWER}
Check if the second answer will show with correct content (Klarna)
    ${KlarnaFAQSecondQuestionAnswer}=            get text      ${LOCKLARNASECONDFAQANSWER}
    Run keyword if          "${KlarnaFAQSecondQuestionAnswer}"!="${TEXTKLARNASECONDFAQANSWER}"      Fail        Wrong Klarna Second FAQ Answer. Actual content: ${KlarnaFAQSecondQuestionAnswer} expected: ${TEXTKLARNASECONDFAQANSWER}
Click the second question to see if it will collapse (Klarna)
    Click Element                                   ${LOCKLARNASECONDFAQ}
    sleep                                           2s
    Element Should Not Be Visible                   ${LOCKLARNASECONDFAQANSWER}
Check the third question in the list if showing and with correct content (Klarna)
    Element should be visible                       ${LOCKLARNATHIRDFAQ}
    ${KlarnaFAQThirdQuestion}=            get text      ${LOCKLARNATHIRDFAQ}
    Run keyword if          "${KlarnaFAQThirdQuestion}"!="${TEXTKLARNATHIRDFAQ}"      Fail        Wrong Klarna Third FAQ. Actual content: ${KlarnaFAQThirdQuestion} expected: ${TEXTKLARNASECONDFAQ}
Click third question to see if it will expand (Klarna)
    Element Should Not Be Visible                   ${LOCKLARNATHIRDFAQANSWER}
    Click Element                                   ${LOCKLARNATHIRDFAQ}
    Element Should Be Visible                       ${LOCKLARNATHIRDFAQANSWER}
Check if the third answer will show with correct content (Klarna)
    ${KlarnaFAQThirdQuestionAnswer}=            get text      ${LOCKLARNATHIRDFAQANSWER}
    Run keyword if          "${KlarnaFAQThirdQuestionAnswer}"!="${TEXTKLARNATHIRDFAQANSWER}"      Fail        Wrong Klarna Third FAQ Answer. Actual content: ${KlarnaFAQThirdQuestionAnswer} expected: ${TEXTKLARNASECONDFAQANSWER}
Click the third question to see if it will collapse (Klarna)
    Click Element                                   ${LOCKLARNATHIRDFAQ}
    sleep                                           2s
    Element Should Not Be Visible                   ${LOCKLARNATHIRDFAQANSWER}
Check if the disclaimer is showing with correct content (Klarna)
    ${KlarnaDisclaimer}=            get text      ${LOCKLARNADISCLAIMER}
    Run keyword if          "${KlarnaDisclaimer}"!="${TEXTKLARNADISCLAIMER}"      Fail        Wrong Klarna disclaimer. Actual content: ${KlarnaDisclaimer} expected: ${TEXTKLARNADISCLAIMER}
Check if the CTA for Klarna financing is showing with correct content and functionality (Klarna)
    ${KlarnaCTA}=            get text      ${LOCKLARNACTA}
    Run keyword if          "${KlarnaCTA}"!="${TEXTSHOPTHEMATTRESSCTA}"      Fail        Wrong Klarna CTA text. Actual content: ${KlarnaCTA} expected: ${TEXTSHOPTHEMATTRESSCTA}
    Click element                           ${LOCKLARNACTA}
    Location should be                      ${PUFFYCOMPAREMATTRESSURL}
    Go Back
    sleep                                   2s
    Go Back
Click See Details in Splitit
    ${SplititSeeDetails}=            get text        ${LOCFINANCINGSPLITITSEEDETAILS}
    Run keyword if          '${SplititSeeDetails}'!='${TEXTFINANCINGSEEDETAILS}'      Fail        Wrong Splitit button label for see details. Actual content: ${SplititSeeDetails} expected: ${TEXTFINANCINGSEEDETAILS}
    Click element                                   ${LOCFINANCINGSPLITITSEEDETAILS}
    Location should be                              ${FINANCINGSPLITITSECTION}
Check if Splitit image in finance is showing
    Element should be visible                       css=body > div.financing__splitit > div.featured-financing.text-bar > div.featured-financing__icon
Check if Splitit section title is showing and with correct content
    Element should be visible                       ${LOCSPLITITFINANCETITLE}
    ${SplititFinanceTitle}=            get text      ${LOCSPLITITFINANCETITLE}
    Run keyword if          '${SplititFinanceTitle}'!='${TEXTSPLITITFINANCETITLE}'      Fail        Wrong Splitit Finance title. Actual content: ${SplititFinanceTitle} expected: ${TEXTSPLITITFINANCETITLE}
Check if Splitit featured financing is showing with correct content (Including the amount per month)
    Element should be visible                       ${LOCSPLITITFINANCETITLEDESC}
    ${SplititFinanceTitleDesc}=            get text      ${LOCSPLITITFINANCETITLEDESC}
    Run keyword if          '${SplititFinanceTitleDesc}'!='${TEXTSPLITITFINANCETITLEDESC}'      Fail        Wrong Splitit Finance title description. Actual content: ${SplititFinanceTitleDesc} expected: ${TEXTSPLITITFINANCETITLE}
Check if Splitit Split your payment Icon is Showing
    Element should be visible                       ${LOCSPLITITSPLITYOURPAYMENTICON}
Check if Splitit Split your payment feature title is showing with correct content
    Element Should be Visible                       ${LOCSPLITITSPLITYOURPAYMENTTITLE}
    ${SplititSplitYourPaymentTitle}=            get text      ${LOCSPLITITSPLITYOURPAYMENTTITLE}
    Run keyword if          '${SplititSplitYourPaymentTitle}'!='${TEXTSPLITITSPLITYOURPAYMENTTITLE}'      Fail        Wrong Splitit Split your payment title. Actual content: ${SplititSplitYourPaymentTitle} expected: ${TEXTSPLITITSPLITYOURPAYMENTTITLE}
Check if Splitit Split your payment feature Description is showing with correct content
    Element Should be Visible                       ${LOCSPLITITSPLITYOURPAYMENTTITLEDESC}
    ${SplititSplitYourPaymentTitleDesc}=            get text      ${LOCSPLITITSPLITYOURPAYMENTTITLEDESC}
    Run keyword if          '${SplititSplitYourPaymentTitleDesc}'!='${TEXTSPLITITSPLITYOURPAYMENTTITLEDESC}'      Fail        Wrong Splitit Split your payment title Desc. Actual content: ${KlarnaAPRFinaningTitleDesc} expected: ${TEXTSPLITITSPLITYOURPAYMENTTITLEDESC}
Check if Splitit No Application or CC icon is showing
    Element should be visible                       ${LOCSPLITITNOAPPLICATIONICON}
Check if Splitit No Application or CC Title is showing and with correct content
    Element Should be Visible                       ${LOCSPLITITNOAPPLICATIONTITLE}
    ${SplititNoApplicationorCCTitle}=            get text      ${LOCSPLITITNOAPPLICATIONTITLE}
    Run keyword if          '${SplititNoApplicationorCCTitle}'!='${TEXTSPLITITNOAPPLICATIONTITLE}'      Fail        Wrong Splitit No Application or Credit Checks Title. Actual content: ${SplititNoApplicationorCCTitle} expected: ${TEXTSPLITITNOAPPLICATIONTITLE}
Check if Splitit No Application or CC description is showing and with correct content
    Element Should be Visible                       ${LOCSPLITITNOAPPLICATIONTITLEDESC}
    ${SplititNoApplicationorCCTitleDesc}=            get text      ${LOCSPLITITNOAPPLICATIONTITLEDESC}
    Run keyword if          '${SplititNoApplicationorCCTitleDesc}'!='${TEXTSPLITITNOAPPLICATIONTITLEDESC}'      Fail        Wrong Splitit No Application or Credit Checks Title desc. Actual content: ${SplititNoApplicationorCCTitleDesc} expected: ${TEXTSPLITITNOAPPLICATIONTITLEDESC}
Check if Splitit Take Advantage icon is showing
    Element should be visible                       ${LOCSPLITITTAKEADVANTAGEICON}
Check if Splitit Take Advantage Title is showing and with correct content
    Element Should be Visible                       ${LOCSPLITITTAKEADVANTAGETITLE}
    ${SplititTakeAdvantageTitle}=            get text      ${LOCSPLITITTAKEADVANTAGETITLE}
    Run keyword if          '${SplititTakeAdvantageTitle}'!='${TEXTSPLITITTAKEADVANTAGETITLE}'      Fail        Wrong Splitit Take Advantage of your Card Benefits title. Actual content: ${SplititTakeAdvantageTitle} expected: ${TEXTSPLITITTAKEADVANTAGETITLE}
Check if Splitit Take Advantage description is showing and with correct content
    Element Should be Visible                       ${LOCSPLITITTAKEADVANTAGETITLEDESC}
    ${SplititTakeAdvantageTitleDesc}=            get text      ${LOCSPLITITTAKEADVANTAGETITLEDESC}
    Run keyword if          '${SplititTakeAdvantageTitleDesc}'!='${TEXTSPLITITTAKEADVANTAGETITLEDESC}'      Fail        Wrong Splitit Take Advantage of your Card Benefits title desc. Actual content: ${SplititTakeAdvantageTitleDesc} expected: ${TEXTSPLITITTAKEADVANTAGETITLEDESC}
Check if Select Splitit at checkout is showing
    Element Should be Visible                       ${LOCSELECTSPITIT}
    ${SelectSplititAtCheckout}=            get text      ${LOCSELECTSPITIT}
    Run keyword if          "${SelectSplititAtCheckout}"!="${TEXTSELECTSPLITIT}"      Fail        Wrong Select Splitit at Checkout content. Actual content: ${SelectSplititAtCheckout} expected: ${TEXTSELECTSPLITIT}
Check Splitit Section CTA button is showing with correct content and functionality
    Element Should be Visible                       css=body > div.financing__splitit > div.featured-financing.text-bar > div.text-bar__desc > div > a
    Click element                                   css=body > div.financing__splitit > div.featured-financing.text-bar > div.text-bar__desc > div > a
    sleep                                           5s
    unselect frame
    Select Frame                                    xpath=//iframe[contains(@name,'splitit-iframe-popup')]
    Click element                                   css=body > app-root > app-learn-more > div > div > div.splitit-modal-header.ng-tns-c6-0.ng-star-inserted > a
    Sleep                                           2s
    scroll element into view                        css=body > div.financing__splitit > div.text-bar.text-bar--small-text.text-bar--financing-info > div > div
Check the first question in the list if showing and with correct content (Splitit)
    Element should be visible                       ${LOCSPLITITFIRSTFAQ}
    ${SplititFAQFirstQuestion}=            get text      ${LOCSPLITITFIRSTFAQ}
    Run keyword if          "${SplititFAQFirstQuestion}"!="${TEXTSPLITITFIRSTFAQ}"      Fail        Wrong Splitit First FAQ. Actual content: ${SplititFAQFirstQuestion} expected: ${TEXTSPLITITFIRSTFAQ}
Click first question to see if it will expand (Splitit)
    Element Should Not Be Visible                   ${LOCSPLITITFIRSTFAQANSWER}
    Click Element                                   ${LOCSPLITITFIRSTFAQ}
    Element Should Be Visible                       ${LOCSPLITITFIRSTFAQANSWER}
Check if the first answer will show with correct content (Splitit)
    ${SplititFAQFirstQuestionAnswer}=            get text      ${LOCSPLITITFIRSTFAQANSWER}
    Run keyword if          "${SplititFAQFirstQuestionAnswer}"!="${TEXTSPLITITFIRSTFAQANSWER}"      Fail        Wrong Splitit First FAQ Answer. Actual content: ${SplititFAQFirstQuestionAnswer} expected: ${TEXTSPLITITFIRSTFAQANSWER}
Click the first question to see if it will collapse (Splitit)
    Click Element                                   ${LOCSPLITITFIRSTFAQ}
    sleep                                           2s
    Element Should Not Be Visible                   ${LOCSPLITITFIRSTFAQANSWER}
Check the second question in the list if showing and with correct content (Splitit)
    Element should be visible                       ${LOCSPLITITSECONDFAQ}
    ${SplititFAQSecondQuestion}=            get text      ${LOCSPLITITSECONDFAQ}
    Run keyword if          "${SplititFAQSecondQuestion}"!="${TEXTSPLITITSECONDFAQ}"      Fail        Wrong Splitit Second FAQ. Actual content: ${SplititFAQSecondQuestion} expected: ${TEXTSPLITITSECONDFAQ}
Click second question to see if it will expand (Splitit)
    Element Should Not Be Visible                   ${LOCSPLITITSECONDFAQANSWER}
    Click Element                                   ${LOCSPLITITSECONDFAQ}
    Element Should Be Visible                       ${LOCSPLITITSECONDFAQANSWER}
Check if the second answer will show with correct content (Splitit)
    ${SplititFAQSecondQuestionAnswer}=            get text      ${LOCSPLITITSECONDFAQANSWER}
    Run keyword if          "${SplititFAQSecondQuestionAnswer}"!="${TEXTSPLITITSECONDFAQANSWER}"      Fail        Wrong Splitit Second FAQ Answer. Actual content: ${SplititFAQSecondQuestionAnswer} expected: ${TEXTSPLITITSECONDFAQANSWER}
Click the second question to see if it will collapse (Splitit)
    Click Element                                   ${LOCSPLITITSECONDFAQ}
    sleep                                           2s
    Element Should Not Be Visible                   ${LOCSPLITITSECONDFAQANSWER}
Check the third question in the list if showing and with correct content (Splitit)
    Element should be visible                       ${LOCSPLITITTHIRDFAQ}
    ${SplititFAQThirdQuestion}=            get text      ${LOCSPLITITTHIRDFAQ}
    Run keyword if          "${SplititFAQThirdQuestion}"!="${TEXTSPLITITTHIRDFAQ}"      Fail        Wrong Splitit Third FAQ. Actual content: ${SplititFAQThirdQuestion} expected: ${TEXTSPLITITTHIRDFAQ}
Click third question to see if it will expand (Splitit)
    Element Should Not Be Visible                   ${LOCSPLITITTHIRDFAQANSWER}
    Click Element                                   ${LOCSPLITITTHIRDFAQ}
    Element Should Be Visible                       ${LOCSPLITITTHIRDFAQANSWER}
Check if the third answer will show with correct content (Splitit)
    ${SplititFAQThirdQuestionAnswer}=            get text      ${LOCSPLITITTHIRDFAQANSWER}
    Run keyword if          "${SplititFAQThirdQuestionAnswer}"!="${TEXTSPLITITTHIRDFAQANSWER}"      Fail        Wrong Splitit Third FAQ Answer. Actual content: ${SplititFAQThirdQuestionAnswer} expected: ${TEXTSPLITITSECONDFAQANSWER}
Click the third question to see if it will collapse (Splitit)
    Click Element                                   ${LOCSPLITITTHIRDFAQ}
    sleep                                           2s
    Element Should Not Be Visible                   ${LOCSPLITITTHIRDFAQANSWER}
Check if the disclaimer is showing with correct content (Splitit)
    ${SplititDisclaimer}=            get text      ${LOCSPLITITDISCLAIMER}
    Run keyword if          "${SplititDisclaimer}"!="${TEXTSPLITITDISCLAIMER}"      Fail        Wrong Splitit disclaimer. Actual content: ${SplititDisclaimer} expected: ${TEXTSPLITITDISCLAIMER}
Check if the CTA for Klarna financing is showing with correct content and functionality (Splitit)
    ${SplititCTA}=            get text      ${LOCSPLITITCTA}
    Run keyword if          "${SplititCTA}"!="${TEXTSHOPTHEMATTRESSCTA}"      Fail        Wrong Splitit CTA text. Actual content: ${SplititCTA} expected: ${TEXTSHOPTHEMATTRESSCTA}
    Click element                           ${LOCSPLITITCTA}
    Location should be                      ${PUFFYCOMPAREMATTRESSURL}
    Go Back
    sleep                                   2s
    Go Back
#########################################RETURN POLICY######################################
Go to Return Policy Page
    sleep                                   2s
    Scroll Element Into View                ${LOCFOOTERSECTION}
    Click element                           ${LOCFOOTERRETURNPOLICY}
    Location should be                      ${SUPPORTRETURNPOLICYURL}
Check Return Policy Title if showing with correct content
    Element should be visible               ${LOCRETURNPOLICYTITLE}
    ${ReturnPolicyTitle}=            get text      ${LOCRETURNPOLICYTITLE}
    Run keyword if          "${ReturnPolicyTitle}"!="${TEXTRETURNPOLICYTITLE}"      Fail        Wrong Title for Return Policy. Actual content: ${ReturnPolicyTitle} expected: ${TEXTRETURNPOLICYTITLE}
Read and check the Return Policy Description content if showing and correct
    Element should be visible               ${LOCRETURNPOLICYINFORMATION}
    ${ReturnPolicyInformation}=            get text      ${LOCRETURNPOLICYINFORMATION}
    Run keyword if          "${ReturnPolicyInformation}"!="${TEXTRETURNPOLICYINFORMATION}"      Fail        Wrong content for Return Policy. Actual content: ${ReturnPolicyInformation} expected: ${TEXTRETURNPOLICYINFORMATION}
Check if the title Why Buy Puffy? is showing with correct content
    Element should be visible               ${LOCWHYBUYPUFFYTITLE}
    ${WhyBuyPuffyTitle}=            get text      ${LOCWHYBUYPUFFYTITLE}
    Run keyword if          "${WhyBuyPuffyTitle}"!="${TEXTWHYBUYPUFFYTITLE}"      Fail        Wrong Title for Why Buy Puffy Section. Actual content: ${WhyBuyPuffyTitle} expected: ${TEXTWHYBUYPUFFYTITLE}
Read and check the Why Buy Puffy? description content if showing and correct
    Element should be visible               ${LOCWHYBUYPUFFYINFORMATION}
    ${WhyBuyPuffyInformation}=            get text      ${LOCWHYBUYPUFFYINFORMATION}
    Run keyword if          "${WhyBuyPuffyInformation}"!="${TEXTWHYBUYPUFFYINFORMATION}"      Fail        Wrong content for Why Buy Puffy Section. Actual content: ${WhyBuyPuffyInformation} expected: ${TEXTWHYBUYPUFFYINFORMATION}
Check if Puffy hyperlink is clickable and redirected to correct page
    Click element                          ${LOCWHYBUYPUFFYHYPERLINKPUFFY}
    Location should be                     ${HOMEPAGE}
    Go Back
Check if the title PUFFY MATTRESS RETURNS is showing with correct content
    Element should be visible               ${LOCPUFFYMATTRESSRETURNSTITLE}
    ${PuffyMattressReturnsTitle}=            get text      ${LOCPUFFYMATTRESSRETURNSTITLE}
    Run keyword if          "${PuffyMattressReturnsTitle}"!="${TEXTPUFFYMATTRESSRETURNSTITLE}"      Fail        Wrong content for PUFFY MATTRESS RETURNS Title. Actual content: ${PuffyMattressReturnsTitle} expected: ${TEXTPUFFYMATTRESSRETURNSTITLE}
Read and check the PUFFY MATTRESS RETURNS description content if showing and correct
    Element should be visible               ${LOCPUFFYMATTRESSRETURNSINFORMATION1}
    ${PuffyMattressReturnsInformation1}=            get text      ${LOCPUFFYMATTRESSRETURNSINFORMATION1}
    Run keyword if          "${PuffyMattressReturnsInformation1}"!="${TEXTPUFFYMATTRESSRETURNSINFORMATION1}"      Fail        Wrong content for Puffy Mattress Returns paragraph 1. Actual content: ${PuffyMattressReturnsInformation1} expected: ${TEXTPUFFYMATTRESSRETURNSINFORMATION1}
    Element should be visible               ${LOCPUFFYMATTRESSRETURNSINFORMATION2}
    ${PuffyMattressReturnsInformation2}=            get text      ${LOCPUFFYMATTRESSRETURNSINFORMATION2}
    Run keyword if          "${PuffyMattressReturnsInformation2}"!="${TEXTPUFFYMATTRESSRETURNSINFORMATION2}"      Fail        Wrong content for Puffy Mattress Returns paragraph 2. Actual content: ${PuffyMattressReturnsInformation2} expected: ${TEXTPUFFYMATTRESSRETURNSINFORMATION2}
    Element should be visible               ${LOCPUFFYMATTRESSRETURNSINFORMATION3}
    ${PuffyMattressReturnsInformation3}=            get text      ${LOCPUFFYMATTRESSRETURNSINFORMATION3}
    Run keyword if          "${PuffyMattressReturnsInformation3}"!="${TEXTPUFFYMATTRESSRETURNSINFORMATION3}"      Fail        Wrong content for Puffy Mattress Returns paragraph 3. Actual content: ${PuffyMattressReturnsInformation3} expected: ${TEXTPUFFYMATTRESSRETURNSINFORMATION3}
Check if Puffy Mattress hyperlink is clickable and landing to correct page
    Click element                          ${LOCPUFFYMATTRESSHYPERLINK}
    Location should be                     ${PUFFYCOMPAREMATTRESSURL}
    Go Back
Check if the title PUFFY PRODUCT RETURNS is showing with correct content
    Element should be visible               ${LOCPUFFYPRODUCTRETURNSTITLE}
    ${PuffyProductReturnsTitle}=            get text      ${LOCPUFFYPRODUCTRETURNSTITLE}
    Run keyword if          "${PuffyProductReturnsTitle}"!="${TEXTPUFFYPRODUCTRETURNSTITLE}"      Fail        Wrong content for PUFFY PRODUCT RETURNS Title. Actual content: ${PuffyProductReturnsTitle} expected: ${TEXTPUFFYPRODUCTRETURNSTITLE}
Read and check the PUFFY PRODUCT RETURNS description content if showing and correct
    Element should be visible               ${LOCPUFFYPRODUCTRETURNSINFORMATION1}
    ${PuffyProductReturnsInformation1}=            get text      ${LOCPUFFYPRODUCTRETURNSINFORMATION1}
    Run keyword if          "${PuffyProductReturnsInformation1}"!="${TEXTPUFFYPRODUCTRETURNSINFORMATION1}"      Fail        Wrong content for Puffy Product Returns paragraph 1. Actual content: ${PuffyProductReturnsInformation1} expected: ${TEXTPUFFYMATTRESSRETURNSINFORMATION1}
    Element should be visible               ${LOCPUFFYPRODUCTRETURNSINFORMATION2}
    ${PuffyProductReturnsInformation2}=            get text      ${LOCPUFFYPRODUCTRETURNSINFORMATION2}
    Run keyword if          "${PuffyProductReturnsInformation2}"!="${TEXTPUFFYPRODUCTRETURNSINFORMATION2}"      Fail        Wrong content for Puffy Product Returns paragraph 2. Actual content: ${PuffyProductReturnsInformation2} expected: ${TEXTPUFFYMATTRESSRETURNSINFORMATION2}
    Element should be visible               ${LOCPUFFYPRODUCTRETURNSINFORMATION3}
    ${PuffyProductReturnsInformation3}=            get text      ${LOCPUFFYPRODUCTRETURNSINFORMATION3}
    Run keyword if          "${PuffyProductReturnsInformation3}"!="${TEXTPUFFYPRODUCTRETURNSINFORMATION3}"      Fail        Wrong content for Puffy Product Returns paragraph 3. Actual content: ${PuffyProductReturnsInformation3} expected: ${TEXTPUFFYMATTRESSRETURNSINFORMATION3}
    Element should be visible               ${LOCPUFFYPRODUCTRETURNSINFORMATION4}
    ${PuffyProductReturnsInformation4}=            get text      ${LOCPUFFYPRODUCTRETURNSINFORMATION4}
    Run keyword if          "${PuffyProductReturnsInformation4}"!="${TEXTPUFFYPRODUCTRETURNSINFORMATION4}"      Fail        Wrong content for Puffy Product Returns paragraph 3. Actual content: ${PuffyProductReturnsInformation4} expected: ${TEXTPUFFYMATTRESSRETURNSINFORMATION4}
    Element should be visible               ${LOCPUFFYPRODUCTRETURNSINFORMATION5}
    ${PuffyProductReturnsInformation5}=            get text      ${LOCPUFFYPRODUCTRETURNSINFORMATION5}
    Run keyword if          "${PuffyProductReturnsInformation5}"!="${TEXTPUFFYPRODUCTRETURNSINFORMATION5}"      Fail        Wrong content for Puffy Product Returns paragraph 3. Actual content: ${PuffyProductReturnsInformation5} expected: ${TEXTPUFFYMATTRESSRETURNSINFORMATION3}
Check if 101-night sleep trial hyperlink is clickable and landing to correct page
    Click element                          ${LOC101NIGHTSLEEPTRIALHYPERLINK}
    Location should be                     ${PUFFY101NIGHTSLEEPTRIALURL}
    Go Back
Check if Puffy.com hyperlink is clickable and landing to correct page
    Click element                          ${LOCPUFFYCOMHYPERLINK}
    Location should be                     ${HOMEPAGE}
    Go Back
Check if the section is showing
    Element should be visible               css=body > div.product-bar > div
Check if the Product Bar title is showing with correct content
    Element should be visible               ${LOCPRODUCTBARTITLE}
    ${ProductBarTitle}=            get text      ${LOCPRODUCTBARTITLE}
    Run keyword if          "${ProductBarTitle}"!="${TEXTPRODUCTBARTITLE}"      Fail        Wrong content for Puffy Product Returns paragraph 3. Actual content: ${ProductBarTitle} expected: ${TEXTPRODUCTBARTITLE}
Check if the first product bar box is showing (Icon and text desc)
    Element should be visible                ${LOCPRODUCTBARICON1}
    Element should be visible                ${LOCPRODUCTBARICON1DESC}
Check if product bar icon arrow is showing
    Element should be visible                ${LOCPRODUCTBARARROW}
Check if the second product bar box is showing (Icon and text desc)
    Element should be visible                ${LOCPRODUCTBARICON2}
    Element should be visible                ${LOCPRODUCTBARICON2DESC}
Check if product bar text at the bottom is showing with correct content
    Element should be visible                ${LOCPRODUCTBARBOTTOMTEXT}
    ${ProductBarBottomText}=            get text      ${LOCPRODUCTBARBOTTOMTEXT}
    Run keyword if          "${ProductBarBottomText}"!="${TEXTPRODUCTBARBOTTOMTEXT}"      Fail        Wrong content for Puffy Product Returns paragraph 3. Actual content: ${ProductBarTitle} expected: ${TEXTPRODUCTBARTITLE}
Check if the product bar CTA is showing with correct label and functionality
    Element should be visible                ${LOCPRODUCTBARCTA}
    ${ProductBarCTA}=            get text      ${LOCPRODUCTBARCTA}
    Run keyword if          "${ProductBarCTA}"!="${TEXTORDERNOWCTA}"      Fail        Wrong Product Bar CTA text. Actual content: ${ProductBarCTA} expected: ${TEXTORDERNOWCTA}
