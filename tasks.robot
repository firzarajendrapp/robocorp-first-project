*** Settings ***
Documentation       Template robot main suite.
Library    RPA.Browser.Selenium    auto_close=${TRUE}
Library    RPA.HTTP

*** Variables ***
${DOWNLOAD_DIR}   ${CURDIR}${/}downloads

*** Tasks ***
# Minimal Tasks
#     Log    Done.
Open the website
    Open website
    
Adding customer
    Add customer to CRM system

Download existing report
    Download report and Save

*** Keywords ***

Open website
    Open Available Browser    https://rpa-unlimited.com/youtube/robocorp-tutorial/    headless=${False}
    Maximize Browser Window
    

Add customer to CRM system
    Input Text    company-name    Firja Tech Sharing Session
    Input Text    company-contact    Rey
    Input Text    address    Rawalumbu
    Input Text    zipcode    17115
    Input Text    city    Bekasi
    Input Text    country    Indonesia
    Input Text    telephone    082275637356
    Input Text    email    firja.rajendra@rey.id
    Submit Form

Download report and Save

    Download    https://www.rpa-unlimited.com/youtube/robocorp-tutorial/input.xlsx    target_file=${DOWNLOAD_DIR}${/}report.xlsx
    

