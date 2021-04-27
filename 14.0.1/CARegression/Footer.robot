*** Settings ***
Documentation       Regression for Footer
#Library
Library             SeleniumLibrary
Library             ScreenCapLibrary
Library             Collections
Library             String
Suite Teardown      close browser

*** Variables ***
${Homepage}                     https://puffy.com
${systembrowser}                Chrome
${FOOTER}                       NEW YEAR'S SALE NOW $300 OFF + FREE PILLOW
${ToggleA}                      css=#showVersionA
${ToggleB}                      css=#showVersionB
${PuffyBrowser}                 alias=Puffy
${FooterPuffyMattressSpelling}                      Puffy
${FooterPuffyLuxMattressSpelling}                   Puffy Lux
${FooterPuffyRoyalMattressSpelling}                 Puffy Royal
${FooterPuffyHybridMattressSpelling}                Puffy Hybrid
${FooterPuffyComforterSpelling}                     Comforter
${FooterPuffyMattressProtectorSpelling}             Mattress Protector
${FooterPuffyMattressTopperSpelling}                Mattress Topper
${FooterPuffyWeightedBlanketSpelling}               Weighted Blanket
${FooterPuffyDogBedSpelling}                        Dog Bed
${FooterPuffyBedFrameSpelling}                      Bed Frame
${FooterPuffyFoundationSpelling}                    Foundation
${FooterPuffyAdjustableBaseSpelling}                Adjustable Base
${FooterPuffyPillowSpelling}                        Pillow
${FooterPuffyBodyPillowSpelling}                    Body Pillow
${FooterPuffyMattressPadSpelling}                   Mattress Pad
${FooterPuffyBlanketSpelling}                       Puffy Blanket
${FooterPuffySheetsSpelling}                        Puffy Sheets
${FooterPuffyRugSpelling}                           Puffy Rug
${Footer101NightSleepTrialSpelling}                 101-Night Sleep Trial
${FooterHowItsMadeSpelling}                         How it’s Made
${FooterMattressLayersSpelling}                     Mattress Layers
${FooterPerfectSleepSpelling}                       Perfect Sleep
${FooterCompareMattressSpelling}                    Compare Mattress
${FooterCompareHybridsSpelling}                     Compare Hybrids
${FooterPuffyDonationsSpelling}                     Puffy Donations
${FooterAffiliateProgramSpelling}                   Affiliate Program
${FooterReferAFriendSpelling}                       Refer a Friend
${FooterMattressAwardsSpelling}                     Mattress Awards
${FooterGiftShopSpelling}                           Gift Shop
${FooterPuffyStoreSpelling}                         Puffy Store
${FooterPuffyBlogSpelling}                          Puffy Blog
${FooterPuffyReviewSpelling}                        Puffy Review
${FooterPuffyLuxReviewSpelling}                     Puffy Lux Review
${FooterPuffyRoyalReviewSpelling}                   Puffy Royal Review
${FooterPuffyMattressReviewSpelling}                Puffy Mattress Review
${FooterReviewsSpelling}                            Reviews
${FooterContactUsSpelling}                          Contact Us
${FooterFAQsSpelling}                               FAQs
${FooterFinancingSpelling}                          Financing
${FooterReturnPolicySpelling}                       Return Policy
${FooterPuffyGuaranteeSpelling}                     Puffy Guarantee
${FooterPrivacySpelling}                            Privacy
${FooterTermsSpelling}                              Terms
${FooterWarrantySpelling}                           Warranty
${FooterCopyrightSpelling}                          Puffy Mattress
${FooterPuffyURL}                                   https://puffy.com/products/puffy-mattress
${FooterPuffyLuxURL}                                https://puffy.com/pages/puffy-lux-mattress
${FooterPuffyRoyalURL}                              https://puffy.com/products/puffy-royal-mattress
${FooterPuffyHybridURL}                             https://puffy.com/pages/puffy-hybrid-mattress
${FooterComforterURL}                               https://puffy.com/products/puffy-comforter
${FooterMattressProtectorURL}                       https://puffy.com/products/puffy-mattress-protector
${FooterMattressTopperURL}                          https://puffy.com/products/puffy-topper
${FooterWeightedBlanketURL}                         https://puffy.com/products/puffy-weighted-blanket
${FooterDogBedURL}                                  https://puffy.com/products/puffy-dog-bed
${FooterBedFrameURL}                                https://puffy.com/products/puffy-bed-frame
${FooterFoundationURL}                              https://puffy.com/products/puffy-foundation
${FooterAdjustableBaseURL}                          https://puffy.com/products/puffy-adjustable-base
${FooterPillowURL}                                  https://puffy.com/products/puffy-pillow
${FooterBodyPillowURL}                              https://puffy.com/products/puffy-body-pillow
${FooterMattressPadURL}                             https://puffy.com/products/puffy-mattress-pad
${FooterPuffyBlanketURL}                            https://puffy.com/products/puffy-blanket
${FooterPuffySheetsURL}                             https://puffy.com/products/puffy-sheets
${FooterPuffyRugURL}                                https://puffy.com/products/puffy-area-rug
${Footer101NightSleepTrialURL}                      https://puffy.com/pages/puffy-mattress-sleep-trial
${FooterHowItsMadeURL}                              https://puffy.com/pages/how-its-made
${FooterMattressLayersURL}                          https://puffy.com/pages/puffy-sleep-system
${FooterPerfectSleepURL}                            https://puffy.com/pages/puffy-perfect-sleep
${FooterCompareMattressURL}                         https://puffy.com/pages/puffy-mattress-and-puffy-lux
${FooterCompareHybridsURL}                          https://puffy.com/pages/compare-hybrid-mattress-puffy-lux-and-royal
${FooterPuffyDonationsURL}                          https://puffy.com/pages/puffy-donations-1
${FooterAffiliateProgramURL}                        https://www.shareasale.com/shareasale.cfm?merchantID=73372
${FooterReferAFriendURL}                            https://puffy.com/pages/share?traffic_source=site_footer
${FooterMattressAwardsURL}                          https://puffy.com/pages/top-rated-best-mattress-awards
${FooterGiftShopURL}                                https://puffy.com/pages/gift-shop
${FooterPuffyStoreURL}                              https://puffy.com/collections/puffy-store
${FooterPuffyBlogURL}                               https://puffy.com/blogs/in-the-clouds
${FooterPuffyReviewURL}                             https://www.slumbersearch.com/puffy-mattress-reviews
${FooterPuffyLuxReviewURL}                          https://myslumberyard.com/mattress-reviews/puffy-lux-mattress-review/
${FooterPuffyRoyalReviewURL}                        https://www.oursleepguide.com/mattress/puffy-royal-mattress-review/
${FooterPuffyMattressReviewURL}                     https://www.mattressnerd.com/puffy-mattress-review/
${FooterReviewsURL}                                 https://puffy.com/pages/puffy-mattress-reviews
${FooterContactUsURL}                               https://puffy.com/pages/contact-puffy-mattress#contact_us
${FooterFAQsURL}                                    https://puffy.com/pages/contact-puffy-mattress
${FooterFinancingURL}                               https://puffy.com/pages/financing
${FooterReturnPolicyURL}                            https://puffy.com/pages/return-policy
${FooterPuffyGuaranteeURL}                          https://puffy.com/pages/puffy-mattress-sleep-guarantee
${FooterPrivacyURL}                                 https://puffy.com/pages/puffy-privacy-policy
${FooterTermsURL}                                   https://puffy.com/pages/terms-and-conditions
${FooterWarrantyURL}                                https://puffy.com/pages/puffy-mattress-warranty
${FooterFacebookURL}                                https://www.facebook.com/PuffyMattress/
${FooterTwitterURL}                                 https://twitter.com/puffymattress
${FooterInstagramURL}                               https://www.instagram.com/puffymattress/
${FooterYoutubeURL}                                 https://www.youtube.com/c/PuffyMattress
${FooterLinkedinURL}                                https://www.linkedin.com/company/puffy
${FooterPinterestURL}                               https://www.pinterest.com/puffymattressonline/
${FooterCopyrightURL}                               https://puffy.com/
${SignUpTextField}                                  css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(4) > div > div.newsletter-wrapper > div > div > div > div > form > div > div > div.needsclick.FormComponent__StyledFormComponentWrapper-e0xun6-0.jSFixL.kl-private-reset-css-Xuajs1 > div > input
${SignUpNoDomain}                                   email
${SignUpInvalidEmail}                               email.com
${SignUpValidEmail}                                 email@gmail.com
${FooterSignUpLocator}                              css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(4) > div > div.newsletter-wrapper > div > div > div > div > form > div > div > div.needsclick.FormComponent__StyledFormComponentWrapper-e0xun6-0.IRToG.kl-private-reset-css-Xuajs1 > button
${FooterPuffyLocator}                               css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(1) > div > div > ul > li:nth-child(1) > a
${FooterPuffyLuxLocator}                            css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(1) > div > div > ul > li:nth-child(2) > a
${FooterPuffyRoyalLocator}                          css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(1) > div > div > ul > li:nth-child(3) > a
${FooterPuffyHybridLocator}                         css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(1) > div > div > ul > li:nth-child(4) > a
${FooterComforterLocator}                           css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(1) > div > div > ul > li:nth-child(5) > a
${FooterMattressProtectorLocator}                   css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(1) > div > div > ul > li:nth-child(6) > a
${FooterMattressTopperLocator}                      css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(1) > div > div > ul > li:nth-child(7) > a
${FooterWeightedBlanketLocator}                     css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(1) > div > div > ul > li:nth-child(8) > a
${FooterDogBedLocator}                              css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(1) > div > div > ul > li:nth-child(9) > a
${FooterBedFrameLocator}                            css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(1) > div > div > ul > li:nth-child(10) > a
${FooterFoundationLocator}                          css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(1) > div > div > ul > li:nth-child(11) > a
${FooterAdjustableBaseLocator}                      css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(1) > div > div > ul > li:nth-child(12) > a
${FooterPillowLocator}                              css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(1) > div > div > ul > li:nth-child(13) > a
${FooterBodyPillowLocator}                          css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(1) > div > div > ul > li:nth-child(14) > a
${FooterMattressPadLocator}                         css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(1) > div > div > ul > li:nth-child(15) > a
${FooterPuffyBlanketLocator}                        css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(1) > div > div > ul > li:nth-child(16) > a
${FooterPuffySheetsLocator}                         css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(1) > div > div > ul > li:nth-child(17) > a
${FooterPuffyRugLocator}                            css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(1) > div > div > ul > li:nth-child(18) > a
${Footer101NightSleepTrialLocator}                  css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(2) > div > div > ul > li:nth-child(1) > a
${FooterHowItsMadeLocator}                          css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(2) > div > div > ul > li:nth-child(2) > a
${FooterMattressLayersLocator}                      css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(2) > div > div > ul > li:nth-child(3) > a
${FooterPerfectSleepLocator}                        css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(2) > div > div > ul > li:nth-child(4) > a
${FooterCompareMattressLocator}                     css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(2) > div > div > ul > li:nth-child(5) > a
${FooterCompareHybridsLocator}                      css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(2) > div > div > ul > li:nth-child(6) > a
${FooterPuffyDonationsLocator}                      css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(2) > div > div > ul > li:nth-child(7) > a
${FooterAffiliateProgramLocator}                    css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(2) > div > div > ul > li:nth-child(8) > a
${FooterReferAFriendLocator}                        css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(2) > div > div > ul > li:nth-child(9) > a
${FooterMattressAwardsLocator}                      css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(2) > div > div > ul > li:nth-child(10) > a
${FooterGiftShopLocator}                            css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(2) > div > div > ul > li:nth-child(11) > a
${FooterPuffyStoreLocator}                          css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(2) > div > div > ul > li:nth-child(12) > a
${FooterPuffyBlogLocator}                           css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(2) > div > div > ul > li:nth-child(13) > a
${FooterPuffyReviewLocator}                         css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(2) > div > div > ul > li:nth-child(14) > a
${FooterPuffyLuxReviewLocator}                      css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(2) > div > div > ul > li:nth-child(15) > a
${FooterPuffyRoyalReviewLocator}                    css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(2) > div > div > ul > li:nth-child(16) > a
${FooterPuffyMattressReviewLocator}                 css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(2) > div > div > ul > li:nth-child(17) > a
${FooterReviewsLocator}                             css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(3) > div > div > ul > li:nth-child(1) > a
${FooterContactUsLocator}                           css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(3) > div > div > ul > li:nth-child(2) > a
${FooterFAQsLocator}                                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(3) > div > div > ul > li:nth-child(3) > a
${FooterFinancingLocator}                           css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(3) > div > div > ul > li:nth-child(4) > a
${FooterReturnPolicyLocator}                        css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(3) > div > div > ul > li:nth-child(5) > a
${FooterPuffyGuaranteeLocator}                      css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(3) > div > div > ul > li:nth-child(6) > a
${FooterPrivacyLocator}                             css=#shopify-section-footer > footer > div.footer-bottom > div > div:nth-child(1) > div > a:nth-child(1)
${FooterTermsLocator}                               css=#shopify-section-footer > footer > div.footer-bottom > div > div:nth-child(1) > div > a:nth-child(2)
${FooterWarrantyLocator}                            css=#shopify-section-footer > footer > div.footer-bottom > div > div:nth-child(1) > div > a:nth-child(3)
${FooterFacebookLocator}                            css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(4) > div > ul > li:nth-child(1) > a
${FooterTwitterLocator}                             css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(4) > div > ul > li:nth-child(2) > a
${FooterInstagramLocator}                           css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(4) > div > ul > li:nth-child(3) > a
${FooterYoutubeLocator}                             css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(4) > div > ul > li:nth-child(4) > a
${FooterLinkedinLocator}                            css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(4) > div > ul > li:nth-child(5) > a
${FooterPinterestLocator}                           css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(4) > div > ul > li:nth-child(6) > a
${FooterCopyrightLocator}                           css=#shopify-section-footer > footer > div.footer-bottom > div > div:nth-child(2) > div > p > a
*** Test Cases ***
Start Record Video
    Start Record Video
Popup Sale
    Open Login screen
    Wait and dismiss popup
#Switch version
    #Switch to Version A
    sleep               2s
Timer Bar
    Seasonal Sale timer text check
Sign Up Section Checks
    Click sign up without email address
    Click Sign up without email domain
    Click Sign up with valid email address

Product Section Checks
    Check Product Section Spelling
    Check Product Section Redirection
Puffy Section Checks
    Check Puffy Section Spelling
    Check Puffy Section Redirection
Support Section Checks
    Check Support Section Spelling
    Check Support Section Redirection
Social Media Section Checks
    Check Social Media Section Redirection
Auxiliary Section Checks
    Check Auxiliary Section Spelling
    Check Auxiliary Section Redirection

Stop All Video Recordings
    Stop All Video Recordings

*** Keywords ***
Start Record Video
    Start Video Recording       alias=Regression name=MegaMenu


Open Login screen
    Open Browser            ${Homepage}  ${systembrowser}  ${PuffyBrowser}
    Maximize Browser Window
    wait until page contains element    css=#saleTimer > div:nth-child(1) > div

Wait and dismiss popup
    sleep                   5s
    ${check}=               Run Keyword and Return Status  Element should be visible      xpath=/html/body/div[3]/div[2]/div/div[1]/img
    run keyword if          ${check} == False    Wait and dismiss popup
    ...     ELSE            Click element   xpath=/html/body/div[3]/div[2]/div/span

Seasonal Sale timer text check
    ${Content}=            get text        css=#saleTimer > div:nth-child(1) > div
    Run keyword if          "${Content}"!="${FOOTER}"      Fail        Wrong Seasonal Sale timer Content Actual content: ${Content}
    Click element           css=#saleTimer > span > svg

Check Product Section Spelling
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(1) > div
    ${FooterPuffyMattress}=               get text           ${FooterPuffyLocator}
    Run keyword if          '${FooterPuffyMattress}'!='${FooterPuffyMattressSpelling}'      Fail        Wrong Puffy Spelling in Footer. Actual content: ${FooterPuffyMattress} expected: ${FooterPuffyMattressSpelling}
    ${FooterPuffyLuxMattress}=            get text        ${FooterPuffyLuxLocator}
    Run keyword if          '${FooterPuffyLuxMattress}'!='${FooterPuffyLuxMattressSpelling}'      Fail        Wrong Puffy Lux Spelling in Footer. Actual content: ${FooterPuffyLuxMattress} expected: ${FooterPuffyLuxMattressSpelling}
    ${FooterPuffyRoyalMattress}=          get text      ${FooterPuffyRoyalLocator}
    Run keyword if          '${FooterPuffyRoyalMattress}'!='${FooterPuffyRoyalMattressSpelling}'      Fail        Wrong Puffy Royal Spelling in Footer. Actual content: ${FooterPuffyRoyalMattress} expected: ${FooterPuffyRoyalMattressSpelling}
    ${FooterPuffyHybridMattress}=               get text           ${FooterPuffyHybridLocator}
    Run keyword if          '${FooterPuffyHybridMattress}'!='${FooterPuffyHybridMattressSpelling}'      Fail        Wrong Puffy Hybrid Spelling in Footer. Actual content: ${FooterPuffyHybridMattress} expected: ${FooterPuffyHybridMattressSpelling}
    ${FooterComforter}=            get text        ${FooterComforterLocator}
    Run keyword if          '${FooterComforter}'!='${FooterPuffyComforterSpelling}'      Fail        Wrong Comforter Spelling in Footer. Actual content: ${FooterComforter} expected: ${FooterPuffyComforterSpelling}
    ${FooterMattressProtector}=          get text      ${FooterMattressProtectorLocator}
    Run keyword if          '${FooterMattressProtector}'!='${FooterPuffyMattressProtectorSpelling}'      Fail        Wrong Mattress Protector Spelling in Footer. Actual content: ${FooterMattressProtector} expected: ${FooterPuffyMattressProtectorSpelling}
    ${FooterMattressTopper}=               get text           ${FooterMattressTopperLocator}
    Run keyword if          '${FooterMattressTopper}'!='${FooterPuffyMattressTopperSpelling}'      Fail        Wrong Mattress Topper Spelling in Footer. Actual content: ${FooterMattressTopper} expected: ${FooterPuffyMattressTopperSpelling}
    ${FooterWeightedBlanket}=            get text        ${FooterWeightedBlanketLocator}
    Run keyword if          '${FooterWeightedBlanket}'!='${FooterPuffyWeightedBlanketSpelling}'      Fail        Wrong Weighted Blanket Spelling in Footer. Actual content: ${FooterWeightedBlanket} expected: ${FooterPuffyWeightedBlanketSpelling}
    ${FooterDogBed}=          get text      ${FooterDogBedLocator}
    Run keyword if          '${FooterDogBed}'!='${FooterPuffyDogBedSpelling}'      Fail        Wrong Dog Bed Spelling in Footer. Actual content: ${FooterDogBed} expected: ${FooterPuffyDogBedSpelling}
    ${FooterBedFrame}=               get text           ${FooterBedFrameLocator}
    Run keyword if          '${FooterBedFrame}'!='${FooterPuffyBedFrameSpelling}'      Fail        Wrong Puffy Mattress Spelling in Footer. Actual content: ${FooterBedFrame} expected: ${FooterPuffyBedFrameSpelling}
    ${FooterFoundation}=            get text        ${FooterFoundationLocator}
    Run keyword if          '${FooterFoundation}'!='${FooterPuffyFoundationSpelling}'      Fail        Wrong Foundation Spelling in Footer. Actual content: ${FooterFoundation} expected: ${FooterPuffyFoundationSpelling}
    ${FooterAdjustableBase}=          get text      ${FooterAdjustableBaseLocator}
    Run keyword if          '${FooterAdjustableBase}'!='${FooterPuffyAdjustableBaseSpelling}'      Fail        Wrong Adjustable Base Spelling in Footer. Actual content: ${FooterAdjustableBase} expected: ${FooterPuffyAdjustableBaseSpelling}
    ${FooterPillow}=               get text           ${FooterPillowLocator}
    Run keyword if          '${FooterPillow}'!='${FooterPuffyPillowSpelling}'      Fail        Wrong Pillow Spelling in Footer. Actual content: ${FooterPillow} expected: ${FooterPuffyPillowSpelling}
    ${FooterBodyPillow}=            get text        ${FooterBodyPillowLocator}
    Run keyword if          '${FooterBodyPillow}'!='${FooterPuffyBodyPillowSpelling}'      Fail        Wrong Body Pillow Spelling in Footer. Actual content: ${FooterBodyPillow} expected: ${FooterPuffyBodyPillowSpelling}
    ${FooterMattressPad}=          get text      ${FooterMattressPadLocator}
    Run keyword if          '${FooterMattressPad}'!='${FooterPuffyMattressPadSpelling}'      Fail        Wrong Mattress Pad Spelling in Footer. Actual content: ${FooterMattressPad} expected: ${FooterPuffyMattressPadSpelling}
    ${FooterPuffyBlanket}=               get text           ${FooterPuffyBlanketLocator}
    Run keyword if          '${FooterPuffyBlanket}'!='${FooterPuffyBlanketSpelling}'      Fail        Wrong Puffy Blanket Spelling in Footer. Actual content: ${FooterPuffyBlanket} expected: ${FooterPuffyBlanketSpelling}
    ${FooterPuffySheets}=            get text        ${FooterPuffySheetsLocator}
    Run keyword if          '${FooterPuffySheets}'!='${FooterPuffySheetsSpelling}'      Fail        Wrong Puffy Sheets Spelling in Footer. Actual content: ${FooterPuffySheets} expected: ${FooterPuffySheetsSpelling}
    ${FooterPuffyRug}=          get text      ${FooterPuffyRugLocator}
    Run keyword if          '${FooterPuffyRug}'!='${FooterPuffyRugSpelling}'      Fail        Wrong Puffy Rug Spelling in Footer. Actual content: ${FooterPuffyRug} expected: ${FooterPuffyRugSpelling}


Check Product Section Redirection
    sleep                                   1s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(1) > div
    Click element                           ${FooterPuffyLocator}
    Location Should Be                      ${FooterPuffyURL}
    wait until page contains                ${FooterPuffyMattressSpelling}

    sleep                                   1s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(1) > div
    Click element                           ${FooterPuffyLuxLocator}
    Location Should Be                      ${FooterPuffyLuxURL}
    wait until page contains                Puffy Lux Mattress

    sleep                                   1s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(1) > div
    Click element                           ${FooterPuffyRoyalLocator}
    Location Should Be                      ${FooterPuffyRoyalURL}
    wait until page contains element        css=#shopify-section-product-puffy-template > div.container.main.content.product-name--puffy-royal-mattress > div > div > div > div > div.seven.columns.medium-down--one-whole.alpha > div > div.product-head > div.product-head__headline.product-head__headline--hybrid > h1

    sleep                                   1s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(1) > div
    Click element                           ${FooterPuffyHybridLocator}
    Location Should Be                      ${FooterPuffyHybridURL}
    wait until page contains                Puffy Hybrid Mattress

    sleep                                   1s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(1) > div
    Click element                           ${FooterComforterLocator}
    Location Should Be                      ${FooterComforterURL}
    wait until page contains                Puffy Comforter

    sleep                                   1s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(1) > div
    Click element                           ${FooterMattressProtectorLocator}
    Location Should Be                      ${FooterMattressProtectorURL}
    wait until page contains                Puffy Mattress Protector


    sleep                                   1s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(1) > div
    Click element                           ${FooterMattressTopperLocator}
    Location Should Be                      ${FooterMattressTopperURL}
    wait until page contains                Puffy Topper

    sleep                                   1s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(1) > div
    Click element                           ${FooterWeightedBlanketLocator}
    Location Should Be                      ${FooterWeightedBlanketURL}
    wait until page contains                Puffy Weighted Blanket

    sleep                                   1s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(1) > div
    Click element                           ${FooterDogBedLocator}
    Location Should Be                      ${FooterDogBedURL}
    wait until page contains                Puffy Dog Bed

    sleep                                   1s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(1) > div
    Click element                           ${FooterBedFrameLocator}
    Location Should Be                      ${FooterBedFrameURL}
    wait until page contains                Puffy Bed Frame

    sleep                                   1s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(1) > div
    Click element                           ${FooterFoundationLocator}
    Location Should Be                      ${FooterFoundationURL}
    wait until page contains                Puffy Mattress Foundation

    sleep                                   1s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(1) > div
    Click element                           ${FooterAdjustableBaseLocator}
    Location Should Be                      ${FooterAdjustableBaseURL}
    wait until page contains                Puffy Adjustable Base

    sleep                                   1s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(1) > div
    Click element                           ${FooterPillowLocator}
    Location Should Be                      ${FooterPillowURL}
    wait until page contains                Puffy Pillow

    sleep                                   1s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(1) > div
    Click element                           ${FooterBodyPillowLocator}
    Location Should Be                      ${FooterBodyPillowURL}
    wait until page contains                Puffy Body Pillow

    sleep                                   1s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(1) > div
    Click element                           ${FooterMattressPadLocator}
    Location Should Be                      ${FooterMattressPadURL}
    wait until page contains                Puffy Mattress Pad

    sleep                                   1s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(1) > div
    Click element                           ${FooterPuffyBlanketLocator}
    Location Should Be                      ${FooterPuffyBlanketURL}
    wait until page contains                Puffy Blanket

    sleep                                   1s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(1) > div
    Click element                           ${FooterPuffySheetsLocator}
    Location Should Be                      ${FooterPuffySheetsURL}
    wait until page contains                Puffy Sheets

    sleep                                   1s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(1) > div
    Click element                           ${FooterPuffyRugLocator}
    Location Should Be                      ${FooterPuffyRugURL}
    wait until page contains                Puffy Rug

Check Puffy Section Spelling
    Sleep                                   2s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(2) > div
    ${Footer101NightSleepTrial}=               get text           ${Footer101NightSleepTrialLocator}
    Run keyword if          '${Footer101NightSleepTrial}'!='${Footer101NightSleepTrialSpelling}'      Fail        Wrong 101-Night Sleep Trial Spelling in Footer. Actual content: ${Footer101NightSleepTrial} expected: ${Footer101NightSleepTrialSpelling}
    #${FooterHowItsMade}=            get text        ${FooterHowItsMadeLocator}
    #Run keyword if          '${FooterHowItsMade}'!='${FooterHowItsMadeSpelling}'      Fail        Wrong How It's Made Spelling in Footer. Actual content: ${FooterHowItsMade} expected: ${FooterHowItsMadeSpelling}
    ${FooterMattressLayers}=          get text      ${FooterMattressLayersLocator}
    Run keyword if          '${FooterMattressLayers}'!='${FooterMattressLayersSpelling}'      Fail        Wrong Mattress Layers Spelling in Footer. Actual content: ${FooterMattressLayers} expected: ${FooterMattressLayersSpelling}
    ${FooterPerfectSleep}=               get text           ${FooterPerfectSleepLocator}
    Run keyword if          '${FooterPerfectSleep}'!='${FooterPerfectSleepSpelling}'      Fail        Wrong Perfect Sleep Spelling in Footer. Actual content: ${FooterPerfectSleep} expected: ${FooterPerfectSleepSpelling}
    ${FooterCompareMattress}=            get text        ${FooterCompareMattressLocator}
    Run keyword if          '${FooterCompareMattress}'!='${FooterCompareMattressSpelling}'      Fail        Wrong Compare Mattress Spelling in Footer. Actual content: ${FooterCompareMattress} expected: ${FooterCompareHybridsSpelling}
    ${FooterCompareHybrid}=          get text      ${FooterCompareHybridsLocator}
    Run keyword if          '${FooterCompareHybrid}'!='${FooterCompareHybridsSpelling}'      Fail        Wrong Compare Hybrid Spelling in Footer. Actual content: ${FooterCompareHybrid} expected: ${FooterCompareHybridsSpelling}
    ${FooterPuffyDonations}=               get text           ${FooterPuffyDonationsLocator}
    Run keyword if          '${FooterPuffyDonations}'!='${FooterPuffyDonationsSpelling}'      Fail        Wrong Puffy Donations Spelling in Footer. Actual content: ${FooterPuffyDonations} expected: ${FooterPuffyDonationsSpelling}
    ${FooterAffiliateProgram}=            get text        ${FooterAffiliateProgramLocator}
    Run keyword if          '${FooterAffiliateProgram}'!='${FooterAffiliateProgramSpelling}'      Fail        Wrong Affiliate Program Spelling in Footer. Actual content: ${FooterAffiliateProgram} expected: ${FooterAffiliateProgramSpelling}
    ${FooterReferAFriend}=          get text      ${FooterReferAFriendLocator}
    Run keyword if          '${FooterReferAFriend}'!='${FooterReferAFriendSpelling}'      Fail        Wrong Refer a Friend Spelling in Footer. Actual content: ${FooterReferAFriend} expected: ${FooterReferAFriendSpelling}
    ${FooterMattressAwards}=               get text           ${FooterMattressAwardsLocator}
    Run keyword if          '${FooterMattressAwards}'!='${FooterMattressAwardsSpelling}'      Fail        Wrong Mattress Awards Spelling in Footer. Actual content: ${FooterMattressAwards} expected: ${FooterMattressAwardsSpelling}
    ${FooterGiftShop}=            get text        ${FooterGiftShopLocator}
    Run keyword if          '${FooterGiftShop}'!='${FooterGiftShopSpelling}'      Fail        Wrong Gift Shop Spelling in Footer. Actual content: ${FooterGiftShop} expected: ${FooterGiftShopSpelling}
    ${FooterPuffyStore}=          get text      ${FooterPuffyStoreLocator}
    Run keyword if          '${FooterPuffyStore}'!='${FooterPuffyStoreSpelling}'      Fail        Wrong Puffy Store Spelling in Footer. Actual content: ${FooterPuffyStore} expected: ${FooterPuffyStoreSpelling}
    ${FooterPuffyBlog}=               get text           ${FooterPuffyBlogLocator}
    Run keyword if          '${FooterPuffyBlog}'!='${FooterPuffyBlogSpelling}'      Fail        Wrong Puffy Blog Spelling in Footer. Actual content: ${FooterPuffyBlog} expected: ${FooterPuffyBlogSpelling}
    ${FooterPuffyReview}=            get text        ${FooterPuffyReviewLocator}
    Run keyword if          '${FooterPuffyReview}'!='${FooterPuffyReviewSpelling}'      Fail        Wrong Puffy Review Spelling in Footer. Actual content: ${FooterPuffyReview} expected: ${FooterPuffyReviewSpelling}
    ${FooterPuffyLuxReview}=          get text      ${FooterPuffyLuxReviewLocator}
    Run keyword if          '${FooterPuffyLuxReview}'!='${FooterPuffyLuxReviewSpelling}'      Fail        Wrong Puffy Lux Review Spelling in Footer. Actual content: ${FooterPuffyLuxReview} expected: ${FooterPuffyLuxReviewSpelling}
    ${FooterPuffyRoyalReview}=               get text           ${FooterPuffyRoyalReviewLocator}
    Run keyword if          '${FooterPuffyRoyalReview}'!='${FooterPuffyRoyalReviewSpelling}'      Fail        Wrong Puffy Royal Review Spelling in Footer. Actual content: ${FooterPuffyRoyalReview} expected: ${FooterPuffyRoyalReviewSpelling}
    ${FooterPuffyMattressReview}=            get text        ${FooterPuffyMattressReviewLocator}
    Run keyword if          '${FooterPuffyMattressReview}'!='${FooterPuffyMattressReviewSpelling}'      Fail        Wrong Puffy Mattress Review Spelling in Footer. Actual content: ${FooterPuffyMattressReview} expected: ${FooterPuffyMattressReviewSpelling}

Check Puffy Section Redirection
    sleep                                   2s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(2) > div
    Click element                           ${Footer101NightSleepTrialLocator}
    Location Should Be                      ${Footer101NightSleepTrialURL}
    wait until page contains                101-Night Sleep Trial

    sleep                                   2s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(2) > div
    Click element                           ${FooterHowItsMadeLocator}
    Location Should Be                      ${FooterHowItsMadeURL}
    wait until page contains                Making the Perfect Mattress

    sleep                                   2s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(2) > div
    Click element                           ${FooterMattressLayersLocator}
    Location Should Be                      ${FooterMattressLayersURL}
    wait until page contains                Puffy Sleep System

    sleep                                   2s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(2) > div
    Click element                           ${FooterPerfectSleepLocator}
    Location Should Be                      ${FooterPerfectSleepURL}
    wait until page contains                Perfect Sleep

    sleep                                   2s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(2) > div
    Click element                           ${FooterCompareMattressLocator}
    Location Should Be                      ${FooterCompareMattressURL}
    wait until page contains                choose your

    sleep                                   2s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(2) > div
    Click element                           ${FooterCompareHybridsLocator}
    Location Should Be                      ${FooterCompareHybridsURL}
    wait until page contains                choose your

    sleep                                   2s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(2) > div
    Click element                           ${FooterPuffyDonationsLocator}
    Location Should Be                      ${FooterPuffyDonationsURL}
    wait until page contains                Every Child Deserves

    sleep                                   2s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(2) > div
    Click element                           ${FooterAffiliateProgramLocator}
    ${WindowHandles}=                       Get Window Handles
    Sleep                                   2s
    ${WindowIdentifier}=                    Get Window Identifiers
    Sleep                                   2s
    ${WindowNames}=                         Get Window Names
    Sleep                                   2s
    Switch Window                           ${WindowHandles}[1]
    Location Should Be                      ${FooterAffiliateProgramURL}
    wait until page contains                © 2020 ShareASale.com, Inc. -
    Close Window

    sleep                                   2s
    Switch Window                           ${WindowHandles}[0]
    Click element                           ${FooterReferAFriendLocator}
    Location Should Be                      ${FooterReferAFriendURL}
    sleep                                   5s
    wait until page contains                Refer a Friend

    sleep                                   2s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(2) > div
    Click element                           ${FooterMattressAwardsLocator}
    Location Should Be                      ${FooterMattressAwardsURL}
    wait until page contains                Award-Winning

    sleep                                   2s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(2) > div
    Click element                           ${FooterGiftShopLocator}
    Location Should Be                      ${FooterGiftShopURL}
    wait until page contains                Gift Ideas For

    sleep                                   2s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(2) > div
    Click element                           ${FooterPuffyStoreLocator}
    Location Should Be                      ${FooterPuffyStoreURL}
    wait until page contains                Puffy Store

    sleep                                   2s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(2) > div
    Click element                           ${FooterPuffyBlogLocator}
    Location Should Be                      ${FooterPuffyBlogURL}
    wait until page contains                In The Clouds

    sleep                                   2s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(2) > div
    Click element                           ${FooterPuffyReviewLocator}
    ${WindowHandles}=                       Get Window Handles
    Sleep                                   2s
    Switch Window                           ${WindowHandles}[1]
    Location Should Be                      ${FooterPuffyReviewURL}
    wait until page contains                Puffy
    Close Window

    sleep                                   2s
    Switch Window                           ${WindowHandles}[0]
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(2) > div
    Click element                           ${FooterPuffyLuxReviewLocator}
    ${WindowHandles}=                       Get Window Handles
    Sleep                                   2s
    Switch Window                           ${WindowHandles}[1]
    Location Should Be                      ${FooterPuffyLuxReviewURL}
    wait until page contains                Puffy Lux Mattress Review
    Close Window

    sleep                                   2s
    Switch Window                           ${WindowHandles}[0]
    Click element                           ${FooterPuffyRoyalReviewLocator}
    ${WindowHandles}=                       Get Window Handles
    Sleep                                   2s
    Switch Window                           ${WindowHandles}[1]
    Location Should Be                      ${FooterPuffyRoyalReviewURL}
    wait until page contains                Puffy Royal Mattress
    Close Window

    sleep                                   2s
    Switch Window                           ${WindowHandles}[0]
    Click element                           ${FooterPuffyMattressReviewLocator}
    ${WindowHandles}=                       Get Window Handles
    Sleep                                   2s
    Switch Window                           ${WindowHandles}[1]
    Location Should Be                      ${FooterPuffyMattressReviewURL}
    wait until page contains                Puffy Mattress Review
    Close Window
    Switch Window                           ${WindowHandles}[0]


Check Support Section Spelling
    Sleep                                   2s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(3) > div
    ${FooterReviews}=               get text           ${FooterReviewsLocator}
    Run keyword if          '${FooterReviews}'!='${FooterReviewsSpelling}'      Fail        Wrong Reviews Spelling in Footer. Actual content: ${FooterReviews} expected: ${FooterReviewsSpelling}
    ${FooterContactUs}=            get text        ${FooterContactUsLocator}
    Run keyword if          '${FooterContactUs}'!='${FooterContactUsSpelling}'      Fail        Wrong Contact Us Spelling in Footer. Actual content: ${FooterContactUs} expected: ${FooterContactUsSpelling}
    ${FooterFAQs}=          get text      ${FooterFAQsLocator}
    Run keyword if          '${FooterFAQs}'!='${FooterFAQsSpelling}'      Fail        Wrong FAQs Spelling in Footer. Actual content: ${FooterFAQs} expected: ${FooterFAQsSpelling}
    ${FooterFinancing}=               get text           ${FooterFinancingLocator}
    Run keyword if          '${FooterFinancing}'!='${FooterFinancingSpelling}'      Fail        Wrong Financing Spelling in Footer. Actual content: ${FooterFinancing} expected: ${FooterFinancingSpelling}
    ${FooterReturnPolicy}=            get text        ${FooterReturnPolicyLocator}
    Run keyword if          '${FooterReturnPolicy}'!='${FooterReturnPolicySpelling}'      Fail        Wrong Return Policy Spelling in Footer. Actual content: ${FooterReturnPolicy} expected: ${FooterReturnPolicySpelling}
    ${FooterPuffyGuarantee}=          get text      ${FooterPuffyGuaranteeLocator}
    Run keyword if          '${FooterPuffyGuarantee}'!='${FooterPuffyGuaranteeSpelling}'      Fail        Wrong Puffy Guarantee Spelling in Footer. Actual content: ${FooterPuffyGuarantee} expected: ${FooterPuffyGuaranteeSpelling}

Check Support Section Redirection
    sleep                                   2s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(3) > div
    Click element                           ${FooterReviewsLocator}
    Location Should Be                      ${FooterReviewsURL}
    wait until page contains                Puffy Mattress Reviews

    sleep                                   2s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(3) > div
    Click element                           ${FooterContactUsLocator}
    Location Should Be                      ${FooterContactUsURL}
    wait until page contains                Questions? Ask away, we love helping.

    sleep                                   2s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(3) > div
    Click element                           ${FooterFAQsLocator}
    Location Should Be                      ${FooterFAQsURL}
    wait until page contains                QUESTIONS? REVIEW OUR FAQ BY SELECTING THE RELEVANT CATEGORY. IF YOU STILL HAVE QUESTIONS, CONTACT US BY USING THE FORM BELOW.

    sleep                                   2s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(3) > div
    Click element                           ${FooterFinancingLocator}
    Location Should Be                      ${FooterFinancingURL}
    wait until page contains                Sleep on a cloud

    sleep                                   2s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(3) > div
    Click element                           ${FooterReturnPolicyLocator}
    Location Should Be                      ${FooterReturnPolicyURL}
    wait until page contains                Return Policy

    sleep                                   2s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(3) > div
    Click element                           ${FooterPuffyGuaranteeLocator}
    Location Should Be                      ${FooterPuffyGuaranteeURL}
    wait until page contains                REST EASY

Check Social Media Section Redirection
    sleep                                   2s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(4) > div > ul
    Click element                           ${FooterFacebookLocator}
    ${WindowHandles}=                       Get Window Handles
    Sleep                                   2s
    Switch Window                           ${WindowHandles}[1]
    Location Should Be                      ${FooterFacebookURL}
    Close Window

    sleep                                   2s
    Switch Window                           ${WindowHandles}[0]
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(4) > div > ul
    Click element                           ${FooterTwitterLocator}
    ${WindowHandles}=                       Get Window Handles
    Sleep                                   2s
    Switch Window                           ${WindowHandles}[1]
    Location Should Be                      ${FooterTwitterURL}
    Close Window

    sleep                                   2s
    Switch Window                           ${WindowHandles}[0]
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(4) > div > ul
    Click element                           ${FooterInstagramLocator}
    ${WindowHandles}=                       Get Window Handles
    Sleep                                   2s
    Switch Window                           ${WindowHandles}[1]
    Location Should Be                      ${FooterInstagramURL}
    Close Window

    sleep                                   2s
    Switch Window                           ${WindowHandles}[0]
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(4) > div > ul
    Click element                           ${FooterYoutubeLocator}
    ${WindowHandles}=                       Get Window Handles
    Sleep                                   2s
    Switch Window                           ${WindowHandles}[1]
    Location Should Be                      ${FooterYoutubeURL}
    Close Window

    sleep                                   2s
    Switch Window                           ${WindowHandles}[0]
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(4) > div > ul
    Click element                           ${footerlinkedinlocator}
    ${WindowHandles}=                       Get Window Handles
    Sleep                                   2s
    Switch Window                           ${WindowHandles}[1]
    Location Should Be                      ${FooterLinkedinURL}
    Close Window

    sleep                                   2s
    Switch Window                           ${WindowHandles}[0]
    Scroll Element Into View                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(4) > div > ul
    Click element                           ${FooterPinterestLocator}
    ${WindowHandles}=                       Get Window Handles
    Sleep                                   2s
    Switch Window                           ${WindowHandles}[1]
    Location Should Be                      ${FooterPinterestURL}
    Close Window
    Switch Window                           ${WindowHandles}[0]

Check Auxiliary Section Spelling
    Sleep                                   2s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.footer-bottom > div > div:nth-child(1) > div
    ${FooterPrivacy}=               get text           ${FooterPrivacyLocator}
    Run keyword if          '${FooterPrivacy}'!='${FooterPrivacySpelling}'      Fail        Wrong Privacy Spelling in Footer. Actual content: ${FooterPrivacy} expected: ${FooterPrivacySpelling}
    ${FooterTerms}=            get text        ${FooterTermsLocator}
    Run keyword if          '${FooterTerms}'!='${FooterTermsSpelling}'      Fail        Wrong Terms Spelling in Footer. Actual content: ${FooterTerms} expected: ${FooterTermsSpelling}
    ${FooterWarranty}=          get text      ${FooterWarrantyLocator}
    Run keyword if          '${FooterWarranty}'!='${FooterWarrantySpelling}'      Fail        Wrong Warranty Spelling in Footer. Actual content: ${FooterWarranty} expected: ${FooterWarrantySpelling}
    ${FooterCopyright}=          get text      ${FooterCopyrightLocator}
    Run keyword if          '${FooterCopyright}'!='${FooterCopyrightSpelling}'      Fail        Wrong Copyright details in Footer. Actual content: ${FooterCopyright} expected: ${FooterCopyrightSpelling}

Check Auxiliary Section Redirection
    sleep                                   2s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.footer-bottom > div > div:nth-child(1) > div
    Click element                           ${FooterPrivacyLocator}
    Location Should Be                      ${FooterPrivacyURL}
    wait until page contains                Puffy Privacy Policy

    sleep                                   2s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.footer-bottom > div > div:nth-child(1) > div
    Click element                           ${FooterTermsLocator}
    Location Should Be                      ${FooterTermsURL}
    wait until page contains                Terms and Conditions

    sleep                                   2s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.footer-bottom > div > div:nth-child(1) > div
    Click element                           ${FooterWarrantyLocator}
    Location Should Be                      ${FooterWarrantyURL}
    wait until page contains                Puffy Warranty Information

    sleep                                   2s
    Scroll Element Into View                css=#shopify-section-footer > footer > div.footer-bottom > div > div:nth-child(2)
    Click element                           ${FooterCopyrightLocator}
    Location Should Be                      ${FooterCopyrightURL}
    wait until page contains                Puffy Mattress

Click sign up without email address
    Scroll Element Into View                ${FooterSignUpLocator}
    Click Element                           ${FooterSignUpLocator}
    Page Should Contain                     This field is required

Click Sign up without email domain
    Input Text                              ${SignUpTextField}     ${SignUpNoDomain}
    Click Element                           ${FooterSignUpLocator}
    Page Should Contain                     Please enter a valid email address

Click Sign up with valid email address
    Input Text                              ${SignUpTextField}     ${SignUpValidEmail}
    Click Element                           ${FooterSignUpLocator}
    Sleep                                   5s
    Page Should Contain                     You've signed up successfully.

Switch to Version A
    Click element   ${ToggleA}
Switch to Version B
    Click element   ${ToggleB}
