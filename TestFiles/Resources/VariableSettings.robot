*** Settings ***
Documentation       This is for checking all the places where we should update the seasonal promotion
Library             Selenium2Library
#Library             SeleniumLibrary
Library             ScreenCapLibrary
Library             Collections
Library             String
*** Variables ***

${PHONE}                        (888) 555-3222
${EMAIL}                        automation@puffy.com
${FIRSTNAME}                    John
${LASTNAME}                     Doe
${ADDRESS}                      123 William Street
${CITY}                         New York
${ZIPCODE}                      03101
${SALENAME}                     EASTER SALE NOW
${SALEDETAILS}                  $300 OFF + FREE PILLOW
${DISCOUNTAMOUNT}               $300 OFF
${DISCOUNTAMOUNT350}            $350 OFF
${HOMEPAGE}                     https://puffy.com/?preview_theme_id=120192008226
${SHOPIFY}                      https://puffy.com/?preview_theme_id=120192008226
${SHOPIFYLOGIN}                 rhogie@puffy.com
${SHOPIFYPASS}                  S9u143U13jh&n2)RM1
${SYSTEMBROWSER}                Chrome
${FOOTER}                       EASTER SALE NOW $300 OFF + FREE PILLOW
${DISCOUNTCODEPAGEDETAILS1}     $300 Off Any Mattress
${DISCOUNTCODEPAGEDETAILS2}     + Free Pillow
${SAVE350}                      https://puffy.com/pages/save350
${FOOTER350}                    EASTER SALE NOW $350 OFF + FREE PILLOW
${SALE350DETAILS}               $350 OFF + FREE PILLOW
${PUFFYBROWSER}                 alias=Puffy
${SIGNUPNODOMAIN}               email