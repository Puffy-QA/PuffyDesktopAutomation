*** Settings ***
Documentation       Regression for Mega Menu
Library             Selenium2Library
#Library             SeleniumLibrary
Library             ScreenCapLibrary
Library             Collections
Library             String
Suite Teardown      close browser


*** Variables ***
${Homepage}                     https://puffy.com/?preview_theme_id=84017709090
${systembrowser}                Chrome
${FOOTER}                       NEW YEAR'S SALE NOW $300 OFF + FREE PILLOW
${ToggleA}                      css=#showVersionA
${ToggleB}                      css=#showVersionB
${PuffyMattressSpelling}                            Puffy Mattress
${PuffyLuxMattressSpelling}                         Puffy Lux Mattress
${PuffyRoyalMattressSpelling}                       Puffy Royal Mattress
${PuffyFoundationSpelling}                          Foundation
${PuffyAdjustableBaseSpelling}                      Adjustable Base
${PuffyBedFrameSpelling}                            Bed Frame
${PuffyComforterSpelling}                           Comforter
${PuffyPillowSpelling}                              Pillow
${PuffyBodyPillowSpelling}                          Body Pillow
${PuffyMattressPadSpelling}                         Mattress Pad
${PuffyMattressProtectorSpelling}                   Mattress Protector
${PuffyMattressTopperSpelling}                      Mattress Topper
${PuffyBlanketSpelling}                             Blanket
${PuffyWeightedBlanketSpelling}                     Weighted Blanket
${PuffySheetsSpelling}                              Sheets
${PuffyDogBedSpelling}                              Dog Bed
${PuffyRugSpelling}                                 Rug
${MenuCustomerReviewsSpelling}                      Customer Reviews
${MenuVideoReviewsSpelling}                         Video Reviews
${MenuAwardsSpelling}                               Awards
${MenuContactUsSpelling}                            Contact Us
${MenuFAQsSpelling}                                 FAQs
${MenuFinancingSpelling}                            Financing
${STOREHeaderSpelling}                              STORE
${PuffyMattressTextLocator}                         css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-1 > div > div.dropdown_content > div:nth-child(1) > div.mega-menu__image-caption-link > a > div.menunew > p
${PuffyLuxMattressTextLocator}                      css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-1 > div > div.dropdown_content > div:nth-child(2) > div.mega-menu__image-caption-link > a > div.menunew > p
${PuffyRoyalMattressTextLocator}                    css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-1 > div > div.dropdown_content > div:nth-child(3) > div.mega-menu__image-caption-link > a > div.menunew > p
${PuffyFoundationTextLocator}                       css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-2 > div > div > div:nth-child(1) > div.mega-menu__image-caption-link > a > div.menunew > p
${PuffyAdjustableBaseTextLocator}                   css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-2 > div > div > div:nth-child(2) > div.mega-menu__image-caption-link > a > div.menunew > p
${PuffyBedFrameTextLocator}                         css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-2 > div > div > div:nth-child(3) > div.mega-menu__image-caption-link > a > div.menunew > p
${PuffyComforterTextLocator}                        css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-3.boxes--9 > div > div > div:nth-child(1) > div.mega-menu__image-caption-link > a > div.menunew > p
${PuffyPillowTextLocator}                           css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-3.boxes--9 > div > div > div:nth-child(2) > div.mega-menu__image-caption-link > a > div.menunew > p
${PuffyBodyPillowTextLocator}                       css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-3.boxes--9 > div > div > div:nth-child(3) > div.mega-menu__image-caption-link > a > div.menunew > p
${PuffyMattressPadTextLocator}                      css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-3.boxes--9 > div > div > div:nth-child(4) > div.mega-menu__image-caption-link > a > div.menunew > p
${PuffyMattressProtectorTextLocator}                css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-3.boxes--9 > div > div > div:nth-child(5) > div.mega-menu__image-caption-link > a > div.menunew > p
${PuffyMattressTopperTextLocator}                   css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-3.boxes--9 > div > div > div:nth-child(6) > div.mega-menu__image-caption-link > a > div.menunew > p
${PuffyBlanketTextLocator}                          css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-3.boxes--9 > div > div > div:nth-child(7) > div.mega-menu__image-caption-link > a > div.menunew > p
${PuffyWeightedBlanketTextLocator}                  css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-3.boxes--9 > div > div > div:nth-child(8) > div.mega-menu__image-caption-link > a > div.menunew > p
${PuffySheetsTextLocator}                           css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-3.boxes--9 > div > div > div:nth-child(9) > div.mega-menu__image-caption-link > a > div.menunew > p
${PuffyDogBedTextLocator}                           css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-4 > div > div > div:nth-child(1) > div.mega-menu__image-caption-link > a > div.menunew > p
${PuffyRugTextLocator}                              css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-4 > div > div > div:nth-child(2) > div.mega-menu__image-caption-link > a > div.menunew > p
${Mattresses}                                       css=body > div.shopify-section.header-section > div > header.main_header > div > div > div > div.nav > ul > li:nth-child(1) > a
${PuffyMattressImageLocator}                        css=body > div.shopify-section.header-section > div > header.main_header > div > div > div > div.dropdown_container.mega-menu.mega-menu-1 > div > div.dropdown_content > div:nth-child(1) > div.mega-menu__image-caption-link > a > div.image-element__wrap > img
${PuffyLuxMattressImageLocator}                     css=body > div.shopify-section.header-section > div > header.main_header > div > div > div > div.dropdown_container.mega-menu.mega-menu-1 > div > div.dropdown_content > div:nth-child(2) > div.mega-menu__image-caption-link > a > div.image-element__wrap > img
${PuffyRoyalMattressImageLocator}                   css=body > div.shopify-section.header-section > div > header.main_header > div > div > div > div.dropdown_container.mega-menu.mega-menu-1 > div > div.dropdown_content > div:nth-child(3) > div.mega-menu__image-caption-link > a > div.image-element__wrap > img
${COMPARE}                                          css=body > div.shopify-section.header-section > div > header.main_header > div > div > div > div.dropdown_container.mega-menu.mega-menu-1 > div > div.dropdown-compare > a
${Bases}                                            css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.nav > ul > li:nth-child(2) > a
${PuffyFoundationImageLocator}                      css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-2 > div > div > div:nth-child(1) > div.mega-menu__image-caption-link > a > div.image-element__wrap > img
${PuffyAdjustableBaseImageLocator}                  css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-2 > div > div > div:nth-child(2) > div.mega-menu__image-caption-link > a > div.image-element__wrap > img
${PuffyBedFrameImageLocator}                        css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-2 > div > div > div:nth-child(3) > div.mega-menu__image-caption-link > a > div.image-element__wrap > img
${Bedding}                                          css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.nav > ul > li:nth-child(3) > a
${PuffyComforterImageLocator}                       css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-3.boxes--9 > div > div > div:nth-child(1) > div.mega-menu__image-caption-link > a > div.image-element__wrap > img
${PuffyPillowImageLocator}                          css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-3.boxes--9 > div > div > div:nth-child(2) > div.mega-menu__image-caption-link > a > div.image-element__wrap > img
${PuffyBodyPillowImageLocator}                      css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-3.boxes--9 > div > div > div:nth-child(3) > div.mega-menu__image-caption-link > a > div.image-element__wrap > img
${PuffyMattressPadImageLocator}                     css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-3.boxes--9 > div > div > div:nth-child(4) > div.mega-menu__image-caption-link > a > div.image-element__wrap > img
${PuffyMattressProtectorImageLocator}               css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-3.boxes--9 > div > div > div:nth-child(5) > div.mega-menu__image-caption-link > a > div.image-element__wrap > img
${PuffyMattressTopperImageLocator}                  css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-3.boxes--9 > div > div > div:nth-child(6) > div.mega-menu__image-caption-link > a > div.image-element__wrap > img
${PuffyBlanketImageLocator}                         css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-3.boxes--9 > div > div > div:nth-child(7) > div.mega-menu__image-caption-link > a > div.image-element__wrap > img
${PuffyWeightedBlanketImageLocator}                 css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-3.boxes--9 > div > div > div:nth-child(8) > div.mega-menu__image-caption-link > a > div.image-element__wrap > img
${PuffySheetsImageLocator}                          css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-3.boxes--9 > div > div > div:nth-child(9) > div.mega-menu__image-caption-link > a > div.image-element__wrap > img
${Bedroom}                                          css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.nav > ul > li:nth-child(4) > a
${Reviews}                                          css=body > div.shopify-section.header-section > div > header.main_header > div > div > div > div.nav > ul > li:nth-child(5) > a
${Support}                                          css=body > div.shopify-section.header-section > div > header.main_header > div > div > div > div.nav > ul > li:nth-child(6) > a
${MenuDropDown}                                     css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-1 > div > div.dropdown_content
${PuffyNightstandImageLocator}
${PuffyDogBedImageLocator}                          css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-4 > div > div > div:nth-child(1) > div.mega-menu__image-caption-link > a > div.image-element__wrap > img
${PuffyRugImageLocator}                             css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-4 > div > div > div:nth-child(2) > div.mega-menu__image-caption-link > a > div.image-element__wrap > img
${MenuCustomerReviews}                              css=body > div.shopify-section.header-section > div > header.main_header > div > div > div > div.nav > ul > li:nth-child(5) > div > div > div > ul > li:nth-child(1) > a
${MenuVideoReviews}                                 css=body > div.shopify-section.header-section > div > header.main_header > div > div > div > div.nav > ul > li:nth-child(5) > div > div > div > ul > li:nth-child(2) > a
${MenuAwards}                                       css=body > div.shopify-section.header-section > div > header.main_header > div > div > div > div.nav > ul > li:nth-child(5) > div > div > div > ul > li:nth-child(3) > a
${MenuContactUs}                                    css=body > div.shopify-section.header-section > div > header.main_header > div > div > div > div.nav > ul > li:nth-child(6) > div > div > div > ul > li:nth-child(1) > a
${MenuFAQs}                                         css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.nav > ul > li:nth-child(6) > div > div > div > ul > li:nth-child(2) > a
${MenuFinancing}                                    css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.nav > ul > li:nth-child(6) > div > div > div > ul > li:nth-child(3) > a
${STORE}                                            css=.store-button--desktop
${HeaderPuffyLogo}                                  css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.logo > a
${PuffyMattressPDPURL}                              https://puffy.com/products/puffy-mattress
${PuffyLuxMattressPDPURL}                           https://puffy.com/products/puffy-lux-mattress
${PuffyRoyalMattressPDPURL}                         https://puffy.com/products/puffy-royal-mattress
${PuffyFoundationPDPURL}                            https://puffy.com/products/puffy-foundation
${PuffyAdjustableBasePDPURL}                        https://puffy.com/products/puffy-adjustable-base
${PuffyBedFramePDPURL}                              https://puffy.com/products/puffy-bed-frame
${PuffyComforterPDPURL}                             https://puffy.com/products/puffy-comforter
${PuffyPillowPDPURL}                                https://puffy.com/products/puffy-pillow
${PuffyBodyPillowPDPURL}                            https://puffy.com/products/puffy-body-pillow
${PuffyMattressPadPDPURL}                           https://puffy.com/products/puffy-mattress-pad
${PuffyMattressProtectorPDPURL}                     https://puffy.com/products/puffy-mattress-protector
${PuffyMattressTopperPDPURL}                        https://puffy.com/products/puffy-topper
${PuffyBlanketPDPURL}                               https://puffy.com/products/puffy-blanket
${PuffyWeightedBlanketPDPURL}                       https://puffy.com/products/puffy-weighted-blanket
${PuffySheetsPDPURL}                                https://puffy.com/products/puffy-sheets
${PuffyDogBedPDPURL}                                https://puffy.com/products/puffy-dog-bed
${PuffyRugPDPURL}                                   https://puffy.com/products/puffy-area-rug
${MenuCustomerReviewsURL}                           https://puffy.com/pages/puffy-mattress-reviews
${MenuVideoReviewsURL}                              https://puffy.com/pages/puffy-mattress-video-reviews
${MenuAwardsURL}                                    https://puffy.com/pages/top-rated-best-mattress-awards
${MenuContactUsURL}                                 https://puffy.com/pages/contact-puffy-mattress#contact_us
${MenuFAQsURL}                                      https://puffy.com/pages/contact-puffy-mattress
${MenuFinancingURL}                                 https://puffy.com/pages/financing
${HeaderStorePageURL}                               https://puffy.com/collections/puffy-store
${HeaderPuffyIconURL}                               https://puffy.com/

*** Test Cases ***
Start Record Video
    Start Record Video
Popup Sale
    Open Login screen
    Wait and dismiss popup
Switch version
    Switch to Version A
    sleep               2s
Timer Bar
    Seasonal Sale timer text check

Mega Menu Spelling checks
    MATTRESSES menu spelling checks
    BASES menu spelling checks
    BEDDING menu spelling checks
    BEDROOM menu spelling checks
    #REVIEWS menu spelling checks
    #SUPPORT menu spelling checks
    STORE button spelling check

Page Redirection checks using images
    MATTRESSES Submenu redirection checks
    BASES Submenu redirection checks
    BEDDING Submenu redirection checks
    BEDROOM Submenu redirection checks
    REVIEWS Submenu redirection checks
    SUPPORT Submenu redirection checks
    STORE button redirection checks
    Puffy Logo redirection checks
    sleep                               5s

Page Redirection checks using text names
    MATTRESSES Submenu redirection checks using name text
    BASES Submenu redirection checks using name text
    BEDDING Submenu redirection checks using name text
    BEDROOM Submenu redirection checks using name text
    sleep                               5s

Main Menus click checks
    Main Menu click checks

Stop All Video Recordings
    Stop All Video Recordings

*** Keywords ***
Start Record Video
    Start Video Recording       alias=Regression name=MegaMenu


Open Login screen
    Open Browser            ${Homepage}  ${systembrowser}
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

MATTRESSES menu spelling checks
    Mouse Over          ${Mattresses}
    ${PuffyMattress}=               get text           ${PuffyMattressTextLocator}
    Run keyword if          '${PuffyMattress}'!='${PuffyMattressSpelling}'      Fail        Wrong Puffy Mattress Spelling in Mattresses Menu. Actual content: ${PuffyMattress} expected: ${PuffyMattressSpelling}
    ${PuffyLuxMattress}=            get text        ${PuffyLuxMattressTextLocator}
    Run keyword if          '${PuffyLuxMattress}'!='${PuffyLuxMattressSpelling}'      Fail        Wrong Puffy Lux Mattress Spelling in Mattresses Menu. Actual content: ${PuffyLuxMattress} expected: ${PuffyLuxMattressSpelling}
    ${PuffyRoyalMattress}=          get text      ${PuffyRoyalMattressTextLocator}
    Run keyword if          '${PuffyRoyalMattress}'!='${PuffyRoyalMattressSpelling}'      Fail        Wrong Puffy Royal Mattress Spelling in Mattresses Menu. Actual content: ${PuffyRoyalMattress} expected: ${PuffyRoyalMattressSpelling}

BASES menu spelling checks
    Mouse Over          ${Bases}
    ${PuffyFoundation}=               get text           ${PuffyFoundationTextLocator}
    Run keyword if          '${PuffyFoundation}'!='${PuffyFoundationSpelling}'      Fail        Wrong Puffy Foundation Spelling in Bases Menu. Actual content: ${PuffyFoundation} expected: ${PuffyFoundationSpelling}
    ${PuffyAdjustableBase}=            get text        ${PuffyAdjustableBaseTextLocator}
    Run keyword if          '${PuffyAdjustableBase}'!='${PuffyAdjustableBaseSpelling}'      Fail        Wrong Puffy Adjustable Base Spelling in Bases Menu. Actual content: ${PuffyAdjustableBase} expected: ${PuffyAdjustableBaseSpelling}
    ${PuffyBedFrame}=          get text      ${PuffyBedFrameTextLocator}
    Run keyword if          '${PuffyBedFrame}'!='${PuffyBedFrameSpelling}'      Fail        Wrong Puffy Bed Frame Spelling in Bases Menu. Actual content: ${PuffyBedFrame} expected: ${PuffyBedFrameSpelling}

BEDDING menu spelling checks
    Mouse Over          ${Bedding}
    ${PuffyComforter}=               get text           ${PuffyComforterTextLocator}
    Run keyword if          '${PuffyComforter}'!='${PuffyComforterSpelling}'      Fail        Wrong Puffy Comforter Spelling in Bedding Menu. Actual content: ${PuffyComforter} expected: ${PuffyComforterSpelling}
    ${PuffyPillow}=            get text        ${PuffyPillowTextLocator}
    Run keyword if          '${PuffyPillow}'!='${PuffyPillowSpelling}'      Fail        Wrong Puffy Pillow Spelling in Bedding Menu. Actual content: ${PuffyPillow} expected: ${PuffyPillowSpelling}
    ${PuffyBodyPillow}=          get text      ${PuffyBodyPillowTextLocator}
    Run keyword if          '${PuffyBodyPillow}'!='${PuffyBodyPillowSpelling}'      Fail        Wrong Puffy Body Pillow Spelling in Bedding Menu. Actual content: ${PuffyBodyPillow} expected: ${PuffyBodyPillowSpelling}
    ${PuffyMattressPad}=               get text           ${PuffyMattressPadTextLocator}
    Run keyword if          '${PuffyMattressPad}'!='${PuffyMattressPadSpelling}'      Fail        Wrong Puffy Mattress Pad Spelling in Bedding Menu. Actual content: ${PuffyMattressPad} expected: ${PuffyMattressPadSpelling}
    ${PuffyMattressProtector}=            get text        ${PuffyMattressProtectorTextLocator}
    Run keyword if          '${PuffyMattressProtector}'!='${PuffyMattressProtectorSpelling}'      Fail        Wrong Puffy Mattress Protector Spelling in Bedding Menu. Actual content: ${PuffyMattressProtector} expected: ${PuffyMattressProtectorSpelling}
    ${PuffyMattressTopper}=          get text      ${PuffyMattressTopperTextLocator}
    Run keyword if          '${PuffyMattressTopper}'!='${PuffyMattressTopperSpelling}'      Fail        Wrong Puffy Mattress Topper Spelling in Bedding Menu. Actual content: ${PuffyMattressTopper} expected: ${PuffyMattressTopperSpelling}
    ${PuffyBlanket}=               get text           ${PuffyBlanketTextLocator}
    Run keyword if          '${PuffyBlanket}'!='${PuffyBlanketSpelling}'      Fail        Wrong Puffy Blanket Spelling in Bedding Menu. Actual content: ${PuffyBlanket} expected: ${PuffyBlanketSpelling}
    ${PuffyWeightedBlanket}=            get text        ${PuffyWeightedBlanketTextLocator}
    Run keyword if          '${PuffyWeightedBlanket}'!='${PuffyWeightedBlanketSpelling}'      Fail        Wrong Puffy Weighted Blanket Spelling in Bedding Menu. Actual content: ${PuffyWeightedBlanket} expected: ${PuffyWeightedBlanketSpelling}
    ${PuffySheets}=          get text      ${PuffySheetsTextLocator}
    Run keyword if          '${PuffySheets}'!='${PuffySheetsSpelling}'      Fail        Wrong Puffy Sheets Spelling in Bedding Menu. Actual content: ${PuffySheets} expected: ${PuffySheetsSpelling}

BEDROOM menu spelling checks
    Mouse Over          ${Bedroom}
    ${PuffyDogBed}=               get text           ${PuffyDogBedTextLocator}
    Run keyword if          '${PuffyDogBed}'!='${PuffyDogBedSpelling}'      Fail        Wrong Puffy Dog Bed Spelling in Bedroom Menu. Actual content: ${PuffyDogBed} expected: ${PuffyDogBedSpelling}
    ${PuffyRug}=            get text        ${PuffyRugTextLocator}
    Run keyword if          '${PuffyRug}'!='${PuffyRugSpelling}'      Fail        Wrong Puffy Rug Spelling in Bedroom Menu. Actual content: ${PuffyRug} expected: ${PuffyRugSpelling}

STORE button spelling check
    ${STOREHeader}=               get text           ${STORE}
    Run keyword if          '${STOREHeader}'!='${STOREHeaderSpelling}'      Fail        Wrong STORE Spelling in Header. Actual content: ${STOREHeader} expected: ${STOREHeaderSpelling}


MATTRESSES Submenu redirection checks
    Mouse Over          ${Mattresses}
    Click element       ${PuffyMattressImageLocator}
    Location Should Be  ${PuffyMattressPDPURL}
    wait until page contains        ${PuffyMattressSpelling}

    sleep               1s
    Mouse Over          ${Mattresses}
    Click element       ${PuffyLuxMattressImageLocator}
    Location Should Be  ${PuffyLuxMattressPDPURL}
    wait until page contains        ${PuffyLuxMattressSpelling}

    sleep               1s
    Mouse Over          ${Mattresses}
    Click element       ${PuffyRoyalMattressImageLocator}
    Location Should Be  ${PuffyRoyalMattressPDPURL}
    wait until page contains        ${PuffyRoyalMattressSpelling}

BASES Submenu redirection checks
    sleep               1s
    Mouse Over          ${BASES}
    Click element       ${PuffyFoundationImageLocator}
    Location Should Be  ${PuffyFoundationPDPURL}
    wait until page contains        ${PuffyFoundationSpelling}

    sleep               1s
    Mouse Over          ${Bases}
    Click element       ${PuffyAdjustableBaseImageLocator}
    Location Should Be  ${PuffyAdjustableBasePDPURL}
    wait until page contains        ${PuffyAdjustableBaseSpelling}

    sleep               1s
    Mouse Over          ${Bases}
    Click element       ${PuffyBedFrameImageLocator}
    Location Should Be  ${PuffyBedFramePDPURL}
    wait until page contains        ${PuffyBedFrameSpelling}

BEDDING Submenu redirection checks
    sleep               1s
    Mouse Over          ${BEDDING}
    Click element       ${PuffyComforterImageLocator}
    Location Should Be  ${PuffyComforterPDPURL}
    wait until page contains        ${PuffyComforterSpelling}

    sleep               1s
    Mouse Over          ${Bedding}
    Click element       ${PuffyPillowImageLocator}
    Location Should Be  ${PuffyPillowPDPURL}
    wait until page contains        ${PuffyPillowSpelling}

    sleep               1s
    Mouse Over          ${Bedding}
    Click element       ${PuffyBodyPillowImageLocator}
    Location Should Be  ${PuffyBodyPillowPDPURL}
    wait until page contains        ${PuffyBodyPillowSpelling}

    sleep               1s
    Mouse Over          ${Bedding}
    Click element       ${PuffyMattressPadImageLocator}
    Location Should Be  ${PuffyMattressPadPDPURL}
    wait until page contains        ${PuffyMattressPadSpelling}

    sleep               1s
    Mouse Over          ${BEDDING}
    Click element       ${PuffyMattressProtectorImageLocator}
    Location Should Be  ${PuffyMattressProtectorPDPURL}
    wait until page contains        ${PuffyMattressProtectorSpelling}

    sleep               1s
    Mouse Over          ${Bedding}
    Click element       ${PuffyMattressTopperImageLocator}
    Location Should Be  ${PuffyMattressTopperPDPURL}
    wait until page contains        ${PuffyMattressTopperSpelling}

    sleep               1s
    Mouse Over          ${Bedding}
    Click element       ${PuffyBlanketImageLocator}
    Location Should Be  ${PuffyBlanketPDPURL}
    wait until page contains        ${PuffyBlanketSpelling}

    sleep               1s
    Mouse Over          ${Bedding}
    Click element       ${PuffyWeightedBlanketImageLocator}
    Location Should Be  ${PuffyWeightedBlanketPDPURL}
    wait until page contains        ${PuffyWeightedBlanketSpelling}

    sleep               1s
    Mouse Over          ${Bedding}
    Click element       ${PuffySheetsImageLocator}
    Location Should Be  ${PuffySheetsPDPURL}
    wait until page contains        ${PuffySheetsSpelling}

BEDROOM Submenu redirection checks
    sleep               1s
    Mouse Over          ${Bedroom}
    Click element       ${PuffyDogBedImageLocator}
    Location Should Be  ${PuffyDogBedPDPURL}
    wait until page contains        ${PuffyDogBedSpelling}

    sleep               1s
    Mouse Over          ${Bedroom}
    Click element       ${PuffyRugImageLocator}
    Location Should Be  ${PuffyRugPDPURL}
    wait until page contains        ${PuffyRugSpelling}

REVIEWS Submenu redirection checks
    sleep               1s
    Mouse Over          ${Reviews}
    Click element       ${MenuCustomerReviews}
    Location Should Be  ${MenuCustomerReviewsURL}
    wait until page contains        Puffy Mattress Reviews

    sleep               1s
    Mouse Over          ${Reviews}
    Click element       ${MenuVideoReviews}
    Location Should Be  ${MenuVideoReviewsURL}
    wait until page contains        Puffy Mattress Review Videos

    sleep               1s
    Mouse Over          ${Reviews}
    Click element       ${MenuAwards}
    Location Should Be  ${MenuAwardsURL}
    wait until page contains         Award-Winning

SUPPORT Submenu redirection checks
    sleep               1s
    Mouse Over          ${Support}
    Click element       ${MenuContactUs}
    Location Should Be  ${MenuContactUsURL}
    wait until page contains        Contact Puffy Customer Support

    sleep               1s
    Mouse Over          ${Support}
    Click element       ${MenuFAQs}
    Location Should Be  ${MenuFAQsURL}
    wait until page contains        QUESTIONS? REVIEW OUR FAQ BY SELECTING THE RELEVANT CATEGORY. IF YOU STILL HAVE QUESTIONS, CONTACT US BY USING THE FORM BELOW.

    sleep               1s
    Mouse Over          ${Support}
    Click element       ${MenuFinancing}
    Location Should Be  ${MenuFinancingURL}
    wait until page contains         Sleep on a cloud

STORE button redirection checks
    sleep               1s
    click element       ${STORE}
    Location should be  ${HeaderStorePageURL}
    wait until page contains        Puffy Store

Puffy Logo redirection checks
    wait until page contains element               ${HeaderPuffyLogo}
    click element       ${HeaderPuffyLogo}
    Location should be  ${HeaderPuffyIconURL}
    wait until page contains    Comfortable Mattress


MATTRESSES Submenu redirection checks using name text
    Mouse Over          ${Mattresses}
    Click element       ${PuffyMattressTextLocator}
    Location Should Be  ${PuffyMattressPDPURL}
    wait until page contains        ${PuffyMattressSpelling}

    sleep               1s
    Mouse Over          ${Mattresses}
    Click element       ${PuffyLuxMattressTextLocator}
    Location Should Be  ${PuffyLuxMattressPDPURL}
    wait until page contains        ${PuffyLuxMattressSpelling}

    sleep               1s
    Mouse Over          ${Mattresses}
    Click element       ${PuffyRoyalMattressTextLocator}
    Location Should Be  ${PuffyRoyalMattressPDPURL}
    wait until page contains        ${PuffyRoyalMattressSpelling}

BASES Submenu redirection checks using name text
    sleep               1s
    Mouse Over          ${BASES}
    Click element       ${PuffyFoundationTextLocator}
    Location Should Be  ${PuffyFoundationPDPURL}
    wait until page contains        ${PuffyFoundationSpelling}

    sleep               1s
    Mouse Over          ${Bases}
    Click element       ${PuffyAdjustableBaseTextLocator}
    Location Should Be  ${PuffyAdjustableBasePDPURL}
    wait until page contains        ${PuffyAdjustableBaseSpelling}

    sleep               1s
    Mouse Over          ${Bases}
    Click element       ${PuffyBedFrameTextLocator}
    Location Should Be  ${PuffyBedFramePDPURL}
    wait until page contains        ${PuffyBedFrameSpelling}

BEDDING Submenu redirection checks using name text
    sleep               1s
    Mouse Over          ${BEDDING}
    Click element       ${PuffyComforterTextLocator}
    Location Should Be  ${PuffyComforterPDPURL}
    wait until page contains        ${PuffyComforterSpelling}

    sleep               1s
    Mouse Over          ${Bedding}
    Click element       ${PuffyPillowTextLocator}
    Location Should Be  ${PuffyPillowPDPURL}
    wait until page contains        ${PuffyPillowSpelling}

    sleep               1s
    Mouse Over          ${Bedding}
    Click element       ${PuffyBodyPillowTextLocator}
    Location Should Be  ${PuffyBodyPillowPDPURL}
    wait until page contains        ${PuffyBodyPillowSpelling}

    sleep               1s
    Mouse Over          ${Bedding}
    Click element       ${PuffyMattressPadTextLocator}
    Location Should Be  ${PuffyMattressPadPDPURL}
    wait until page contains        ${PuffyMattressPadSpelling}

    sleep               1s
    Mouse Over          ${BEDDING}
    Click element       ${PuffyMattressProtectorTextLocator}
    Location Should Be  ${PuffyMattressProtectorPDPURL}
    wait until page contains        ${PuffyMattressProtectorSpelling}

    sleep               1s
    Mouse Over          ${Bedding}
    Click element       ${PuffyMattressTopperTextLocator}
    Location Should Be  ${PuffyMattressTopperPDPURL}
    wait until page contains        ${PuffyMattressTopperSpelling}

    sleep               1s
    Mouse Over          ${Bedding}
    Click element       ${PuffyBlanketTextLocator}
    Location Should Be  ${PuffyBlanketPDPURL}
    wait until page contains        ${PuffyBlanketSpelling}

    sleep               1s
    Mouse Over          ${Bedding}
    Click element       ${PuffyWeightedBlanketTextLocator}
    Location Should Be  ${PuffyWeightedBlanketPDPURL}
    wait until page contains        ${PuffyWeightedBlanketSpelling}

    sleep               1s
    Mouse Over          ${Bedding}
    Click element       ${PuffySheetsTextLocator}
    Location Should Be  ${PuffySheetsPDPURL}
    wait until page contains        ${PuffySheetsSpelling}

BEDROOM Submenu redirection checks using name text
    sleep               1s
    Mouse Over          ${Bedroom}
    Click element       ${PuffyDogBedTextLocator}
    Location Should Be  ${PuffyDogBedPDPURL}
    wait until page contains        ${PuffyDogBedSpelling}

    sleep               1s
    Mouse Over          ${Bedroom}
    Click element       ${PuffyRugTextLocator}
    Location Should Be  ${PuffyRugPDPURL}
    wait until page contains        ${PuffyRugSpelling}

Main Menu click checks
    Sleep               1s
    Mouse Over          ${Mattresses}
    Click Element       ${Mattresses}
    Page Should Not Contain            ${PuffyMattressTextLocator}

    Sleep               1s
    Mouse Over          ${Bases}
    Click Element       ${Bases}
    Page Should Not Contain     ${PuffyFoundationTextLocator}

    Sleep               1s
    Mouse Over          ${Bedding}
    Click Element       ${Bedding}
    Page Should Not Contain     ${PuffyComforterTextLocator}

    Sleep               1s
    Mouse Over          ${Bedroom}
    Click Element       ${Bedroom}
    Page Should Not Contain     ${PuffyRugTextLocator}

    Sleep               1s
    Mouse Over          ${Reviews}
    Click Element       ${Reviews}
    Page Should Not Contain     ${MenuAwards}

    Sleep               1s
    Mouse Over          ${Support}
    Click Element       ${Support}
    Page Should Not Contain     ${MenuFAQs}

Switch to Version A
    Click element   ${ToggleA}
Switch to Version B
    Click element   ${ToggleB}