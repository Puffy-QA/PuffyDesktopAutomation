*** Settings ***
Library         Selenium2Library
*** Variables ***
${chromedriver}    http://localhost:9515
${android} =    Create List   androidPackage    com.android.chrome
${desired_capabilities} =    Create Dictionary   {chromedriver}    chromeOptions    ${android}


*** Test Cases ***
Open Page

*** Keywords ***
Open Page
    Open Browser    http://www.google.com
    ... browser=chrome
    ... desired_capabilities=${desired_capabilities}