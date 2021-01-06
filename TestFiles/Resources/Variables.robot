*** Settings ***
Library             Selenium2Library
#Library             SeleniumLibrary
Library             ScreenCapLibrary
Library             Collections
Library             String
Suite Teardown      close browser

*** Variables ***
${Homepage}                     https://puffy.com/?preview_theme_id=84014858274
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
