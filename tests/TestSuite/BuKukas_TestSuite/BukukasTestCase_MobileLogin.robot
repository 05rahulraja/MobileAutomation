*** Settings ***

Resource    ../../Keyword/BukuKas_Keywords/Login.robot



*** Test Cases ***
Signing In To MobileApp-Bukukas Mobile+OTP
    [Documentation]  This test is to validate the login flow  of BeeCash App
    [Tags]    login    smoke
    [Teardown]    Run Keyword If Test Failed    Capture Page Screenshot
         Launch Bukukas App
         Login To BukukasApp
         Validate Hutang Tab
         Validate Transaksi Tab



Signing In To MobileApp-Bukukas Mobile
    [Documentation]  This test is to validate the login flow  of BeeCash App
    [Tags]    login    critical
    [Teardown]    Run Keyword If Test Failed    Capture Page Screenshot
         Launch Bukukas App
         Login To BukukasApp




