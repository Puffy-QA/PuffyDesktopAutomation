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
${ZIPCODE}                      03087
${SALENAME}                     MEMORIAL DAY SALE NOW
${SALEDETAILS}                  $300 OFF + 2 FREE PILLOWS
${DISCOUNTAMOUNT}               $300 OFF
${DISCOUNTAMOUNT350}            $350 OFF
${HOMEPAGE}                     https://puffy.com
${SHOPIFY}
${SHOPIFYLOGIN}
${SHOPIFYPASS}
${SYSTEMBROWSER}                Chrome
${FOOTER}                       MEMORIAL DAY SALE NOW $300 OFF + 2 FREE PILLOWS
${DISCOUNTCODEPAGEDETAILS1}     $300 Off Any Mattress
${DISCOUNTCODEPAGEDETAILS2}     + 2 Free Pillows
${SAVE350}                      https://puffy.com/pages/save350
${FOOTER350}                    MEMORIAL DAY SALE NOW $350 OFF + 2 FREE PILLOWS
${SALE350DETAILS}               $350 OFF + 2 FREE PILLOWS
${PUFFYBROWSER}                 alias=Puffy
${SIGNUPNODOMAIN}               email
${MonitorID}                    monitor=3