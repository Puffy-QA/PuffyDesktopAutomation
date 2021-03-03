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
${SALENAME}                     DAYLIGHT SAVINGS SALE NOW
${SALEDETAILS}                  $300 OFF + FREE PILLOW
${DISCOUNTAMOUNT}               $300 OFF
${DISCOUNTAMOUNT350}            $350 OFF
${HOMEPAGE}                     https://puffy.com
${SYSTEMBROWSER}                Chrome
${FOOTER}                       DAYLIGHT SAVINGS SALE NOW $300 OFF + FREE PILLOW
${DISCOUNTCODEPAGEDETAILS1}     $300 Off Any Mattress
${DISCOUNTCODEPAGEDETAILS2}     + Free Pillow
${SAVE350}                      https://puffy.com/pages/save350
${FOOTER350}                    DAYLIGHT SAVINGS SALE NOW $350 OFF + FREE PILLOW
${SALE350DETAILS}               $350 OFF + FREE PILLOW
${PUFFYBROWSER}                 alias=Puffy