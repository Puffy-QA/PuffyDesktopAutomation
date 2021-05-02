*** Settings ***
Documentation       Regression for Puffy Homepage
Library             Selenium2Library
#Library             SeleniumLibrary
Library             ScreenCapLibrary
Library             Collections
Library             String
*** Variables ***
${Homepage}                                                     https://puffy.com//?preview_theme_id=83948699682
${systembrowser}                                                Chrome
${FOOTER}                                                       CYBER MONDAY SALE NOW $300 OFF + FREE PILLOW
${ToggleA}                                                      css=#showVersionA
${ToggleB}                                                      css=#showVersionB
${ShopTheMattressURL}                                           https://puffy.com/pages/puffy-mattress-and-puffy-lux
${ShopTheBaseURL}                                               https://puffy.com/collections/bed-frames
${ShopTheBeddingURL}                                            https://puffy.com/collections/bedding
${ShopNowURL}                                                   https://puffy.com/pages/puffy-mattress-and-puffy-lux
${101NightTrialValueImageLocator}                               css=body > div.index-sections > div.hero-area.is--mobile-reversed > div.hero-area__box.hero-area__box--value-points > div.value-points.is--hero-area > div:nth-child(1)
${LifetimeWarrantyValueImageLocator}                            css=body > div.index-sections > div.hero-area.is--mobile-reversed > div.hero-area__box.hero-area__box--value-points > div.value-points.is--hero-area > div:nth-child(2) > div > img
${LifetimeWarrantyValueTextLocator}                             css=body > div.index-sections > div.hero-area.is--mobile-reversed > div.hero-area__box.hero-area__box--value-points > div.value-points.is--hero-area > div:nth-child(2) > span
${MadeInUSAValueImageLocator}                                   css=body > div.index-sections > div.hero-area.is--mobile-reversed > div.hero-area__box.hero-area__box--value-points > div.value-points.is--hero-area > div:nth-child(3) > div.value-points__icon.value-points__icon--hero-area > img
${MadeInUSAValueTextLocator}                                    css=body > div.index-sections > div.hero-area.is--mobile-reversed > div.hero-area__box.hero-area__box--value-points > div.value-points.is--hero-area > div:nth-child(3) > span
${MadeInUSAValueDetailsLocator}                                 css=body > div.index-sections > div.hero-area.is--mobile-reversed > div.hero-area__box.hero-area__box--value-points > div.value-points.is--hero-area > div:nth-child(3) > div.value-points__dropdown.value-points__dropdown--hero-area
${FreeDeliveryValueImageLocator}                                css=body > div.index-sections > div.hero-area.is--mobile-reversed > div.hero-area__box.hero-area__box--value-points > div.value-points.is--hero-area > div:nth-child(4) > div.value-points__icon.value-points__icon--hero-area > img
${FreeDeliveryValueTextLocator}                                 css=body > div.index-sections > div.hero-area.is--mobile-reversed > div.hero-area__box.hero-area__box--value-points > div.value-points.is--hero-area > div:nth-child(4) > span
${FreeDeliveryValueDetailsLocator}                              css=body > div.index-sections > div.hero-area.is--mobile-reversed > div.hero-area__box.hero-area__box--value-points > div.value-points.is--hero-area > div:nth-child(4) > div.value-points__dropdown.value-points__dropdown--hero-area
${101NightTrialValueContent1}                                   101-Night Sleep Trial
${101NightTrialValueContent2}
${LifetimeWarrantyValueContent}                                 Lifetime Warranty
${MadeinUSAValueContent}                                        Made in USA*
${FreeDeliveryValueContent}                                     Free, No-Contact Delivery*
${MadeinUSAValueDetailsContent}                                 *Every Puffy Mattress is 100% made in USA.
${FreeDeliverValueDetailsContent}                               *Shipping fees apply to AK and HI.
*** Test Cases ***
Start Record Video
    Start Record Video
Popup Sale
    Open Login screen
    Wait and dismiss popup
Timer Bar
    Seasonal Sale timer text check
4 Added Value checks
    101-Night Sleep Trial added value checks
    #Lifetime Warranty added value checks
    #Made in USA added value checks
    #Free, No-Contact Delivery added value checks
Stop All Video Recordings
    Stop All Video Recordings
*** Keywords ***
Start Record Video
    Start Video Recording       alias=Regression name=MegaMenu
Open Login screen
    Open Browser            ${Homepage}  ${systembrowser}
    Maximize Browser Window
    wait until page contains    ${FOOTER}
Wait and dismiss popup
    sleep                   5s
    ${check}=               Run Keyword and Return Status  Element should be visible      xpath=/html/body/div[1]/div[2]/div/div[1]/img
    run keyword if          ${check} == False    Wait and dismiss popup
    ...     ELSE            Click element   xpath=/html/body/div[1]/div[2]/div/span
Seasonal Sale timer text check
    ${Content}=            get text        css=#saleTimer > div:nth-child(1) > div > div.timer-text__content.timer-text__content--desktop
    Run keyword if          '${Content}'!='${FOOTER}'      Fail        Wrong Seasonal Sale timer Content Actual content: ${Content}
    Click element           css=#saleTimer > span > svg
101-Night Sleep Trial added value checks
    Element Should Be Visible                                   ${101NightTrialValueImageLocator}
    Page Should Contain Image                                   ${101NightTrialValueImageLocator}
    Element Should Contain                                      ${101NightTrialValueImageLocator}    ${101NightTrialValueContent1}
