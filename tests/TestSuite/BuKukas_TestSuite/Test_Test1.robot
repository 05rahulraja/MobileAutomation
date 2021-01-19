*** Settings ***

Resource    ../../Keyword/BukuKas_Keywords/Login.robot
Test Setup      Set Screenshot Directory      ${CURDIR}${/}..${/}..${/}Screengrab




*** Test Cases ***
Signing In To MobileApp-Bukukas Mobile+OTP
    [Documentation]  This test is to validate the login flow  of BeeCash App
         Launch Bukukas App
         Login To BukukasApp
         Validate Hutang Tab
         Validate Transaksi Tab






