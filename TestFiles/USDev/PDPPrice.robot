*** Settings ***
Documentation       This is for checking all the places where we should update the seasonal promotion
Library             Selenium2Library
#Library             SeleniumLibrary
Library             ScreenCapLibrary
Library             Collections
Library             String
#Suite Teardown      close browser


*** Variables ***
${Phone}                        (888) 555-3222
${Email}                        automation@puffy.com
${First Name}                   John
${Last Name}                    Doe
${Address}                      123 William Street
${City}                         New York
${ZipCode}                      03101
${Sale Name}                    HALLOWEEN SALE
${Sale Details}                 $300 OFF + FREE PILLOW
${Discount Amount}              $300 OFF
${Homepage}                     https://puffy.com
${systembrowser}                Chrome
${Feedback}                     html.null body.index.is--hybrid-false.timer--exists.jdgm-buyer-badge--removed div.index-sections div#shopify-section-hov_instagramBoxes.shopify-section div.instagram-boxes div.instagram-boxes__inner
${STORE}                        css=#shopify-section-footer > footer > div.container.footer-menu-wrap > div:nth-child(3) > div > div > ul > li:nth-child(12) > p > a
${Logo}                         //*[@id="shopify-section-header"]/div/header[2]/div/div/div/div[1]/a/img
${Contacts}                     //*[@id="contact"]/a
${Mattresses}                   css=body > div.shopify-section.header-section > div > header.main_header > div > div > div > div.nav > ul > li:nth-child(1) > a
${Puffy Mattress}               css=body > div.shopify-section.header-section > div > header.main_header > div > div > div > div.dropdown_container.mega-menu.mega-menu-1 > div > div.dropdown_content > div:nth-child(1) > div.mega-menu__image-caption-link > a > div.image-element__wrap > img
${Puffy Lux Mattress}           css=body > div.shopify-section.header-section > div > header.main_header > div > div > div > div.dropdown_container.mega-menu.mega-menu-1 > div > div.dropdown_content > div:nth-child(2) > div.mega-menu__image-caption-link > a > div.image-element__wrap > img
${Puffy Royal Mattress}         css=body > div.shopify-section.header-section > div > header.main_header > div > div > div > div.dropdown_container.mega-menu.mega-menu-1 > div > div.dropdown_content > div:nth-child(3) > div.mega-menu__image-caption-link > a > div.image-element__wrap > img
${COMPARE}                      css=body > div.shopify-section.header-section > div > header.main_header > div > div > div > div.dropdown_container.mega-menu.mega-menu-1 > div > div.dropdown-compare > a
${PuffyReason1Image}            //*[@id="productReasons"]/div[2]/div[1]/div/div/div/div/div[2]/div/img
${Bases}                        css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.nav > ul > li:nth-child(2) > a
${Foundation}                   css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-2 > div > div > div:nth-child(1) > div.mega-menu__image-caption-link > a > div.image-element__wrap > img
${Adjustable Base}              css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-2 > div > div > div:nth-child(2) > div.mega-menu__image-caption-link > a > div.image-element__wrap > img
${Bed Frame}                    css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-2 > div > div > div:nth-child(3) > div.mega-menu__image-caption-link > a > div.image-element__wrap > img
${Bedding}                      css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.nav > ul > li:nth-child(3) > a
${Comforter}                    css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-3.boxes--9 > div > div > div:nth-child(1) > div.mega-menu__image-caption-link > a > div.image-element__wrap > img
${Pillow}                       css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-3.boxes--9 > div > div > div:nth-child(2) > div.mega-menu__image-caption-link > a > div.image-element__wrap > img
${Body Pillow}                  css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-3.boxes--9 > div > div > div:nth-child(3) > div.mega-menu__image-caption-link > a > div.image-element__wrap > img
${Mattress Pad}                 css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-3.boxes--9 > div > div > div:nth-child(4) > div.mega-menu__image-caption-link > a > div.image-element__wrap > img
${Mattress Protector}           css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-3.boxes--9 > div > div > div:nth-child(5) > div.mega-menu__image-caption-link > a > div.image-element__wrap > img
${Topper}                       css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-3.boxes--9 > div > div > div:nth-child(6) > div.mega-menu__image-caption-link > a > div.image-element__wrap > img
${Blanket}                      css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-3.boxes--9 > div > div > div:nth-child(7) > div.mega-menu__image-caption-link > a > div.image-element__wrap > img
${Weighted Blanket}             css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-3.boxes--9 > div > div > div:nth-child(8) > div.mega-menu__image-caption-link > a > div.image-element__wrap > img
${Sheets}                       css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-3.boxes--9 > div > div > div:nth-child(9) > div.mega-menu__image-caption-link > a > div.image-element__wrap > img
${Bedroom}                      css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.nav > ul > li:nth-child(4) > a
${Puffy Nightstand}
${Dog Bed}                      css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-4 > div > div > div:nth-child(1) > div.mega-menu__image-caption-link > a > div.image-element__wrap > img
${Rug}                          css=body > div.shopify-section.header-section > div > header.main_header.feature_image > div > div > div > div.dropdown_container.mega-menu.mega-menu-4 > div > div > div:nth-child(2) > div.mega-menu__image-caption-link > a > div.image-element__wrap > img
${Cart}                         css=body > div.shopify-section.header-section > div > header.main_header > div > div > div > div.cart_container > div > a
${FOOTER}                       HALLOWEEN SALE $300 OFF + FREE PILLOW

####################################################Product Default Sizes####################################################
${PuffyMattressDefaultSize}             Queen
${PuffyLuxMattressDefaultSize}          Queen
${PuffyRoyalMattressDefaultSize}        Queen
${PuffyFoundationDefaultSize}           Queen
${PuffyAdjustableBaseDefaultSize}       Split King
${PuffyBedFrameDefaultSize}             Queen
${PuffyComforterDefaultSize}            Full/Queen
${PuffyPillowDefaultSize}               Standard
${PuffyBodyPillowDefaultSize}           -----  #one size only
${PuffyMattressPadDefaultSize}          Queen
${PuffyMattressProtectorDefaultSize}    Queen
${PuffyTopperDefaultSize}               Queen
${PuffyTopperDefaultfeel}               Firm
${PuffyBlanketDefaultSize}              Small
${PuffyWeightedBlanketDefaultSize}      Queen
${PuffySheetsDefaultColor}              Gray
${PuffySheetsDefaultSize}               Queen
${PuffyDogBedDefaultSize}               Small
${PuffyRugDefaultColor}                 Gray
${PuffyRugDefaultSize}                  Medium


${PuffyMattTwinOriginal}        $795
${PuffyMattTwin300OFF}          $495
${PuffyMattTwin350OFF}          $445
${PuffyMattTwinXLOriginal}      $825
${PuffyMattTwinXL300OFF}        $525
${PuffyMattTwinXL350OFF}        $475
${PuffyMattFullOriginal}        $995
${PuffyMattFull300OFF}          $695
${PuffyMattFull350OFF}          $645
${PuffyMattQueenOriginal}       $1,150
${PuffyMattQueen300OFF}         $850
${PuffyMattQueen350OFF}         $800
${PuffyMattKingOriginal}        $1,350
${PuffyMattKing300OFF}          $1,050
${PuffyMattKing350OFF}          $1,000
${PuffyMattCalKingOriginal}     $1,350
${PuffyMattCalKing300OFF}       $1,050
${PuffyMattCalKing350OFF}       $1,000

${PuffyLuxTwinOriginal}         $1,445
${PuffyLuxTwin300OFF}           $1,145
${PuffyLuxTwin350OFF}           $1,095
${PuffyLuxTwinXLOriginal}       $1,495
${PuffyLuxTwinXL300OFF}         $1,195
${PuffyLuxTwinXL350OFF}         $1,145
${PuffyLuxFullOriginal}         $1,595
${PuffyLuxFull300OFF}           $1,295
${PuffyLuxFull350OFF}           $1,245
${PuffyLuxQueenOriginal}        $1,795
${PuffyLuxQueen300OFF}          $1,495
${PuffyLuxQueen350OFF}          $1,445
${PuffyLuxKingOriginal}         $1,995
${PuffyLuxKing300OFF}           $1,695
${PuffyLuxKing350OFF}           $1,645
${PuffyLuxCalKingOriginal}      $1,995
${PuffyLuxCalKing300OFF}        $1,695
${PuffyLuxCalKing350OFF}        $1,645

${PuffyRoyalTwinOriginal}       $1,645
${PuffyRoyalTwin300OFF}         $1,345
${PuffyRoyalTwin350OFF}         $1,295
${PuffyRoyalTwinXLOriginal}     $1,745
${PuffyRoyalTwinXL300OFF}       $1,445
${PuffyRoyalTwinXL350OFF}       $1,395
${PuffyRoyalFullOriginal}       $2,445
${PuffyRoyalFull300OFF}         $2,145
${PuffyRoyalFull350OFF}         $2,095
${PuffyRoyalQueenOriginal}      $2,695
${PuffyRoyalQueen300OFF}        $2,395
${PuffyRoyalQueen350OFF}        $2,345
${PuffyRoyalKingOriginal}       $2,995
${PuffyRoyalKing300OFF}         $2,695
${PuffyRoyalKing350OFF}         $2,645
${PuffyRoyalCalKingOriginal}    $2,995
${PuffyRoyalCalKing300OFF}      $2,695
${PuffyRoyalCalKing350OFF}      $2,645

${PuffyAdjustTwinXLOriginal}    $1,195
${PuffyAdjustTwinXL300OFF}      $895
${PuffyAdjustTwinXL350OFF}      $845
${PuffyAdjustFullOriginal}      $1,295
${PuffyAdjustFull300OFF}        $995
${PuffyAdjustFull350OFF}        $945
${PuffyAdjustQueenOriginal}     $1,395
${PuffyAdjustQueen300OFF}       $1,095
${PuffyAdjustQueen350OFF}       $1,045
${PuffyAdjustSplitKingOriginal}  $2,095
${PuffyAdjustSplitKing300OFF}   $1,795
${PuffyAdjustSplitKing350OFF}   $1,745

${PuffySheetsTwinOriginal}              $95
${PuffySheetsTwinXLOriginal}            $100
${PuffySheetsFullOriginal}              $110
${PuffySheetsQueenOriginal}             $125
${PuffySheetsKingOriginal}              $135
${PuffySheetsCalKingOriginal}           $135
${PuffySheetsTwin15%OFF}              ---
${PuffySheetsTwinXL15%OFF}            $85.00
${PuffySheetsFull15%OFF}              $93.50
${PuffySheetsQueen15%OFF}             $106.25
${PuffySheetsKing15%OFF}              $114.75
${PuffySheetsCalKing15%OFF}           $114.75

${PuffyFoundationTwinOriginal}              $135
${PuffyFoundationTwinXLOriginal}            $145
${PuffyFoundationFullOriginal}              $165
${PuffyFoundationQueenOriginal}             $215
${PuffyFoundationKingOriginal}              $225
${PuffyFoundationCalKingOriginal}           $225

${PuffyFoundationTwin15%OFF}              $114.75
${PuffyFoundationTwinXL15%OFF}            $123.25
${PuffyFoundationFull15%OFF}              $140.25
${PuffyFoundationQueen15%OFF}             $182.75
${PuffyFoundationKing15%OFF}              $191.25
${PuffyFoundationCalKing15%OFF}           $191.25

${PuffyBedFrameTwinOriginal}              ----
${PuffyBedFrameTwinXLOriginal}            ----
${PuffyBedFrameFullOriginal}              $895
${PuffyBedFrameQueenOriginal}             $995
${PuffyBedFrameKingOriginal}              $1,095
${PuffyBedFrameCalKingOriginal}           $1,095

${PuffyBedFrameTwin15%OFF}              ----
${PuffyBedFrameTwinXL15%OFF}            ----
${PuffyBedFrameFull15%OFF}              $760.75
${PuffyBedFrameQueen15%OFF}             $845.75
${PuffyBedFrameKing15%OFF}              $930.75
${PuffyBedFrameCalKing15%OFF}           $930.75

${PuffyPillowStandardOriginal}          $75
${PuffyPillowKingOriginal}              $95
${PuffyPillowStandard15%OFF}            ---
${PuffyPillowKing15%OFF}                ---

${PuffyBodyPillowOriginal}              $115
${PuffyBodyPillow15%OFF}                $97.75


${PuffyNightstandStandardOriginal}      $195
${PuffyNightstandKingOriginal}          ----
${PuffyNightstandStandard15%OFF}        $165.75
${PuffyNightstandKing15%OFF}            ----

${PuffyBlanketSmallOriginal}            $65
${PuffyBlanketMediumOriginal}           $75
${PuffyBlanketLargeOriginal}            $85
${PuffyBlanketSmallOriginal}            ---
${PuffyBlanketMediumOriginal}           ---
${PuffyBlanketLargeOriginal}            ---

${PuffyDogBedSmallOriginal}        $125
${PuffyDogBedMediumOriginal}       $150
${PuffyDogBedLargeOriginal}         $195
${PuffyDogBedSmallOriginal}        $106.25
${PuffyDogBedMediumOriginal}       $127.50
${PuffyDogBedLargeOriginal}         $165.75

${PuffyRugSmallOriginal}        ---
${PuffyRugMediumOriginal}       $295
${PuffyRugLargeOriginal}        $395
${PuffyRugSmallOriginal}        ---
${PuffyRugMediumOriginal}       $250.75
${PuffyRugLargeOriginal}        $330.75

${PuffyComforterTwin/TwinXLOriginal}      $175
${PuffyComforterFull/QueenOriginal}       $215
${PuffyComforterKing/CalKingOriginal}     $255
${PuffyComforterTwin/TwinXL15%OFF}        $148.75
${PuffyComforterFull/Queen15%OFF}         $182.75
${PuffyComforterKing/CalKing15%OFF}       $216.75

${PuffyPadTwinOriginal}                   $170
${PuffyPadTwinXLOriginal}                 $185
${PuffyPadFullOriginal}                   $205
${PuffyPadQueenOriginal}                  $225
${PuffyPadKingOriginal}                   $245
${PuffyPadCalKingOriginal}                $245
${PuffyPadTwin15%OFF}                     $144.75
${PuffyPadTwinXL15%OFF}                   $157.25
${PuffyPadFull15%OFF}                     $174.25
${PuffyPadQueen15%OFF}                    $191.25
${PuffyPadKing15%OFF}                     $208.25
${PuffyPadCalKing15%OFF}                  $208.25

${PuffyProtectorTwinOriginal}                   $85
${PuffyProtectorTwinXLOriginal}                 $90
${PuffyProtectorFullOriginal}                   $95
${PuffyProtectorQueenOriginal}                  $105
${PuffyProtectorKingOriginal}                   $115
${PuffyProtectorCalKingOriginal}                $115
${PuffyProtectorTwin15%OFF}                     ---
${PuffyProtectorTwinXL15%OFF}                   ---
${PuffyProtectorFull15%OFF}                     ---
${PuffyProtectorQueen15%OFF}                    $89.25
${PuffyProtectorKing15%OFF}                     $97.75
${PuffyProtectorCalKing15%OFF}                  $97.75

${PuffyTopperTwinOriginal}                   $175
${PuffyTopperTwinXLOriginal}                 $185
${PuffyTopperFullOriginal}                   $205
${PuffyTopperQueenOriginal}                  $225
${PuffyTopperKingOriginal}                   $245
${PuffyTopperCalKingOriginal}                $245
${PuffyTopperTwin15%OFF}                     $148.75
${PuffyTopperTwinXL15%OFF}                   $157.25
${PuffyTopperFull15%OFF}                     $174.25
${PuffyTopperQueen15%OFF}                    $191.25
${PuffyTopperKing15%OFF}                     $208.25
${PuffyTopperCalKing15%OFF}                  $208.25

${PuffyWeightedBlanketTwinOriginal}                   $155
${PuffyWeightedBlanketTwinXLOriginal}                 ---
${PuffyWeightedBlanketFullOriginal}                   ---
${PuffyWeightedBlanketQueenOriginal}                  $185
${PuffyWeightedBlanketKingOriginal}                   ---
${PuffyWeightedBlanketCalKingOriginal}                ---
${PuffyWeightedBlanketTwin15%OFF}                     $131.75
${PuffyWeightedBlanketTwinXL15%OFF}                   ---
${PuffyWeightedBlanketFull15%OFF}                     ---
${PuffyWeightedBlanketQueen15%OFF}                    $157.25
${PuffyWeightedBlanketKing15%OFF}                     ---
${PuffyWeightedBlanketCalKing15%OFF}                  ---
#######################################PDP Size list order############################################
${PuffyMattressPDPSizeOrder1}                          Twin
${PuffyMattressPDPSizeOrder2}                          Twin XL
${PuffyMattressPDPSizeOrder3}                          Full
${PuffyMattressPDPSizeOrder4}                          Queen
${PuffyMattressPDPSizeOrder5}                          King
${PuffyMattressPDPSizeOrder6}                          Cal King

${PuffyLuxMattressPDPSizeOrder1}                       Twin
${PuffyLuxMattressPDPSizeOrder2}                       Twin XL
${PuffyLuxMattressPDPSizeOrder3}                       Full
${PuffyLuxMattressPDPSizeOrder4}                       Queen
${PuffyLuxMattressPDPSizeOrder5}                       King
${PuffyLuxMattressPDPSizeOrder6}                       Cal King

${PuffyRoyalMattressPDPSizeOrder1}                     Twin
${PuffyRoyalMattressPDPSizeOrder2}                     Twin XL
${PuffyRoyalMattressPDPSizeOrder3}                     Full
${PuffyRoyalMattressPDPSizeOrder4}                     Queen
${PuffyRoyalMattressPDPSizeOrder5}                     King
${PuffyRoyalMattressPDPSizeOrder6}                     Cal King

${PuffyFoundationPDPSizeOrder1}                        Twin
${PuffyFoundationPDPSizeOrder2}                        Twin XL
${PuffyFoundationPDPSizeOrder3}                        Full
${PuffyFoundationPDPSizeOrder4}                        Queen
${PuffyFoundationPDPSizeOrder5}                        King
${PuffyFoundationPDPSizeOrder6}                        Cal King

${PuffyAdjustableBasePDPSizeOrder1}                     Twin XL
${PuffyAdjustableBasePDPSizeOrder2}                     Full
${PuffyAdjustableBasePDPSizeOrder3}                     Queen
${PuffyAdjustableBasePDPSizeOrder4}                     Split King

${PuffyBedFramePDPSizeOrder1}                           Full
${PuffyBedFramePDPSizeOrder2}                           Queen
${PuffyBedFramePDPSizeOrder3}                           King
${PuffyBedFramePDPSizeOrder4}                           Cal King

${PuffyComforterPDPSizeOrder1}                          Twin/Twin XL
${PuffyComforterPDPSizeOrder2}                          Full/Queen
${PuffyComforterPDPSizeOrder3}                          King/Cal King

${PuffyPillowPDPSizeOrder1}                             Standard
${PuffyPillowPDPSizeOrder2}                             King

${PuffyMattressPadPDPSizeOrder1}                        Twin
${PuffyMattressPadPDPSizeOrder2}                        Twin XL
${PuffyMattressPadPDPSizeOrder3}                        Full
${PuffyMattressPadPDPSizeOrder4}                        Queen
${PuffyMattressPadPDPSizeOrder5}                        King
${PuffyMattressPadPDPSizeOrder6}                        Cal King

${PuffyMattressProtectorPDPSizeOrder1}                  Twin
${PuffyMattressProtectorPDPSizeOrder2}                  Twin XL
${PuffyMattressProtectorPDPSizeOrder3}                  Full
${PuffyMattressProtectorPDPSizeOrder4}                  Queen
${PuffyMattressProtectorPDPSizeOrder5}                  King
${PuffyMattressProtectorPDPSizeOrder6}                  Cal King

${PuffyTopperPDPFeelOrder1}                             Firm
${PuffyTopperPDPFeelOrder2}                             Soft

${PuffySheetsPDPColorOrder1}                             Gray
${PuffySheetsPDPColorOrder2}                             White

${PuffyTopperPDPSizeOrder1}                             Twin
${PuffyTopperPDPSizeOrder2}                             Twin XL
${PuffyTopperPDPSizeOrder3}                             Full
${PuffyTopperPDPSizeOrder4}                             Queen
${PuffyTopperPDPSizeOrder5}                             King
${PuffyTopperPDPSizeOrder6}                             Cal King

${PuffySheetsPDPSizeOrder1}                             Twin
${PuffySheetsPDPSizeOrder2}                             Twin XL
${PuffySheetsPDPSizeOrder3}                             Full
${PuffySheetsPDPSizeOrder4}                             Queen
${PuffySheetsPDPSizeOrder5}                             King
${PuffySheetsPDPSizeOrder6}                             Cal King

${PuffyBlanketPDPSizeOrder1}                            Small
${PuffyBlanketPDPSizeOrder2}                            Medium
${PuffyBlanketPDPSizeOrder3}                            Large

${PuffyDogBedPDPSizeOrder1}                            Small
${PuffyDogBedPDPSizeOrder2}                            Medium
${PuffyDogBedPDPSizeOrder3}                            Large

${PuffyRugPDPSizeOrder1}                               Medium
${PuffyRugPDPSizeOrder2}                               Large

${PuffyWeightedBlanketPDPSizeOrder1}                    Twin
${PuffyWeightedBlanketPDPSizeOrder2}                    Queen
#########################################PaymentTerms Klarna#########################################
${PuffyMattressTwinKlarna300Off}                       $42
${PuffyMattressTwinXLKlarna300Off}                     $44
${PuffyMattressFullKlarna300Off}                       $58
${PuffyMattressQueenKlarna300Off}                      $71
${PuffyMattressKingKlarna300Off}                       $59
${PuffyMattressCalKingKlarna300Off}                    $59

${PuffyLuxMattressTwinKlarna300Off}                    $64
${PuffyLuxMattressTwinXLKlarna300Off}                  $67
${PuffyLuxMattressFullKlarna300Off}                    $72
${PuffyLuxMattressQueenKlarna300Off}                   $84
${PuffyLuxMattressKingKlarna300Off}                    $95
${PuffyLuxMattressCalKingKlarna300Off}                 $95

${PuffyRoyalMattressTwinKlarna300Off}                    $75
${PuffyRoyalMattressTwinXLKlarna300Off}                  $81
${PuffyRoyalMattressFullKlarna300Off}                    $90
${PuffyRoyalMattressQueenKlarna300Off}                   $100
${PuffyRoyalMattressKingKlarna300Off}                    $113
${PuffyRoyalMattressCalKingKlarna300Off}                 $113

${PuffyFoundationTwinKlarnaNoOff}                    $23
${PuffyFoundationTwinXLKlarnaNoOff}                  $25
${PuffyFoundationFullKlarnaNoOff}                    $28
${PuffyFoundationQueenKlarnaNoOff}                   $36
${PuffyFoundationKingKlarnaNoOff}                    $38
${PuffyFoundationCalKingKlarnaNoOff}                 $38

${PuffyAdjustableBaseTwinXLKlarnaNoOff}              $75
${PuffyAdjustableBaseFullKlarnaNoOff}                $83
${PuffyAdjustableBaseQueenKlarnaNoOff}               $61
${PuffyAdjustableBaseSplitKingKlarnaNoOff}           $100

${PuffyBedFrameFullKlarnaNoOff}                      $75
${PuffyBedFrameQueenKlarnaNoOff}                     $83
${PuffyBedFrameKingKlarnaNoOff}                      $61
${PuffyBedFrameCalKingKlarnaNoOff}                   $61

${PuffyComforterTwin/TwinXLNoOff}                    $30
${PuffyComforterFull/QueenNoOff}                     $36
${PuffyComforterKing/CalKingNoOff}                   $43

${PuffyPillowStandardKlarnaNoOff}                    $13
${PuffyPillowKingKlarnaNoOff}                        $16

${PuffyBodyPillowKlarnaNoOff}                        $20

${PuffyMattressPadTwinKlarnaNoOff}                   $29
${PuffyMattressPadTwinXLKlarnaNoOff}                 $31
${PuffyMattressPadFullKlarnaNoOff}                   $35
${PuffyMattressPadQueenKlarnaNoOff}                  $38
${PuffyMattressPadKingKlarnaNoOff}                   $41
${PuffyMattressPadCalKingKlarnaNoOff}                $41

${PuffyMattressProtectorTwinKlarnaNoOff}             $15
${PuffyMattressProtectorTwinXLKlarnaNoOff}           $15
${PuffyMattressProtectorFullKlarnaNoOff}             $16
${PuffyMattressProtectorQueenKlarnaNoOff}            $18
${PuffyMattressProtectorKingKlarnaNoOff}             $20
${PuffyMattressProtectorCalKingKlarnaNoOff}          $20

${PuffyTopperTwinKlarnaNoOff}                        $30
${PuffyTopperTwinXLKlarnaNoOff}                      $31
${PuffyTopperFullKlarnaNoOff}                        $35
${PuffyTopperQueenKlarnaNoOff}                       $38
${PuffyTopperKingKlarnaNoOff}                        $41
${PuffyTopperCalKingKlarnaNoOff}                     $41

${PuffySheetsTwinKlarnaNoOff}                        $16
${PuffySheetsTwinXLKlarnaNoOff}                      $17
${PuffySheetsFullKlarnaNoOff}                        $19
${PuffySheetsQueenKlarnaNoOff}                       $21
${PuffySheetsKingKlarnaNoOff}                        $23
${PuffySheetsCalKingKlarnaNoOff}                     $23

${PuffyBlanketSmallKlarnaNoOff}                      $11
${PuffyBlanketMediumKlarnaNoOff}                     $13
${PuffyBlanketLargeKlarnaNoOff}                      $15

${PuffyWeightedBlanketTwinKlarnaNoOff}               $26
${PuffyWeightedBlanketQueenKlarnaNoOff}              $31

${PuffyDogBedSmallKlarnaNoOff}                       $21
${PuffyDogBedMediumKlarnaNoOff}                      $25
${PuffyDogBedLargeKlarnaNoOff}                       $33

${PuffyRugMediumKlarnaNoOff}                          $50
${PuffyRugLargeKlarnaNoOff}                          $33
#########################################PaymentTerms SplitIt#########################################
${PuffyMattressTwinSplitIt300Off}                       $82.50
${PuffyMattressTwinXLSplitIt300Off}                     $87.50
${PuffyMattressFullSplitIt300Off}                       $115.83
${PuffyMattressQueenSplitIt300Off}                      $141.67
${PuffyMattressKingSplitIt300Off}                       $175
${PuffyMattressCalKingSplitIt300Off}                    $175

${PuffyLuxMattressTwinSplitIt300Off}                    $190.83
${PuffyLuxMattressTwinXLSplitIt300Off}                  $199.17
${PuffyLuxMattressFullSplitIt300Off}                    $215.83
${PuffyLuxMattressQueenSplitIt300Off}                   $249.17
${PuffyLuxMattressKingSplitIt300Off}                    $282.50
${PuffyLuxMattressCalKingSplitIt300Off}                 $282.50

${PuffyRoyalMattressTwinSplitIt300Off}                    $224.17
${PuffyRoyalMattressTwinXLSplitIt300Off}                  $240.83
${PuffyRoyalMattressFullSplitIt300Off}                    $357.50
${PuffyRoyalMattressQueenSplitIt300Off}                   $399.17
${PuffyRoyalMattressKingSplitIt300Off}                    $449.17
${PuffyRoyalMattressCalKingSplitIt300Off}                 $449.17

${PuffyFoundationTwinSplitItNoOff}                    $22.50
${PuffyFoundationTwinXLSplitItNoOff}                  $24.17
${PuffyFoundationFullSplitItNoOff}                    $27.50
${PuffyFoundationQueenSplitItNoOff}                   $35.83
${PuffyFoundationKingSplitItNoOff}                    $37.50
${PuffyFoundationCalKingSplitItNoOff}                 $37.50

${PuffyAdjustableBaseTwinXLSplitIt300Off}              $149.17
${PuffyAdjustableBaseFullSplitIt300Off}                $165.83
${PuffyAdjustableBaseQueenSplitIt300Off}               $182.50
${PuffyAdjustableBaseSplitKingSplitIt300Off}           $299.17

${PuffyBedFrameFullSplitIt300Off}                     $149.17
${PuffyBedFrameQueenSplitIt300Off}                    $165.83
${PuffyBedFrameKingSplitIt300Off}                     $182.50
${PuffyBedFrameCalKingSplitIt300Off}                  $182.50

${PuffyComforterTwin/TwinXLSplitItNoOff}              $29.17
${PuffyComforterFull/QueenSplitItNoOff}               $35.83
${PuffyComforterKing/CalKingSplitItNoOff}             $42.50

${PuffyPillowStandardSplitItNoOff}                    $12.50
${PuffyPillowKingSplitItNoOff}                        $15.83

${PuffyBodyPillowSplitItNoOff}                        $19.17

${PuffyMattressPadTwinSplitItNoOff}                   $28.33
${PuffyMattressPadTwinXLSplitItNoOff}                 $30.83
${PuffyMattressPadFullSplitItNoOff}                   $34.17
${PuffyMattressPadQueenSplitItNoOff}                  $37.50
${PuffyMattressPadKingSplitItNoOff}                   $40.83
${PuffyMattressPadCalKingSplitItNoOff}                $40.83

${PuffyMattressProtectorTwinSplitItNoOff}             $14.17
${PuffyMattressProtectorTwinXLSplitItNoOff}           $15
${PuffyMattressProtectorFullSplitItNoOff}             $15.83
${PuffyMattressProtectorQueenSplitItNoOff}            $17.50
${PuffyMattressProtectorKingSplitItNoOff}             $19.17
${PuffyMattressProtectorCalKingSplitItNoOff}          $19.17

${PuffyTopperTwinSplitItNoOff}                        $29.17
${PuffyTopperTwinXLSplitItNoOff}                      $30.83
${PuffyTopperFullSplitItNoOff}                        $34.17
${PuffyTopperQueenSplitItNoOff}                       $37.50
${PuffyTopperKingSplitItNoOff}                        $40.83
${PuffyTopperCalKingSplitItNoOff}                     $40.83

${PuffySheetsTwinSplitItNoOff}                        $15.83
${PuffySheetsTwinXLSplitItNoOff}                      $16.67
${PuffySheetsFullSplitItNoOff}                        $18.33
${PuffySheetsQueenSplitItNoOff}                       $20.83
${PuffySheetsKingSplitItNoOff}                        $22.50
${PuffySheetsCalKingSplitItNoOff}                     $22.50

${PuffyRugMediumSplitItNoOff}                         $49.17
${PuffyRugLargeSplitItNoOff}                          $65.83

${PuffyBlanketSmallSplitItNoOff}                      $10.83
${PuffyBlanketMediumSplitItNoOff}                     $12.50
${PuffyBlanketLargeSplitItNoOff}                      $14.17

${PuffyWeightedBlanketTwinSplitItNoOff}               $25.83
${PuffyWeightedBlanketQueenSplitItNoOff}              $30.83

${PuffyDogBedSmallSplitItNoOff}                       $20.83
${PuffyDogBedMediumSplitItNoOff}                      $25
${PuffyDogBedLargeSplitItNoOff}                       $32.50

${text}                                               /mo
${PuffyMattressTwinSplitItmid}                        $83/mo
${PuffyLuxMattressTwinSplitItmid}                     $191/mo
${PuffyLuxHybridTwinSplitItmid}                       $191/mo
${PuffyRoyalHybridTwinSplitItmid}                     $224/mo
*** Test Cases ***


Start Record Video
    Start Record Video
Popup Sale
    Launch Puffy homepage
    Wait and dismiss popup
Timer Bar
    Seasonal Sale timer text check

Store page ALL category price check
    Go to Store page
    Price check for Puffy Mattress
    Price check for Puffy Lux Mattress
    Price check for Puffy Royal Mattress
    Price check for Puffy Foundation
    Price check for Puffy Adjustable Base
    Price check for Puffy Bed Frame
    Price check for Puffy Pillow
    Price check for Puffy Body Pillow
    Price check for Puffy Comforter
    Price check for Puffy Mattress Pad
    Price check for Puffy Topper
    Price check for Puffy Mattress Protector
    Price check for Puffy Blanket
    Price check for Puffy Weighted Blanket
    Price check for Puffy Sheets
    Price check for Puffy Dog Bed
    Price check for Puffy Rug

Gift Shop page price check
    Go to Gift Shop page
    Gift Shop Price check for Puffy Pillow
    Gift Shop Price check for Puffy Comforter
    Gift Shop Price check for Puffy Weighted Blanket
    Gift Shop Price check for Puffy Mattress Pad
    Gift Shop Price check for Puffy Mattress Topper
    Gift Shop Price check for Puffy Mattress Protector
    Gift Shop Price check for Puffy Blanket
    Gift Shop Price check for Puffy Body Pillow
    Gift Shop Price check for Puffy Rug
    Gift Shop Price check for Puffy Mattress
    Gift Shop Price check for Puffy Lux Hybrid
    Gift Shop Price check for Puffy Royal Hybrid
    Gift Shop Price check for Puffy Adjustable Base
    Gift Shop Price check for Puffy Foundation
    Gift Shop Price check for Puffy Bed Frame


Compare page Puffy Mattress price check
    Go to Puffy Mattress Product Page
    Click Puffy Mattress Size dropdown
    Select Puffy Mattress Twin
    Get Puffy Mattress Price and compare to mid page

Compare page Puffy Lux Mattress price check
    Go to Puffy Lux Mattress Product Page
    Click Puffy Lux Mattress Size dropdown
    Select Puffy Lux Mattress Twin
    Get Puffy Lux Mattress Price and compare to mid page

Compare page Puffy Lux Hybrid price check
    Go to Puffy Lux Mattress Product Page
    Click on Puffy Lux Hybrid
    Click Puffy Lux Mattress Size dropdown
    Select Puffy Lux Mattress Twin
    Get Puffy Lux Hybrid Mattress Price and compare to mid page

Compare page Puffy Royal Hybrid price check
    Go to Puffy Royal Mattress Product Page
    Click on Puffy Royal Hybrid
    Click Puffy Royal Mattress Size dropdown
    Select Puffy Royal Mattress Twin
    Get Puffy Royal Hybrid Mattress Price and compare to mid page

PDP Puffy Mattress Price checks
    Go to Puffy Mattress Product Page
    Banner Seasonal Sale text check
    PDP Discount Value and Freebie check
    Check Puffy Mattress PDP Default size
    Click Puffy Mattress Size dropdown
    Check Puffy Mattress sizes original prices
    Check Puffy Mattress sizes 300OFF prices
    Check Puffy Mattress sizes list order
    Select Puffy Mattress Twin
    Check Puffy Mattress Twin size monthly payment price
    Click Puffy Mattress Size dropdown
    Select Puffy Mattress TwinXL
    Check Puffy Mattress TwinXL size monthly payment price
    Click Puffy Mattress Size dropdown
    Select Puffy Mattress Full
    Check Puffy Mattress Full size monthly payment price
    Click Puffy Mattress Size dropdown
    Select Puffy Mattress Queen
    Check Puffy Mattress Queen size monthly payment price
    Click Puffy Mattress Size dropdown
    Select Puffy Mattress King
    Check Puffy Mattress King size monthly payment price
    Click Puffy Mattress Size dropdown
    Select Puffy Mattress Cal King
    Check Puffy Mattress Cal King size monthly payment price
PDP Puffy Lux Mattress Price checks
    Go to Puffy Lux Mattress Product Page
    Banner Seasonal Sale text check
    PDP Discount Value and Freebie check
    Check Puffy Lux Mattress PDP Default size
    Click Puffy Lux Mattress Size dropdown
    Check Puffy Lux Mattress sizes original prices
    Check Puffy Lux Mattress sizes 300OFF prices
    Check Puffy Lux Mattress sizes list order
    Select Puffy Lux Mattress Twin
    Check Puffy Lux Mattress Twin size monthly payment price
    Click Puffy Lux Mattress Size dropdown
    Select Puffy Lux Mattress TwinXL
    Check Puffy Lux Mattress TwinXL size monthly payment price
    Click Puffy Lux Mattress Size dropdown
    Select Puffy Lux Mattress Full
    Check Puffy Lux Mattress Full size monthly payment price
    Click Puffy Lux Mattress Size dropdown
    Select Puffy Lux Mattress Queen
    Check Puffy Lux Mattress Queen size monthly payment price
    Click Puffy Lux Mattress Size dropdown
    Select Puffy Lux Mattress King
    Check Puffy Lux Mattress King size monthly payment price
    Click Puffy Lux Mattress Size dropdown
    Select Puffy Lux Mattress Cal King
    Check Puffy Lux Mattress Cal King size monthly payment price
PDP Puffy Lux Hybrid Mattress Price checks
    Click on Puffy Lux Hybrid
    Click Puffy Lux Mattress Size dropdown
    Check Puffy Lux Hybrid sizes original prices
    Check Puffy Lux Hybrid sizes 300OFF prices
    Check Puffy Lux Mattress sizes list order
    Select Puffy Lux Mattress Twin
    Check Puffy Lux Mattress Twin size monthly payment price
    Click Puffy Lux Mattress Size dropdown
    Select Puffy Lux Mattress TwinXL
    Check Puffy Lux Mattress TwinXL size monthly payment price
    Click Puffy Lux Mattress Size dropdown
    Select Puffy Lux Mattress Full
    Check Puffy Lux Mattress Full size monthly payment price
    Click Puffy Lux Mattress Size dropdown
    Select Puffy Lux Mattress Queen
    Check Puffy Lux Mattress Queen size monthly payment price
    Click Puffy Lux Mattress Size dropdown
    Select Puffy Lux Mattress King
    Check Puffy Lux Mattress King size monthly payment price
    Click Puffy Lux Mattress Size dropdown
    Select Puffy Lux Mattress Cal King
    Check Puffy Lux Mattress Cal King size monthly payment price
PDP Puffy Royal Mattress Price checks
    Go to Puffy Royal Mattress Product Page
    Banner Seasonal Sale text check
    PDP Discount Value and Freebie check
    Check Puffy Royal Mattress PDP Default size
    Click Puffy Royal Mattress Size dropdown
    Check Puffy Royal sizes original prices
    Check Puffy Royal sizes 300OFF prices
    Check Puffy Royal Mattress sizes list order
    Select Puffy Royal Mattress Twin
    Check Puffy Royal Mattress Twin size monthly payment price
    Click Puffy Royal Mattress Size dropdown
    Select Puffy Royal Mattress TwinXL
    Check Puffy Royal Mattress TwinXL size monthly payment price
    Click Puffy Royal Mattress Size dropdown
    Select Puffy Royal Mattress Full
    Check Puffy Royal Mattress Full size monthly payment price
    Click Puffy Royal Mattress Size dropdown
    Select Puffy Royal Mattress Queen
    Check Puffy Royal Mattress Queen size monthly payment price
    Click Puffy Royal Mattress Size dropdown
    Select Puffy Royal Mattress King
    Check Puffy Royal Mattress King size monthly payment price
    Click Puffy Royal Mattress Size dropdown
    Select Puffy Royal Mattress Cal King
    Check Puffy Royal Mattress Cal King size monthly payment price
PDP Puffy Royal Hybrid Mattress Price checks
    Click on Puffy Royal Hybrid
    Click Puffy Royal Mattress Size dropdown
    Check Puffy Royal Hybrid sizes original prices
    Check Puffy Royal Hybrid sizes 300OFF prices
    Check Puffy Royal Mattress sizes list order
    Select Puffy Royal Mattress Twin
    Check Puffy Royal Mattress Twin size monthly payment price
    Click Puffy Royal Mattress Size dropdown
    Select Puffy Royal Mattress TwinXL
    Check Puffy Royal Mattress TwinXL size monthly payment price
    Click Puffy Royal Mattress Size dropdown
    Select Puffy Royal Mattress Full
    Check Puffy Royal Mattress Full size monthly payment price
    Click Puffy Royal Mattress Size dropdown
    Select Puffy Royal Mattress Queen
    Check Puffy Royal Mattress Queen size monthly payment price
    Click Puffy Royal Mattress Size dropdown
    Select Puffy Royal Mattress King
    Check Puffy Royal Mattress King size monthly payment price
    Click Puffy Royal Mattress Size dropdown
    Select Puffy Royal Mattress Cal King
    Check Puffy Royal Mattress Cal King size monthly payment price
PDP Puffy Foundation Price checks
    Go to Puffy Foundation Product Page
    Don't show seasonal sale content check
    #Don't show freebies content check
    Check Puffy Foundation PDP Default size
    Click Puffy Foundation Size dropdown
    Check Puffy Foundation sizes original prices
    #Check Puffy Foundation sizes 15%OFF prices
    Check Puffy Foundation sizes list order
    Select Puffy Foundation Twin
    Check Puffy Foundation Twin size monthly payment price
    Click Puffy Foundation Size dropdown
    Select Puffy Foundation TwinXL
    Check Puffy Foundation TwinXL size monthly payment price
    Click Puffy Foundation Size dropdown
    Select Puffy Foundation Full
    Check Puffy Foundation Full size monthly payment price
    Click Puffy Foundation Size dropdown
    Select Puffy Foundation Queen
    Check Puffy Foundation Queen size monthly payment price
    Click Puffy Foundation Size dropdown
    Select Puffy Foundation King
    Check Puffy Foundation King size monthly payment price
    Click Puffy Foundation Size dropdown
    Select Puffy Foundation Cal King
    Check Puffy Foundation Cal King size monthly payment price
PDP Puffy Adjustable Base Price checks
    Go to Puffy Adjustable Base Product Page
    Banner Seasonal Sale text check
    #PDP Discount Value and Freebie check
    Check Puffy Adjustable Base PDP Default size
    Click Puffy Adjustable Base Size dropdown
    Check Puffy Adjustable Base original prices
    Check Puffy Adjustable Base 300OFF prices
    Check Puffy Adjustable Base sizes list order
    Select Puffy Adjustable Base TwinXL
    Check Puffy Adjustable Base TwinXL size monthly payment price
    Click Puffy Adjustable Base Size dropdown
    Select Puffy Adjustable Base Full
    Check Puffy Adjustable Base Full size monthly payment price
    Click Puffy Adjustable Base Size dropdown
    Select Puffy Adjustable Base Queen
    Check Puffy Adjustable Base Queen size monthly payment price
    Click Puffy Adjustable Base Size dropdown
    Select Puffy Adjustable Base Split King
    Check Puffy Adjustable Base Split King size monthly payment price
PDP Puffy Bed Frame Price checks
    Go to Puffy Bed Frame Product Page
    Don't show seasonal sale content check
    #Don't show freebies content check
    Check Puffy Bed Frame PDP Default size
    Click Puffy Bed Frame Size dropdown
    Check Puffy Bed Frame original prices
    #Check Puffy Bed Frame sizes 15%OFF prices
    Check Puffy Bed Frame sizes list order
    Select Puffy Bed Frame Full
    Check Puffy Bed Frame Full size monthly payment price
    Click Puffy Bed Frame Size dropdown
    Select Puffy Bed Frame Queen
    Check Puffy Bed Frame Queen size monthly payment price
    Click Puffy Bed Frame Size dropdown
    Select Puffy Bed Frame King
    Check Puffy Bed Frame King size monthly payment price
    Click Puffy Bed Frame Size dropdown
    Select Puffy Bed Frame Cal King
    Check Puffy Bed Frame Cal King size monthly payment price
PDP Puffy Comforter Price checks
    Go to Puffy Comforter Product Page
    Don't show seasonal sale content check
    #Don't show freebies content check
    Check Puffy Comforter PDP Default size
    Click Puffy Comforter Size dropdown
    Check Puffy Comforter original prices
    #Check Puffy Bed Frame sizes 15%OFF prices
    Check Puffy Comforter sizes list order
    Select Puffy Comforter Twin/Twin XL
    Check Puffy Comforter Twin/Twin XL size monthly payment price
    Click Puffy Comforter Size dropdown
    Select Puffy Comforter Full/Queen
    Check Puffy Comforter Full/Queen size monthly payment price
    Click Puffy Comforter Size dropdown
    Select Puffy Comforter King/Cal King
    Check Puffy Comforter King/Cal King size monthly payment price
PDP Puffy Pillow Price checks
    Go to Puffy Pillow Product Page
    Don't show seasonal sale content check
    #Don't show freebies content check
    Check Puffy Pillow PDP Default size
    Click Puffy Pillow Size dropdown
    Check Puffy Pillow original prices
    #Check Puffy Bed Frame sizes 15%OFF prices
    Check Puffy Pillow sizes list order
    Select Puffy Pillow Standard
    Check Puffy Pillow Standard size monthly payment price
    Click Puffy Pillow Size dropdown
    Select Puffy Pillow King
    Check Puffy Pillow King size monthly payment price
PDP Puffy Body Pillow Price checks
    Go to Puffy Body Pillow Product Page
    Don't show seasonal sale content check
    #Don't show freebies content check
    Check Puffy Body Pillow original prices
    #Check Puffy Bed Frame sizes 15%OFF prices
    Check Puffy Body Pillow monthly payment price
PDP Puffy Mattress Pad Price checks
    Go to Puffy Mattress Pad Product Page
    Don't show seasonal sale content check
    #Don't show freebies content check
    Check Puffy Mattress Pad PDP Default size
    Click Puffy Mattress Pad Size dropdown
    Check Puffy Mattress Pad original prices
    #Check Puffy Foundation sizes 15%OFF prices
    Check Puffy Mattress Pad sizes list order
    Select Puffy Mattress Pad Twin
    Check Puffy Mattress Pad Twin size monthly payment price
    Click Puffy Mattress Pad Size dropdown
    Select Puffy Mattress Pad TwinXL
    Check Puffy Mattress Pad TwinXL size monthly payment price
    Click Puffy Mattress Pad Size dropdown
    Select Puffy Mattress Pad Full
    Check Puffy Mattress Pad Full size monthly payment price
    Click Puffy Mattress Pad Size dropdown
    Select Puffy Mattress Pad Queen
    Check Puffy Mattress Pad Queen size monthly payment price
    Click Puffy Mattress Pad Size dropdown
    Select Puffy Mattress Pad King
    Check Puffy Mattress Pad King size monthly payment price
    Click Puffy Mattress Pad Size dropdown
    Select Puffy Mattress Pad Cal King
    Check Puffy Mattress Pad Cal King size monthly payment price
PDP Puffy Mattress Protector Price checks
    Go to Puffy Mattress Protector Product Page
    Don't show seasonal sale content check
    #Don't show freebies content check
    Check Puffy Mattress Protector PDP Default size
    Click Puffy Mattress Protector Size dropdown
    Check Puffy Mattress Protector original prices
    #Check Puffy Foundation sizes 15%OFF prices
    Check Puffy Mattress Protector sizes list order
    Select Puffy Mattress Protector Twin
    Check Puffy Mattress Protector Twin size monthly payment price
    Click Puffy Mattress Protector Size dropdown
    Select Puffy Mattress Protector TwinXL
    Check Puffy Mattress Protector TwinXL size monthly payment price
    Click Puffy Mattress Protector Size dropdown
    Select Puffy Mattress Protector Full
    Check Puffy Mattress Protector Full size monthly payment price
    Click Puffy Mattress Protector Size dropdown
    Select Puffy Mattress Protector Queen
    Check Puffy Mattress Protector Queen size monthly payment price
    Click Puffy Mattress Protector Size dropdown
    Select Puffy Mattress Protector King
    Check Puffy Mattress Protector King size monthly payment price
    Click Puffy Mattress Protector Size dropdown
    Select Puffy Mattress Protector Cal King
    Check Puffy Mattress Protector Cal King size monthly payment price
PDP Puffy Topper Price checks
    Go to Puffy Topper Product Page
    Don't show seasonal sale content check
    #Don't show freebies content check
    Check Puffy Topper PDP Default feel
    Check Puffy Topper PDP Default size
    Click Puffy Topper feel dropdown
    Check Puffy Topper feel options
    Select Puffy Topper Firm
    Click Puffy Topper Size dropdown
    Check Puffy Topper original prices
    #Check Puffy Foundation sizes 15%OFF prices
    Check Puffy Topper sizes list order
    Select Puffy Topper Twin
    Check Puffy Topper Twin size monthly payment price
    Click Puffy Topper Size dropdown
    Select Puffy Topper TwinXL
    Check Puffy Topper TwinXL size monthly payment price
    Click Puffy Topper Size dropdown
    Select Puffy Topper Full
    Check Puffy Topper Full size monthly payment price
    Click Puffy Topper Size dropdown
    Select Puffy Topper Queen
    Check Puffy Topper Queen size monthly payment price
    Click Puffy Topper Size dropdown
    Select Puffy Topper King
    Check Puffy Topper King size monthly payment price
    Click Puffy Topper Size dropdown
    Select Puffy Topper Cal King
    Check Puffy Topper Cal King size monthly payment price
    Click Puffy Topper feel dropdown
    Select Puffy Topper Soft
    Click Puffy Topper Size dropdown
    Check Puffy Topper original prices
    #Check Puffy Foundation sizes 15%OFF prices
    Check Puffy Topper sizes list order
    Select Puffy Topper Twin
    Check Puffy Topper Twin size monthly payment price
    Click Puffy Topper Size dropdown
    Select Puffy Topper TwinXL
    Check Puffy Topper TwinXL size monthly payment price
    Click Puffy Topper Size dropdown
    Select Puffy Topper Full
    Check Puffy Topper Full size monthly payment price
    Click Puffy Topper Size dropdown
    Select Puffy Topper Queen
    Check Puffy Topper Queen size monthly payment price
    Click Puffy Topper Size dropdown
    Select Puffy Topper King
    Check Puffy Topper King size monthly payment price
    Click Puffy Topper Size dropdown
    Select Puffy Topper Cal King
    Check Puffy Topper Cal King size monthly payment price
PDP Puffy Blanket Price checks
    Go to Puffy Blanket Product Page
    Don't show seasonal sale content check
    #Don't show freebies content check
    Check Puffy Blanket PDP Default size
    Click Puffy Blanket Size dropdown
    Check Puffy Blanket original prices
    #Check Puffy Bed Frame sizes 15%OFF prices
    Check Puffy Blanket sizes list order
    Select Puffy Blanket Small
    Check Puffy Blanket Small size monthly payment price
    Click Puffy Blanket Size dropdown
    Select Puffy Blanket Medium
    Check Puffy Blanket Medium size monthly payment price
    Click Puffy Blanket Size dropdown
    Select Puffy Blanket Large
    Check Puffy Blanket Large size monthly payment price

PDP Puffy Weighted Blanket Price checks
    Go to Puffy Weighted Blanket Product Page
    Don't show seasonal sale content check
    #Don't show freebies content check
    Check Puffy Weighted Blanket PDP Default size
    Click Puffy Weighted Blanket Size dropdown
    Check Puffy Weighted Blanket original prices
    #Check Puffy Bed Frame sizes 15%OFF prices
    Check Puffy Weighted Blanket sizes list order
    Select Puffy Weighted Blanket Twin
    Check Puffy Weighted Blanket Twin size monthly payment price
    Click Puffy Weighted Blanket Size dropdown
    Select Puffy Weighted Blanket Queen
    Check Puffy Weighted Blanket Queen size monthly payment price

PDP Puffy Sheets Price checks
    Go to Puffy Sheets Product Page
    Don't show seasonal sale content check
    #Don't show freebies content check
    Check Puffy Sheets PDP Default color
    Check Puffy Sheets PDP Default size
    Click Puffy Sheets color dropdown
    Check Puffy Sheets color options
    Select Puffy Sheets Gray
    Click Puffy Sheets Size dropdown
    Check Puffy Sheets original prices
    #Check Puffy Foundation sizes 15%OFF prices
    Check Puffy Sheets sizes list order
    Select Puffy Sheets Twin
    Check Puffy Sheets Twin size monthly payment price
    Click Puffy Sheets Size dropdown
    Select Puffy Sheets TwinXL
    Check Puffy Sheets TwinXL size monthly payment price
    Click Puffy Sheets Size dropdown
    Select Puffy Sheets Full
    Check Puffy Sheets Full size monthly payment price
    Click Puffy Sheets Size dropdown
    Select Puffy Sheets Queen
    Check Puffy Sheets Queen size monthly payment price
    Click Puffy Sheets Size dropdown
    Select Puffy Sheets King
    Check Puffy Sheets King size monthly payment price
    Click Puffy Sheets Size dropdown
    Select Puffy Sheets Cal King
    Check Puffy Sheets Cal King size monthly payment price
    Click Puffy Sheets color dropdown
    Select Puffy Sheets white
    Click Puffy Sheets Size dropdown
    Check Puffy Sheets original prices
    #Check Puffy Foundation sizes 15%OFF prices
    Check Puffy Sheets sizes list order
    Select Puffy Sheets Twin
    Check Puffy Sheets Twin size monthly payment price
    Click Puffy Sheets Size dropdown
    Select Puffy Sheets TwinXL
    Check Puffy Sheets TwinXL size monthly payment price
    Click Puffy Sheets Size dropdown
    Select Puffy Sheets Full
    Check Puffy Sheets Full size monthly payment price
    Click Puffy Sheets Size dropdown
    Select Puffy Sheets Queen
    Check Puffy Sheets Queen size monthly payment price
    Click Puffy Sheets Size dropdown
    Select Puffy Sheets King
    Check Puffy Sheets King size monthly payment price
    Click Puffy Sheets Size dropdown
    Select Puffy Sheets Cal King
    Check Puffy Sheets Cal King size monthly payment price


PDP Puffy Dog Bed Price checks
    Go to Puffy Dog Bed Product Page
    Don't show seasonal sale content check
    #Don't show freebies content check
    Check Puffy Dog Bed PDP Default size
    Click Puffy Dog Bed Size dropdown
    Check Puffy Dog Bed original prices
    #Check Puffy Bed Frame sizes 15%OFF prices
    Check Puffy Dog Bed sizes list order
    Select Puffy Dog Bed Small
    Check Puffy Dog Bed Small size monthly payment price
    Click Puffy Dog Bed Size dropdown
    Select Puffy Dog Bed Medium
    Check Puffy Dog Bed Medium size monthly payment price
    Click Puffy Dog Bed Size dropdown
    Select Puffy Dog Bed Large
    Check Puffy Dog Bed Large size monthly payment price

PDP Puffy Rug Price checks
    Go to Puffy Rug Product Page
    Don't show seasonal sale content check
    #Don't show freebies content check
    Check Puffy Rug PDP Default size
    Click Puffy Rug Size dropdown
    Check Puffy Rug original prices
    #Check Puffy Bed Frame sizes 15%OFF prices
    Check Puffy Rug sizes list order
    Select Puffy Rug Medium
    Check Puffy Rug Medium size monthly payment price
    Click Puffy Rug Size dropdown
    Select Puffy Rug Large
    Check Puffy Rug Large size monthly payment price





Stop All Video Recordings
    Stop All Video Recordings



*** Keywords ***
#=============================TEST REQUIREMENTS===================================================#
Start Record Video
    Start Video Recording       alias=FallSale name=FallSale

Launch Puffy homepage
    Open Browser            ${Homepage}  ${systembrowser}
    Maximize Browser Window
    wait until page contains    ${FOOTER}

#=============================SEASON SALE KEYWORDS=================================================#

Seasonal Sale timer text check
    ${Content}=            get text        css=#saleTimer > div:nth-child(1)
    Run keyword if          '${Content}'!='${FOOTER}'      Fail        Wrong Seasonal Sale timer Content
    Click element           css=#saleTimer > span > svg

Banner Seasonal Sale text check
    sleep                   2s
    ${Content}=            get text        css=#Summer_SALE
    Run keyword if          '${Content}'!='${Sale Name}'      Fail        Wrong Seasonal Sale Content

Don't show seasonal sale content check
    Page Should Not Contain Element              css=#Presidents_Day_Sale_Product_Page_Banner > path.cls-product-mattress1

Don't show freebies content check
    Page Should Not Contain                      css=#shopify-section-product-puffy-template > div.container.main.content.product-name--puffy-mattress > div > div > div > div > div.seven.columns.medium-down--one-whole.alpha > div > div.promo-info
#=============================PRODUCT PAGE REDIRECTIONS=================================================#
Go to Puffy Mattress Product Page
    Mouse Over          ${Mattresses}
    sleep               2s
    Click element       ${Puffy Mattress}
    Wait Until Page Contains    12 REASONS TO CHOOSE

Go to Puffy Lux Mattress Product Page
    Mouse Over          ${Mattresses}
    sleep               2s
    Click element       ${Puffy Lux Mattress}
    Wait Until Page Contains    12 REASONS TO CHOOSE

Go to Puffy Royal Mattress Product Page
    Mouse Over          ${Mattresses}
    sleep               2s
    Click element       ${Puffy Royal Mattress}
    Wait Until Page Contains    12 REASONS TO CHOOSE

Go to Puffy Foundation Product Page
    Mouse Over          ${Bases}
    sleep               2s
    Click element       ${Foundation}
    Wait Until Page Contains    12 REASONS TO CHOOSE

Go to Puffy Adjustable Base Product Page
    Mouse Over          ${Bases}
    sleep               2s
    Click element       ${Adjustable Base}
    Wait Until Page Contains    12 REASONS TO CHOOSE

Go to Puffy Bed Frame Product Page
    Mouse Over          ${Bases}
    sleep               2s
    Click element       ${Bed Frame}
    Wait Until Page Contains    12 REASONS TO CHOOSE

Go to Puffy Comforter Product Page
    Mouse Over          ${Bedding}
    sleep               2s
    Click element       ${Comforter}
    Wait Until Page Contains    12 REASONS TO CHOOSE

Go to Puffy Pillow Product Page
    Mouse Over          ${Bedding}
    sleep               2s
    Click element       ${Pillow}
    Wait Until Page Contains    12 REASONS TO CHOOSE

Go to Puffy Body Pillow Product Page
    Mouse Over          ${Bedding}
    sleep               2s
    Click element       ${Body Pillow}
    Wait Until Page Contains    12 REASONS TO CHOOSE

Go to Puffy Mattress Pad Product Page
    Mouse Over          ${Bedding}
    sleep               2s
    Click element       ${Mattress Pad}
    Wait Until Page Contains    12 REASONS TO CHOOSE

Go to Puffy Mattress Protector Product Page
    Mouse Over          ${Bedding}
    sleep               2s
    Click element       ${Mattress Protector}
    Wait Until Page Contains    12 REASONS TO CHOOSE

Go to Puffy Topper Product Page
    Mouse Over          ${Bedding}
    sleep               2s
    Click element       ${Topper}
    Wait Until Page Contains    12 REASONS TO CHOOSE

Go to Puffy Blanket Product Page
    Mouse Over          ${Bedding}
    sleep               2s
    Click element       ${Blanket}
    Wait Until Page Contains    12 REASONS TO CHOOSE

Go to Puffy Weighted Blanket Product Page
    Mouse Over          ${Bedding}
    sleep               2s
    Click element       ${Weighted Blanket}
    Wait Until Page Contains    12 REASONS TO CHOOSE

Go to Puffy Sheets Product Page
    Mouse Over          ${Bedding}
    sleep               2s
    Click element       ${Sheets}
    Wait Until Page Contains    12 REASONS TO CHOOSE

Go to Puffy Dog Bed Product Page
    Mouse Over          ${Bedroom}
    sleep               2s
    Click element       ${Dog Bed}
    Wait Until Page Contains    12 REASONS TO CHOOSE

Go to Puffy Rug Product Page
    Mouse Over          ${Bedroom}
    sleep               2s
    Click element       ${Rug}
    Wait Until Page Contains    12 REASONS TO CHOOSE


Go to Compare Mattress Page
    Mouse Over          ${Mattresses}
    sleep               2s
    Click element       ${COMPARE}
    Wait Until Page Contains    CHOOSE YOUR PUFFY MATTRESS

Go To Store Page
    Click element       ${STORE}

Go to Gift Shop page
    Click link          link:Gift Shop
#=============================DISCOUNTS AND FREEBIES=================================================#

PDP Discount Value and Freebie check
    ${Content}=            get text        css=#_300_Off_FREE_PILLOW
    Run keyword if          '${Content}'!='${Sale Details}'      Fail        Wrong Discount Value and Freebie Content

Wait and dismiss popup
    sleep                   5s
    ${check}=               Run Keyword and Return Status  Element should be visible      xpath=/html/body/div[1]/div[2]/div/div[1]/img
    run keyword if          ${check} == False    Wait and dismiss popup
    ...     ELSE            Click element   xpath=/html/body/div[1]/div[2]/div/span
#=============================PRODUCT SIZE DROPDOWNS=================================================#
Click Puffy Mattress Size dropdown
    Click element       css=#product_form_345108381730 > div.product-variants-holder > div > div > div

Click Puffy Lux Mattress Size dropdown
    Click element       css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div

Click Puffy Royal Mattress Size dropdown
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
    Click element       css=#product_form_602344357922 > div.product-variants-holder > div > div > div

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
    Run keyword if          '${DefaultSize}'!='${PuffyMattressDefaultSize}'      Fail        Wrong Puffy Mattress Default Size. Expected Result: ${PuffyMattressDefaultSize} Actual Result: ${DefaultSize}

Check Puffy Lux Mattress PDP Default size
    ${DefaultSize}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > div > div > span.display-name.is--sale--price
    Run keyword if          '${DefaultSize}'!='${PuffyLuxMattressDefaultSize}'      Fail        Wrong Puffy Lux Mattress Default Size. Expected Result: ${PuffyLuxMattressDefaultSize} Actual Result: ${DefaultSize}

Check Puffy Royal Mattress PDP Default size
    ${DefaultSize}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > div > div > span.display-name.is--sale--price
    Run keyword if          '${DefaultSize}'!='${PuffyRoyalMattressDefaultSize}'      Fail        Wrong Puffy Royal Mattress Default Size. Expected Result: ${PuffyRoyalMattressDefaultSize} Actual Result: ${DefaultSize}

Check Puffy Foundation PDP Default size
    ${DefaultSize}=            get text        css=#product_form_150983180312 > div.product-variants-holder > div > div > div > div > span.display-name.is--not--sale
    Run keyword if          '${DefaultSize}'!='${PuffyFoundationDefaultSize}'      Fail        Wrong Puffy Foundation Default Size. Expected Result: ${PuffyFoundationDefaultSize} Actual Result: ${DefaultSize}

Check Puffy Adjustable Base PDP Default size
    ${DefaultSize}=            get text        css=#product_form_416170377250 > div.product-variants-holder > div > div > div > div > span.display-name.is--sale--price
    Run keyword if          '${DefaultSize}'!='${PuffyAdjustableBaseDefaultSize}'      Fail        Wrong Puffy Adjustable Base Default Size. Expected Result: ${PuffyAdjustableBaseDefaultSize} Actual Result: ${DefaultSize}

Check Puffy Bed Frame PDP Default size
    ${DefaultSize}=            get text        css=#product_form_1528789401634 > div.product-variants-holder > div > div > div > div > span.display-name.is--not--sale
    Run keyword if          '${DefaultSize}'!='${PuffyBedFrameDefaultSize}'      Fail        Wrong Puffy Bed Frame Default Size. Expected Result: ${PuffyBedFrameDefaultSize} Actual Result: ${DefaultSize}

Check Puffy Comforter PDP Default size
    ${DefaultSize}=            get text        css=#product_form_1536090603554 > div.product-variants-holder > div > div > div > div > span.display-name.is--not--sale
    Run keyword if          '${DefaultSize}'!='${PuffyComforterDefaultSize}'      Fail        Wrong Puffy Comforter Default Size. Expected Result: ${PuffyComforterDefaultSize} Actual Result: ${DefaultSize}

Check Puffy Pillow PDP Default size
    ${DefaultSize}=            get text        css=#product_form_625398710306 > div.product-variants-holder > div > div > div > div > span.display-name.is--not--sale
    Run keyword if          '${DefaultSize}'!='${PuffyPillowDefaultSize}'      Fail        Wrong Puffy Pillow Default Size. Expected Result: ${PuffyPillowDefaultSize} Actual Result: ${DefaultSize}

Check Puffy Mattress Pad PDP Default size
    ${DefaultSize}=            get text        css=#product_form_602344357922 > div.product-variants-holder > div > div > div > div > span.display-name.is--not--sale
    Run keyword if          '${DefaultSize}'!='${PuffyMattressPadDefaultSize}'      Fail        Wrong Puffy Mattress Pad Default Size. Expected Result: ${PuffyMattressPadDefaultSize} Actual Result: ${DefaultSize}

Check Puffy Mattress Protector PDP Default size
    ${DefaultSize}=            get text        css=#product_form_1508181475362 > div.product-variants-holder > div > div > div > div > span.display-name.is--not--sale
    Run keyword if          '${DefaultSize}'!='${PuffyMattressProtectorDefaultSize}'      Fail        Wrong Puffy Mattress Protector Default Size. Expected Result: ${PuffyMattressPadDefaultSize} Actual Result: ${DefaultSize}

Check Puffy Topper PDP Default size
    ${DefaultSize}=            get text        css=#product_form_1837366476834 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > div > div > span.display-name.is--not--sale
    Run keyword if          '${DefaultSize}'!='${PuffyTopperDefaultSize}'      Fail        Wrong Puffy Mattress Protector Default Size. Expected Result: ${PuffyTopperDefaultSize} Actual Result: ${DefaultSize}
Check Puffy Topper PDP Default feel
    ${DefaultFeel}=            get text        css=#product_form_1837366476834 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-feel > div > div > div > span.display-name.is--not--sale
    Run keyword if          '${DefaultFeel}'!='${PuffyTopperDefaultfeel}'      Fail        Wrong Puffy Topper Default Feel. Expected Result: ${PuffyTopperDefaultfeel} Actual Result: ${DefaultSize}

Check Puffy Blanket PDP Default size
    ${DefaultSize}=            get text        css=#product_form_4412718972962 > div.product-variants-holder > div > div > div > div > span.display-name.is--not--sale
    Run keyword if          '${DefaultSize}'!='${PuffyBlanketDefaultSize}'      Fail        Wrong Puffy Blanket Default Size. Expected Result: ${PuffyBlanketDefaultSize} Actual Result: ${DefaultSize}

Check Puffy Weighted Blanket PDP Default size
    ${DefaultSize}=            get text        css=#product_form_3773124771874 > div.product-variants-holder > div > div > div > div > span.display-name.is--not--sale
    Run keyword if          '${DefaultSize}'!='${PuffyWeightedBlanketDefaultSize}'      Fail        Wrong Puffy WeightedBlanket Default Size. Expected Result: ${PuffyWeightedBlanketDefaultSize} Actual Result: ${DefaultSize}

Check Puffy Sheets PDP Default color
    ${DefaultSize}=            get text        css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-color > div > div > div > span.display-name.is--not--sale
    Run keyword if          '${DefaultSize}'!='${PuffySheetsDefaultColor}'      Fail        Wrong Puffy Sheets Default color. Expected Result: ${PuffySheetsDefaultColor} Actual Result: ${DefaultSize}
Check Puffy Sheets PDP Default size
    ${DefaultSize}=            get text        css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > div > div > span.display-name.is--not--sale
    Run keyword if          '${DefaultSize}'!='${PuffySheetsDefaultSize}'      Fail        Wrong Puffy Sheets Default Size. Expected Result: ${PuffySheetsDefaultSize} Actual Result: ${DefaultSize}

Check Puffy Dog Bed PDP Default Size
    ${DefaultSize}=            get text        css=#product_form_4365356662818 > div.product-variants-holder > div > div > div > div > span.display-name.is--not--sale
    Run keyword if          '${DefaultSize}'!='${PuffyDogBedDefaultSize}'      Fail        Wrong Puffy Dog Bed Default color. Expected Result: ${PuffyDogBedDefaultSize} Actual Result: ${DefaultSize}
Check Puffy Rug PDP Default Color
    ${DefaultSize}=            get text        css=#product_form_4125949657122 > div.product-variants-holder > div.product-variant.selector-wrapper.jsRealOptions.product-color > div > div > div > span.display-name.is--not--sale
    Run keyword if          '${DefaultSize}'!='${PuffyRugDefaultColor}'      Fail        Wrong Puffy Rug Default Color. Expected Result: ${PuffyRugDefaultColor} Actual Result: ${DefaultSize}
Check Puffy Rug PDP Default size
    ${DefaultSize}=            get text        css=#product_form_4125949657122 > div.product-variants-holder > div.product-variant.selector-wrapper.jsRealOptions.product-size > div > div > div > span.display-name.is--not--sale
    Run keyword if          '${DefaultSize}'!='${PuffyRugDefaultSize}'      Fail        Wrong Puffy Rug Default Size. Expected Result: ${PuffyRugDefaultSize} Actual Result: ${DefaultSize}

#=============================PRODUCT ORIGINAL PRICE CHECKS===================================================#

Check Puffy Mattress sizes original prices

    Wait Until Element Is Visible          css=#product_form_345108381730 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > del > span.original-price

    ${Content}=            get text        css=#product_form_345108381730 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffyMattTwinOriginal}'      Fail        Wrong Puffy Mattress Twin Size original price. Expected Result: ${PuffyMattTwinOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_345108381730 > div.product-variants-holder > div > div > ul > li:nth-child(2) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffyMattTwinXLOriginal}'      Fail        Wrong Puffy Mattress TwinXL Size original price. Expected Result: ${PuffyMattTwinXLOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_345108381730 > div.product-variants-holder > div > div > ul > li:nth-child(3) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffyMattFullOriginal}'      Fail        Wrong Puffy Mattress Full Size original price. Expected Result: ${PuffyMattFullOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_345108381730 > div.product-variants-holder > div > div > ul > li.option.selected.focus > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffyMattQueenOriginal}'      Fail        Wrong Puffy Mattress Queen Size original price. Expected Result: ${PuffyMattQueenOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_345108381730 > div.product-variants-holder > div > div > ul > li:nth-child(5) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffyMattKingOriginal}'      Fail        Wrong Puffy Mattress King Size original price. Expected Result: ${PuffyMattKingOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_345108381730 > div.product-variants-holder > div > div > ul > li:nth-child(6) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffyMattCalKingOriginal}'      Fail        Wrong Puffy Mattress CalKing Size original price. Expected Result: ${PuffyMattCalKingOriginal} Actual Result: ${Content}


Check Puffy Lux Mattress sizes original prices

    Wait Until Element Is Visible          css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > del > span.original-price

    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffyLuxTwinOriginal}'      Fail        Wrong Puffy Lux Twin Size original price. Expected Result: ${PuffyLuxTwinOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(2) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffyLuxTwinXLOriginal}'      Fail        Wrong Puffy Lux TwinXL Size original price. Expected Result: ${PuffyLuxTwinXLOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(3) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffyLuxFullOriginal}'      Fail        Wrong Puffy Lux Full Size original price. Expected Result: ${PuffyLuxFullOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li.option.selected.focus > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffyLuxQueenOriginal}'      Fail        Wrong Puffy Lux Queen Size original price. Expected Result: ${PuffyLuxQueenOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(5) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffyLuxKingOriginal}'      Fail        Wrong Puffy Lux King Size original price. Expected Result: ${PuffyLuxKingOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(6) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffyLuxCalKingOriginal}'      Fail        Wrong Puffy Lux CalKing Size original price. Expected Result: ${PuffyLuxCalKingOriginal} Actual Result: ${Content}

Check Puffy Lux Hybrid sizes original prices

    Wait Until Element Is Visible          css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > del > span.hybrid-price
    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > del > span.hybrid-price
    Run keyword if          '${Content}'!='${PuffyLuxTwinOriginal}'      Fail        Wrong Puffy Lux Hybrid Twin Size original price. Expected Result: ${PuffyLuxTwinOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(2) > span > del > span.hybrid-price
    Run keyword if          '${Content}'!='${PuffyLuxTwinXLOriginal}'      Fail        Wrong Puffy Lux Hybrid TwinXL Size original price. Expected Result: ${PuffyLuxTwinXLOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(3) > span > del > span.hybrid-price
    Run keyword if          '${Content}'!='${PuffyLuxFullOriginal}'      Fail        Wrong Puffy Lux Hybrid Full Size original price. Expected Result: ${PuffyLuxFullOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(4) > span > del > span.hybrid-price
    Run keyword if          '${Content}'!='${PuffyLuxQueenOriginal}'      Fail        Wrong Puffy Lux Hybrid Queen Size original price. Expected Result: ${PuffyLuxQueenOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(5) > span > del > span.hybrid-price
    Run keyword if          '${Content}'!='${PuffyLuxKingOriginal}'      Fail        Wrong Puffy Lux Hybrid King Size original price. Expected Result: ${PuffyLuxKingOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(6) > span > del > span.hybrid-price
    Run keyword if          '${Content}'!='${PuffyLuxCalKingOriginal}'      Fail        Wrong Puffy Lux Hybrid CalKing Size original price. Expected Result: ${PuffyLuxCalKingOriginal} Actual Result: ${Content}


Check Puffy Royal sizes original prices

    Wait Until Element Is Visible          css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > del > span.original-price
    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffyRoyalTwinOriginal}'      Fail        Wrong Puffy Royal Twin Size original price. Expected Result: ${PuffyRoyalTwinOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(2) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffyRoyalTwinXLOriginal}'      Fail        Wrong Puffy Royal TwinXL Size original price. Expected Result: ${PuffyRoyalTwinXLOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(3) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffyRoyalFullOriginal}'      Fail        Wrong Puffy Royal Full Size original price. Expected Result: ${PuffyRoyalFullOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li.option.selected.focus > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffyRoyalQueenOriginal}'      Fail        Wrong Puffy Royal Queen Size original price. Expected Result: ${PuffyRoyalQueenOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(5) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffyRoyalKingOriginal}'      Fail        Wrong Puffy Royal King Size original price. Expected Result: ${PuffyRoyalKingOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(6) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffyRoyalCalKingOriginal}'      Fail        Wrong Puffy Royal CalKing Size original price. Expected Result: ${PuffyRoyalCalKingOriginal} Actual Result: ${Content}


Check Puffy Royal Hybrid sizes original prices

    Wait Until Element Is Visible          css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > del > span.hybrid-price
    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > del > span.hybrid-price
    Run keyword if          '${Content}'!='${PuffyRoyalTwinOriginal}'      Fail        Wrong Puffy Royal Hybrid Twin Size original price. Expected Result: ${PuffyRoyalTwinOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(2) > span > del > span.hybrid-price
    Run keyword if          '${Content}'!='${PuffyRoyalTwinXLOriginal}'      Fail        Wrong Puffy Royal Hybrid TwinXL Size original price. Expected Result: ${PuffyRoyalTwinXLOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(3) > span > del > span.hybrid-price
    Run keyword if          '${Content}'!='${PuffyRoyalFullOriginal}'      Fail        Wrong Puffy Royal Hybrid Full Size original price. Expected Result: ${PuffyRoyalFullOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(4) > span > del > span.hybrid-price
    Run keyword if          '${Content}'!='${PuffyRoyalQueenOriginal}'      Fail        Wrong Puffy Royal Hybrid Queen Size original price. Expected Result: ${PuffyRoyalQueenOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(5) > span > del > span.hybrid-price
    Run keyword if          '${Content}'!='${PuffyRoyalKingOriginal}'      Fail        Wrong Puffy Royal Hybrid King Size original price. Expected Result: ${PuffyRoyalKingOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(6) > span > del > span.hybrid-price
    Run keyword if          '${Content}'!='${PuffyRoyalCalKingOriginal}'      Fail        Wrong Puffy Royal Hybrid CalKing Size original price. Expected Result: ${PuffyRoyalCalKingOriginal} Actual Result: ${Content}
Check Puffy Foundation sizes original prices

    Wait Until Element Is Visible          css=#product_form_150983180312 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > span > span.original-price
    ${Content}=            get text        css=#product_form_150983180312 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyFoundationTwinOriginal}'      Fail        Wrong Puffy Foundation Twin Size original price. Expected Result: ${PuffyFoundationTwinOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_150983180312 > div.product-variants-holder > div > div > ul > li:nth-child(2) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyFoundationTwinXLOriginal}'      Fail        Wrong Puffy Foundation TwinXL Size original price. Expected Result: ${PuffyFoundationTwinXLOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_150983180312 > div.product-variants-holder > div > div > ul > li:nth-child(3) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyFoundationFullOriginal}'      Fail        Wrong Puffy Foundation Full Size original price. Expected Result: ${PuffyFoundationFullOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_150983180312 > div.product-variants-holder > div > div > ul > li:nth-child(4) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyFoundationQueenOriginal}'      Fail        Wrong Puffy Foundation Queen Size original price. Expected Result: ${PuffyFoundationQueenOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_150983180312 > div.product-variants-holder > div > div > ul > li:nth-child(5) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyFoundationKingOriginal}'      Fail        Wrong Puffy Foundation King Size original price. Expected Result: ${PuffyFoundationKingOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_150983180312 > div.product-variants-holder > div > div > ul > li:nth-child(6) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyFoundationCalKingOriginal}'      Fail        Wrong Puffy Foundation CalKing Size original price. Expected Result: ${PuffyFoundationCalKingOriginal} Actual Result: ${Content}


Check Puffy Adjustable Base original prices

    Wait Until Element Is Visible          css=#product_form_416170377250 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > del > span.original-price
    ${Content}=            get text        css=#product_form_416170377250 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffyAdjustTwinXLOriginal}'      Fail        Wrong Puffy Adjustable Base TwinXL Size original price. Expected Result: ${PuffyAdjustTwinXLOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_416170377250 > div.product-variants-holder > div > div > ul > li:nth-child(2) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffyAdjustFullOriginal}'      Fail        Wrong Puffy Adjustable Base Full Size original price. Expected Result: ${PuffyAdjustFullOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_416170377250 > div.product-variants-holder > div > div > ul > li:nth-child(3) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffyAdjustQueenOriginal}'      Fail        Wrong Puffy Adjustable Base Queen Size original price. Expected Result: ${PuffyAdjustQueenOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_416170377250 > div.product-variants-holder > div > div > ul > li:nth-child(4) > span > del > span.original-price
    Run keyword if          '${Content}'!='${PuffyAdjustSplitKingOriginal}'      Fail        Wrong Puffy Adjustable Base Split King Size original price. Expected Result: ${PuffyAdjustSplitKingOriginal} Actual Result: ${Content}

Check Puffy Bed Frame original prices

    Wait Until Element Is Visible          css=#product_form_1528789401634 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > span > span.original-price
    ${Content}=            get text        css=#product_form_1528789401634 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyBedFrameFullOriginal}'      Fail        Wrong Puffy Bed Frame Full Size original price. Expected Result: ${PuffyBedFrameFullOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_1528789401634 > div.product-variants-holder > div > div > ul > li:nth-child(2) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyBedFrameQueenOriginal}'      Fail        Wrong Puffy Bed Frame Queen Size original price. Expected Result: ${PuffyBedFrameQueenOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_1528789401634 > div.product-variants-holder > div > div > ul > li:nth-child(3) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyBedFrameKingOriginal}'      Fail        Wrong Puffy Bed Frame King Size original price. Expected Result: ${PuffyBedFrameKingOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_1528789401634 > div.product-variants-holder > div > div > ul > li:nth-child(4) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyBedFrameCalKingOriginal}'      Fail        Wrong Puffy Bed Frame Cal King Size original price. Expected Result: ${PuffyBedFrameCalKingOriginal} Actual Result: ${Content}

Check Puffy Comforter original prices

    Wait Until Element Is Visible          css=#product_form_1536090603554 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > span > span.original-price
    ${Content}=            get text        css=#product_form_1536090603554 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyComforterTwin/TwinXLOriginal}'      Fail        Wrong Puffy Comforter Twin/TwinXL Size original price. Expected Result: ${PuffyComforterTwin/TwinXLOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_1536090603554 > div.product-variants-holder > div > div > ul > li:nth-child(2) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyComforterFull/QueenOriginal}'      Fail        Wrong Puffy Comforter Full/Queen Size original price. Expected Result: ${PuffyComforterFull/QueenOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_1536090603554 > div.product-variants-holder > div > div > ul > li:nth-child(3) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyComforterKing/CalKingOriginal}'      Fail        Wrong Puffy Comforter King/Cal King Size original price. Expected Result: ${PuffyComforterKing/CalKingOriginal} Actual Result: ${Content}

Check Puffy Pillow original prices

    Wait Until Element Is Visible          css=#product_form_625398710306 > div.product-variants-holder > div > div > ul > li.option.selected.focus > span > span > span.original-price
    ${Content}=            get text        css=#product_form_625398710306 > div.product-variants-holder > div > div > ul > li.option.selected.focus > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyPillowStandardOriginal}'      Fail        Wrong Puffy Pillow Standard Size original price. Expected Result: ${PuffyPillowStandardOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_625398710306 > div.product-variants-holder > div > div > ul > li:nth-child(2) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyPillowKingOriginal}'      Fail        Wrong Puffy Comforter Full/Queen Size original price. Expected Result: ${PuffyPillowKingOriginal} Actual Result: ${Content}

Check Puffy Body Pillow original prices

    Wait Until Element Is Visible          css=#shopify-section-product-puffy-template > div.container.main.content.product-name--puffy-body-pillow > div > div > div > div > div.seven.columns.medium-down--one-whole.alpha > div > div.product-head > div.product-head__content > div.product-price > span
    ${Content}=            get text        css=#shopify-section-product-puffy-template > div.container.main.content.product-name--puffy-body-pillow > div > div > div > div > div.seven.columns.medium-down--one-whole.alpha > div > div.product-head > div.product-head__content > div.product-price > span
    Run keyword if          '${Content}'!='${PuffyBodyPillowOriginal}'      Fail        Wrong Puffy Pillow Standard Size original price. Expected Result: ${PuffyBodyPillowOriginal} Actual Result: ${Content}

Check Puffy Mattress Pad original prices

    Wait Until Element Is Visible          css=#product_form_602344357922 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > span > span.original-price
    ${Content}=            get text        css=#product_form_602344357922 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyPadTwinOriginal}'      Fail        Wrong Puffy Mattress Pad Twin Size original price. Expected Result: ${PuffyPadTwinOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_602344357922 > div.product-variants-holder > div > div > ul > li:nth-child(2) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyPadTwinXLOriginal}'      Fail        Wrong Puffy Mattress Pad Twin XL Size original price. Expected Result: ${PuffyPadTwinXLOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_602344357922 > div.product-variants-holder > div > div > ul > li:nth-child(3) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyPadFullOriginal}'      Fail        Wrong Puffy Mattress Pad Full Size original price. Expected Result: ${PuffyPadFullOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_602344357922 > div.product-variants-holder > div > div > ul > li:nth-child(4) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyPadQueenOriginal}'      Fail        Wrong Puffy Mattress Pad Queen Size original price. Expected Result: ${PuffyPadQueenOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_602344357922 > div.product-variants-holder > div > div > ul > li:nth-child(5) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyPadKingOriginal}'      Fail        Wrong Puffy Mattress Pad King Size original price. Expected Result: ${PuffyPadKingOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_602344357922 > div.product-variants-holder > div > div > ul > li:nth-child(6) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyPadCalKingOriginal}'      Fail        Wrong Puffy Mattress Pad Cal King Size original price. Expected Result: ${PuffyPadKingOriginal} Actual Result: ${Content}

Check Puffy Mattress Protector original prices

    Wait Until Element Is Visible          css=#product_form_1508181475362 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > span > span.original-price
    ${Content}=            get text        css=#product_form_1508181475362 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyProtectorTwinOriginal}'      Fail        Wrong Puffy Mattress Pad Twin Size original price. Expected Result: ${PuffyProtectorTwinOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_1508181475362 > div.product-variants-holder > div > div > ul > li:nth-child(2) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyProtectorTwinXLOriginal}'      Fail        Wrong Puffy Mattress Pad Twin XL Size original price. Expected Result: ${PuffyProtectorTwinXLOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_1508181475362 > div.product-variants-holder > div > div > ul > li:nth-child(3) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyProtectorFullOriginal}'      Fail        Wrong Puffy Mattress Pad Full Size original price. Expected Result: ${PuffyProtectorFullOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_1508181475362 > div.product-variants-holder > div > div > ul > li:nth-child(4) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyProtectorQueenOriginal}'      Fail        Wrong Puffy Mattress Pad Queen Size original price. Expected Result: ${PuffyProtectorQueenOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_1508181475362 > div.product-variants-holder > div > div > ul > li:nth-child(5) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyProtectorKingOriginal}'      Fail        Wrong Puffy Mattress Pad King Size original price. Expected Result: ${PuffyProtectorKingOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_1508181475362 > div.product-variants-holder > div > div > ul > li:nth-child(6) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyProtectorCalKingOriginal}'      Fail        Wrong Puffy Mattress Pad Cal King Size original price. Expected Result: ${PuffyProtectorCalKingOriginal} Actual Result: ${Content}

Check Puffy Topper original prices

    Wait Until Element Is Visible          css=#product_form_1837366476834 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > span > span.original-price
    ${Content}=            get text        css=#product_form_1837366476834 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyTopperTwinOriginal}'      Fail        Wrong Puffy Topper Twin Size original price. Expected Result: ${PuffyTopperTwinOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_1837366476834 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(2) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyTopperTwinXLOriginal}'      Fail        Wrong Puffy Topper Twin XL Size original price. Expected Result: ${PuffyTopperTwinXLOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_1837366476834 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(3) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyTopperFullOriginal}'      Fail        Wrong Puffy Topper Full Size original price. Expected Result: ${PuffyTopperFullOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_1837366476834 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(4) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyTopperQueenOriginal}'      Fail        Wrong Puffy Topper Queen Size original price. Expected Result: ${PuffyTopperQueenOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_1837366476834 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(5) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyTopperKingOriginal}'      Fail        Wrong Puffy Topper King Size original price. Expected Result: ${PuffyTopperKingOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_1837366476834 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(6) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyTopperCalKingOriginal}'      Fail        Wrong Puffy Topper Cal King Size original price. Expected Result: ${PuffyTopperCalKingOriginal} Actual Result: ${Content}

Check Puffy Blanket original prices

    Wait Until Element Is Visible          css=#product_form_4412718972962 > div.product-variants-holder > div > div > ul > li.option.selected.focus > span > span > span.original-price
    ${Content}=            get text        css=#product_form_4412718972962 > div.product-variants-holder > div > div > ul > li.option.selected.focus > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyBlanketSmallOriginal}'      Fail        Wrong Puffy Blanket Small Size original price. Expected Result: ${PuffyBlanketSmallOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4412718972962 > div.product-variants-holder > div > div > ul > li:nth-child(2) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyBlanketMediumOriginal}'      Fail        Wrong Puffy Blanket Medium Size original price. Expected Result: ${PuffyBlanketMediumOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4412718972962 > div.product-variants-holder > div > div > ul > li:nth-child(3) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyBlanketLargeOriginal}'      Fail        Wrong Puffy Blanket Large Size original price. Expected Result: ${PuffyBlanketLargeOriginal} Actual Result: ${Content}

Check Puffy Weighted Blanket original prices

    Wait Until Element Is Visible          css=#product_form_3773124771874 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > span > span.original-price
    ${Content}=            get text        css=#product_form_3773124771874 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyWeightedBlanketTwinOriginal}'      Fail        Wrong Puffy Weighted Blanket Twin Size original price. Expected Result: ${PuffyWeightedBlanketTwinOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3773124771874 > div.product-variants-holder > div > div > ul > li.option.selected.focus > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyWeightedBlanketQueenOriginal}'      Fail        Wrong Puffy Weighted Blanket Queen Size original price. Expected Result: ${PuffyWeightedBlanketQueenOriginal} Actual Result: ${Content}


Check Puffy Sheets original prices

    Wait Until Element Is Visible          css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > span > span.original-price
    ${Content}=            get text        css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffySheetsTwinOriginal}'      Fail        Wrong Puffy Sheets Twin Size original price. Expected Result: ${PuffySheetsTwinOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(2) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffySheetsTwinXLOriginal}'      Fail        Wrong Puffy Sheets Twin XL Size original price. Expected Result: ${PuffySheetsTwinXLOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(3) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffySheetsFullOriginal}'      Fail        Wrong Puffy Sheets Full Size original price. Expected Result: ${PuffySheetsFullOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(4) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffySheetsQueenOriginal}'      Fail        Wrong Puffy Sheets Queen Size original price. Expected Result: ${PuffySheetsQueenOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(5) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffySheetsKingOriginal}'      Fail        Wrong Puffy Sheets King Size original price. Expected Result: ${PuffySheetsKingOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(6) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffySheetsCalKingOriginal}'      Fail        Wrong Puffy Sheets Cal King Size original price. Expected Result: ${PuffySheetsCalKingOriginal} Actual Result: ${Content}

Check Puffy Dog Bed original prices

    Wait Until Element Is Visible          css=#product_form_4365356662818 > div.product-variants-holder > div > div > ul > li.option.selected.focus > span > span > span.original-price
    ${Content}=            get text        css=#product_form_4365356662818 > div.product-variants-holder > div > div > ul > li.option.selected.focus > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyDogBedSmallOriginal}'      Fail        Wrong Puffy Dog Bed Small Size original price. Expected Result: ${PuffyDogBedSmallOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4365356662818 > div.product-variants-holder > div > div > ul > li:nth-child(2) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyDogBedMediumOriginal}'      Fail        Wrong Puffy Dog Bed Medium Size original price. Expected Result: ${PuffyDogBedMediumOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4365356662818 > div.product-variants-holder > div > div > ul > li:nth-child(3) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyDogBedLargeOriginal}'      Fail        Wrong Puffy Dog Bed Large Size original price. Expected Result: ${PuffyDogBedLargeOriginal} Actual Result: ${Content}

Check Puffy Rug original prices

    Wait Until Element Is Visible          css=#product_form_4125949657122 > div.product-variants-holder > div.product-variant.selector-wrapper.jsRealOptions.product-size > div > ul > li.option.selected.focus > span > span > span.original-price
    ${Content}=            get text        css=#product_form_4125949657122 > div.product-variants-holder > div.product-variant.selector-wrapper.jsRealOptions.product-size > div > ul > li.option.selected.focus > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyRugMediumOriginal}'      Fail        Wrong Puffy Rug Medium Size original price. Expected Result: ${PuffyRugMediumOriginal} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4125949657122 > div.product-variants-holder > div.product-variant.selector-wrapper.jsRealOptions.product-size > div > ul > li:nth-child(2) > span > span > span.original-price
    Run keyword if          '${Content}'!='${PuffyRugLargeOriginal}'      Fail        Wrong Puffy Rug Large Size original price. Expected Result: ${PuffyRugLargeOriginal} Actual Result: ${Content}


#=============================PRODUCT 300 OFF PRICE CHECKS===================================================#

Check Puffy Mattress sizes 300OFF prices

    Wait Until Element Is Visible          css=#product_form_345108381730 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > span > span.original-price.jsDiscountedPrice

    ${Content}=            get text        css=#product_form_345108381730 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyMattTwin300OFF}'      Fail        Wrong Puffy Mattress Twin Size 300 OFF price. Expected Result: ${PuffyMattTwin300OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_345108381730 > div.product-variants-holder > div > div > ul > li:nth-child(2) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyMattTwinXL300OFF}'      Fail        Wrong Puffy Mattress TwinXL Size 300 OFF price. Expected Result: ${PuffyMattTwinXL300OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_345108381730 > div.product-variants-holder > div > div > ul > li:nth-child(3) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyMattFull300OFF}'      Fail        Wrong Puffy Mattress Full Size 300 OFF price. Expected Result: ${PuffyMattFull300OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_345108381730 > div.product-variants-holder > div > div > ul > li.option.selected.focus > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyMattQueen300OFF}'      Fail        Wrong Puffy Mattress Queen Size 300 OFF price. Expected Result: ${PuffyMattQueen300OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_345108381730 > div.product-variants-holder > div > div > ul > li:nth-child(5) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyMattKing300OFF}'      Fail        Wrong Puffy Mattress King Size 300 OFF price. Expected Result: ${PuffyMattKing300OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_345108381730 > div.product-variants-holder > div > div > ul > li:nth-child(6) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyMattCalKing300OFF}'      Fail        Wrong Puffy Mattress CalKing Size 300 OFF price. Expected Result: ${PuffyMattCalKing300OFF} Actual Result: ${Content}

Check Puffy Lux Mattress sizes 300OFF prices

    Wait Until Element Is Visible          css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > span > span.original-price.jsDiscountedPrice

    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyLuxTwin300OFF}'      Fail        Wrong Puffy Lux Twin Size 300 OFF price. Expected Result: ${PuffyLuxTwin300OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(2) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyLuxTwinXL300OFF}'      Fail        Wrong Puffy Lux TwinXL Size 300 OFF price. Expected Result: ${PuffyLuxTwinXL300OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(3) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyLuxFull300OFF}'      Fail        Wrong Puffy Lux Full Size 300 OFF price. Expected Result: ${PuffyLuxFull300OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li.option.selected.focus > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyLuxQueen300OFF}'      Fail        Wrong Puffy Lux Queen Size 300 OFF price. Expected Result: ${PuffyLuxQueen300OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(5) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyLuxKing300OFF}'      Fail        Wrong Puffy Lux King Size 300 OFF price. Expected Result: ${PuffyLuxKing300OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(6) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyLuxCalKing300OFF}'      Fail        Wrong Puffy Lux CalKing Size 300 OFF price. Expected Result: ${PuffyLuxCalKing300OFF} Actual Result: ${Content}

Check Puffy Lux Hybrid sizes 300OFF prices

    Wait Until Element Is Visible     css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > span > span.hybrid-price.jsDiscountedPrice

    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > span > span.hybrid-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyLuxTwin300OFF}'      Fail        Wrong Puffy Lux Hybrid Twin Size 300 OFF price. Expected Result: ${PuffyLuxTwin300OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(2) > span > span > span.hybrid-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyLuxTwinXL300OFF}'      Fail        Wrong Puffy Lux Hybrid TwinXL Size 300 OFF price. Expected Result: ${PuffyLuxTwinXL300OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(3) > span > span > span.hybrid-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyLuxFull300OFF}'      Fail        Wrong Puffy Lux Hybrid Full Size 300 OFF price. Expected Result: ${PuffyLuxFull300OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(4) > span > span > span.hybrid-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyLuxQueen300OFF}'      Fail        Wrong Puffy Lux Hybrid Queen Size 300 OFF price. Expected Result: ${PuffyLuxQueen300OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(5) > span > span > span.hybrid-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyLuxKing300OFF}'      Fail        Wrong Puffy Lux Hybrid King Size 300 OFF price. Expected Result: ${PuffyLuxKing300OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(6) > span > span > span.hybrid-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyLuxCalKing300OFF}'      Fail        Wrong Puffy Lux Hybrid CalKing Size 300 OFF price. Expected Result: ${PuffyLuxCalKing300OFF} Actual Result: ${Content}


Check Puffy Royal sizes 300OFF prices

    Wait Until Element Is Visible          css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > span > span.original-price.jsDiscountedPrice

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyRoyalTwin300OFF}'      Fail        Wrong Puffy Royal Twin Size 300 OFF price. Expected Result: ${PuffyRoyalTwin300OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(2) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyRoyalTwinXL300OFF}'      Fail        Wrong Puffy Royal TwinXL Size 300 OFF price. Expected Result: ${PuffyRoyalTwinXL300OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(3) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyRoyalFull300OFF}'      Fail        Wrong Puffy Royal Full Size 300 OFF price. Expected Result: ${PuffyRoyalFull300OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li.option.selected.focus > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyRoyalQueen300OFF}'      Fail        Wrong Puffy Royal Queen Size 300 OFF price. Expected Result: ${PuffyRoyalQueen300OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(5) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyRoyalKing300OFF}'      Fail        Wrong Puffy Royal King Size 300 OFF price. Expected Result: ${PuffyRoyalKing300OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(6) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyRoyalCalKing300OFF}'      Fail        Wrong Puffy Royal CalKing Size 300 OFF price. Expected Result: ${PuffyRoyalCalKing300OFF} Actual Result: ${Content}


Check Puffy Royal Hybrid sizes 300OFF prices

    Wait Until Element Is Visible     css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > span > span.hybrid-price.jsDiscountedPrice

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > span > span > span.hybrid-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyRoyalTwin300OFF}'      Fail        Wrong Puffy Royal Hybrid Twin Size 300 OFF price. Expected Result: ${PuffyRoyalTwin300OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(2) > span > span > span.hybrid-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyRoyalTwinXL300OFF}'      Fail        Wrong Puffy Royal Hybrid TwinXL Size 300 OFF price. Expected Result: ${PuffyRoyalTwinXL300OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(3) > span > span > span.hybrid-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyRoyalFull300OFF}'      Fail        Wrong Puffy Royal Hybrid Full Size 300 OFF price. Expected Result: ${PuffyRoyalFull300OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(4) > span > span > span.hybrid-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyRoyalQueen300OFF}'      Fail        Wrong Puffy Royal Hybrid Queen Size 300 OFF price. Expected Result: ${PuffyRoyalQueen300OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(5) > span > span > span.hybrid-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyRoyalKing300OFF}'      Fail        Wrong Puffy Royal Hybrid King Size 300 OFF price. Expected Result: ${PuffyRoyalKing300OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(6) > span > span > span.hybrid-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyRoyalCalKing300OFF}'      Fail        Wrong Puffy Royal Hybrid CalKing Size 300 OFF price. Expected Result: ${PuffyRoyalCalKing300OFF} Actual Result: ${Content}



Check Puffy Adjustable Base 300OFF prices

    Wait Until Element Is Visible     css=#product_form_416170377250 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > span > span.original-price.jsDiscountedPrice

    ${Content}=            get text        css=#product_form_416170377250 > div.product-variants-holder > div > div > ul > li:nth-child(1) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyAdjustTwinXL300OFF}'      Fail        Wrong Puffy Adjustable Base TwinXL Size 300 OFF price. Expected Result: ${PuffyAdjustTwinXL300OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_416170377250 > div.product-variants-holder > div > div > ul > li:nth-child(2) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyAdjustFull300OFF}'      Fail        Wrong Puffy Adjustable Base Full Size 300 OFF price. Expected Result: ${PuffyAdjustFull300OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_416170377250 > div.product-variants-holder > div > div > ul > li:nth-child(3) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyAdjustQueen300OFF}'      Fail        Wrong Puffy Adjustable Base Queen Size 300 OFF price. Expected Result: ${PuffyAdjustQueen300OFF} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_416170377250 > div.product-variants-holder > div > div > ul > li:nth-child(4) > span > span > span.original-price.jsDiscountedPrice
    Run keyword if          '${Content}'!='${PuffyAdjustSplitKing300OFF}'      Fail        Wrong Puffy Adjustable Base Split King 300 OFF price. Expected Result: ${PuffyAdjustSplitKing300OFF} Actual Result: ${Content}
#=============================PRODUCT PDP SIZE ORDERING===================================================#

Check Puffy Mattress sizes list order

    Wait Until Element Is Visible          css=#product_form_345108381730 > div.product-variants-holder > div > div > ul > li:nth-child(1) > div > span.display-name.is--sale--price

    ${Content}=            get text        css=#product_form_345108381730 > div.product-variants-holder > div > div > ul > li:nth-child(1) > div > span.display-name.is--sale--price
    Run keyword if          '${Content}'!='${PuffyMattressPDPSizeOrder1}'      Fail        First size in Puffy Mattress PDP is Wrong. Expected Result: ${PuffyMattressPDPSizeOrder1} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_345108381730 > div.product-variants-holder > div > div > ul > li:nth-child(2) > div > span.display-name.is--sale--price
    Run keyword if          '${Content}'!='${PuffyMattressPDPSizeOrder2}'      Fail        Second size in Puffy Mattress PDP is Wrong. Expected Result: ${PuffyMattressPDPSizeOrder2} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_345108381730 > div.product-variants-holder > div > div > ul > li:nth-child(3) > div > span.display-name.is--sale--price
    Run keyword if          '${Content}'!='${PuffyMattressPDPSizeOrder3}'      Fail        Third size in Puffy Mattress PDP is Wrong. Expected Result: ${PuffyMattressPDPSizeOrder3} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_345108381730 > div.product-variants-holder > div > div > ul > li.option.selected.focus > div > span.display-name.is--sale--price
    Run keyword if          '${Content}'!='${PuffyMattressPDPSizeOrder4}'      Fail        Fourth size in Puffy Mattress PDP is Wrong. Expected Result: ${PuffyMattressPDPSizeOrder4} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_345108381730 > div.product-variants-holder > div > div > ul > li:nth-child(5) > div > span.display-name.is--sale--price
    Run keyword if          '${Content}'!='${PuffyMattressPDPSizeOrder5}'      Fail        Fifth size in Puffy Mattress PDP is Wrong. Expected Result: ${PuffyMattressPDPSizeOrder5} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_345108381730 > div.product-variants-holder > div > div > ul > li:nth-child(6) > div > span.display-name.is--sale--price
    Run keyword if          '${Content}'!='${PuffyMattressPDPSizeOrder6}'      Fail        Sixth size in Puffy Mattress PDP is Wrong. Expected Result: ${PuffyMattressPDPSizeOrder6} Actual Result: ${Content}

Check Puffy Lux Mattress sizes list order

    Wait Until Element Is Visible          css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > div > span.display-name.is--sale--price

    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > div > span.display-name.is--sale--price
    Run keyword if          '${Content}'!='${PuffyLuxMattressPDPSizeOrder1}'      Fail        First size in Puffy Lux Mattress PDP is Wrong. Expected Result: ${PuffyLuxMattressPDPSizeOrder1} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(2) > div > span.display-name.is--sale--price
    Run keyword if          '${Content}'!='${PuffyLuxMattressPDPSizeOrder2}'      Fail        Second size in Puffy Lux Mattress PDP is Wrong. Expected Result: ${PuffyLuxMattressPDPSizeOrder2} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(3) > div > span.display-name.is--sale--price
    Run keyword if          '${Content}'!='${PuffyLuxMattressPDPSizeOrder3}'      Fail        Third size in Puffy Lux Mattress PDP is Wrong. Expected Result: ${PuffyLuxMattressPDPSizeOrder3} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(4) > div > span.display-name.is--sale--price
    Run keyword if          '${Content}'!='${PuffyLuxMattressPDPSizeOrder4}'      Fail        Fourth size in Puffy Lux Mattress PDP is Wrong. Expected Result: ${PuffyLuxMattressPDPSizeOrder4} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(5) > div > span.display-name.is--sale--price
    Run keyword if          '${Content}'!='${PuffyLuxMattressPDPSizeOrder5}'      Fail        Fifth size in Puffy Lux Mattress PDP is Wrong. Expected Result: ${PuffyLuxMattressPDPSizeOrder5} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(6) > div > span.display-name.is--sale--price
    Run keyword if          '${Content}'!='${PuffyLuxMattressPDPSizeOrder6}'      Fail        Sixth size in Puffy Lux Mattress PDP is Wrong. Expected Result: ${PuffyLuxMattressPDPSizeOrder6} Actual Result: ${Content}


Check Puffy Royal Mattress sizes list order

    Wait Until Element Is Visible          css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > div > span.display-name.is--sale--price

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > div > span.display-name.is--sale--price
    Run keyword if          '${Content}'!='${PuffyRoyalMattressPDPSizeOrder1}'      Fail        First size in Puffy Royal Mattress PDP is Wrong. Expected Result: ${PuffyRoyalMattressPDPSizeOrder1} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(2) > div > span.display-name.is--sale--price
    Run keyword if          '${Content}'!='${PuffyRoyalMattressPDPSizeOrder2}'      Fail        Second size in Puffy Royal Mattress PDP is Wrong. Expected Result: ${PuffyRoyalMattressPDPSizeOrder2} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(3) > div > span.display-name.is--sale--price
    Run keyword if          '${Content}'!='${PuffyRoyalMattressPDPSizeOrder3}'      Fail        Third size in Puffy Royal Mattress PDP is Wrong. Expected Result: ${PuffyRoyalMattressPDPSizeOrder3} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(4) > div > span.display-name.is--sale--price
    Run keyword if          '${Content}'!='${PuffyRoyalMattressPDPSizeOrder4}'      Fail        Fourth size in Puffy Royal Mattress PDP is Wrong. Expected Result: ${PuffyRoyalMattressPDPSizeOrder4} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(5) > div > span.display-name.is--sale--price
    Run keyword if          '${Content}'!='${PuffyRoyalMattressPDPSizeOrder5}'      Fail        Fifth size in Puffy Royal Mattress PDP is Wrong. Expected Result: ${PuffyRoyalMattressPDPSizeOrder5} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(6) > div > span.display-name.is--sale--price
    Run keyword if          '${Content}'!='${PuffyRoyalMattressPDPSizeOrder6}'      Fail        Sixth size in Puffy Royal Mattress PDP is Wrong. Expected Result: ${PuffyRoyalMattressPDPSizeOrder6} Actual Result: ${Content}



Check Puffy Foundation sizes list order

    Wait Until Element Is Visible          css=#product_form_150983180312 > div.product-variants-holder > div > div > ul > li:nth-child(1) > div > span.display-name.is--not--sale

    ${Content}=            get text        css=#product_form_150983180312 > div.product-variants-holder > div > div > ul > li:nth-child(1) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${PuffyFoundationPDPSizeOrder1}'      Fail        First size in Puffy Foundation PDP is Wrong. Expected Result: ${PuffyFoundationPDPSizeOrder1} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_150983180312 > div.product-variants-holder > div > div > ul > li:nth-child(2) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${PuffyFoundationPDPSizeOrder2}'      Fail        Second size in Puffy Foundation PDP is Wrong. Expected Result: ${PuffyFoundationPDPSizeOrder2} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_150983180312 > div.product-variants-holder > div > div > ul > li:nth-child(3) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${PuffyFoundationPDPSizeOrder3}'      Fail        Third size in Puffy Foundation PDP is Wrong. Expected Result: ${PuffyFoundationPDPSizeOrder3} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_150983180312 > div.product-variants-holder > div > div > ul > li:nth-child(4) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${PuffyFoundationPDPSizeOrder4}'      Fail        Fourth size in Puffy Foundation PDP is Wrong. Expected Result: ${PuffyFoundationPDPSizeOrder4} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_150983180312 > div.product-variants-holder > div > div > ul > li:nth-child(5) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${PuffyFoundationPDPSizeOrder5}'      Fail        Fifth size in Puffy Foundation PDP is Wrong. Expected Result: ${PuffyFoundationPDPSizeOrder5} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_150983180312 > div.product-variants-holder > div > div > ul > li:nth-child(6) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${PuffyFoundationPDPSizeOrder6}'      Fail        Sixth size in Puffy Foundation PDP is Wrong. Expected Result: ${PuffyFoundationPDPSizeOrder6} Actual Result: ${Content}



Check Puffy ADjustable Base sizes list order

    Wait Until Element Is Visible          css=#product_form_416170377250 > div.product-variants-holder > div > div > ul > li:nth-child(1) > div > span.display-name.is--sale--price

    ${Content}=            get text        css=#product_form_416170377250 > div.product-variants-holder > div > div > ul > li:nth-child(1) > div > span.display-name.is--sale--price
    Run keyword if          '${Content}'!='${PuffyAdjustableBasePDPSizeOrder1}'      Fail        First size in Puffy Adjustable Base PDP is Wrong. Expected Result: ${PuffyAdjustableBasePDPSizeOrder1} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_416170377250 > div.product-variants-holder > div > div > ul > li:nth-child(2) > div > span.display-name.is--sale--price
    Run keyword if          '${Content}'!='${PuffyAdjustableBasePDPSizeOrder2}'      Fail        Second size in Puffy Adjustable Base PDP is Wrong. Expected Result: ${PuffyAdjustableBasePDPSizeOrder2} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_416170377250 > div.product-variants-holder > div > div > ul > li:nth-child(3) > div > span.display-name.is--sale--price
    Run keyword if          '${Content}'!='${PuffyAdjustableBasePDPSizeOrder3}'      Fail        Third size in Puffy Adjustable Base PDP is Wrong. Expected Result: ${PuffyAdjustableBasePDPSizeOrder3} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_416170377250 > div.product-variants-holder > div > div > ul > li:nth-child(4) > div > span.display-name.is--sale--price
    Run keyword if          '${Content}'!='${PuffyAdjustableBasePDPSizeOrder4}'      Fail        Fourth size in Puffy Adjustable Base PDP is Wrong. Expected Result: ${PuffyAdjustableBasePDPSizeOrder4} Actual Result: ${Content}


Check Puffy Bed Frame sizes list order

    Wait Until Element Is Visible          css=#product_form_1528789401634 > div.product-variants-holder > div > div > ul > li:nth-child(1) > div > span.display-name.is--not--sale

    ${Content}=            get text        css=#product_form_1528789401634 > div.product-variants-holder > div > div > ul > li:nth-child(1) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${PuffyBedFramePDPSizeOrder1}'      Fail        First size in Puffy Bed Frame PDP is Wrong. Expected Result: ${PuffyBedFramePDPSizeOrder1} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_1528789401634 > div.product-variants-holder > div > div > ul > li:nth-child(2) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${PuffyBedFramePDPSizeOrder2}'      Fail        Second size in Puffy Bed Frame PDP is Wrong. Expected Result: ${PuffyBedFramePDPSizeOrder2} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_1528789401634 > div.product-variants-holder > div > div > ul > li:nth-child(3) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${PuffyBedFramePDPSizeOrder3}'      Fail        Third size in Puffy Bed Frame PDP is Wrong. Expected Result: ${PuffyBedFramePDPSizeOrder3} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_1528789401634 > div.product-variants-holder > div > div > ul > li:nth-child(4) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${PuffyBedFramePDPSizeOrder4}'      Fail        Fourth size in Puffy Bed Frame PDP is Wrong. Expected Result: ${PuffyBedFramePDPSizeOrder4} Actual Result: ${Content}


Check Puffy Comforter sizes list order

    Wait Until Element Is Visible          css=#product_form_1536090603554 > div.product-variants-holder > div > div > ul > li:nth-child(1) > div > span.display-name.is--not--sale

    ${Content}=            get text        css=#product_form_1536090603554 > div.product-variants-holder > div > div > ul > li:nth-child(1) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${PuffyComforterPDPSizeOrder1}'      Fail        First size in Puffy Comforter PDP is Wrong. Expected Result: ${PuffyComforterPDPSizeOrder1} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_1536090603554 > div.product-variants-holder > div > div > ul > li:nth-child(2) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${PuffyComforterPDPSizeOrder2}'      Fail        Second size in Puffy Comforter PDP is Wrong. Expected Result: ${PuffyComforterPDPSizeOrder2} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_1536090603554 > div.product-variants-holder > div > div > ul > li:nth-child(3) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${PuffyComforterPDPSizeOrder3}'      Fail        Third size in Puffy Comforter PDP is Wrong. Expected Result: ${PuffyComforterPDPSizeOrder3} Actual Result: ${Content}

Check Puffy Pillow sizes list order

    Wait Until Element Is Visible          css=#product_form_625398710306 > div.product-variants-holder > div > div > ul > li.option.selected.focus > div > span.display-name.is--not--sale

    ${Content}=            get text        css=#product_form_625398710306 > div.product-variants-holder > div > div > ul > li.option.selected.focus > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${PuffyPillowPDPSizeOrder1}'      Fail        First size in Puffy Pillow PDP is Wrong. Expected Result: ${PuffyPillowPDPSizeOrder1} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_625398710306 > div.product-variants-holder > div > div > ul > li:nth-child(2) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${PuffyPillowPDPSizeOrder2}'      Fail        Second size in Puffy Pillow PDP is Wrong. Expected Result: ${PuffyPillowPDPSizeOrder2} Actual Result: ${Content}

Check Puffy Mattress Pad sizes list order

    Wait Until Element Is Visible          css=#product_form_602344357922 > div.product-variants-holder > div > div > ul > li:nth-child(1) > div > span.display-name.is--not--sale

    ${Content}=            get text        css=#product_form_602344357922 > div.product-variants-holder > div > div > ul > li:nth-child(1) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${PuffyMattressPadPDPSizeOrder1}'      Fail        First size in Puffy Pillow PDP is Wrong. Expected Result: ${PuffyMattressPadPDPSizeOrder1} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_602344357922 > div.product-variants-holder > div > div > ul > li:nth-child(2) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${PuffyMattressPadPDPSizeOrder2}'      Fail        Second size in Puffy Pillow PDP is Wrong. Expected Result: ${PuffyMattressPadPDPSizeOrder2} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_602344357922 > div.product-variants-holder > div > div > ul > li:nth-child(3) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${PuffyMattressPadPDPSizeOrder3}'      Fail        Third size in Puffy Pillow PDP is Wrong. Expected Result: ${PuffyMattressPadPDPSizeOrder3} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_602344357922 > div.product-variants-holder > div > div > ul > li:nth-child(4) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${PuffyMattressPadPDPSizeOrder4}'      Fail        Fourth size in Puffy Pillow PDP is Wrong. Expected Result: ${PuffyMattressPadPDPSizeOrder4} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_602344357922 > div.product-variants-holder > div > div > ul > li:nth-child(5) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${PuffyMattressPadPDPSizeOrder5}'      Fail        Fifth size in Puffy Pillow PDP is Wrong. Expected Result: ${PuffyMattressPadPDPSizeOrder5} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_602344357922 > div.product-variants-holder > div > div > ul > li:nth-child(6) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${PuffyMattressPadPDPSizeOrder6}'      Fail        Sixth size in Puffy Pillow PDP is Wrong. Expected Result: ${PuffyMattressPadPDPSizeOrder6} Actual Result: ${Content}

Check Puffy Mattress Protector sizes list order

    Wait Until Element Is Visible          css=#product_form_1508181475362 > div.product-variants-holder > div > div > ul > li:nth-child(1) > div > span.display-name.is--not--sale

    ${Content}=            get text        css=#product_form_1508181475362 > div.product-variants-holder > div > div > ul > li:nth-child(1) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${PuffyMattressProtectorPDPSizeOrder1}'      Fail        First size in Puffy Pillow PDP is Wrong. Expected Result: ${PuffyMattressProtectorPDPSizeOrder1} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_1508181475362 > div.product-variants-holder > div > div > ul > li:nth-child(2) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${PuffyMattressProtectorPDPSizeOrder2}'      Fail        Second size in Puffy Pillow PDP is Wrong. Expected Result: ${PuffyMattressProtectorPDPSizeOrder2} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_1508181475362 > div.product-variants-holder > div > div > ul > li:nth-child(3) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${PuffyMattressProtectorPDPSizeOrder3}'      Fail        Third size in Puffy Pillow PDP is Wrong. Expected Result: ${PuffyMattressProtectorPDPSizeOrder3} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_1508181475362 > div.product-variants-holder > div > div > ul > li:nth-child(4) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${PuffyMattressProtectorPDPSizeOrder4}'      Fail        Fourth size in Puffy Pillow PDP is Wrong. Expected Result: ${PuffyMattressProtectorPDPSizeOrder4} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_1508181475362 > div.product-variants-holder > div > div > ul > li:nth-child(5) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${PuffyMattressProtectorPDPSizeOrder5}'      Fail        Fifth size in Puffy Pillow PDP is Wrong. Expected Result: ${PuffyMattressProtectorPDPSizeOrder5} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_1508181475362 > div.product-variants-holder > div > div > ul > li:nth-child(6) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${PuffyMattressProtectorPDPSizeOrder6}'      Fail        Sixth size in Puffy Pillow PDP is Wrong. Expected Result: ${PuffyMattressProtectorPDPSizeOrder6} Actual Result: ${Content}




Check Puffy Topper feel options

    Wait Until Element Is Visible          css=#product_form_1837366476834 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-feel > div > ul > li.option.selected.focus > div > span.display-name.is--not--sale

    ${Content}=            get text        css=#product_form_1837366476834 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-feel > div > ul > li.option.selected.focus > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${PuffyTopperPDPFeelOrder1}'      Fail        First feel option in Puffy Topper PDP is Wrong. Expected Result: ${PuffyTopperPDPFeelOrder1} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_1837366476834 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-feel > div > ul > li:nth-child(2) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${PuffyTopperPDPFeelOrder2}'      Fail        Second feel option in Puffy Topper PDP is Wrong. Expected Result: ${PuffyTopperPDPFeelOrder1} Actual Result: ${Content}. Expected Result: ${PuffyTopperPDPFeelOrder2} Actual Result: ${Content}

Check Puffy Topper sizes list order

    Wait Until Element Is Visible          css=#product_form_1837366476834 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > div > span.display-name.is--not--sale

    ${Content}=            get text        css=#product_form_1837366476834 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${PuffyTopperPDPSizeOrder1}'      Fail        First size in Puffy Topper PDP is Wrong. Expected Result: ${PuffyMattressProtectorPDPSizeOrder1} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_1837366476834 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(2) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${PuffyTopperPDPSizeOrder2}'      Fail        Second size in Puffy Topper PDP is Wrong. Expected Result: ${PuffyMattressProtectorPDPSizeOrder2} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_1837366476834 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(3) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${PuffyTopperPDPSizeOrder3}'      Fail        Third size in Puffy Topper PDP is Wrong. Expected Result: ${PuffyMattressProtectorPDPSizeOrder3} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_1837366476834 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(4) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${PuffyTopperPDPSizeOrder4}'      Fail        Fourth size in Puffy Topper PDP is Wrong. Expected Result: ${PuffyMattressProtectorPDPSizeOrder4} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_1837366476834 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(5) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${PuffyTopperPDPSizeOrder5}'      Fail        Fifth size in Puffy Topper PDP is Wrong. Expected Result: ${PuffyMattressProtectorPDPSizeOrder5} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_1837366476834 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(6) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${PuffyTopperPDPSizeOrder6}'      Fail        Sixth size in Puffy Topper PDP is Wrong. Expected Result: ${PuffyMattressProtectorPDPSizeOrder6} Actual Result: ${Content}


Check Puffy Blanket sizes list order

    Wait Until Element Is Visible          css=#product_form_4412718972962 > div.product-variants-holder > div > div > div > div > span.display-name.is--not--sale
    ${Content}=            get text        css=#product_form_4412718972962 > div.product-variants-holder > div > div > div > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${PuffyBlanketPDPSizeOrder1}'      Fail        First size in Puffy Blanket PDP is Wrong. Expected Result: ${PuffyBlanketPDPSizeOrder1} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4412718972962 > div.product-variants-holder > div > div > ul > li:nth-child(2) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${PuffyBlanketPDPSizeOrder2}'      Fail        Second size in Puffy Blanket PDP is Wrong. Expected Result: ${PuffyBlanketPDPSizeOrder2} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4412718972962 > div.product-variants-holder > div > div > ul > li:nth-child(3) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${PuffyBlanketPDPSizeOrder3}'      Fail        Third size in Puffy Blanket PDP is Wrong. Expected Result: ${PuffyBlanketPDPSizeOrder3} Actual Result: ${Content}

Check Puffy Weighted Blanket sizes list order

    Wait Until Element Is Visible          css=#product_form_3773124771874 > div.product-variants-holder > div > div > ul > li:nth-child(1) > div > span.display-name.is--not--sale
    ${Content}=            get text        css=#product_form_3773124771874 > div.product-variants-holder > div > div > ul > li:nth-child(1) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${PuffyWeightedBlanketPDPSizeOrder1}'      Fail        First size in Puffy Weighted Blanket PDP is Wrong. Expected Result: ${PuffyWeightedBlanketPDPSizeOrder1} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_3773124771874 > div.product-variants-holder > div > div > ul > li.option.selected.focus > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${PuffyWeightedBlanketPDPSizeOrder2}'      Fail        Second size in Puffy Weighted Blanket PDP is Wrong. Expected Result: ${PuffyWeightedBlanketPDPSizeOrder2} Actual Result: ${Content}

Check Puffy Sheets color options

    Wait Until Element Is Visible          css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-color > div > ul > li.option.selected.focus > div > span.display-name.is--not--sale

    ${Content}=            get text        css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-color > div > ul > li.option.selected.focus > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${PuffySheetsPDPColorOrder1}'      Fail        First color option in Puffy Sheets PDP is Wrong. Expected Result: ${PuffySheetsPDPColorOrder1} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-color > div > ul > li:nth-child(2)
    Run keyword if          '${Content}'!='${PuffySheetsPDPColorOrder2}'      Fail        Second color option in Puffy Sheets PDP is Wrong. Expected Result: ${PuffySheetsPDPColorOrder2} Actual Result: ${Content}


Check Puffy Sheets sizes list order

    Wait Until Element Is Visible          css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > div > span.display-name.is--not--sale

    ${Content}=            get text        css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(1) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${PuffySheetsPDPSizeOrder1}'      Fail        First size in Puffy Sheets PDP is Wrong. Expected Result: ${PuffySheetsPDPSizeOrder1} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(2) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${PuffySheetsPDPSizeOrder2}'      Fail        Second size in Puffy Sheets PDP is Wrong. Expected Result: ${PuffySheetsPDPSizeOrder2} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(3) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${PuffySheetsPDPSizeOrder3}'      Fail        Third size in Puffy Sheets PDP is Wrong. Expected Result: ${PuffySheetsPDPSizeOrder3} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(4) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${PuffySheetsPDPSizeOrder4}'      Fail        Fourth size in Puffy Sheets PDP is Wrong. Expected Result: ${PuffySheetsPDPSizeOrder4} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(5) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${PuffySheetsPDPSizeOrder5}'      Fail        Fifth size in Puffy Sheets PDP is Wrong. Expected Result: ${PuffySheetsPDPSizeOrder5} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4359826341922 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > ul > li:nth-child(6) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${PuffySheetsPDPSizeOrder6}'      Fail        Sixth size in Puffy Sheets PDP is Wrong. Expected Result: ${PuffySheetsPDPSizeOrder6} Actual Result: ${Content}

Check Puffy Dog Bed sizes list order

    Wait Until Element Is Visible          css=#product_form_4365356662818 > div.product-variants-holder > div > div > ul > li.option.selected.focus > div > span.display-name.is--not--sale

    ${Content}=            get text        css=#product_form_4365356662818 > div.product-variants-holder > div > div > ul > li.option.selected.focus > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${PuffyDogBedPDPSizeOrder1}'      Fail        First size in Puffy Dog Bed PDP is Wrong. Expected Result: ${PuffyDogBedPDPSizeOrder1} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4365356662818 > div.product-variants-holder > div > div > ul > li:nth-child(2) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${PuffyDogBedPDPSizeOrder2}'      Fail        Second size in Puffy Dog Bed PDP is Wrong. Expected Result: ${PuffyDogBedPDPSizeOrder2} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4365356662818 > div.product-variants-holder > div > div > ul > li:nth-child(3) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${PuffyDogBedPDPSizeOrder3}'      Fail        Third size in Puffy Dog Bed PDP is Wrong. Expected Result: ${PuffyDogBedPDPSizeOrder3} Actual Result: ${Content}

Check Puffy Rug sizes list order

    Wait Until Element Is Visible          css=#product_form_4125949657122 > div.product-variants-holder > div.product-variant.selector-wrapper.jsRealOptions.product-size > div > ul > li.option.selected.focus > div > span.display-name.is--not--sale

    ${Content}=            get text        css=#product_form_4125949657122 > div.product-variants-holder > div.product-variant.selector-wrapper.jsRealOptions.product-size > div > ul > li.option.selected.focus > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${PuffyRugPDPSizeOrder1}'      Fail        First size in Puffy Rug PDP is Wrong. Expected Result: ${PuffyRugPDPSizeOrder1} Actual Result: ${Content}

    ${Content}=            get text        css=#product_form_4125949657122 > div.product-variants-holder > div.product-variant.selector-wrapper.jsRealOptions.product-size > div > ul > li:nth-child(2) > div > span.display-name.is--not--sale
    Run keyword if          '${Content}'!='${PuffyRugPDPSizeOrder2}'      Fail        Second size in Puffy Rug PDP is Wrong. Expected Result: ${PuffyRugPDPSizeOrder2} Actual Result: ${Content}


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
    Click element           css=#product_form_602344357922 > div.product-variants-holder > div > div > ul > li:nth-child(1)
Select Puffy Mattress Pad TwinXL
    Click element           css=#product_form_602344357922 > div.product-variants-holder > div > div > ul > li:nth-child(2)
Select Puffy Mattress Pad Full
    Click element           css=#product_form_602344357922 > div.product-variants-holder > div > div > ul > li:nth-child(3)
Select Puffy Mattress Pad Queen
    Click element           css=#product_form_602344357922 > div.product-variants-holder > div > div > ul > li:nth-child(4)
Select Puffy Mattress Pad King
    Click element           css=#product_form_602344357922 > div.product-variants-holder > div > div > ul > li:nth-child(5)
Select Puffy Mattress Pad Cal King
    Click element           css=#product_form_602344357922 > div.product-variants-holder > div > div > ul > li:nth-child(6)

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
    Click element           css=#product_form_4412718972962 > div.product-variants-holder > div > div > ul > li.option.selected.focus
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
    Run keyword if          '${Klarna}'!='${PuffyMattressTwinKlarna300Off}'      Fail        Wrong Puffy Mattress Twin Size monthly payment for Klarna. Expected Result: ${PuffyMattressTwinKlarna300Off} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_345108381730 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PuffyMattressTwinSplitIt300Off}'      Fail      Wrong Puffy Mattress Twin Size monthly payment for Splitit. Expected Result: ${PuffyMattressTwinSplitIt300Off} Actual Result: ${Splitit}

Check Puffy Mattress TwinXL size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_345108381730 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PuffyMattressTwinXLKlarna300Off}'      Fail        Wrong Puffy Mattress Twin XL Size monthly payment for Klarna. Expected Result: ${PuffyMattressTwinXLKlarna300Off} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_345108381730 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PuffyMattressTwinXLSplitIt300Off}'      Fail      Wrong Puffy Mattress Twin XL Size monthly payment for Splitit. Expected Result: ${PuffyMattressTwinXLSplitIt300Off} Actual Result: ${Splitit}

Check Puffy Mattress Full size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_345108381730 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PuffyMattressFullKlarna300Off}'      Fail        Wrong Puffy Mattress Full Size monthly payment for Klarna. Expected Result: ${PuffyMattressFullKlarna300Off} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_345108381730 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PuffyMattressFullSplitIt300Off}'      Fail      Wrong Puffy Mattress Full Size monthly payment for Splitit. Expected Result: ${PuffyMattressFullSplitIt300Off} Actual Result: ${Splitit}

Check Puffy Mattress Queen size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_345108381730 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PuffyMattressQueenKlarna300Off}'      Fail        Wrong Puffy Mattress Queen Size monthly payment for Klarna. Expected Result: ${PuffyMattressQueenKlarna300Off} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_345108381730 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PuffyMattressQueenSplitIt300Off}'      Fail      Wrong Puffy Mattress Queen Size monthly payment for Splitit. Expected Result: ${PuffyMattressQueenSplitIt300Off} Actual Result: ${Splitit}

Check Puffy Mattress King size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_345108381730 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PuffyMattressKingKlarna300Off}'      Fail        Wrong Puffy Mattress King Size monthly payment for Klarna. Expected Result: ${PuffyMattressKingKlarna300Off} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_345108381730 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PuffyMattressKingSplitIt300Off}'      Fail      Wrong Puffy Mattress King Size monthly payment for Splitit. Expected Result: ${PuffyMattressKingSplitIt300Off} Actual Result: ${Splitit}

Check Puffy Mattress Cal King size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_345108381730 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PuffyMattressCalKingKlarna300Off}'      Fail        Wrong Puffy Mattress Cal King Size monthly payment for Klarna. Expected Result: ${PuffyMattressCalKingKlarna300Off} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_345108381730 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PuffyMattressCalKingSplitIt300Off}'      Fail      Wrong Puffy Mattress Cal King Size monthly payment for Splitit. Expected Result: ${PuffyMattressCalKingSplitIt300Off} Actual Result: ${Splitit}


Check Puffy Lux Mattress Twin size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_549302042658 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PuffyLuxMattressTwinKlarna300Off}'      Fail        Wrong Puffy Lux Mattress Twin Size monthly payment for Klarna. Expected Result: ${PuffyLuxMattressTwinKlarna300Off} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_549302042658 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PuffyLuxMattressTwinSplitIt300Off}'      Fail      Wrong Puffy Lux Mattress Twin Size monthly payment for Splitit. Expected Result: ${PuffyLuxMattressTwinSplitIt300Off} Actual Result: ${Splitit}

Check Puffy Lux Mattress TwinXL size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_549302042658 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PuffyLuxMattressTwinXLKlarna300Off}'      Fail        Wrong Puffy Lux Mattress Twin XL Size monthly payment for Klarna. Expected Result: ${PuffyLuxMattressTwinXLKlarna300Off} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_549302042658 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PuffyLuxMattressTwinXLSplitIt300Off}'      Fail      Wrong Puffy Lux Mattress Twin XL Size monthly payment for Splitit. Expected Result: ${PuffyLuxMattressTwinXLSplitIt300Off} Actual Result: ${Splitit}

Check Puffy Lux Mattress Full size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_549302042658 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PuffyLuxMattressFullKlarna300Off}'      Fail        Wrong Puffy Lux Mattress Full Size monthly payment for Klarna. Expected Result: ${PuffyLuxMattressFullKlarna300Off} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_549302042658 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PuffyLuxMattressFullSplitIt300Off}'      Fail      Wrong Puffy Lux Mattress Full Size monthly payment for Splitit. Expected Result: ${PuffyLuxMattressFullSplitIt300Off} Actual Result: ${Splitit}

Check Puffy Lux Mattress Queen size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_549302042658 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PuffyLuxMattressQueenKlarna300Off}'      Fail        Wrong Puffy Lux Mattress Queen Size monthly payment for Klarna. Expected Result: ${PuffyLuxMattressQueenKlarna300Off} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_549302042658 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PuffyLuxMattressQueenSplitIt300Off}'      Fail      Wrong Puffy Lux Mattress Queen Size monthly payment for Splitit. Expected Result: ${PuffyLuxMattressQueenSplitIt300Off} Actual Result: ${Splitit}

Check Puffy Lux Mattress King size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_549302042658 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PuffyLuxMattressKingKlarna300Off}'      Fail        Wrong Puffy Lux Mattress King Size monthly payment for Klarna. Expected Result: ${PuffyLuxMattressKingKlarna300Off} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_549302042658 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PuffyLuxMattressKingSplitIt300Off}'      Fail      Wrong Puffy Lux Mattress King Size monthly payment for Splitit. Expected Result: ${PuffyLuxMattressKingSplitIt300Off} Actual Result: ${Splitit}

Check Puffy Lux Mattress Cal King size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_549302042658 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PuffyLuxMattressCalKingKlarna300Off}'      Fail        Wrong Puffy Lux Mattress Cal King Size monthly payment for Klarna. Expected Result: ${PuffyLuxMattressCalKingKlarna300Off} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_549302042658 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PuffyLuxMattressCalKingSplitIt300Off}'      Fail      Wrong Puffy Lux Mattress Cal King Size monthly payment for Splitit. Expected Result: ${PuffyLuxMattressCalKingSplitIt300Off} Actual Result: ${Splitit}

Check Puffy Royal Mattress Twin size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_3832788910114 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PuffyRoyalMattressTwinKlarna300Off}'      Fail        Wrong Puffy Lux Mattress Twin Size monthly payment for Klarna. Expected Result: ${PuffyRoyalMattressTwinKlarna300Off} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_3832788910114 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PuffyRoyalMattressTwinSplitIt300Off}'      Fail      Wrong Puffy Lux Mattress Twin Size monthly payment for Splitit. Expected Result: ${PuffyRoyalMattressTwinSplitIt300Off} Actual Result: ${Splitit}

Check Puffy Royal Mattress TwinXL size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_3832788910114 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PuffyRoyalMattressTwinXLKlarna300Off}'      Fail        Wrong Puffy Lux Mattress Twin XL Size monthly payment for Klarna. Expected Result: ${PuffyRoyalMattressTwinXLKlarna300Off} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_3832788910114 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PuffyRoyalMattressTwinXLSplitIt300Off}'      Fail      Wrong Puffy Lux Mattress Twin XL Size monthly payment for Splitit. Expected Result: ${PuffyRoyalMattressTwinXLSplitIt300Off} Actual Result: ${Splitit}

Check Puffy Royal Mattress Full size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_3832788910114 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PuffyRoyalMattressFullKlarna300Off}'      Fail        Wrong Puffy Lux Mattress Full Size monthly payment for Klarna. Expected Result: ${PuffyRoyalMattressFullKlarna300Off} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_3832788910114 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PuffyRoyalMattressFullSplitIt300Off}'      Fail      Wrong Puffy Lux Mattress Full Size monthly payment for Splitit. Expected Result: ${PuffyRoyalMattressFullSplitIt300Off} Actual Result: ${Splitit}

Check Puffy Royal Mattress Queen size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_3832788910114 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PuffyRoyalMattressQueenKlarna300Off}'      Fail        Wrong Puffy Lux Mattress Queen Size monthly payment for Klarna. Expected Result: ${PuffyRoyalMattressQueenKlarna300Off} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_3832788910114 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PuffyRoyalMattressQueenSplitIt300Off}'      Fail      Wrong Puffy Lux Mattress Queen Size monthly payment for Splitit. Expected Result: ${PuffyRoyalMattressQueenSplitIt300Off} Actual Result: ${Splitit}

Check Puffy Royal Mattress King size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_3832788910114 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PuffyRoyalMattressKingKlarna300Off}'      Fail        Wrong Puffy Royal Mattress King Size monthly payment for Klarna. Expected Result: ${PuffyRoyalMattressKingKlarna300Off} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_3832788910114 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PuffyRoyalMattressKingSplitIt300Off}'      Fail      Wrong Puffy Lux Mattress King Size monthly payment for Splitit. Expected Result: ${PuffyRoyalMattressKingSplitIt300Off} Actual Result: ${Splitit}

Check Puffy Royal Mattress Cal King size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_3832788910114 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PuffyRoyalMattressCalKingKlarna300Off}'      Fail        Wrong Puffy Lux Mattress Cal King Size monthly payment for Klarna. Expected Result: ${PuffyRoyalMattressCalKingKlarna300Off} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_3832788910114 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PuffyRoyalMattressCalKingSplitIt300Off}'      Fail      Wrong Puffy Lux Mattress Cal King Size monthly payment for Splitit. Expected Result: ${PuffyRoyalMattressCalKingSplitIt300Off} Actual Result: ${Splitit}

Check Puffy Foundation Twin size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_150983180312 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PuffyFoundationTwinKlarnaNoOff}'      Fail        Wrong Puffy Foundation Twin Size monthly payment for Klarna. Expected Result: ${PuffyFoundationTwinKlarnaNoOff} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_150983180312 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PuffyFoundationTwinSplitItNoOff}'      Fail      Wrong Puffy Foundation Twin Size monthly payment for Splitit. Expected Result: ${PuffyFoundationTwinSplitItNoOff} Actual Result: ${Splitit}

Check Puffy Foundation TwinXL size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_150983180312 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PuffyFoundationTwinXLKlarnaNoOff}'      Fail        Wrong Puffy Lux Mattress Twin XL Size monthly payment for Klarna. Expected Result: ${PuffyFoundationTwinXLKlarnaNoOff} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_150983180312 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PuffyFoundationTwinXLSplitItNoOff}'      Fail      Wrong Puffy Lux Mattress Twin XL Size monthly payment for Splitit. Expected Result: ${PuffyFoundationTwinXLSplitItNoOff} Actual Result: ${Splitit}

Check Puffy Foundation Full size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_150983180312 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PuffyFoundationFullKlarnaNoOff}'      Fail        Wrong Puffy Foundation Full Size monthly payment for Klarna. Expected Result: ${PuffyFoundationFullKlarnaNoOff} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_150983180312 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PuffyFoundationFullSplitItNoOff}'      Fail      Wrong Foundation Full Size monthly payment for Splitit. Expected Result: ${PuffyFoundationFullSplitItNoOff} Actual Result: ${Splitit}

Check Puffy Foundation Queen size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_150983180312 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PuffyFoundationQueenKlarnaNoOff}'     Fail        Wrong Puffy Foundation Queen Size monthly payment for Klarna. Expected Result: ${PuffyFoundationQueenKlarnaNoOff} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_150983180312 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PuffyFoundationQueenSplitItNoOff}'      Fail      Wrong Puffy Foundation Queen Size monthly payment for Splitit. Expected Result: ${PuffyFoundationQueenSplitItNoOff} Actual Result: ${Splitit}

Check Puffy Foundation King size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_150983180312 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PuffyFoundationKingKlarnaNoOff}'      Fail        Wrong Puffy Foundation King Size monthly payment for Klarna. Expected Result: ${PuffyFoundationKingKlarnaNoOff} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_150983180312 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PuffyFoundationKingSplitItNoOff}'      Fail      Wrong Puffy Foundation King Size monthly payment for Splitit. Expected Result: ${PuffyFoundationKingSplitItNoOff} Actual Result: ${Splitit}

Check Puffy Foundation Cal King size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_150983180312 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PuffyFoundationCalKingKlarnaNoOff}'      Fail        Wrong Puffy Foundation Cal King Size monthly payment for Klarna. Expected Result: ${PuffyFoundationCalKingKlarnaNoOff} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_150983180312 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PuffyFoundationCalKingSplitItNoOff}'      Fail      Wrong Puffy Foundation Cal King Size monthly payment for Splitit. Expected Result: ${PuffyFoundationCalKingSplitItNoOff} Actual Result: ${Splitit}

Check Puffy Adjustable Base TwinXL size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_416170377250 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PuffyAdjustableBaseTwinXLKlarnaNoOff}'      Fail        Wrong Puffy Adjustable Base TwinXL Size monthly payment for Klarna. Expected Result: ${PuffyAdjustableBaseTwinXLKlarnaNoOff} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_416170377250 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PuffyAdjustableBaseTwinXLSplitIt300Off}'      Fail      Wrong Puffy Adjustable Base TwinXL Size monthly payment for Splitit. Expected Result: ${PuffyAdjustableBaseTwinXLSplitIt300Off} Actual Result: ${Splitit}

Check Puffy Adjustable Base Full size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_416170377250 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PuffyAdjustableBaseFullKlarnaNoOff}'      Fail        Wrong Puffy Adjustable Base Full Size monthly payment for Klarna. Expected Result: ${PuffyAdjustableBaseFullKlarnaNoOff} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_416170377250 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PuffyAdjustableBaseFullSplitIt300Off}'      Fail      Wrong Puffy Adjustable Base Full Size monthly payment for Splitit. Expected Result: ${PuffyAdjustableBaseFullSplitIt300Off} Actual Result: ${Splitit}

Check Puffy Adjustable Base Queen size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_416170377250 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PuffyAdjustableBaseQueenKlarnaNoOff}'      Fail        Wrong Puffy Adjustable Base Queen Size monthly payment for Klarna. Expected Result: ${PuffyAdjustableBaseQueenKlarnaNoOff} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_416170377250 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PuffyAdjustableBaseQueenSplitIt300Off}'      Fail      Wrong Puffy Adjustable Base Queen Size monthly payment for Splitit. Expected Result: ${PuffyAdjustableBaseQueenSplitIt300Off} Actual Result: ${Splitit}

Check Puffy Adjustable Base Split King size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_416170377250 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PuffyAdjustableBaseSplitKingKlarnaNoOff}'     Fail        Wrong Puffy Adjustable Base Split King Size monthly payment for Klarna. Expected Result: ${PuffyAdjustableBaseSplitKingKlarnaNoOff} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_416170377250 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PuffyAdjustableBaseSplitKingSplitIt300Off}'      Fail      Wrong Puffy Adjustable Base Split King Size monthly payment for Splitit. Expected Result: ${PuffyAdjustableBaseSplitKingSplitIt300Off} Actual Result: ${Splitit}




Check Puffy Bed Frame Full size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_1528789401634 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PuffyBedFrameFullKlarnaNoOff}'      Fail        Wrong Puffy Bed Frame Full Size monthly payment for Klarna. Expected Result: ${PuffyBedFrameFullKlarnaNoOff} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_1528789401634 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PuffyBedFrameFullSplitIt300Off}'      Fail      Wrong Puffy Bed Frame Full Size monthly payment for Splitit. Expected Result: ${PuffyBedFrameFullSplitIt300Off} Actual Result: ${Splitit}

Check Puffy Bed Frame Queen size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_1528789401634 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PuffyBedFrameQueenKlarnaNoOff}'      Fail        Wrong Puffy Bed Frame Queen Size monthly payment for Klarna. Expected Result: ${PuffyBedFrameQueenKlarnaNoOff} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_1528789401634 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PuffyBedFrameQueenSplitIt300Off}'      Fail      Wrong Puffy Bed Frame Queen Size monthly payment for Splitit. Expected Result: ${PuffyBedFrameQueenSplitIt300Off} Actual Result: ${Splitit}

Check Puffy Bed Frame King size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_1528789401634 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PuffyBedFrameKingKlarnaNoOff}'      Fail        Wrong Puffy Bed Frame King Size monthly payment for Klarna. Expected Result: ${PuffyBedFrameKingKlarnaNoOff} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_1528789401634 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PuffyBedFrameKingSplitIt300Off}'      Fail      Wrong Puffy Bed Frame King Size monthly payment for Splitit. Expected Result: ${PuffyBedFrameKingSplitIt300Off} Actual Result: ${Splitit}

Check Puffy Bed Frame Cal King size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_1528789401634 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PuffyBedFrameCalKingKlarnaNoOff}'     Fail        Wrong Puffy Bed Frame Cal King Size monthly payment for Klarna. Expected Result: ${PuffyBedFrameCalKingKlarnaNoOff} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_1528789401634 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PuffyBedFrameCalKingSplitIt300Off}'      Fail      Wrong Puffy Bed Frame Cal King Size monthly payment for Splitit. Expected Result: ${PuffyBedFrameCalKingSplitIt300Off} Actual Result: ${Splitit}




Check Puffy Comforter Twin/Twin XL size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_1536090603554 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PuffyComforterTwin/TwinXLNoOff}'      Fail        Wrong Puffy Comforter Twin/Twin XL Size monthly payment for Klarna. Expected Result: ${PuffyComforterTwin/TwinXLNoOff} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_1536090603554 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PuffyComforterTwin/TwinXLSplitItNoOff}'      Fail      Wrong Puffy Comforter Twin/Twin XL Size monthly payment for Splitit. Expected Result: ${PuffyBedFrameFullSplitIt300Off} Actual Result: ${Splitit}

Check Puffy Comforter Full/Queen size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_1536090603554 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PuffyComforterFull/QueenNoOff}'      Fail        Wrong Puffy Comforter Full/Queen Size monthly payment for Klarna. Expected Result: ${PuffyComforterFull/QueenNoOff} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_1536090603554 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PuffyComforterFull/QueenSplitItNoOff}'      Fail      Wrong Puffy Comforter Full/Queen Size monthly payment for Splitit. Expected Result: ${PuffyBedFrameQueenSplitIt300Off} Actual Result: ${Splitit}

Check Puffy Comforter King/Cal King size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_1536090603554 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PuffyComforterKing/CalKingNoOff}'      Fail        Wrong Puffy Comforter King/Cal King Size monthly payment for Klarna. Expected Result: ${PuffyComforterKing/CalKingNoOff} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_1536090603554 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PuffyComforterKing/CalKingSplitItNoOff}'      Fail      Wrong Puffy Comforter King/Cal King Size monthly payment for Splitit. Expected Result: ${PuffyBedFrameKingSplitIt300Off} Actual Result: ${Splitit}

Check Puffy Pillow Standard size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_625398710306 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PuffyPillowStandardKlarnaNoOff}'      Fail        Wrong Puffy Pillow Standard Size monthly payment for Klarna. Expected Result: ${PuffyPillowStandardKlarnaNoOff} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_625398710306 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PuffyPillowStandardSplitItNoOff}'      Fail      Wrong Puffy Pillow Standard Size monthly payment for Splitit. Expected Result: ${PuffyPillowStandardSplitItNoOff} Actual Result: ${Splitit}

Check Puffy Pillow King size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_625398710306 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PuffyPillowKingKlarnaNoOff}'      Fail        Wrong Puffy Pillow King Size monthly payment for Klarna. Expected Result: ${PuffyPillowKingKlarnaNoOff} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_625398710306 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PuffyPillowKingSplitItNoOff}'      Fail      Wrong Puffy Pillow King Size monthly payment for Splitit. Expected Result: ${PuffyPillowKingSplitItNoOff} Actual Result: ${Splitit}

Check Puffy Body Pillow monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_4431983280162 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PuffyBodyPillowKlarnaNoOff}'      Fail        Wrong Puffy Body Pillow monthly payment for Klarna. Expected Result: ${PuffyPillowKingKlarnaNoOff} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_4431983280162 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PuffyBodyPillowSplitItNoOff}'      Fail      Wrong Puffy Body Pillow monthly payment for Splitit. Expected Result: ${PuffyPillowKingSplitItNoOff} Actual Result: ${Splitit}

Check Puffy Mattress Pad Twin size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_602344357922 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PuffyMattressPadTwinKlarnaNoOff}'      Fail        Wrong Puffy Mattress Pad Twin size monthly payment for Klarna. Expected Result: ${PuffyMattressPadTwinKlarnaNoOff} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_602344357922 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PuffyMattressPadTwinSplitItNoOff}'      Fail      Wrong Puffy Mattress Pad Twin size monthly payment for Splitit. Expected Result: ${PuffyMattressPadTwinSplitItNoOff} Actual Result: ${Splitit}
Check Puffy Mattress Pad TwinXL size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_602344357922 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PuffyMattressPadTwinXLKlarnaNoOff}'      Fail        Wrong Puffy Mattress Pad TwinXL size monthly payment for Klarna. Expected Result: ${PuffyMattressPadTwinXLKlarnaNoOff} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_602344357922 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PuffyMattressPadTwinXLSplitItNoOff}'      Fail      Wrong Puffy Mattress Pad TwinXL size payment for Splitit. Expected Result: ${PuffyMattressPadTwinXLSplitItNoOff} Actual Result: ${Splitit}
Check Puffy Mattress Pad Full size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_602344357922 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PuffyMattressPadFullKlarnaNoOff}'      Fail        Wrong Puffy Mattress Pad Full size monthly payment for Klarna. Expected Result: ${PuffyMattressPadFullKlarnaNoOff} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_602344357922 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PuffyMattressPadFullSplitItNoOff}'      Fail      Wrong Puffy Mattress Pad Full size payment for Splitit. Expected Result: ${PuffyMattressPadFullSplitItNoOff} Actual Result: ${Splitit}
Check Puffy Mattress Pad Queen size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_602344357922 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PuffyMattressPadQueenKlarnaNoOff}'      Fail        Wrong Puffy Mattress Pad Queen size monthly payment for Klarna. Expected Result: ${PuffyMattressPadQueenKlarnaNoOff} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_602344357922 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PuffyMattressPadQueenSplitItNoOff}'      Fail      Wrong Puffy Mattress Pad Queen size monthly payment for Splitit. Expected Result: ${PuffyMattressPadQueenSplitItNoOff} Actual Result: ${Splitit}
Check Puffy Mattress Pad King size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_602344357922 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PuffyMattressPadKingKlarnaNoOff}'      Fail        Wrong Puffy Mattress Pad King size monthly payment for Klarna. Expected Result: ${PuffyMattressPadKingKlarnaNoOff} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_602344357922 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PuffyMattressPadKingSplitItNoOff}'      Fail      Wrong Puffy Mattress Pad King size monthly payment for Splitit. Expected Result: ${PuffyMattressPadKingSplitItNoOff} Actual Result: ${Splitit}
Check Puffy Mattress Pad Cal King size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_602344357922 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PuffyMattressPadCalKingKlarnaNoOff}'      Fail        Wrong Puffy Mattress Pad Cal King size monthly payment for Klarna. Expected Result: ${PuffyMattressPadCalKingKlarnaNoOff} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_602344357922 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PuffyMattressPadCalKingSplitItNoOff}'      Fail      Wrong Puffy Mattress Pad Cal King size monthly payment for Splitit. Expected Result: ${PuffyMattressPadCalKingSplitItNoOff} Actual Result: ${Splitit}

Check Puffy Mattress Protector Twin size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_1508181475362 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PuffyMattressProtectorTwinKlarnaNoOff}'      Fail        Wrong Puffy Mattress Protector Twin size monthly payment for Klarna. Expected Result: ${PuffyMattressPadTwinKlarnaNoOff} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_1508181475362 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PuffyMattressProtectorTwinSplitItNoOff}'      Fail      Wrong Puffy Mattress Protector Twin size monthly payment for Splitit. Expected Result: ${PuffyMattressPadTwinSplitItNoOff} Actual Result: ${Splitit}
Check Puffy Mattress Protector TwinXL size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_1508181475362 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PuffyMattressProtectorTwinXLKlarnaNoOff}'      Fail        Wrong Puffy Mattress Protector TwinXL size monthly payment for Klarna. Expected Result: ${PuffyMattressPadTwinXLKlarnaNoOff} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_1508181475362 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PuffyMattressProtectorTwinXLSplitItNoOff}'      Fail      Wrong Puffy Mattress Protector TwinXL size payment for Splitit. Expected Result: ${PuffyMattressPadTwinXLSplitItNoOff} Actual Result: ${Splitit}
Check Puffy Mattress Protector Full size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_1508181475362 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PuffyMattressProtectorFullKlarnaNoOff}'      Fail        Wrong Puffy Mattress Protector Full size monthly payment for Klarna. Expected Result: ${PuffyMattressPadFullKlarnaNoOff} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_1508181475362 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PuffyMattressProtectorFullSplitItNoOff}'      Fail      Wrong Puffy Mattress Protector Full size payment for Splitit. Expected Result: ${PuffyMattressPadFullSplitItNoOff} Actual Result: ${Splitit}
Check Puffy Mattress Protector Queen size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_1508181475362 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PuffyMattressProtectorQueenKlarnaNoOff}'      Fail        Wrong Puffy Mattress Protector Queen size monthly payment for Klarna. Expected Result: ${PuffyMattressPadQueenKlarnaNoOff} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_1508181475362 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PuffyMattressProtectorQueenSplitItNoOff}'      Fail      Wrong Puffy Mattress Protector Queen size monthly payment for Splitit. Expected Result: ${PuffyMattressPadQueenSplitItNoOff} Actual Result: ${Splitit}
Check Puffy Mattress Protector King size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_1508181475362 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PuffyMattressProtectorKingKlarnaNoOff}'      Fail        Wrong Puffy Mattress Protector King size monthly payment for Klarna. Expected Result: ${PuffyMattressPadKingKlarnaNoOff} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_1508181475362 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PuffyMattressProtectorKingSplitItNoOff}'      Fail      Wrong Puffy Mattress Protector King size monthly payment for Splitit. Expected Result: ${PuffyMattressPadKingSplitItNoOff} Actual Result: ${Splitit}
Check Puffy Mattress Protector Cal King size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_1508181475362 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PuffyMattressProtectorCalKingKlarnaNoOff}'      Fail        Wrong Puffy Mattress Protector Cal King size monthly payment for Klarna. Expected Result: ${PuffyMattressPadCalKingKlarnaNoOff} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_1508181475362 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PuffyMattressProtectorCalKingSplitItNoOff}'      Fail      Wrong Puffy Mattress Protector Cal King size monthly payment for Splitit. Expected Result: ${PuffyMattressPadCalKingSplitItNoOff} Actual Result: ${Splitit}


Check Puffy Topper Twin size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_1837366476834 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PuffyTopperTwinKlarnaNoOff}'      Fail        Wrong Puffy Topper Twin size monthly payment for Klarna. Expected Result: ${PuffyMattressPadTwinKlarnaNoOff} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_1837366476834 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PuffyTopperTwinSplitItNoOff}'      Fail      Wrong Puffy Topper Twin size monthly payment for Splitit. Expected Result: ${PuffyMattressPadTwinSplitItNoOff} Actual Result: ${Splitit}
Check Puffy Topper TwinXL size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_1837366476834 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PuffyTopperTwinXLKlarnaNoOff}'      Fail        Wrong Puffy Topper TwinXL size monthly payment for Klarna. Expected Result: ${PuffyMattressPadTwinXLKlarnaNoOff} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_1837366476834 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PuffyTopperTwinXLSplitItNoOff}'      Fail      Wrong Puffy Topper TwinXL size payment for Splitit. Expected Result: ${PuffyMattressPadTwinXLSplitItNoOff} Actual Result: ${Splitit}
Check Puffy Topper Full size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_1837366476834 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PuffyTopperFullKlarnaNoOff}'      Fail        Wrong Puffy Topper Full size monthly payment for Klarna. Expected Result: ${PuffyMattressPadFullKlarnaNoOff} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_1837366476834 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PuffyTopperFullSplitItNoOff}'      Fail      Wrong Puffy Topper Full size payment for Splitit. Expected Result: ${PuffyMattressPadFullSplitItNoOff} Actual Result: ${Splitit}
Check Puffy Topper Queen size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_1837366476834 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PuffyTopperQueenKlarnaNoOff}'      Fail        Wrong Puffy Topper Queen size monthly payment for Klarna. Expected Result: ${PuffyMattressPadQueenKlarnaNoOff} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_1837366476834 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PuffyTopperQueenSplitItNoOff}'      Fail      Wrong Puffy Topper Queen size monthly payment for Splitit. Expected Result: ${PuffyMattressPadQueenSplitItNoOff} Actual Result: ${Splitit}
Check Puffy Topper King size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_1837366476834 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PuffyTopperKingKlarnaNoOff}'      Fail        Wrong Puffy Topper King size monthly payment for Klarna. Expected Result: ${PuffyMattressPadKingKlarnaNoOff} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_1837366476834 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PuffyTopperKingSplitItNoOff}'      Fail      Wrong Puffy Topper King size monthly payment for Splitit. Expected Result: ${PuffyMattressPadKingSplitItNoOff} Actual Result: ${Splitit}
Check Puffy Topper Cal King size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_1837366476834 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PuffyTopperCalKingKlarnaNoOff}'      Fail        Wrong Puffy Topper Cal King size monthly payment for Klarna. Expected Result: ${PuffyMattressPadCalKingKlarnaNoOff} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_1837366476834 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PuffyTopperCalKingSplitItNoOff}'      Fail      Wrong Puffy Topper Cal King size monthly payment for Splitit. Expected Result: ${PuffyMattressPadCalKingSplitItNoOff} Actual Result: ${Splitit}


Check Puffy Blanket Small size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_4412718972962 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PuffyBlanketSmallKlarnaNoOff}'      Fail        Wrong Puffy Blanket Small size monthly payment for Klarna. Expected Result: ${PuffyBlanketSmallKlarnaNoOff} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_4412718972962 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PuffyBlanketSmallSplitItNoOff}'      Fail      Wrong Puffy Blanket Small size monthly payment for Splitit. Expected Result: ${PuffyBlanketSmallSplitItNoOff} Actual Result: ${Splitit}
Check Puffy Blanket Medium size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_4412718972962 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PuffyBlanketMediumKlarnaNoOff}'      Fail        Wrong Puffy Blanket Medium size monthly payment for Klarna. Expected Result: ${PuffyMattressPadKingKlarnaNoOff} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_4412718972962 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PuffyBlanketMediumSplitItNoOff}'      Fail      Wrong Puffy Blanket Medium size monthly payment for Splitit. Expected Result: ${PuffyBlanketMediumSplitItNoOff} Actual Result: ${Splitit}
Check Puffy Blanket Large size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_4412718972962 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PuffyBlanketLargeKlarnaNoOff}'      Fail        Wrong Puffy Blanket Large size monthly payment for Klarna. Expected Result: ${PuffyMattressPadCalKingKlarnaNoOff} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_4412718972962 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PuffyBlanketLargeSplitItNoOff}'      Fail      Wrong Puffy Blanket Large size monthly payment for Splitit. Expected Result: ${PuffyBlanketLargeSplitItNoOff} Actual Result: ${Splitit}

Check Puffy Weighted Blanket Twin size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_3773124771874 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PuffyWeightedBlanketTwinKlarnaNoOff}'      Fail        Wrong Puffy Weighted Blanket Twin size monthly payment for Klarna. Expected Result: ${PuffyWeightedBlanketTwinKlarnaNoOff} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_3773124771874 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PuffyWeightedBlanketTwinSplitItNoOff}'      Fail      Wrong Puffy Weighted Blanket Twin size monthly payment for Splitit. Expected Result: ${PuffyWeightedBlanketTwinSplitItNoOff} Actual Result: ${Splitit}
Check Puffy Weighted Blanket Queen size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_3773124771874 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PuffyWeightedBlanketQueenKlarnaNoOff}'      Fail        Wrong Puffy Weighted Blanket Queen size monthly payment for Klarna. Expected Result: ${PuffyWeightedBlanketQueenKlarnaNoOff} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_3773124771874 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PuffyWeightedBlanketQueenSplitItNoOff}'      Fail      Wrong Puffy Weighted Blanket Queen size monthly payment for Splitit. Expected Result: ${PuffyWeightedBlanketQueenSplitItNoOff} Actual Result: ${Splitit}

Check Puffy Sheets Twin size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_4359826341922 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PuffySheetsTwinKlarnaNoOff}'      Fail        Wrong Puffy Sheets Twin size monthly payment for Klarna. Expected Result: ${PuffyMattressPadTwinKlarnaNoOff} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_4359826341922 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PuffySheetsTwinSplitItNoOff}'      Fail      Wrong Puffy Sheets Twin size monthly payment for Splitit. Expected Result: ${PuffyMattressPadTwinSplitItNoOff} Actual Result: ${Splitit}
Check Puffy Sheets TwinXL size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_4359826341922 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PuffySheetsTwinXLKlarnaNoOff}'      Fail        Wrong Puffy Sheets TwinXL size monthly payment for Klarna. Expected Result: ${PuffyMattressPadTwinXLKlarnaNoOff} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_4359826341922 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PuffySheetsTwinXLSplitItNoOff}'      Fail      Wrong Puffy Sheets TwinXL size payment for Splitit. Expected Result: ${PuffyMattressPadTwinXLSplitItNoOff} Actual Result: ${Splitit}
Check Puffy Sheets Full size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_4359826341922 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PuffySheetsFullKlarnaNoOff}'      Fail        Wrong Puffy Sheets Full size monthly payment for Klarna. Expected Result: ${PuffyMattressPadFullKlarnaNoOff} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_4359826341922 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PuffySheetsFullSplitItNoOff}'      Fail      Wrong Puffy Sheets Full size payment for Splitit. Expected Result: ${PuffyMattressPadFullSplitItNoOff} Actual Result: ${Splitit}
Check Puffy Sheets Queen size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_4359826341922 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PuffySheetsQueenKlarnaNoOff}'      Fail        Wrong Puffy Sheets Queen size monthly payment for Klarna. Expected Result: ${PuffyMattressPadQueenKlarnaNoOff} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_4359826341922 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PuffySheetsQueenSplitItNoOff}'      Fail      Wrong Puffy Sheets Queen size monthly payment for Splitit. Expected Result: ${PuffyMattressPadQueenSplitItNoOff} Actual Result: ${Splitit}
Check Puffy Sheets King size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_4359826341922 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PuffySheetsKingKlarnaNoOff}'      Fail        Wrong Puffy Sheets King size monthly payment for Klarna. Expected Result: ${PuffyMattressPadKingKlarnaNoOff} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_4359826341922 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PuffySheetsKingSplitItNoOff}'      Fail      Wrong Puffy Sheets King size monthly payment for Splitit. Expected Result: ${PuffyMattressPadKingSplitItNoOff} Actual Result: ${Splitit}
Check Puffy Sheets Cal King size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_4359826341922 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PuffySheetsCalKingKlarnaNoOff}'      Fail        Wrong Puffy Sheets Cal King size monthly payment for Klarna. Expected Result: ${PuffyMattressPadCalKingKlarnaNoOff} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_4359826341922 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PuffySheetsCalKingSplitItNoOff}'      Fail      Wrong Puffy Sheets Cal King size monthly payment for Splitit. Expected Result: ${PuffyMattressPadCalKingSplitItNoOff} Actual Result: ${Splitit}

Check Puffy Dog Bed Small size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_4365356662818 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PuffyDogBedSmallKlarnaNoOff}'      Fail        Wrong Puffy Dog Bed Small size monthly payment for Klarna. Expected Result: ${PuffyDogBedSmallKlarnaNoOff} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_4365356662818 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PuffyDogBedSmallSplitItNoOff}'      Fail      Wrong Puffy Dog Bed Small size monthly payment for Splitit. Expected Result: ${PuffyMattressPadQueenSplitItNoOff} Actual Result: ${Splitit}
Check Puffy Dog Bed Medium size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_4365356662818 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PuffyDogBedMediumKlarnaNoOff}'      Fail        Wrong Puffy Dog Bed Medium size monthly payment for Klarna. Expected Result: ${PuffyDogBedMediumKlarnaNoOff} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_4365356662818 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PuffyDogBedMediumSplitItNoOff}'      Fail      Wrong Puffy Dog Bed Medium size monthly payment for Splitit. Expected Result: ${PuffyMattressPadKingSplitItNoOff} Actual Result: ${Splitit}
Check Puffy Dog Bed Large size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_4365356662818 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PuffyDogBedLargeKlarnaNoOff}'      Fail        Wrong Puffy Dog Bed Large size monthly payment for Klarna. Expected Result: ${PuffyDogBedLargeKlarnaNoOff} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_4365356662818 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PuffyDogBedLargeSplitItNoOff}'      Fail      Wrong Puffy Dog Bed Large size monthly payment for Splitit. Expected Result: ${PuffyMattressPadCalKingSplitItNoOff} Actual Result: ${Splitit}

Check Puffy Rug Medium size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_4125949657122 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PuffyRugMediumKlarnaNoOff}'      Fail        Wrong Puffy Rug Medium size monthly payment for Klarna. Expected Result: ${PuffyDogBedMediumKlarnaNoOff} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_4125949657122 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PuffyRugMediumSplitItNoOff}'      Fail      Wrong Puffy Rug Medium size monthly payment for Splitit. Expected Result: ${PuffyRugMediumSplitItNoOff} Actual Result: ${Splitit}
Check Puffy Rug Large size monthly payment price
    sleep                               2s
    ${Klarna}=            get text        css=#product_form_4125949657122 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    Run keyword if          '${Klarna}'!='${PuffyRugLargeKlarnaNoOff}'      Fail        Wrong Puffy Rug Large size monthly payment for Klarna. Expected Result: ${PuffyDogBedLargeKlarnaNoOff} Actual Result: ${Klarna}
    ${Splitit}=            get text        css=#product_form_4125949657122 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span
    Run keyword if          '${Splitit}'!='${PuffyRugLargeSplitItNoOff}'      Fail      Wrong Puffy Rug Large size monthly payment for Splitit. Expected Result: ${PuffyRugLargeSplitItNoOff} Actual Result: ${Splitit}

##################################################################PRODUCT TOGGLE CHANGES##################################################################
Click on Puffy Lux Hybrid
    Click element       css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-type > div.hybrid-buttons > label.hybrid-buttons__item.hybrid-buttons__item--2
Click on Puffy Royal Hybrid
    Click element       css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-type > div.hybrid-buttons > label.hybrid-buttons__item.hybrid-buttons__item--2

###################################################################Compare Page Prices#################################################################

Get Puffy Mattress Price and compare to mid page
    sleep                                           1s
    ${PuffyMattressMinimumOriginalPricePDP}=        get text        css=#product_form_345108381730 > div.product-variants-holder > div > div > div > span > del > span.original-price
    ${PuffyMattressDiscountedPricePDP}=             get text        css=#product_form_345108381730 > div.product-variants-holder > div > div > div > span > span > span.original-price.jsDiscountedPrice
    ${PuffyMattressKlarnaPricePDP}=                 get text        css=#product_form_345108381730 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    #${PuffyMattressSplitItPricePDP}=                get text        css=#product_form_345108381730 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span

    Mouse Over          ${Mattresses}
    sleep               2s
    Click element       ${COMPARE}
    Wait Until Page Contains    Puffy Mattress
    ${PuffyMattressMinimumOriginalPriceComparePage}=        get text        css=body > div.container.main.content > div > div.compare-page__content > div.compare-boxes.is--puffy-mattress-and-puffy-lux > div:nth-child(2) > div > div.price-area > span.price-area__old-price > del
    ${PuffyMattressDiscountedPriceComparePage}=             get text        css=body > div.container.main.content > div > div.compare-page__content > div.compare-boxes.is--puffy-mattress-and-puffy-lux > div:nth-child(2) > div > div.price-area > span.price-area__price.jsDiscountedPrice
    ${PuffyMattressKlarnaPriceComparePage}=                 get text        css=body > div.container.main.content > div > div.compare-page__content > div.compare-boxes.is--puffy-mattress-and-puffy-lux > div:nth-child(2) > div > div.finance-area.is--common > div:nth-child(1) > div > a > span.data-splitit-price.jsKlarna
    ${PuffyMattressSplitItPriceComparePage}=                get text        css=body > div.container.main.content > div > div.compare-page__content > div.compare-boxes.is--puffy-mattress-and-puffy-lux > div:nth-child(2) > div > div.finance-area.is--common > div.finance-area__box.finance-area__box--separator > div > a > span.data-splitit-price.jsKlarna
    Run keyword if          '${PuffyMattressMinimumOriginalPricePDP}'!='${PuffyMattressMinimumOriginalPriceComparePage}'      Fail        Wrong Puffy Mattress Original in Comparison Page. Expected Result: ${PuffyMattressMinimumOriginalPricePDP} Actual Result: ${PuffyMattressMinimumOriginalPriceComparePage}
    Run keyword if          '${PuffyMattressDiscountedPricePDP}'!='${PuffyMattressDiscountedPriceComparePage}'      Fail        Wrong Puffy Mattress Discounted price in Comparison Page. Expected Result: ${PuffyMattressDiscountedPricePDP} Actual Result: ${PuffyMattressDiscountedPriceComparePage}
    Run keyword if          '${PuffyMattressKlarnaPricePDP}${text}'!='${PuffyMattressKlarnaPriceComparePage}'      Fail        Wrong Puffy Mattress Klarna Price in Comparison Page. Expected Result: ${PuffyMattressKlarnaPricePDP} Actual Result: ${PuffyMattressKlarnaPriceComparePage}
    Run keyword if          '${PuffyMattressTwinSplitItmid}'!='${PuffyMattressSplitItPriceComparePage}'      Fail        Wrong Puffy Mattress SplitIt Price in Comparison Page. Expected Result: ${PuffyMattressSplitItPricePDP} Actual Result: ${PuffyMattressSplitItPriceComparePage}

Get Puffy Lux Mattress Price and compare to mid page
    sleep                                           1s
    ${PuffyLuxMattressMinimumOriginalPricePDP}=     get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > div > span > del > span.original-price
    ${PuffyLuxMattressDiscountedPricePDP}=          get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > div > span > span > span.original-price.jsDiscountedPrice
    ${PuffyLuxMattressKlarnaPricePDP}=              get text        css=#product_form_549302042658 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    #${PuffyLuxMattressSplitItPricePDP}=             get text        css=#product_form_549302042658 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span

    Mouse Over          ${Mattresses}
    sleep               2s
    Click element       ${COMPARE}
    Wait Until Page Contains    Puffy Mattress
    ${PuffyLuxMattressMinimumOriginalPriceComparePage}=     get text        css=body > div.container.main.content > div > div.compare-page__content > div.compare-boxes.is--puffy-mattress-and-puffy-lux > div:nth-child(1) > div > div.price-area > span.price-area__old-price > del
    ${PuffyLuxMattressDiscountedPriceComparePage}=          get text        css=body > div.container.main.content > div > div.compare-page__content > div.compare-boxes.is--puffy-mattress-and-puffy-lux > div:nth-child(1) > div > div.price-area > span.price-area__price.jsDiscountedPrice
    ${PuffyLuxMattressKlarnaPriceComparePage}=              get text        css=body > div.container.main.content > div > div.compare-page__content > div.compare-boxes.is--puffy-mattress-and-puffy-lux > div:nth-child(1) > div > div.finance-area.is--common > div:nth-child(1) > div > a > span.data-splitit-price.jsKlarna
    ${PuffyLuxMattressSplitItPriceComparePage}=             get text        css=body > div.container.main.content > div > div.compare-page__content > div.compare-boxes.is--puffy-mattress-and-puffy-lux > div:nth-child(1) > div > div.finance-area.is--common > div.finance-area__box.finance-area__box--separator > div > a > span.data-splitit-price.jsKlarna
    Run keyword if          '${PuffyLuxMattressMinimumOriginalPricePDP}'!='${PuffyLuxMattressMinimumOriginalPriceComparePage}'      Fail        Wrong Puffy Lux Mattress Original in Comparison Page. Expected Result: ${PuffyLuxMattressMinimumOriginalPricePDP} Actual Result: ${PuffyLuxMattressMinimumOriginalPriceComparePage}
    Run keyword if          '${PuffyLuxMattressDiscountedPricePDP}'!='${PuffyLuxMattressDiscountedPriceComparePage}'      Fail        Wrong Puffy Lux Mattress Discounted price in Comparison Page. Expected Result: ${PuffyLuxMattressDiscountedPricePDP} Actual Result: ${PuffyLuxMattressDiscountedPriceComparePage}
    Run keyword if          '${PuffyLuxMattressKlarnaPricePDP}${text}'!='${PuffyLuxMattressKlarnaPriceComparePage}'      Fail        Wrong Puffy Lux Mattress Klarna Price in Comparison Page. Expected Result: ${PuffyLuxMattressKlarnaPricePDP} Actual Result: ${PuffyLuxMattressKlarnaPriceComparePage}
    Run keyword if          '${PuffyLuxMattressTwinSplitItmid}'!='${PuffyLuxMattressSplitItPriceComparePage}'      Fail        Wrong Puffy Lux Mattress SplitIt Price in Comparison Page. Expected Result: ${PuffyLuxMattressTwinSplitItmid} Actual Result: ${PuffyLuxMattressSplitItPriceComparePage}

Get Puffy Lux Hybrid Mattress Price and compare to mid page
    sleep                                           1s
    ${PuffyLuxHybridMattressMinimumOriginalPricePDP}=     get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > div > span > del > span.hybrid-price
    sleep                                           1s
    ${PuffyLuxHybridMattressDiscountedPricePDP}=          get text        css=#product_form_549302042658 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > div > span > span > span.hybrid-price.jsDiscountedPrice
    ${PuffyLuxHybridMattressKlarnaPricePDP}=              get text        css=#product_form_549302042658 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    ${PuffyLuxHybridMattressSplitItPricePDP}=             get text        css=#product_form_549302042658 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span

    click link                                            link:Compare Hybrids
    Wait Until Page Contains element     css=body > div.container.main.content > div > div.compare-page__headline > h1
    ${PuffyLuxHybridMattressMinimumOriginalPriceComparePage}=     get text        css=body > div.container.main.content > div > div.compare-page__content > div.compare-boxes.is--compare-hybrid-mattress-puffy-lux-and-royal > div:nth-child(2) > div > div.price-area > span.price-area__old-price > del
    ${PuffyLuxHybridMattressDiscountedPriceComparePage}=          get text        css=body > div.container.main.content > div > div.compare-page__content > div.compare-boxes.is--compare-hybrid-mattress-puffy-lux-and-royal > div:nth-child(2) > div > div.price-area > span.price-area__price.jsDiscountedPrice
    ${PuffyLuxHybridMattressKlarnaPriceComparePage}=              get text        css=body > div.container.main.content > div > div.compare-page__content > div.compare-boxes.is--compare-hybrid-mattress-puffy-lux-and-royal > div:nth-child(2) > div > div.finance-area.is--common > div:nth-child(1) > div > a > span.data-splitit-price.jsKlarna
    ${PuffyLuxHybridMattressSplitItPriceComparePage}=             get text        css=body > div.container.main.content > div > div.compare-page__content > div.compare-boxes.is--compare-hybrid-mattress-puffy-lux-and-royal > div:nth-child(2) > div > div.finance-area.is--common > div.finance-area__box.finance-area__box--separator > div > a > span.data-splitit-price.jsKlarna
    Run keyword if          '${PuffyLuxHybridMattressMinimumOriginalPricePDP}'!='${PuffyLuxHybridMattressMinimumOriginalPriceComparePage}'      Fail        Wrong Puffy Lux Hybrid Mattress Original in Comparison Page. Expected Result: ${PuffyLuxHybridMattressMinimumOriginalPricePDP} Actual Result: ${PuffyLuxHybridMattressMinimumOriginalPriceComparePage}
    Run keyword if          '${PuffyLuxHybridMattressDiscountedPricePDP}'!='${PuffyLuxHybridMattressDiscountedPriceComparePage}'      Fail        Wrong Puffy Lux Hybrid Mattress Discounted price in Comparison Page. Expected Result: ${PuffyLuxHybridMattressDiscountedPricePDP} Actual Result: ${PuffyLuxHybridMattressDiscountedPriceComparePage}
    Run keyword if          '${PuffyLuxHybridMattressKlarnaPricePDP}${text}'!='${PuffyLuxHybridMattressKlarnaPriceComparePage}'      Fail        Wrong Puffy Lux Hybrid Mattress Klarna Price in Comparison Page. Expected Result: ${PuffyLuxHybridMattressKlarnaPricePDP} Actual Result: ${PuffyLuxHybridMattressKlarnaPriceComparePage}
    Run keyword if          '${PuffyLuxHybridTwinSplitItmid}'!='${PuffyLuxHybridMattressSplitItPriceComparePage}'      Fail        Wrong Puffy Lux Hybrid Mattress SplitIt Price in Comparison Page. Expected Result: ${PuffyLuxHybridTwinSplitItmid} Actual Result: ${PuffyLuxHybridMattressSplitItPriceComparePage}

Get Puffy Royal Hybrid Mattress Price and compare to mid page
    sleep                                           1s
    ${PuffyRoyalHybridMattressMinimumOriginalPricePDP}=     get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > div > span > del > span.hybrid-price
    ${PuffyRoyalHybridMattressDiscountedPricePDP}=          get text        css=#product_form_3832788910114 > div.product-variants-holder > div.selector-wrapper.withQueen.jsRealOptions.product-size > div > div > span > span > span.hybrid-price.jsDiscountedPrice
    ${PuffyRoyalHybridMattressKlarnaPricePDP}=              get text        css=#product_form_3832788910114 > div.hc-custom-block.finance-area > div:nth-child(1) > klarna-placement > a:nth-child(2) > klarna-placement-style-amount
    ${PuffyRoyalHybridMattressSplitItPricePDP}=             get text        css=#product_form_3832788910114 > div.hc-custom-block.finance-area > div.finance-area__box.finance-area__box--separator > div > a.data-splitit-logo > span.data-splitit-price > span

    click link                                              link:Compare Hybrids
    Wait Until Page Contains element     css=body > div.container.main.content > div > div.compare-page__headline > h1
    ${PuffyRoyalHybridMattressMinimumOriginalPriceComparePage}=     get text        css=body > div.container.main.content > div > div.compare-page__content > div.compare-boxes.is--compare-hybrid-mattress-puffy-lux-and-royal > div:nth-child(1) > div > div.price-area > span.price-area__old-price > del
    ${PuffyRoyalHybridMattressDiscountedPriceComparePage}=          get text        css=body > div.container.main.content > div > div.compare-page__content > div.compare-boxes.is--compare-hybrid-mattress-puffy-lux-and-royal > div:nth-child(1) > div > div.price-area > span.price-area__price.jsDiscountedPrice
    ${PuffyRoyalHybridMattressKlarnaPriceComparePage}=              get text        css=body > div.container.main.content > div > div.compare-page__content > div.compare-boxes.is--compare-hybrid-mattress-puffy-lux-and-royal > div:nth-child(1) > div > div.finance-area.is--common > div:nth-child(1) > div > a > span.data-splitit-price.jsKlarna
    ${PuffyRoyalHybridMattressSplitItPriceComparePage}=             get text        css=body > div.container.main.content > div > div.compare-page__content > div.compare-boxes.is--compare-hybrid-mattress-puffy-lux-and-royal > div:nth-child(1) > div > div.finance-area.is--common > div.finance-area__box.finance-area__box--separator > div > a > span.data-splitit-price.jsKlarna
    Run keyword if          '${PuffyRoyalHybridMattressMinimumOriginalPricePDP}'!='${PuffyRoyalHybridMattressMinimumOriginalPriceComparePage}'      Fail        Wrong Puffy Royal Hybrid Mattress Original in Comparison Page. Expected Result: ${PuffyRoyalHybridMattressMinimumOriginalPricePDP} Actual Result: ${PuffyRoyalHybridMattressMinimumOriginalPriceComparePage}
    Run keyword if          '${PuffyRoyalHybridMattressDiscountedPricePDP}'!='${PuffyRoyalHybridMattressDiscountedPriceComparePage}'      Fail        Wrong Puffy Royal Hybrid Mattress Discounted price in Comparison Page. Expected Result: ${PuffyRoyalHybridMattressDiscountedPricePDP} Actual Result: ${PuffyRoyalHybridMattressDiscountedPriceComparePage}
    Run keyword if          '${PuffyRoyalHybridMattressKlarnaPricePDP}${text}'!='${PuffyRoyalHybridMattressKlarnaPriceComparePage}'      Fail        Wrong Puffy Royal Hybrid Mattress Klarna Price in Comparison Page. Expected Result: ${PuffyRoyalHybridMattressKlarnaPricePDP} Actual Result: ${PuffyRoyalHybridMattressKlarnaPriceComparePage}
    Run keyword if          '${PuffyRoyalHybridTwinSplitItmid}'!='${PuffyRoyalHybridMattressSplitItPriceComparePage}'      Fail        Wrong Puffy Royal Hybrid Mattress SplitIt Price in Comparison Page. Expected Result: ${PuffyRoyalHybridTwinSplitItmid} Actual Result: ${PuffyRoyalHybridMattressSplitItPriceComparePage}


#########################################################STORE PAGE###############################################################################

Price check for Puffy Mattress
    ${PuffyMattressMinOriginalStorePage}=     get text        css=#collectionProductsWrap > div:nth-child(1) > div > div.product-details > a.product-info__caption > span.price.sale > span.was_price > span
    Run keyword if          '${PuffyMattTwinOriginal}'!='${PuffyMattressMinOriginalStorePage}'      Fail        Wrong Puffy Mattress "Starting From" Original amount in Store Page. Expected Result: ${PuffyMattTwinOriginal} Actual Result: ${PuffyMattressMinOriginalStorePage}
Price check for Puffy Lux Mattress
    ${PuffyLuxMattressMinOriginalStorePage}=     get text        css=#collectionProductsWrap > div:nth-child(2) > div > div.product-details > a.product-info__caption > span.price.sale > span.was_price > span
    Run keyword if          '${PuffyLuxTwinOriginal}'!='${PuffyLuxMattressMinOriginalStorePage}'      Fail        Wrong Puffy Lux Mattress "Starting From" Original amount in Store Page. Expected Result: ${PuffyLuxTwinOriginal} Actual Result: ${PuffyLuxMattressMinOriginalStorePage}
Price check for Puffy Royal Mattress
    ${PuffyRoyalMattressMinOriginalStorePage}=     get text        css=#collectionProductsWrap > div:nth-child(3) > div > div.product-details > a.product-info__caption > span.price.sale > span.was_price > span
    Run keyword if          '${PuffyRoyalTwinOriginal}'!='${PuffyRoyalMattressMinOriginalStorePage}'      Fail        Wrong Puffy Royal Mattress "Starting From" Original amount in Store Page. Expected Result: ${PuffyRoyalTwinOriginal} Actual Result: ${PuffyRoyalMattressMinOriginalStorePage}
Price check for Puffy Adjustable Base
    ${PuffyAdjustableBaseMinOriginalStorePage}=     get text        css=#collectionProductsWrap > div:nth-child(4) > div > div.product-details > a.product-info__caption > span.price.sale > span.was_price > span
    Run keyword if          '${PuffyAdjustTwinXLOriginal}'!='${PuffyAdjustableBaseMinOriginalStorePage}'      Fail        Wrong Puffy Adjustable Base "Starting From" Original amount in Store Page. Expected Result: ${PuffyAdjustTwinXLOriginal} Actual Result: ${PuffyAdjustableBaseMinOriginalStorePage}
Price check for Puffy Bed Frame
    ${PuffyBedFrameMinOriginalStorePage}=     get text        css=#collectionProductsWrap > div:nth-child(5) > div > div.product-details > a.product-info__caption > span.price > span
    Run keyword if          '${PuffyBedFrameFullOriginal}'!='${PuffyBedFrameMinOriginalStorePage}'      Fail        Wrong Puffy Bed Frame "Starting From" Original amount in Store Page. Expected Result: ${PuffyBedFrameFullOriginal} Actual Result: ${PuffyBedFrameMinOriginalStorePage}
Price check for Puffy Foundation
    ${PuffyFoundationMinOriginalStorePage}=     get text        css=#collectionProductsWrap > div:nth-child(6) > div > div.product-details > a.product-info__caption > span.price > span
    Run keyword if          '${PuffyFoundationTwinOriginal}'!='${PuffyFoundationMinOriginalStorePage}'      Fail        Wrong Puffy Foundation "Starting From" Original amount in Store Page. Expected Result: ${PuffyFoundationTwinOriginal} Actual Result: ${PuffyFoundationMinOriginalStorePage}
Price check for Puffy Pillow
    ${PuffyPillowMinOriginalStorePage}=     get text        css=#collectionProductsWrap > div:nth-child(7) > div > div.product-details > a.product-info__caption > span.price > span
    Run keyword if          '${PuffyPillowStandardOriginal}'!='${PuffyPillowMinOriginalStorePage}'      Fail        Wrong Puffy Pillow "Starting From" Original amount in Store Page. Expected Result: ${PuffyPillowStandardOriginal} Actual Result: ${PuffyPillowMinOriginalStorePage}
Price check for Puffy Body Pillow
    ${PuffyBodyPillowMinOriginalStorePage}=     get text        css=#collectionProductsWrap > div:nth-child(8) > div > div.product-details > a.product-info__caption > span.price > span
    Run keyword if          '${PuffyBodyPillowOriginal}'!='${PuffyBodyPillowMinOriginalStorePage}'      Fail        Wrong Puffy Body Pillow "Starting From" Original amount in Store Page. Expected Result: ${PuffyBodyPillowOriginal} Actual Result: ${PuffyBodyPillowMinOriginalStorePage}
Price check for Puffy Mattress Protector
    ${PuffyMattressProtectorMinOriginalStorePage}=     get text        css=#collectionProductsWrap > div:nth-child(9) > div > div.product-details > a.product-info__caption > span.price > span
    Run keyword if          '${PuffyProtectorTwinOriginal}'!='${PuffyMattressProtectorMinOriginalStorePage}'      Fail        Wrong Puffy Mattress Protector "Starting From" Original amount in Store Page. Expected Result: ${PuffyProtectorTwinOriginal} Actual Result: ${PuffyMattressProtectorMinOriginalStorePage}
Price check for Puffy Comforter
    ${PuffyComforterMinOriginalStorePage}=     get text        css=#collectionProductsWrap > div:nth-child(10) > div > div.product-details > a.product-info__caption > span.price > span
    Run keyword if          '${PuffyComforterTwin/TwinXLOriginal}'!='${PuffyComforterMinOriginalStorePage}'      Fail        Wrong Puffy Comforter "Starting From" Original amount in Store Page. Expected Result: ${PuffyComforterTwin/TwinXLOriginal} Actual Result: ${PuffyComforterMinOriginalStorePage}
Price check for Puffy Mattress Pad
    ${PuffyMattressPadMinOriginalStorePage}=     get text        css=#collectionProductsWrap > div:nth-child(11) > div > div.product-details > a.product-info__caption > span.price > span
    Run keyword if          '${PuffyPadTwinOriginal}'!='${PuffyMattressPadMinOriginalStorePage}'      Fail        Wrong Puffy Mattress Pad "Starting From" Original amount in Store Page. Expected Result: ${PuffyPadTwinOriginal} Actual Result: ${PuffyMattressPadMinOriginalStorePage}
Price check for Puffy Topper
    ${PuffyTopperMinOriginalStorePage}=     get text        css=#collectionProductsWrap > div:nth-child(12) > div > div.product-details > a.product-info__caption > span.price > span
    Run keyword if          '${PuffyTopperTwinOriginal}'!='${PuffyTopperMinOriginalStorePage}'      Fail        Wrong Puffy Topper "Starting From" Original amount in Store Page. Expected Result: ${PuffyTopperTwinOriginal} Actual Result: ${PuffyTopperMinOriginalStorePage}
Price check for Puffy Blanket
    ${PuffyBlanketMinOriginalStorePage}=     get text        css=#collectionProductsWrap > div:nth-child(13) > div > div.product-details > a.product-info__caption > span.price > span
    Run keyword if          '${PuffyBlanketSmallOriginal}'!='${PuffyBlanketMinOriginalStorePage}'      Fail        Wrong Puffy Blanket "Starting From" Original amount in Store Page. Expected Result: ${PuffyBlanketSmallOriginal} Actual Result: ${PuffyBlanketMinOriginalStorePage}
Price check for Puffy Weighted Blanket
    ${PuffyWeightedBlanketMinOriginalStorePage}=     get text        css=#collectionProductsWrap > div:nth-child(14) > div > div.product-details > a.product-info__caption > span.price > span
    Run keyword if          '${PuffyWeightedBlanketTwinOriginal}'!='${PuffyWeightedBlanketMinOriginalStorePage}'      Fail        Wrong Puffy Weighted Blanket "Starting From" Original amount in Store Page. Expected Result: ${PuffyWeightedBlanketTwinOriginal} Actual Result: ${PuffyWeightedBlanketMinOriginalStorePage}
Price check for Puffy Sheets
    ${PuffySheetsMinOriginalStorePage}=     get text        css=#collectionProductsWrap > div:nth-child(15) > div > div.product-details > a.product-info__caption > span.price > span
    Run keyword if          '${PuffySheetsTwinOriginal}'!='${PuffySheetsMinOriginalStorePage}'      Fail        Wrong Puffy Sheets "Starting From" Original amount in Store Page. Expected Result: ${PuffySheetsTwinOriginal} Actual Result: ${PuffySheetsMinOriginalStorePage}
Price check for Puffy Dog Bed
    ${PuffyDogBedMinOriginalStorePage}=     get text        css=#collectionProductsWrap > div:nth-child(16) > div > div.product-details > a.product-info__caption > span.price > span
    Run keyword if          '${PuffyDogBedSmallOriginal}'!='${PuffyDogBedMinOriginalStorePage}'      Fail        Wrong Puffy Dog Bed "Starting From" Original amount in Store Page. Expected Result: ${PuffyDogBedSmallOriginal} Actual Result: ${PuffyDogBedMinOriginalStorePage}
Price check for Puffy Rug
    ${PuffyRugMinOriginalStorePage}=     get text        css=#collectionProductsWrap > div:nth-child(17) > div > div.product-details > a.product-info__caption > span.price > span
    Run keyword if          '${PuffyRugMediumOriginal}'!='${PuffyRugMinOriginalStorePage}'      Fail        Wrong Puffy Rug "Starting From" Original amount in Store Page. Expected Result: ${PuffyRugSmallOriginal} Actual Result: ${PuffyRugMinOriginalStorePage}





####GIFT SHOP#####
Gift Shop Price check for Puffy Pillow
    sleep                                   2s
    ${PuffyPillowMinOriginalStorePage}=     get text        css=body > div.container.main.content > div:nth-child(4) > div > div > div:nth-child(1) > div > a > div.product-box__content > div.product-box__desc > div.product-box__prices > strong
    Run keyword if          '${PuffyPillowStandardOriginal}'!='${PuffyPillowMinOriginalStorePage}'      Fail        Wrong Puffy Pillow "Starting From" Original amount in Gift Page. Expected Result: ${PuffyPillowStandardOriginal} Actual Result: ${PuffyPillowMinOriginalStorePage}

Gift Shop Price check for Puffy Comforter
    ${PuffyComforterMinOriginalStorePage}=     get text        css=body > div.container.main.content > div:nth-child(4) > div > div > div:nth-child(2) > div > a > div.product-box__content > div.product-box__desc > div.product-box__prices > strong
    Run keyword if          '${PuffyComforterTwin/TwinXLOriginal}'!='${PuffyComforterMinOriginalStorePage}'      Fail        Wrong Puffy Comforter "Starting From" Original amount in Gift Page. Expected Result: ${PuffyComforterTwin/TwinXLOriginal} Actual Result: ${PuffyComforterMinOriginalStorePage}

Gift Shop Price check for Puffy Weighted Blanket
    ${PuffyWeightedBlanketMinOriginalStorePage}=     get text        css=body > div.container.main.content > div:nth-child(4) > div > div > div:nth-child(3) > div > a > div.product-box__content > div.product-box__desc > div.product-box__prices > strong
    Run keyword if          '${PuffyWeightedBlanketTwinOriginal}'!='${PuffyWeightedBlanketMinOriginalStorePage}'      Fail        Wrong Puffy Weighted Blanket "Starting From" Original amount in Gift Page. Expected Result: ${PuffyWeightedBlanketTwinOriginal} Actual Result: ${PuffyWeightedBlanketMinOriginalStorePage}

Gift Shop Price check for Puffy Mattress Pad
    ${PuffyMattressPadMinOriginalStorePage}=     get text        css=body > div.container.main.content > div:nth-child(4) > div > div > div:nth-child(4) > div > a > div.product-box__content > div.product-box__desc > div.product-box__prices > strong
    Run keyword if          '${PuffyPadTwinOriginal}'!='${PuffyMattressPadMinOriginalStorePage}'      Fail        Wrong Puffy Mattress Pad "Starting From" Original amount in Gift Page. Expected Result: ${PuffyPadTwinOriginal} Actual Result: ${PuffyMattressPadMinOriginalStorePage}

Gift Shop Price check for Puffy Mattress Topper
    ${PuffyTopperMinOriginalStorePage}=     get text        css=body > div.container.main.content > div:nth-child(4) > div > div > div:nth-child(5) > div > a > div.product-box__content > div.product-box__desc > div.product-box__prices > strong
    Run keyword if          '${PuffyTopperTwinOriginal}'!='${PuffyTopperMinOriginalStorePage}'      Fail        Wrong Puffy Topper "Starting From" Original amount in Gift Page. Expected Result: ${PuffyTopperTwinOriginal} Actual Result: ${PuffyTopperMinOriginalStorePage}

Gift Shop Price check for Puffy Mattress Protector
    ${PuffyMattressProtectorMinOriginalStorePage}=     get text        css=body > div.container.main.content > div:nth-child(4) > div > div > div:nth-child(6) > div > a > div.product-box__content > div.product-box__desc > div.product-box__prices > strong
    Run keyword if          '${PuffyProtectorTwinOriginal}'!='${PuffyMattressProtectorMinOriginalStorePage}'      Fail        Wrong Puffy Mattress Protector "Starting From" Original amount in Gift Page. Expected Result: ${PuffyProtectorTwinOriginal} Actual Result: ${PuffyMattressProtectorMinOriginalStorePage}

Gift Shop Price check for Puffy Blanket
    ${PuffyBlanketMinOriginalStorePage}=     get text        css=body > div.container.main.content > div.text-bar.text-bar--medium-text.text-bar--gift-shop > div > div > div:nth-child(2) > div > div:nth-child(1) > div > a > div.product-box__content > div.product-box__desc > div.product-box__prices > strong
    Run keyword if          '${PuffyBlanketSmallOriginal}'!='${PuffyBlanketMinOriginalStorePage}'      Fail        Wrong Puffy Blanket "Starting From" Original amount in Gift Page. Expected Result: ${PuffyBlanketSmallOriginal} Actual Result: ${PuffyBlanketMinOriginalStorePage}

Gift Shop Price check for Puffy Body Pillow
    ${PuffyBodyPillowMinOriginalStorePage}=     get text        css=body > div.container.main.content > div.text-bar.text-bar--medium-text.text-bar--gift-shop > div > div > div:nth-child(2) > div > div:nth-child(2) > div > a > div.product-box__content > div.product-box__desc > div.product-box__prices > strong
    Run keyword if          '${PuffyBodyPillowOriginal}'!='${PuffyBodyPillowMinOriginalStorePage}'      Fail        Wrong Puffy Body Pillow "Starting From" Original amount in Gift Page. Expected Result: ${PuffyBodyPillowOriginal} Actual Result: ${PuffyBodyPillowMinOriginalStorePage}

Gift Shop Price check for Puffy Rug
    ${PuffyRugMinOriginalStorePage}=     get text        css=body > div.container.main.content > div.text-bar.text-bar--medium-text.text-bar--gift-shop > div > div > div:nth-child(2) > div > div:nth-child(3) > div > a > div.product-box__content > div.product-box__desc > div.product-box__prices > strong
    Run keyword if          '${PuffyRugMediumOriginal}'!='${PuffyRugMinOriginalStorePage}'      Fail        Wrong Puffy Rug "Starting From" Original amount in Gift Page. Expected Result: ${PuffyRugSmallOriginal} Actual Result: ${PuffyRugMinOriginalStorePage}

Gift Shop Price check for Puffy Mattress
    ${PuffyMattressMinOriginalStorePage}=     get text        css=body > div.container.main.content > div:nth-child(7) > div > div > div:nth-child(1) > div > a > div.product-box__content > div.product-box__desc > div.product-box__prices > span > del
    Run keyword if          '${PuffyMattTwinOriginal}'!='${PuffyMattressMinOriginalStorePage}'      Fail        Wrong Puffy Mattress "Starting From" Original amount in Gift Page. Expected Result: ${PuffyMattTwinOriginal} Actual Result: ${PuffyMattressMinOriginalStorePage}

Gift Shop Price check for Puffy Lux Hybrid
    ${PuffyLuxMattressMinOriginalStorePage}=     get text        css=body > div.container.main.content > div:nth-child(7) > div > div > div:nth-child(2) > div > a > div.product-box__content > div.product-box__desc > div.product-box__prices > span > del
    Run keyword if          '${PuffyLuxTwinOriginal}'!='${PuffyLuxMattressMinOriginalStorePage}'      Fail        Wrong Puffy Lux Mattress "Starting From" Original amount in Gift Page. Expected Result: ${PuffyLuxTwinOriginal} Actual Result: ${PuffyLuxMattressMinOriginalStorePage}

Gift Shop Price check for Puffy Royal Hybrid
    ${PuffyRoyalMattressMinOriginalStorePage}=     get text        css=body > div.container.main.content > div:nth-child(7) > div > div > div:nth-child(3) > div > a > div.product-box__content > div.product-box__desc > div.product-box__prices > span > del
    Run keyword if          '${PuffyRoyalTwinOriginal}'!='${PuffyRoyalMattressMinOriginalStorePage}'      Fail        Wrong Puffy Royal Mattress "Starting From" Original amount in Gift Page. Expected Result: ${PuffyRoyalTwinOriginal} Actual Result: ${PuffyRoyalMattressMinOriginalStorePage}

Gift Shop Price check for Puffy Adjustable Base
    ${PuffyAdjustableBaseMinOriginalStorePage}=     get text        css=body > div.container.main.content > div.text-bar.text-bar--medium-text.is--gray > div > div.text-bar__content.text-bar__content--single > div > div > div:nth-child(1) > div > a > div.product-box__content > div.product-box__desc > div.product-box__prices > span > del
    Run keyword if          '${PuffyAdjustTwinXLOriginal}'!='${PuffyAdjustableBaseMinOriginalStorePage}'      Fail        Wrong Puffy Adjustable Base "Starting From" Original amount in Gift Page. Expected Result: ${PuffyAdjustTwinXLOriginal} Actual Result: ${PuffyAdjustableBaseMinOriginalStorePage}

Gift Shop Price check for Puffy Foundation
    ${PuffyFoundationMinOriginalStorePage}=     get text        css=body > div.container.main.content > div.text-bar.text-bar--medium-text.is--gray > div > div.text-bar__content.text-bar__content--single > div > div > div:nth-child(2) > div > a > div.product-box__content > div.product-box__desc > div.product-box__prices > strong
    Run keyword if          '${PuffyFoundationTwinOriginal}'!='${PuffyFoundationMinOriginalStorePage}'      Fail        Wrong Puffy Foundation "Starting From" Original amount in Gift Page. Expected Result: ${PuffyFoundationTwinOriginal} Actual Result: ${PuffyFoundationMinOriginalStorePage}

Gift Shop Price check for Puffy Bed Frame
    ${PuffyBedFrameMinOriginalStorePage}=     get text        css=body > div.container.main.content > div.text-bar.text-bar--medium-text.is--gray > div > div.text-bar__content.text-bar__content--single > div > div > div:nth-child(3) > div > a > div.product-box__content > div.product-box__desc > div.product-box__prices > strong
    Run keyword if          '${PuffyBedFrameFullOriginal}'!='${PuffyBedFrameMinOriginalStorePage}'      Fail        Wrong Puffy Bed Frame "Starting From" Original amount in Gift Page. Expected Result: ${PuffyBedFrameFullOriginal} Actual Result: ${PuffyBedFrameMinOriginalStorePage}
