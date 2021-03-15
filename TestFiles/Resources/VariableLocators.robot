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
${LOCLOGO}                          css=body > div.shopify-section.header-section > div > header.main_header > div > div > div > div.logo
${LOCCARTHEADER}                    css=body > div.cart_content.jsCartContent.cart-content-mob > div.cart-close > span.cart-close__title
${LOCCONTACTS}                      //*[@id="contact"]/a
${LOCDOGBED}                        css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-4 > div > div > div:nth-child(1) > div.mega-menu__image-caption-link > a > div.image-element__wrap > img
${LOCRUG}                           css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-4 > div > div > div:nth-child(2) > div.mega-menu__image-caption-link > a > div.image-element__wrap > img
${LOCCART}                          css=body > div.shopify-section.header-section > div > header.main_header > div > div > div > div.cart_container > div > a
${LOCBLACKFRIDAYSALEMENUBUTTON}     css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.nav > ul > li.menu__item.menu__item--sale > a
${LOC12REASONSPDP}                  css=#productReasons > div.block__rich_text_and_image.block__product-pad-template-0 > div > div > div > h2
${LOCTOGGLEA}                       css=#showVersionA
${LOCTOGGLEB}                       css=#showVersionB
${LOCTOGGLEC}                       css=#showVersionC
###########################################################FOOTER TESTCASES$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$##############
${LOCSIGNUPTEXTFIELD}               css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(4) > div > div.newsletter-wrapper > div > div > div > div > form > div > div > div.needsclick.FormComponent__StyledFormComponentWrapper-e0xun6-0.jSFixL.kl-private-reset-css-Xuajs1 > div > input
${LOCFOOTERSIGNUP}                  css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(4) > div > div.newsletter-wrapper > div > div > div > div > form > div > div > div.needsclick.FormComponent__StyledFormComponentWrapper-e0xun6-0.IRToG.kl-private-reset-css-Xuajs1 > button
${LOCFOOTERPUFFY}                   css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(1) > div > div > ul > li:nth-child(1) > a
${LOCFOOTERPUFFYLUX}                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(1) > div > div > ul > li:nth-child(2) > a
${LOCFOOTERPUFFYROYAL}              css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(1) > div > div > ul > li:nth-child(3) > a
${LOCFOOTERPUFFYHYBRID}             css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(1) > div > div > ul > li:nth-child(4) > a
${LOCFOOTERCOMFORTER}               css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(1) > div > div > ul > li:nth-child(5) > a
${LOCFOOTERMATTRESSPROTECTOR}       css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(1) > div > div > ul > li:nth-child(6) > a
${LOCFOOTERMATTRESSTOPPER}          css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(1) > div > div > ul > li:nth-child(7) > a
${LOCFOOTERWEIGHTEDBLANKET}         css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(1) > div > div > ul > li:nth-child(8) > a
${LOCFOOTERDOGBED}                  css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(1) > div > div > ul > li:nth-child(9) > a
${LOCFOOTERBEDFRAME}                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(1) > div > div > ul > li:nth-child(10) > a
${LOCFOOTERFOUNDATION}              css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(1) > div > div > ul > li:nth-child(11) > a
${LOCFOOTERADJUSTABLEBASE}          css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(1) > div > div > ul > li:nth-child(12) > a
${LOCFOOTERPILLOW}                  css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(1) > div > div > ul > li:nth-child(13) > a
${LOCFOOTERBODYPILLOW}              css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(1) > div > div > ul > li:nth-child(14) > a
${LOCFOOTERMATTRESSPAD}             css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(1) > div > div > ul > li:nth-child(15) > a
${LOCFOOTERPUFFYBLANKET}            css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(1) > div > div > ul > li:nth-child(16) > a
${LOCFOOTERPUFFYSHEETS}             css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(1) > div > div > ul > li:nth-child(17) > a
${LOCFOOTERPUFFYRUG}                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(1) > div > div > ul > li:nth-child(18) > a
${LOCFOOTER101NIGHTSLEEPTRIAL}      css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(2) > div > div > ul > li:nth-child(1) > a
${LOCFOOTERHOWITSMADE}              css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(2) > div > div > ul > li:nth-child(2) > a
${LOCFOOTERMATTRESSLAYERS}          css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(2) > div > div > ul > li:nth-child(3) > a
${LOCFOOTERPERFECTSLEEP}            css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(2) > div > div > ul > li:nth-child(4) > a
${LOCFOOTERCOMPAREMATTRESS}         css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(2) > div > div > ul > li:nth-child(5) > a
${LOCFOOTERCOMPAREHYBRIDS}          css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(2) > div > div > ul > li:nth-child(6) > a
${LOCFOOTERPUFFYDONATIONS}          css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(2) > div > div > ul > li:nth-child(7) > a
${LOCFOOTERAFFILIATEPROGRAM}        css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(2) > div > div > ul > li:nth-child(8) > a
${LOCFOOTERREFERAFRIEND}            css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(2) > div > div > ul > li:nth-child(9) > a
${LOCFOOTERMATTRESSAWARDS}          css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(2) > div > div > ul > li:nth-child(10) > a
${LOCFOOTERGIFTSHOP}                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(2) > div > div > ul > li:nth-child(11) > a
${LOCFOOTERPUFFYSTORE}              css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(2) > div > div > ul > li:nth-child(12) > a
${LOCFOOTERPUFFYBLOG}               css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(2) > div > div > ul > li:nth-child(13) > a
${LOCFOOTERPUFFYLUXREVIEW}          css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(2) > div > div > ul > li:nth-child(15) > a
${LOCFOOTERPUFFYREVIEW}             css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(2) > div > div > ul > li:nth-child(14) > a
${LOCFOOTERPUFFYROYALREVIEW}        css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(2) > div > div > ul > li:nth-child(16) > a
${LOCFOOTERPUFFYMATTRESSREVIEW}     css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(2) > div > div > ul > li:nth-child(17) > a
${LOCFOOTERREVIEWS}                 css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(3) > div > div > ul > li:nth-child(1) > a
${LOCFOOTERCONTACTUS}               css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(3) > div > div > ul > li:nth-child(2) > a
${LOCFOOTERFAQS}                    css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(3) > div > div > ul > li:nth-child(3) > a
${LOCFOOTERFINANCING}               css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(3) > div > div > ul > li:nth-child(4) > a
${LOCFOOTERRETURNPOLICY}            css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(3) > div > div > ul > li:nth-child(5) > a
${LOCFOOTERPUFFYGUARANTEE}          css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(3) > div > div > ul > li:nth-child(6) > a
${LOCFOOTERPRIVACY}                 css=#shopify-section-footer > footer > div.footer-bottom > div > div:nth-child(1) > div > a:nth-child(1)
${LOCFOOTERTERMS}                   css=#shopify-section-footer > footer > div.footer-bottom > div > div:nth-child(1) > div > a:nth-child(2)
${LOCFOOTERWARRANTY}                css=#shopify-section-footer > footer > div.footer-bottom > div > div:nth-child(1) > div > a:nth-child(3)
${LOCFOOTERFACEBOOK}                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(4) > div > ul > li:nth-child(1) > a
${LOCFOOTERTWITTER}                 css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(4) > div > ul > li:nth-child(2) > a
${LOCFOOTERINSTAGRAM}               css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(4) > div > ul > li:nth-child(3) > a
${LOCFOOTERYOUTUBE}                 css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(4) > div > ul > li:nth-child(4) > a
${LOCFOOTERLINKEDIN}                css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(4) > div > ul > li:nth-child(5) > a
${LOCFOOTERPINTEREST}               css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(4) > div > ul > li:nth-child(6) > a
${LOCFOOTERCOPYRIGHT}               css=#shopify-section-footer > footer > div.footer-bottom > div > div:nth-child(2) > div > p > a
${LOCFOOTERHEALTHCARE}              css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(2) > div > div > ul > li:nth-child(18) > a
${LOCMENUREVIEWS}                   css=body > div.shopify-section.header-section > div > header.main_header > div > div > div > div.nav > ul > li:nth-child(5) > a
#################################################################MEGA MENU LOCATORS#################################################################
${LOCMENUPUFFYLUXMATTRESSTEXT}                      css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-1 > div > div.dropdown_content > div:nth-child(2) > div.mega-menu__image-caption-link > a > div.menunew > p
${LOCMENUPUFFYMATTRESSTEXT}                         css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-1 > div > div.dropdown_content > div:nth-child(1) > div.mega-menu__image-caption-link > a > div.menunew > p
${LOCMENUPUFFYROYALMATTRESSTEXT}                    css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-1 > div > div.dropdown_content > div:nth-child(3) > div.mega-menu__image-caption-link > a > div.menunew > p
${LOCMENUPUFFYFOUNDATIONTEXT}                       css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-2 > div > div > div:nth-child(1) > div.mega-menu__image-caption-link > a > div.menunew > p
${LOCMENUPUFFYADJUSTABLEBASETEXT}                   css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-2 > div > div > div:nth-child(2) > div.mega-menu__image-caption-link > a > div.menunew > p
${LOCMENUPUFFYBEDFRAMETEXT}                         css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-2 > div > div > div:nth-child(3) > div.mega-menu__image-caption-link > a > div.menunew > p
${LOCMENUPUFFYCOMFORTERTEXT}                        css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-3.boxes--9 > div > div > div:nth-child(1) > div.mega-menu__image-caption-link > a > div.menunew > p
${LOCMENUPUFFYPILLOWTEXT}                           css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-3.boxes--9 > div > div > div:nth-child(2) > div.mega-menu__image-caption-link > a > div.menunew > p
${LOCMENUPUFFYBODYPILLOWTEXT}                       css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-3.boxes--9 > div > div > div:nth-child(3) > div.mega-menu__image-caption-link > a > div.menunew > p
${LOCMENUPUFFYMATTRESSPADTEXT}                      css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-3.boxes--9 > div > div > div:nth-child(4) > div.mega-menu__image-caption-link > a > div.menunew > p
${LOCMENUPUFFYMATTRESSPROTECTORTEXT}                css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-3.boxes--9 > div > div > div:nth-child(5) > div.mega-menu__image-caption-link > a > div.menunew > p
${LOCMENUPUFFYMATTRESSTOPPERTEXT}                   css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-3.boxes--9 > div > div > div:nth-child(6) > div.mega-menu__image-caption-link > a > div.menunew > p
${LOCMENUPUFFYBLANKETTEXT}                          css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-3.boxes--9 > div > div > div:nth-child(7) > div.mega-menu__image-caption-link > a > div.menunew > p
${LOCMENUPUFFYWEIGHTEDBLANKETTEXT}                  css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-3.boxes--9 > div > div > div:nth-child(8) > div.mega-menu__image-caption-link > a > div.menunew > p
${LOCMENUPUFFYSHEETSTEXT}                           css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-3.boxes--9 > div > div > div:nth-child(9) > div.mega-menu__image-caption-link > a > div.menunew > p
${LOCMENUPUFFYDOGBEDTEXT}                           css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-4 > div > div > div:nth-child(1) > div.mega-menu__image-caption-link > a > div.menunew > p
${LOCMENUPUFFYRUGTEXT}                              css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-4 > div > div > div:nth-child(2) > div.mega-menu__image-caption-link > a > div.menunew > p
${LOCMENUPUFFYMATTRESSIMAGE}                        css=body > div.shopify-section.header-section > div > header.main_header > div > div > div > div.dropdown_container.mega-menu.mega-menu-1 > div > div.dropdown_content > div:nth-child(1) > div.mega-menu__image-caption-link > a > div.image-element__wrap > img
${LOCMENUPUFFYLUXMATTRESSIMAGE}                     css=body > div.shopify-section.header-section > div > header.main_header > div > div > div > div.dropdown_container.mega-menu.mega-menu-1 > div > div.dropdown_content > div:nth-child(2) > div.mega-menu__image-caption-link > a > div.image-element__wrap > img
${LOCMENUPUFFYROYALMATTRESSIMAGE}                   css=body > div.shopify-section.header-section > div > header.main_header > div > div > div > div.dropdown_container.mega-menu.mega-menu-1 > div > div.dropdown_content > div:nth-child(3) > div.mega-menu__image-caption-link > a > div.image-element__wrap > img
${LOCMENUPUFFYFOUNDATIONIMAGE}                      css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-2 > div > div > div:nth-child(1) > div.mega-menu__image-caption-link > a > div.image-element__wrap > img
${LOCMENUPUFFYADJUSTABLEBASEIMAGE}                  css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-2 > div > div > div:nth-child(2) > div.mega-menu__image-caption-link > a > div.image-element__wrap > img
${LOCMENUPUFFYBEDFRAMEIMAGE}                        css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-2 > div > div > div:nth-child(3) > div.mega-menu__image-caption-link > a > div.image-element__wrap > img
${LOCMENUPUFFYCOMFORTERIMAGE}                       css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-3.boxes--9 > div > div > div:nth-child(1) > div.mega-menu__image-caption-link > a > div.image-element__wrap > img
${LOCMENUPUFFYPILLOWIMAGE}                          css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-3.boxes--9 > div > div > div:nth-child(2) > div.mega-menu__image-caption-link > a > div.image-element__wrap > img
${LOCMENUPUFFYBODYPILLOWIMAGE}                      css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-3.boxes--9 > div > div > div:nth-child(3) > div.mega-menu__image-caption-link > a > div.image-element__wrap > img
${LOCMENUPUFFYMATTRESSPADIMAGE}                     css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-3.boxes--9 > div > div > div:nth-child(4) > div.mega-menu__image-caption-link > a > div.image-element__wrap > img
${LOCMENUPUFFYMATTRESSPROTECTORIMAGE}               css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-3.boxes--9 > div > div > div:nth-child(5) > div.mega-menu__image-caption-link > a > div.image-element__wrap > img
${LOCMENUPUFFYMATTRESSTOPPERIMAGE}                  css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-3.boxes--9 > div > div > div:nth-child(6) > div.mega-menu__image-caption-link > a > div.image-element__wrap > img
${LOCMENUPUFFYBLANKETIMAGE}                         css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-3.boxes--9 > div > div > div:nth-child(7) > div.mega-menu__image-caption-link > a > div.image-element__wrap > img
${LOCMENUPUFFYWEIGHTEDBLANKETIMAGE}                 css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-3.boxes--9 > div > div > div:nth-child(8) > div.mega-menu__image-caption-link > a > div.image-element__wrap > img
${LOCMENUPUFFYSHEETSIMAGE}                          css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-3.boxes--9 > div > div > div:nth-child(9) > div.mega-menu__image-caption-link > a > div.image-element__wrap > img
${LOCMENUPUFFYDOGBEDIMAGE}                          css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-4 > div > div > div:nth-child(1) > div.mega-menu__image-caption-link > a > div.image-element__wrap > img
${LOCMENUPUFFYRUGIMAGE}                             css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-4 > div > div > div:nth-child(2) > div.mega-menu__image-caption-link > a > div.image-element__wrap > img
${LOCMENUCUSTOMERREVIEWS}                              css=body > div.shopify-section.header-section > div > header.main_header > div > div > div > div.nav > ul > li:nth-child(5) > div > div > div > ul > li:nth-child(1) > a
${LOCMENUVIDEOREVIEWS}                                 css=body > div.shopify-section.header-section > div > header.main_header > div > div > div > div.nav > ul > li:nth-child(5) > div > div > div > ul > li:nth-child(2) > a
${LOCMENUAWARDS}                                       css=body > div.shopify-section.header-section > div > header.main_header > div > div > div > div.nav > ul > li:nth-child(5) > div > div > div > ul > li:nth-child(3) > a
${LOCMENUCONTACTUS}                                    css=body > div.shopify-section.header-section > div > header.main_header > div > div > div > div.nav > ul > li:nth-child(6) > div > div > div > ul > li:nth-child(1) > a
${LOCMENUFAQS}                                         css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.nav > ul > li:nth-child(6) > div > div > div > ul > li:nth-child(2) > a
${LOCMENUFINANCING}                                    css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.nav > ul > li:nth-child(6) > div > div > div > ul > li:nth-child(3) > a
${LOCHEADERSTORE}                                            css=.store-button--desktop
${LOCHEADERPUFFYLOGO}                                  css=body > div.shopify-section.header-section > div > header.main_header > div > div > div > div.logo
${LOCSUPPORT}                                          css=body > div.shopify-section.header-section > div > header.main_header > div > div > div > div.nav > ul > li:nth-child(6) > a
