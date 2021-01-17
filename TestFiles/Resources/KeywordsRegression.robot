*** Keywords ***
Check Product Section Spelling
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(1) > div
    ${FooterPuffyMattress}=               get text           ${LOCFOOTERPUFFY}
    Run keyword if          '${FooterPuffyMattress}'!='${FOOTERPUFFYMATTRESSSPELLING}'      Fail        Wrong Puffy Spelling in Footer. Actual content: ${FooterPuffyMattress} expected: ${FOOTERPUFFYMATTRESSSPELLING}
    ${FooterPuffyLuxMattress}=            get text        ${LOCFOOTERPUFFYLUX}
    Run keyword if          '${FooterPuffyLuxMattress}'!='${FOOTERPUFFYLUXMATTRESSSPELLING}'      Fail        Wrong Puffy Lux Spelling in Footer. Actual content: ${FooterPuffyLuxMattress} expected: ${FOOTERPUFFYLUXMATTRESSSPELLING}
    ${FooterPuffyRoyalMattress}=          get text      ${LOCFOOTERPUFFYROYAL}
    Run keyword if          '${FooterPuffyRoyalMattress}'!='${FOOTERPUFFYROYALMATTRESSSPELLING}'      Fail        Wrong Puffy Royal Spelling in Footer. Actual content: ${FooterPuffyRoyalMattress} expected: ${FOOTERPUFFYROYALMATTRESSSPELLING}
    ${FooterPuffyHybridMattress}=               get text           ${LOCFOOTERPUFFYHYBRID}
    Run keyword if          '${FooterPuffyHybridMattress}'!='${FOOTERPUFFYHYBRIDMATTRESSSPELLING}'      Fail        Wrong Puffy Hybrid Spelling in Footer. Actual content: ${FooterPuffyHybridMattress} expected: ${FOOTERPUFFYHYBRIDMATTRESSSPELLING}
    ${FooterComforter}=            get text        ${LOCFOOTERCOMFORTER}
    Run keyword if          '${FooterComforter}'!='${FOOTERPUFFYCOMFORTERSPELLING}'      Fail        Wrong Comforter Spelling in Footer. Actual content: ${FooterComforter} expected: ${FOOTERPUFFYCOMFORTERSPELLING}
    ${FooterMattressProtector}=          get text      ${LOCFOOTERMATTRESSPROTECTOR}
    Run keyword if          '${FooterMattressProtector}'!='${FOOTERPUFFYMATTRESSPROTECTORSPELLING}'      Fail        Wrong Mattress Protector Spelling in Footer. Actual content: ${FooterMattressProtector} expected: ${FOOTERPUFFYMATTRESSPROTECTORSPELLING}
    ${FooterMattressTopper}=               get text           ${LOCFOOTERMATTRESSTOPPER}
    Run keyword if          '${FooterMattressTopper}'!='${FOOTERPUFFYMATTRESSTOPPERSPELLING}'      Fail        Wrong Mattress Topper Spelling in Footer. Actual content: ${FooterMattressTopper} expected: ${FOOTERPUFFYMATTRESSTOPPERSPELLING}
    ${FooterWeightedBlanket}=            get text        ${LOCFOOTERWEIGHTEDBLANKET}
    Run keyword if          '${FooterWeightedBlanket}'!='${FOOTERPUFFYWEIGHTEDBLANKETSPELLING}'      Fail        Wrong Weighted Blanket Spelling in Footer. Actual content: ${FooterWeightedBlanket} expected: ${FOOTERPUFFYWEIGHTEDBLANKETSPELLING}
    ${FooterDogBed}=          get text      ${LOCFOOTERDOGBED}
    Run keyword if          '${FooterDogBed}'!='${FOOTERPUFFYDOGBEDSPELLING}'      Fail        Wrong Dog Bed Spelling in Footer. Actual content: ${FooterDogBed} expected: ${FOOTERPUFFYDOGBEDSPELLING}
    ${FooterBedFrame}=               get text           ${LOCFOOTERBEDFRAME}
    Run keyword if          '${FooterBedFrame}'!='${FOOTERPUFFYBEDFRAMESPELLING}'      Fail        Wrong Puffy Mattress Spelling in Footer. Actual content: ${FooterBedFrame} expected: ${FOOTERPUFFYBEDFRAMESPELLING}
    ${FooterFoundation}=            get text        ${LOCFOOTERFOUNDATION}
    Run keyword if          '${FooterFoundation}'!='${FOOTERPUFFYFOUNDATIONSPELLING}'      Fail        Wrong Foundation Spelling in Footer. Actual content: ${FooterFoundation} expected: ${FOOTERPUFFYFOUNDATIONSPELLING}
    ${FooterAdjustableBase}=          get text      ${LOCFOOTERADJUSTABLEBASE}
    Run keyword if          '${FooterAdjustableBase}'!='${FOOTERPUFFYADJUSTABLEBASESPELLING}'      Fail        Wrong Adjustable Base Spelling in Footer. Actual content: ${FooterAdjustableBase} expected: ${FOOTERPUFFYADJUSTABLEBASESPELLING}
    ${FooterPillow}=               get text           ${LOCFOOTERPILLOW}
    Run keyword if          '${FooterPillow}'!='${FOOTERPUFFYPILLOWSPELLING}'      Fail        Wrong Pillow Spelling in Footer. Actual content: ${FooterPillow} expected: ${FOOTERPUFFYPILLOWSPELLING}
    ${FooterBodyPillow}=            get text        ${LOCFOOTERBODYPILLOW}
    Run keyword if          '${FooterBodyPillow}'!='${FOOTERPUFFYBODYPILLOWSPELLING}'      Fail        Wrong Body Pillow Spelling in Footer. Actual content: ${FooterBodyPillow} expected: ${FOOTERPUFFYBODYPILLOWSPELLING}
    ${FooterMattressPad}=          get text      ${LOCFOOTERMATTRESSPAD}
    Run keyword if          '${FooterMattressPad}'!='${FOOTERPUFFYMATTRESSPADSPELLING}'      Fail        Wrong Mattress Pad Spelling in Footer. Actual content: ${FooterMattressPad} expected: ${FOOTERPUFFYMATTRESSPADSPELLING}
    ${FooterPuffyBlanket}=               get text           ${LOCFOOTERPUFFYBLANKET}
    Run keyword if          '${FooterPuffyBlanket}'!='${FOOTERPUFFYBLANKETSPELLING}'      Fail        Wrong Puffy Blanket Spelling in Footer. Actual content: ${FooterPuffyBlanket} expected: ${FOOTERPUFFYBLANKETSPELLING}
    ${FooterPuffySheets}=            get text        ${LOCFOOTERPUFFYSHEETS}
    Run keyword if          '${FooterPuffySheets}'!='${FOOTERPUFFYSHEETSSPELLING}'      Fail        Wrong Puffy Sheets Spelling in Footer. Actual content: ${FooterPuffySheets} expected: ${FOOTERPUFFYSHEETSSPELLING}
    ${FooterPuffyRug}=          get text      ${LOCFOOTERPUFFYRUG}
    Run keyword if          '${FooterPuffyRug}'!='${FOOTERPUFFYRUGSPELLING}'      Fail        Wrong Puffy Rug Spelling in Footer. Actual content: ${FooterPuffyRug} expected: ${FOOTERPUFFYRUGSPELLING}


Check Product Section Redirection
    sleep                                   1s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(1) > div
    Click element                           ${LOCFOOTERPUFFY}
    Location Should Be                      ${FOOTERPUFFYURL}
    wait until page contains                ${FOOTERPUFFYMATTRESSSPELLING}

    sleep                                   1s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(1) > div
    Click element                           ${LOCFOOTERPUFFYLUX}
    Location Should Be                      ${FOOTERPUFFYLUXURL}
    wait until page contains                Puffy Lux Mattress

    sleep                                   1s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(1) > div
    Click element                           ${LOCFOOTERPUFFYROYAL}
    Location Should Be                      ${FOOTERPUFFYROYALURL}
    wait until page contains element        css=#shopify-section-product-puffy-template > div.container.main.content.product-name--puffy-royal-mattress > div > div > div > div > div.seven.columns.medium-down--one-whole.alpha > div > div.product-head > div.product-head__headline.product-head__headline--hybrid > h1

    sleep                                   1s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(1) > div
    Click element                           ${LOCFOOTERPUFFYHYBRID}
    Location Should Be                      ${FOOTERPUFFYHYBRIDURL}
    wait until page contains                Puffy Hybrid Mattress

    sleep                                   1s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(1) > div
    Click element                           ${LOCFOOTERCOMFORTER}
    Location Should Be                      ${FOOTERCOMFORTERURL}
    wait until page contains                Puffy Comforter

    sleep                                   1s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(1) > div
    Click element                           ${LOCFOOTERMATTRESSPROTECTOR}
    Location Should Be                      ${FOOTERMATTRESSPROTECTORURL}
    wait until page contains                Puffy Mattress Protector


    sleep                                   1s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(1) > div
    Click element                           ${LOCFOOTERMATTRESSTOPPER}
    Location Should Be                      ${FOOTERMATTRESSTOPPERURL}
    wait until page contains                Puffy Topper

    sleep                                   1s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(1) > div
    Click element                           ${LOCFOOTERWEIGHTEDBLANKET}
    Location Should Be                      ${FOOTERWEIGHTEDBLANKETURL}
    wait until page contains                Puffy Weighted Blanket

    sleep                                   1s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(1) > div
    Click element                           ${LOCFOOTERDOGBED}
    Location Should Be                      ${FOOTERDOGBEDURL}
    wait until page contains                Puffy Dog Bed

    sleep                                   1s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(1) > div
    Click element                           ${LOCFOOTERBEDFRAME}
    Location Should Be                      ${FOOTERBEDFRAMEURL}
    wait until page contains                Puffy Bed Frame

    sleep                                   1s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(1) > div
    Click element                           ${LOCFOOTERFOUNDATION}
    Location Should Be                      ${FOOTERFOUNDATIONURL}
    wait until page contains                Puffy Mattress Foundation

    sleep                                   1s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(1) > div
    Click element                           ${LOCFOOTERADJUSTABLEBASE}
    Location Should Be                      ${FOOTERADJUSTABLEBASEURL}
    wait until page contains                Puffy Adjustable Base

    sleep                                   1s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(1) > div
    Click element                           ${LOCFOOTERPILLOW}
    Location Should Be                      ${FOOTERPILLOWURL}
    wait until page contains                Puffy Pillow

    sleep                                   1s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(1) > div
    Click element                           ${LOCFOOTERBODYPILLOW}
    Location Should Be                      ${FOOTERBODYPILLOWURL}
    wait until page contains                Puffy Body Pillow

    sleep                                   1s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(1) > div
    Click element                           ${LOCFOOTERMATTRESSPAD}
    Location Should Be                      ${FOOTERMATTRESSPADURL}
    wait until page contains                Puffy Mattress Pad

    sleep                                   1s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(1) > div
    Click element                           ${LOCFOOTERPUFFYBLANKET}
    Location Should Be                      ${FOOTERPUFFYBLANKETURL}
    wait until page contains                Puffy Blanket

    sleep                                   1s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(1) > div
    Click element                           ${LOCFOOTERPUFFYSHEETS}
    Location Should Be                      ${FOOTERPUFFYSHEETSURL}
    wait until page contains                Puffy Sheets

    sleep                                   1s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(1) > div
    Click element                           ${LOCFOOTERPUFFYRUG}
    Location Should Be                      ${FOOTERPUFFYRUGURL}
    wait until page contains                Puffy Rug

Check Puffy Section Spelling
    Sleep                                   2s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(2) > div
    ${Footer101NightSleepTrial}=               get text           ${LOCFOOTER101NIGHTSLEEPTRIAL}
    Run keyword if          '${Footer101NightSleepTrial}'!='${FOOTER101NIGHTSLEEPTRIALSPELLING}'      Fail        Wrong 101-Night Sleep Trial Spelling in Footer. Actual content: ${Footer101NightSleepTrial} expected: ${FOOTER101NIGHTSLEEPTRIALSPELLING}
    #${FooterHowItsMade}=            get text        ${LOCFOOTERHOWITSMADE}
    #Run keyword if          '${FooterHowItsMade}'!='${FOOTERHOWITSMADESPELLING}'      Fail        Wrong How It's Made Spelling in Footer. Actual content: ${FooterHowItsMade} expected: ${FOOTERHOWITSMADESPELLING}
    ${FooterMattressLayers}=          get text      ${LOCFOOTERMATTRESSLAYERS}
    Run keyword if          '${FooterMattressLayers}'!='${FOOTERMATTRESSLAYERSSPELLING}'      Fail        Wrong Mattress Layers Spelling in Footer. Actual content: ${FooterMattressLayers} expected: ${FOOTERMATTRESSLAYERSSPELLING}
    ${FooterPerfectSleep}=               get text           ${LOCFOOTERPERFECTSLEEP}
    Run keyword if          '${FooterPerfectSleep}'!='${FOOTERPERFECTSLEEPSPELLING}'      Fail        Wrong Perfect Sleep Spelling in Footer. Actual content: ${FooterPerfectSleep} expected: ${FOOTERPERFECTSLEEPSPELLING}
    ${FooterCompareMattress}=            get text        ${LOCFOOTERCOMPAREMATTRESS}
    Run keyword if          '${FooterCompareMattress}'!='${FOOTERCOMPAREMATTRESSSPELLING}'      Fail        Wrong Compare Mattress Spelling in Footer. Actual content: ${FooterCompareMattress} expected: ${FOOTERCOMPAREHYBRIDSSPELLING}
    ${FooterCompareHybrid}=          get text      ${LOCFOOTERCOMPAREHYBRIDS}
    Run keyword if          '${FooterCompareHybrid}'!='${FOOTERCOMPAREHYBRIDSSPELLING}'      Fail        Wrong Compare Hybrid Spelling in Footer. Actual content: ${FooterCompareHybrid} expected: ${FOOTERCOMPAREHYBRIDSSPELLING}
    ${FooterPuffyDonations}=               get text           ${LOCFOOTERPUFFYDONATIONS}
    Run keyword if          '${FooterPuffyDonations}'!='${FOOTERPUFFYDONATIONSSPELLING}'      Fail        Wrong Puffy Donations Spelling in Footer. Actual content: ${FooterPuffyDonations} expected: ${FOOTERPUFFYDONATIONSSPELLING}
    ${FooterAffiliateProgram}=            get text        ${LOCFOOTERAFFILIATEPROGRAM}
    Run keyword if          '${FooterAffiliateProgram}'!='${FOOTERAFFILIATEPROGRAMSPELLING}'      Fail        Wrong Affiliate Program Spelling in Footer. Actual content: ${FooterAffiliateProgram} expected: ${FOOTERAFFILIATEPROGRAMSPELLING}
    ${FooterReferAFriend}=          get text      ${LOCFOOTERREFERAFRIEND}
    Run keyword if          '${FooterReferAFriend}'!='${FOOTERREFERAFRIENDSPELLING}'      Fail        Wrong Refer a Friend Spelling in Footer. Actual content: ${FooterReferAFriend} expected: ${FOOTERREFERAFRIENDSPELLING}
    ${FooterMattressAwards}=               get text           ${LOCFOOTERMATTRESSAWARDS}
    Run keyword if          '${FooterMattressAwards}'!='${FOOTERMATTRESSAWARDSSPELLING}'      Fail        Wrong Mattress Awards Spelling in Footer. Actual content: ${FooterMattressAwards} expected: ${FOOTERMATTRESSAWARDSSPELLING}
    ${FooterGiftShop}=            get text        ${LOCFOOTERGIFTSHOP}
    Run keyword if          '${FooterGiftShop}'!='${FOOTERGIFTSHOPSPELLING}'      Fail        Wrong Gift Shop Spelling in Footer. Actual content: ${FooterGiftShop} expected: ${FOOTERGIFTSHOPSPELLING}
    ${FooterPuffyStore}=          get text      ${LOCFOOTERPUFFYSTORE}
    Run keyword if          '${FooterPuffyStore}'!='${FOOTERPUFFYSTORESPELLING}'      Fail        Wrong Puffy Store Spelling in Footer. Actual content: ${FooterPuffyStore} expected: ${FOOTERPUFFYSTORESPELLING}
    ${FooterPuffyBlog}=               get text           ${LOCFOOTERPUFFYBLOG}
    Run keyword if          '${FooterPuffyBlog}'!='${FOOTERPUFFYBLOGSPELLING}'      Fail        Wrong Puffy Blog Spelling in Footer. Actual content: ${FooterPuffyBlog} expected: ${FOOTERPUFFYBLOGSPELLING}
    ${FooterPuffyReview}=            get text        ${LOCFOOTERPUFFYREVIEW}
    Run keyword if          '${FooterPuffyReview}'!='${FOOTERPUFFYREVIEWSPELLING}'      Fail        Wrong Puffy Review Spelling in Footer. Actual content: ${FooterPuffyReview} expected: ${FOOTERPUFFYREVIEWSPELLING}
    ${FooterPuffyLuxReview}=          get text      ${LOCFOOTERPUFFYLUXREVIEW}
    Run keyword if          '${FooterPuffyLuxReview}'!='${FOOTERPUFFYLUXREVIEWSPELLING}'      Fail        Wrong Puffy Lux Review Spelling in Footer. Actual content: ${FooterPuffyLuxReview} expected: ${FOOTERPUFFYLUXREVIEWSPELLING}
    ${FooterPuffyRoyalReview}=               get text           ${LOCFOOTERPUFFYROYALREVIEW}
    Run keyword if          '${FooterPuffyRoyalReview}'!='${FOOTERPUFFYROYALREVIEWSPELLING}'      Fail        Wrong Puffy Royal Review Spelling in Footer. Actual content: ${FooterPuffyRoyalReview} expected: ${FOOTERPUFFYROYALREVIEWSPELLING}
    ${FooterPuffyMattressReview}=            get text        ${LOCFOOTERPUFFYMATTRESSREVIEW}
    Run keyword if          '${FooterPuffyMattressReview}'!='${FOOTERPUFFYMATTRESSREVIEWSPELLING}'      Fail        Wrong Puffy Mattress Review Spelling in Footer. Actual content: ${FooterPuffyMattressReview} expected: ${FOOTERPUFFYMATTRESSREVIEWSPELLING}

Check Puffy Section Redirection
    sleep                                   2s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(2) > div
    Click element                           ${LOCFOOTER101NIGHTSLEEPTRIAL}
    Location Should Be                      ${FOOTER101NIGHTSLEEPTRIALURL}
    wait until page contains                101-Night Sleep Trial

    sleep                                   2s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(2) > div
    Click element                           ${LOCFOOTERHOWITSMADE}
    Location Should Be                      ${FOOTERHOWITSMADEURL}
    wait until page contains                Making the Perfect Mattress

    sleep                                   2s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(2) > div
    Click element                           ${LOCFOOTERMATTRESSLAYERS}
    Location Should Be                      ${FOOTERMATTRESSLAYERSURL}
    wait until page contains                Puffy Sleep System

    sleep                                   2s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(2) > div
    Click element                           ${LOCFOOTERPERFECTSLEEP}
    Location Should Be                      ${FOOTERPERFECTSLEEPURL}
    wait until page contains                Perfect Sleep

    sleep                                   2s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(2) > div
    Click element                           ${LOCFOOTERCOMPAREMATTRESS}
    Location Should Be                      ${FOOTERCOMPAREMATTRESSURL}
    wait until page contains                choose your

    sleep                                   2s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(2) > div
    Click element                           ${LOCFOOTERCOMPAREHYBRIDS}
    Location Should Be                      ${FOOTERCOMPAREHYBRIDSURL}
    wait until page contains                choose your

    sleep                                   2s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(2) > div
    Click element                           ${LOCFOOTERPUFFYDONATIONS}
    Location Should Be                      ${FOOTERPUFFYDONATIONSURL}
    wait until page contains                Every Child Deserves

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
    Location Should Be                      ${FOOTERAFFILIATEPROGRAMURL}
    wait until page contains                © 2021 ShareASale.com, Inc. -
    Close Window

    sleep                                   2s
    Switch Window                           ${WindowHandles}[0]
    Click element                           ${LOCFOOTERREFERAFRIEND}
    Location Should Be                      ${FOOTERREFERAFRIENDURL}
    sleep                                   5s
    wait until page contains                Refer a Friend

    sleep                                   2s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(2) > div
    Click element                           ${LOCFOOTERMATTRESSAWARDS}
    Location Should Be                      ${FOOTERMATTRESSAWARDSURL}
    wait until page contains                Award-Winning

    sleep                                   2s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(2) > div
    Click element                           ${LOCFOOTERGIFTSHOP}
    Location Should Be                      ${FOOTERGIFTSHOPURL}
    wait until page contains                Gift Ideas For

    sleep                                   2s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(2) > div
    Click element                           ${LOCFOOTERPUFFYSTORE}
    Location Should Be                      ${FOOTERPUFFYSTOREURL}
    wait until page contains                Puffy Store

    sleep                                   2s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(2) > div
    Click element                           ${LOCFOOTERPUFFYBLOG}
    Location Should Be                      ${FOOTERPUFFYBLOGURL}
    wait until page contains                In The Clouds

    sleep                                   2s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(2) > div
    Click element                           ${LOCFOOTERPUFFYREVIEW}
    ${WindowHandles}=                       Get Window Handles
    Sleep                                   2s
    Switch Window                           ${WindowHandles}[1]
    Location Should Be                      ${FOOTERPUFFYREVIEWURL}
    wait until page contains                Puffy
    Close Window

    sleep                                   2s
    Switch Window                           ${WindowHandles}[0]
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(2) > div
    Click element                           ${LOCFOOTERPUFFYLUXREVIEW}
    ${WindowHandles}=                       Get Window Handles
    Sleep                                   2s
    Switch Window                           ${WindowHandles}[1]
    Location Should Be                      ${FOOTERPUFFYLUXREVIEWURL}
    wait until page contains                Puffy Lux Mattress Review
    Close Window

    sleep                                   2s
    Switch Window                           ${WindowHandles}[0]
    Click element                           ${LOCFOOTERPUFFYROYALREVIEW}
    ${WindowHandles}=                       Get Window Handles
    Sleep                                   2s
    Switch Window                           ${WindowHandles}[1]
    Location Should Be                      ${FOOTERPUFFYROYALREVIEWURL}
    wait until page contains                Puffy Royal Mattress
    Close Window

    sleep                                   2s
    Switch Window                           ${WindowHandles}[0]
    Click element                           ${LOCFOOTERPUFFYMATTRESSREVIEW}
    ${WindowHandles}=                       Get Window Handles
    Sleep                                   2s
    Switch Window                           ${WindowHandles}[1]
    Location Should Be                      ${FOOTERPUFFYMATTRESSREVIEWURL}
    wait until page contains                Puffy Mattress Review
    Close Window
    Switch Window                           ${WindowHandles}[0]


Check Support Section Spelling
    Sleep                                   2s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(3) > div
    ${FooterReviews}=               get text           ${LOCFOOTERREVIEWS}
    Run keyword if          '${FooterReviews}'!='${FOOTERREVIEWSSPELLING}'      Fail        Wrong Reviews Spelling in Footer. Actual content: ${FooterReviews} expected: ${FOOTERREVIEWSSPELLING}
    ${FooterContactUs}=            get text        ${LOCFOOTERCONTACTUS}
    Run keyword if          '${FooterContactUs}'!='${FOOTERCONTACTUSSPELLING}'      Fail        Wrong Contact Us Spelling in Footer. Actual content: ${FooterContactUs} expected: ${FOOTERCONTACTUSSPELLING}
    ${FooterFAQs}=          get text      ${LOCFOOTERFAQS}
    Run keyword if          '${FooterFAQs}'!='${FOOTERFAQSSPELLING}'      Fail        Wrong FAQs Spelling in Footer. Actual content: ${FooterFAQs} expected: ${FOOTERFAQSSPELLING}
    ${FooterFinancing}=               get text           ${LOCFOOTERFINANCING}
    Run keyword if          '${FooterFinancing}'!='${FOOTERFINANCINGSPELLING}'      Fail        Wrong Financing Spelling in Footer. Actual content: ${FooterFinancing} expected: ${FOOTERFINANCINGSPELLING}
    ${FooterReturnPolicy}=            get text        ${LOCFOOTERRETURNPOLICY}
    Run keyword if          '${FooterReturnPolicy}'!='${FOOTERRETURNPOLICYSPELLING}'      Fail        Wrong Return Policy Spelling in Footer. Actual content: ${FooterReturnPolicy} expected: ${FOOTERRETURNPOLICYSPELLING}
    ${FooterPuffyGuarantee}=          get text      ${LOCFOOTERPUFFYGUARANTEE}
    Run keyword if          '${FooterPuffyGuarantee}'!='${FOOTERPUFFYGUARANTEESPELLING}'      Fail        Wrong Puffy Guarantee Spelling in Footer. Actual content: ${FooterPuffyGuarantee} expected: ${FOOTERPUFFYGUARANTEESPELLING}

Check Support Section Redirection
    sleep                                   2s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(3) > div
    Click element                           ${LOCFOOTERREVIEWS}
    Location Should Be                      ${FOOTERREVIEWSURL}
    wait until page contains                Puffy Mattress Reviews

    sleep                                   2s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(3) > div
    Click element                           ${LOCFOOTERCONTACTUS}
    Location Should Be                      ${FOOTERCONTACTUSURL}
    wait until page contains                Questions? Ask away, we love helping.

    sleep                                   2s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(3) > div
    Click element                           ${LOCFOOTERFAQS}
    Location Should Be                      ${FOOTERFAQSURL}
    wait until page contains                QUESTIONS? REVIEW OUR FAQ BY SELECTING THE RELEVANT CATEGORY. IF YOU STILL HAVE QUESTIONS, CONTACT US BY USING THE FORM BELOW.

    sleep                                   2s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(3) > div
    Click element                           ${LOCFOOTERFINANCING}
    Location Should Be                      ${FOOTERFINANCINGURL}
    wait until page contains                Sleep on a cloud

    sleep                                   2s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(3) > div
    Click element                           ${LOCFOOTERRETURNPOLICY}
    Location Should Be                      ${FOOTERRETURNPOLICYURL}
    wait until page contains                Return Policy

    sleep                                   2s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(3) > div
    Click element                           ${LOCFOOTERPUFFYGUARANTEE}
    Location Should Be                      ${FOOTERPUFFYGUARANTEEURL}
    wait until page contains                REST EASY

Check Social Media Section Redirection
    sleep                                   2s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(4) > div > ul
    Click element                           ${LOCFOOTERFACEBOOK}
    ${WindowHandles}=                       Get Window Handles
    Sleep                                   2s
    Switch Window                           ${WindowHandles}[1]
    Location Should Be                      ${FOOTERFACEBOOKURL}
    Close Window

    sleep                                   2s
    Switch Window                           ${WindowHandles}[0]
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(4) > div > ul
    Click element                           ${LOCFOOTERTWITTER}
    ${WindowHandles}=                       Get Window Handles
    Sleep                                   2s
    Switch Window                           ${WindowHandles}[1]
    Location Should Be                      ${FOOTERTWITTERURL}
    Close Window

    sleep                                   2s
    Switch Window                           ${WindowHandles}[0]
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(4) > div > ul
    Click element                           ${LOCFOOTERINSTAGRAM}
    ${WindowHandles}=                       Get Window Handles
    Sleep                                   2s
    Switch Window                           ${WindowHandles}[1]
    Location Should Be                      ${FOOTERINSTAGRAMURL}
    Close Window

    sleep                                   2s
    Switch Window                           ${WindowHandles}[0]
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(4) > div > ul
    Click element                           ${LOCFOOTERYOUTUBE}
    ${WindowHandles}=                       Get Window Handles
    Sleep                                   2s
    Switch Window                           ${WindowHandles}[1]
    Location Should Be                      ${FOOTERYOUTUBEURL}
    Close Window

    sleep                                   2s
    Switch Window                           ${WindowHandles}[0]
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(4) > div > ul
    Click element                           ${LOCFOOTERLINKEDIN}
    ${WindowHandles}=                       Get Window Handles
    Sleep                                   2s
    Switch Window                           ${WindowHandles}[1]
    Location Should Be                      ${FOOTERLINKEDINURL}
    Close Window

    sleep                                   2s
    Switch Window                           ${WindowHandles}[0]
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(4) > div > ul
    Click element                           ${LOCFOOTERPINTEREST}
    ${WindowHandles}=                       Get Window Handles
    Sleep                                   2s
    Switch Window                           ${WindowHandles}[1]
    Location Should Be                      ${FOOTERPINTERESTURL}
    Close Window
    Switch Window                           ${WindowHandles}[0]

Check Auxiliary Section Spelling
    Sleep                                   2s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.footer-bottom > div > div:nth-child(1) > div
    ${FooterPrivacy}=               get text           ${LOCFOOTERPRIVACY}
    Run keyword if          '${FooterPrivacy}'!='${FOOTERPRIVACYSPELLING}'      Fail        Wrong Privacy Spelling in Footer. Actual content: ${FooterPrivacy} expected: ${FOOTERPRIVACYSPELLING}
    ${FooterTerms}=            get text        ${LOCFOOTERTERMS}
    Run keyword if          '${FooterTerms}'!='${FOOTERTERMSSPELLING}'      Fail        Wrong Terms Spelling in Footer. Actual content: ${FooterTerms} expected: ${FOOTERTERMSSPELLING}
    ${FooterWarranty}=          get text      ${LOCFOOTERWARRANTY}
    Run keyword if          '${FooterWarranty}'!='${FOOTERWARRANTYSPELLING}'      Fail        Wrong Warranty Spelling in Footer. Actual content: ${FooterWarranty} expected: ${FOOTERWARRANTYSPELLING}
    ${FooterCopyright}=          get text      ${LOCFOOTERCOPYRIGHT}
    Run keyword if          '${FooterCopyright}'!='${FOOTERCOPYRIGHTSPELLING}'      Fail        Wrong Copyright details in Footer. Actual content: ${FooterCopyright} expected: ${FOOTERCOPYRIGHTSPELLING}

Check Auxiliary Section Redirection
    sleep                                   2s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.footer-bottom > div > div:nth-child(1) > div
    Click element                           ${LOCFOOTERPRIVACY}
    Location Should Be                      ${FOOTERPRIVACYURL}
    wait until page contains                Puffy Privacy Policy

    sleep                                   2s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.footer-bottom > div > div:nth-child(1) > div
    Click element                           ${LOCFOOTERTERMS}
    Location Should Be                      ${FOOTERTERMSURL}
    wait until page contains                Terms and Conditions

    sleep                                   2s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.footer-bottom > div > div:nth-child(1) > div
    Click element                           ${LOCFOOTERWARRANTY}
    Location Should Be                      ${FOOTERWARRANTYURL}
    wait until page contains                Puffy Warranty Information

    sleep                                   2s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.footer-bottom > div > div:nth-child(2)
    Click element                           ${LOCFOOTERCOPYRIGHT}
    Location Should Be                      ${FOOTERCOPYRIGHTURL}
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
