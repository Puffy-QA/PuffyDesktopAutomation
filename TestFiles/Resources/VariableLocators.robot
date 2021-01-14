*** Settings ***
Documentation    Suite description
Library             Selenium2Library
#Library             SeleniumLibrary
Library             ScreenCapLibrary
Library             Collections
Library             String
*** Variables ***
${LOCMATTRESSES}                    css=body > div.shopify-section.header-section > div > header.main_header > div > div > div > div.nav > ul > li:nth-child(1) > a
${LOCPUFFYMATTRESS}                 css=body > div.shopify-section.header-section > div > header.main_header > div > div > div > div.dropdown_container.mega-menu.mega-menu-1 > div > div.dropdown_content > div:nth-child(1) > div.mega-menu__image-caption-link > a > div.image-element__wrap > img
${LOCPUFFYLUXMATTRESS}              css=body > div.shopify-section.header-section > div > header.main_header > div > div > div > div.dropdown_container.mega-menu.mega-menu-1 > div > div.dropdown_content > div:nth-child(2) > div.mega-menu__image-caption-link > a > div.image-element__wrap > img
${LOCPUFFYROYALMATTRESS}            css=body > div.shopify-section.header-section > div > header.main_header > div > div > div > div.dropdown_container.mega-menu.mega-menu-1 > div > div.dropdown_content > div:nth-child(3) > div.mega-menu__image-caption-link > a > div.image-element__wrap > img
${LOCCOMPARE}                       css=body > div.shopify-section.header-section > div > header.main_header > div > div > div > div.dropdown_container.mega-menu.mega-menu-1 > div > div.dropdown-compare > a
${LOCPUFFYREASON1IMAGE}             //*[@id="productReasons"]/div[2]/div[1]/div/div/div/div/div[2]/div/img
${LOCBASES}                         css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.nav > ul > li:nth-child(2) > a
${LOCFOUNDATION}                    css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-2 > div > div > div:nth-child(1) > div.mega-menu__image-caption-link > a > div.image-element__wrap > img
${LOCADJUSTABLEBASE}                css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-2 > div > div > div:nth-child(2) > div.mega-menu__image-caption-link > a > div.image-element__wrap > img
${LOCBEDFRAME}                      css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-2 > div > div > div:nth-child(3) > div.mega-menu__image-caption-link > a > div.image-element__wrap > img
${LOCBEDDING}                       css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.nav > ul > li:nth-child(3) > a
${LOCCOMFORTER}                     css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-3.boxes--9 > div > div > div:nth-child(1) > div.mega-menu__image-caption-link > a > div.image-element__wrap > img
${LOCPILLOW}                        css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-3.boxes--9 > div > div > div:nth-child(2) > div.mega-menu__image-caption-link > a > div.image-element__wrap > img
${LOCBODYPILLOW}                    css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-3.boxes--9 > div > div > div:nth-child(3) > div.mega-menu__image-caption-link > a > div.image-element__wrap > img
${LOCMATTRESSPAD}                   css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-3.boxes--9 > div > div > div:nth-child(4) > div.mega-menu__image-caption-link > a > div.image-element__wrap > img
${LOCMATTRESSPROTECTOR}             css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-3.boxes--9 > div > div > div:nth-child(5) > div.mega-menu__image-caption-link > a > div.image-element__wrap > img
${LOCTOPPER}                        css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-3.boxes--9 > div > div > div:nth-child(6) > div.mega-menu__image-caption-link > a > div.image-element__wrap > img
${LOCBLANKET}                       css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-3.boxes--9 > div > div > div:nth-child(7) > div.mega-menu__image-caption-link > a > div.image-element__wrap > img
${LOCWEIGHTEDBLANKET}               css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-3.boxes--9 > div > div > div:nth-child(8) > div.mega-menu__image-caption-link > a > div.image-element__wrap > img
${LOCSHEETS}                        css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-3.boxes--9 > div > div > div:nth-child(9) > div.mega-menu__image-caption-link > a > div.image-element__wrap > img
${LOCBEDROOM}                       css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.nav > ul > li:nth-child(4) > a
${LOCFEEDBACK}                      html.null body.index.is--hybrid-false.timer--exists.jdgm-buyer-badge--removed div.index-sections div#shopify-section-hov_instagramBoxes.shopify-section div.instagram-boxes div.instagram-boxes__inner
${LOCSTORE}                         css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(3) > div > div > ul > li:nth-child(12) > p > a
${LOCLOGO}                          css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.logo > a
${LOCCONTACTS}                      //*[@id="contact"]/a
${LOCDOGBED}                        css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-4 > div > div > div:nth-child(1) > div.mega-menu__image-caption-link > a > div.image-element__wrap > img
${LOCRUG}                           css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-4 > div > div > div:nth-child(2) > div.mega-menu__image-caption-link > a > div.image-element__wrap > img
${LOCCART}                          css=body > div.shopify-section.header-section > div > header.main_header > div > div > div > div.cart_container > div > a
${LOCBLACKFRIDAYSALEMENUBUTTON}     css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.nav > ul > li.menu__item.menu__item--sale > a
${LOC12REASONSPDP}                  css=#productReasons > div.block__rich_text_and_image.block__product-pad-template-0 > div > div > div > h2
${LOCTOGGLEA}                      css=#showVersionA
${LOCTOGGLEB}                      css=#showVersionB