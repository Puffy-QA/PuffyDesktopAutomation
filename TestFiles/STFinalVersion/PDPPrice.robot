*** Settings ***
Documentation       This is for checking all the places where we should update the seasonal promotion
Library             Selenium2Library
#Library             SeleniumLibrary
Library             ScreenCapLibrary
Library             Collections
Library             String
Suite Teardown      close browser
Resource            ../Resources/VariableSizes.robot
Resource            ../Resources/VariableSettings.robot
Resource            ../Resources/keywords300.robot
Resource            ../Resources/VariableLocators.robot
Resource            ../Resources/VariablePrice.robot
*** Test Cases ***
Start Record Video
    Initiate Video Recording
Verify the Sale Popup appears
    Open Login Screen
    Wait and dismiss popup
Verify sale details on Timer Bar
    Check Seasonal Sale text on timer
#version
    #Switch to Version A
Verify product prices in Store page (ALL category)
    Go to Store page (Click on footer Store link)
    sleep  2s
    Check price in Store page for Puffy Mattress
    Check price in Store page for Puffy Lux Mattress
    Check price in Store page for Puffy Royal Mattress
    Check price in Store page for Puffy Foundation
    Check price in Store page for Puffy Adjustable Base
    Check price in Store page for Puffy Bed Frame
    Check price in Store page for Puffy Pillow
    Check price in Store page for Puffy Body Pillow
    Check price in Store page for Puffy Comforter
    Check price in Store page for Puffy Mattress Pad
    Check price in Store page for Puffy Topper
    Check price in Store page for Puffy Mattress Protector
    Check price in Store page for Puffy Blanket
    Check price in Store page for Puffy Weighted Blanket
    Check price in Store page for Puffy Sheets
    Check price in Store page for Puffy Dog Bed
    Check price in Store page for Puffy Rug
Verify products prices in Gift Shop page
    Go to Gift Shop page (Click on footer Gift Shop link)
    Check Price in GiftShop page for Puffy Pillow
    Check Price in GiftShop page for Puffy Comforter
    Check Price in GiftShop page for Puffy Weighted Blanket
    Check Price in GiftShop page for Puffy Mattress Pad
    Check Price in GiftShop page for Puffy Mattress Topper
    Check Price in GiftShop page for Puffy Mattress Protector
    Check Price in GiftShop page for Puffy Blanket
    Check Price in GiftShop page for Puffy Body Pillow
    Check Price in GiftShop page for Puffy Rug
    Check Price in GiftShop page for Puffy Mattress
    Check Price in GiftShop page for Puffy Lux Hybrid
    Check Price in GiftShop page for Puffy Royal Hybrid
    Check Price in GiftShop page for Puffy Adjustable Base
    Check Price in GiftShop page for Puffy Foundation
    Check Price in GiftShop page for Puffy Bed Frame
Verify price in compare page for Puffy Mattress 
    Go to Puffy Mattress Product Page
    Click size dropdown for Puffy Mattress
    Set size to twin for Puffy Mattress
    Get Puffy Mattress Price and compare to mid page
Verify price in compare page for Puffy Lux Mattress
    Go to Puffy Lux Mattress Product Page
    Click size dropdown for Puffy Lux Mattress
    Set size to twin for Puffy Lux Mattress
    Get Puffy Lux Mattress Price and compare to mid page
Verify price in compare page for Puffy Lux Hybrid Mattress
    Go to Puffy Lux Mattress Product Page
    Click on Puffy Lux Hybrid
    Click size dropdown for Puffy Lux Mattress
    Set size to twin for Puffy Lux Mattress
    Get Puffy Lux Hybrid Mattress Price and compare to mid page
Verify price in compare page for Puffy Royal Hybrid Mattress
    Go to Puffy Royal Mattress Product Page
    Click on Puffy Royal Hybrid
    Click size dropdown for Puffy Royal Mattress
    Set size to Twin for Puffy Royal Mattress
    Get Puffy Royal Hybrid Mattress Price and compare to mid page
Verify the price in PDP Puffy Mattress
    Go to Puffy Mattress Product Page
    Check sale text in Seasonal Banner      #Banner Seasonal Sale text check #reword
    Check Freebie and discount value in PDP     #PDP Discount Value and Freebie check #reword
    Check default size for Puffy Mattress   #Check Puffy Mattress PDP Default size #Check default size for Puffy Mattress
    Click size dropdown for Puffy Mattress  #Click Puffy Mattress Size dropdown #Click Size dropdown for Puffy Mattress
    Check original price for Puffy Mattress (all sizes)     #Check Puffy Mattress sizes original prices #Check original price for Puffy Mattress (all sizes)
    Check $300 off price for Puffy Mattress (all sizes)     #Check Puffy Mattress sizes 300OFF prices #Check $300 off price for Puffy Mattress (all sizes)
    Check order in Size dropdown for Puffy Mattress     #Check Puffy Mattress sizes list order #Check order in Size dropdown for...
    Set size to twin for Puffy Mattress     #Select Puffy Mattress Twin #Set size to twin for..
    Check installment price for Twin Size Puffy Mattress    #Check Puffy Mattress Twin size monthly payment price #Check installment price for...
    Click size dropdown for Puffy Mattress
    Set size to TwinXL for Puffy Mattress
    Check installment price for TwinXL size Puffy Mattress
    Click size dropdown for Puffy Mattress
    Set size to Full for Puffy Mattress
    Check installment price for Full size Puffy Mattress
    Click size dropdown for Puffy Mattress
    Set size to Queen for Puffy Mattress
    Check installment price for Queen size Puffy Mattress
    Click size dropdown for Puffy Mattress
    Set size to King for Puffy Mattress
    Check installment price for King size Puffy Mattress
    Click size dropdown for Puffy Mattress
    Set size to Cal King for Puffy Mattress
    Check installment price for Cal King size Puffy Mattress
Verify the price in PDP Puffy Lux Mattress
    Go to Puffy Lux Mattress Product Page
    Check sale text in Seasonal Banner
    Check Freebie and discount value in PDP
    Check default size for Puffy Lux Mattress   #Check Puffy Lux Mattress PDP Default size
    Click size dropdown for Puffy Lux Mattress      #Click Puffy Lux Mattress Size dropdown
    Check original price for Puffy Lux Mattress (all sizes)     #Check Puffy Lux Mattress sizes original prices
    Check $300 off price for Puffy Lux Mattress (all sizes)     #Check Puffy Lux Mattress sizes 300OFF prices
    Check order in Size dropdown for Puffy Lux Mattress     #Check Puffy Lux Mattress sizes list order
    Set size to Twin for Puffy Lux Mattress         #Select Puffy Lux Mattress Twin
    Check installment price for Twin Size Puffy Lux Mattress        #Check Puffy Lux Mattress Twin size monthly payment price
    Click size dropdown for Puffy Lux Mattress
    Set size to TwinXL for Puffy Lux Mattress
    Check installment price for TwinXL Size Puffy Lux Mattress
    Click size dropdown for Puffy Lux Mattress
    Set size to Full for Puffy Lux Mattress
    Check installment price for Full Size Puffy Lux Mattress
    Click size dropdown for Puffy Lux Mattress
    Set size to Queen for Puffy Lux Mattress
    Check installment price for Queen Size Puffy Lux Mattress
    Click size dropdown for Puffy Lux Mattress
    Set size to King for Puffy Lux Mattress
    Check installment price for King Size Puffy Lux Mattress
    Click size dropdown for Puffy Lux Mattress
    Set size to Cal King for Puffy Lux Mattress
    Check installment price for Cal King Size Puffy Lux Mattress
Verify the price in PDP Puffy Lux Hybrid Mattress
    Click on Puffy Lux Hybrid
    Click size dropdown for Puffy Lux Mattress
    Check original price for Puffy Lux Hybrid Mattress (all sizes)     #Check Puffy Lux Hybrid sizes original prices
    Check $300 off price for Puffy Lux Hybrid Mattress (all sizes)     #Check Puffy Lux Hybrid sizes 300OFF prices
    Check order in Size dropdown for Puffy Lux Mattress     #Check Puffy Lux Mattress sizes list order
    Set size to twin for Puffy Lux Mattress
    Check installment price for Twin Size Puffy Lux Mattress
    Click size dropdown for Puffy Lux Mattress
    Set size to TwinXL for Puffy Lux Mattress
    Check installment price for TwinXL Size Puffy Lux Mattress
    Click size dropdown for Puffy Lux Mattress
    Set size to Full for Puffy Lux Mattress
    Check installment price for Full Size Puffy Lux Mattress
    Click size dropdown for Puffy Lux Mattress
    Set size to Queen for Puffy Lux Mattress
    Check installment price for Queen Size Puffy Lux Mattress
    Click size dropdown for Puffy Lux Mattress
    Set size to King for Puffy Lux Mattress
    Check installment price for King Size Puffy Lux Mattress
    Click size dropdown for Puffy Lux Mattress
    Set size to Cal King for Puffy Lux Mattress
    Check installment price for Cal King Size Puffy Lux Mattress
Verify the price in PDP Puffy Royal Mattress
    Go to Puffy Royal Mattress Product Page
    Check sale text in Seasonal Banner
    Check Freebie and discount value in PDP
    Check default size for Puffy Royal Mattress           #Check Puffy Royal Mattress PDP Default size
    Click size dropdown for Puffy Royal Mattress              #Click Puffy Royal Mattress Size dropdown
    Check original price for Puffy Royal Mattress (all sizes)      #Check Puffy Royal sizes original prices
    Check $300 off price for Puffy Royal Mattress (all sizes)      #Check Puffy Royal sizes 300OFF prices
    Check order in Size dropdown for Puffy Royal Mattress          #Check Puffy Royal Mattress sizes list order
    Set size to Twin for Puffy Royal Mattress                      #Select Puffy Royal Mattress Twin
    Check installment price for Twin Size Puffy Royal Mattress
    Click size dropdown for Puffy Royal Mattress
    Set size to TwinXL for Puffy Royal Mattress
    Check installment price for TwinXL Size Puffy Royal Mattress
    Click size dropdown for Puffy Royal Mattress
    Set size to Full for Puffy Royal Mattress
    Check installment price for Full Size Puffy Royal Mattress
    Click size dropdown for Puffy Royal Mattress
    Set size to Queen for Puffy Royal Mattress
    Check installment price for Queen Size Puffy Royal Mattress
    Click size dropdown for Puffy Royal Mattress
    Set size to King for Puffy Royal Mattress
    Check installment price for King Size Puffy Royal Mattress
    Click size dropdown for Puffy Royal Mattress
    Set size to Cal King for Puffy Royal Mattress
    Check installment price for Cal King Size Puffy Royal Mattress
Verify the price in PDP Puffy Royal Hybrid Mattress
    Click on Puffy Royal Hybrid
    Click size dropdown for Puffy Royal Mattress
    Check Puffy Royal Hybrid sizes original prices
    Check Puffy Royal Hybrid sizes 300OFF prices
    Check order in Size dropdown for Puffy Royal Mattress
    Set size to Twin for Puffy Royal Mattress
    Check Puffy Royal Mattress Twin size monthly payment price
    Click size dropdown for Puffy Royal Mattress
    Set size to Twin for Puffy Royal MattressXL
    Check Puffy Royal Mattress TwinXL size monthly payment price
    Click size dropdown for Puffy Royal Mattress
    Select Puffy Royal Mattress Full
    Check Puffy Royal Mattress Full size monthly payment price
    Click size dropdown for Puffy Royal Mattress
    Select Puffy Royal Mattress Queen
    Check Puffy Royal Mattress Queen size monthly payment price
    Click size dropdown for Puffy Royal Mattress
    Select Puffy Royal Mattress King
    Check Puffy Royal Mattress King size monthly payment price
    Click size dropdown for Puffy Royal Mattress
    Select Puffy Royal Mattress Cal King
    Check Puffy Royal Mattress Cal King size monthly payment price
Verify the price in PDP Puffy Foundation
    Go to Puffy Foundation Product Page
    Don't show seasonal sale content check
    #Don't show freebies content check
    Check default size for Puffy Foundation
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
Verify the price in PDP Puffy Adjustable Base
    Go to Puffy Adjustable Base Product Page
    Check sale text in Seasonal Banner
    #Check Freebie and discount value in PDP
    Check default size for Puffy Adjustable Base
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
Verify the price in PDP Puffy Bed Frame
    Go to Puffy Bed Frame Product Page
    Don't show seasonal sale content check
    #Don't show freebies content check
    Check default size for Puffy Bed Frame
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
Verify the price in PDP Puffy Comforter
    Go to Puffy Comforter Product Page
    Don't show seasonal sale content check
    #Don't show freebies content check
    Check default size for Puffy Comforter
    Click Puffy Comforter Size dropdown
    Check Puffy Comforter original prices
    #Check Puffy Comforter sizes 15%OFF prices
    Check Puffy Comforter sizes list order
    Select Puffy Comforter Twin/Twin XL
    Check Puffy Comforter Twin/Twin XL size monthly payment price
    Click Puffy Comforter Size dropdown
    Select Puffy Comforter Full/Queen
    Check Puffy Comforter Full/Queen size monthly payment price
    Click Puffy Comforter Size dropdown
    Select Puffy Comforter King/Cal King
    Check Puffy Comforter King/Cal King size monthly payment price
Verify the price in PDP Puffy Pillow
    Go to Puffy Pillow Product Page
    Don't show seasonal sale content check
    #Don't show freebies content check
    Check default size for Puffy Pillow
    Click Puffy Pillow Size dropdown
    Check Puffy Pillow original prices
    Check Puffy Pillow sizes list order
    Select Puffy Pillow Standard
    Check Puffy Pillow Standard size monthly payment price
    Click Puffy Pillow Size dropdown
    Select Puffy Pillow King
    Check Puffy Pillow King size monthly payment price
Verify the price in PDP Puffy Body Pillow
    Go to Puffy Body Pillow Product Page
    Don't show seasonal sale content check
    #Don't show freebies content check
    Check Puffy Body Pillow original prices
    #Check Puffy Body Pillow sizes 15%OFF prices
    Check Puffy Body Pillow monthly payment price
Verify the price in PDP Puffy Mattress Pad
    Go to Puffy Mattress Pad Product Page
    Don't show seasonal sale content check
    #Don't show freebies content check
    Check default size for Puffy Mattress Pad
    Click Puffy Mattress Pad Size dropdown
    Check Puffy Mattress Pad original prices
    #Check Puffy Mattress Pad sizes 15%OFF prices
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
Verify the price in PDP Puffy Mattress Protector
    Go to Puffy Mattress Protector Product Page
    Don't show seasonal sale content check
    #Don't show freebies content check
    Check default size for Puffy Mattress Protector
    Click Puffy Mattress Protector Size dropdown
    Check Puffy Mattress Protector original prices
    #Check Puffy Mattress Protector sizes 15%OFF prices
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
Verify the price in PDP Puffy Topper
    Go to Puffy Topper Product Page
    Don't show seasonal sale content check
    #Don't show freebies content check
    Check Puffy Topper PDP Default feel
    Check default size for Puffy Mattress Topper
    Click Puffy Topper feel dropdown
    Check Puffy Topper feel options
    Select Puffy Topper Firm
    Click Puffy Topper Size dropdown
    Check Puffy Topper original prices
    #Check Puffy Topper 15%OFF prices
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
    #Check Puffy Topper 15%OFF prices
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
Verify the price in PDP Puffy Blanket
    Go to Puffy Blanket Product Page
    Don't show seasonal sale content check
    #Don't show freebies content check
    Check default size for Puffy Blanket
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
Verify the price in PDP Puffy Weighted Blanket
    Go to Puffy Weighted Blanket Product Page
    Don't show seasonal sale content check
    #Don't show freebies content check
    Check default size for Puffy Weighted Blanket
    Click Puffy Weighted Blanket Size dropdown
    Check Puffy Weighted Blanket original prices
    #Check Puffy Weighted Blanket 15%OFF prices
    Check Puffy Weighted Blanket sizes list order
    Select Puffy Weighted Blanket Twin
    Check Puffy Weighted Blanket Twin size monthly payment price
    Click Puffy Weighted Blanket Size dropdown
    Select Puffy Weighted Blanket Queen
    Check Puffy Weighted Blanket Queen size monthly payment price
    Click Puffy Weighted Blanket Size dropdown
    Select Puffy Weighted Blanket King
    Check Puffy Weighted Blanket King size monthly payment price
Verify the price in PDP Puffy Sheets
    Go to Puffy Sheets Product Page
    Don't show seasonal sale content check
    #Don't show freebies content check
    Check default color for Puffy Sheets
    Check default size for Puffy Sheets
    Click Puffy Sheets color dropdown
    Check Puffy Sheets color options
    Click Puffy Sheets color dropdown
    Click Puffy Sheets Size dropdown
    Check Puffy Sheets original prices
    #Check Puffy Sheets 15%OFF prices
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
    #Check Puffy Sheets 15%OFF prices
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
Verify the price in PDP Puffy Dog Bed
    Go to Puffy Dog Bed Product Page
    Don't show seasonal sale content check
    #Don't show freebies content check
    Check default size for Puffy Dog Bed
    Click Puffy Dog Bed Size dropdown
    Check Puffy Dog Bed original prices
    #Check Puffy Dog Bed 15%OFF prices
    Check Puffy Dog Bed sizes list order
    Select Puffy Dog Bed Small
    Check Puffy Dog Bed Small size monthly payment price
    Click Puffy Dog Bed Size dropdown
    Select Puffy Dog Bed Medium
    Check Puffy Dog Bed Medium size monthly payment price
    Click Puffy Dog Bed Size dropdown
    Select Puffy Dog Bed Large
    Check Puffy Dog Bed Large size monthly payment price
Verify the price in PDP Puffy Rug
    Go to Puffy Rug Product Page
    Don't show seasonal sale content check
    #Don't show freebies content check
    Check default size for Puffy Rug
    Click Puffy Rug Size dropdown
    Check Puffy Rug original prices
    #Check Puffy Rug 15%OFF prices
    Check Puffy Rug sizes list order
    Select Puffy Rug Medium
    Check Puffy Rug Medium size monthly payment price
    Click Puffy Rug Size dropdown
    Select Puffy Rug Large
    Check Puffy Rug Large size monthly payment price
Check prices in Finance Page
    Go to Finance page
    Click Klarna See Details link   #...for Klarna
    Check amount in Pay as low as for Klarna    #Check Pay as low as amount for Klarna
    Scroll Up to Splitit    #Scroll to top of the page
    Click Splitit See Details link
    Check amount in Pay as low as for Splitit
Check prices in Discount page
    Go to Discount page
    Check discount details 1
    Check discount details 2
    Scroll down to Mattress Financing with Klarna #section
    Check amount in Pay as low as for Klarna Discount Page
    Scroll down to Mattress Payment plans with Splitit
    Check amount in Pay as low as for SplitIt Discount Page
Stop All Video Recordings
    Stop All Video Recordings

