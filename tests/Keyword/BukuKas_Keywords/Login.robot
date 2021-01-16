*** Settings ***
Library     AppiumLibrary

Variables    ../../Variable/BukuKas_Variable/Common_Variable.py
Variables    ../../Variable/Environment.py
Variables    ../../Locator/BukuKas_Locators/BukukasLogin_HomePage.py
Resource    ../../Keyword/BukuKas_Keywords/Common_Keyword.robot


*** Keywords ***
Launch Bukukas App

      #Open Application  ${REMOTE_URL}  automationName=${AUTOMATION_NAME}  platformName=${PLATFORM_NAME_ANDROID}  deviceName=${DEVICE_NAME_ANDROID}  appPackage=${APP_PACKAGE}  noReset=${RESET_OFF}  appActivity=${AppAct} skipServerInstallation = true
      #Log to Console      Bukukas App is launched
      #Sleep       2s

    Open Application  http://rahulkumarraja3:FyQSEq7iuJ9mXqXZxHAp@hub-cloud.browserstack.com/wd/hub  automationName=Appium
  ...  platformName=Android  platformVersion=10.0  device=OnePlus 8
  ...  app=bs://b2ed258224fb973ffe3588d8c4ef052d88c853fa  appPackage=com.beecash.app  appActivity=com.beecash.app.MainActivity

Login To BukukasApp

      click text          ${AYO_MULAI}
      #Wait until page contains  ${NONE_OF_THE_ABOVE}
      #Click text          ${NONE_OF_THE_ABOVE}
      Sleep       2s
      Click element   ${LOGIN_COUNTRY_ID}
      Sleep       2s
      Wait until page contains   ${COUNTRY}
      Click text   ${COUNTRY}
      Click text   ${COUNTRY}
      Sleep   2s
      click element     ${MOBILE_TEXTFIELD}
      input value    ${MOBILE_TEXTFIELD}    ${PHONE}
      Sleep       2s
      Click element       ${MOBILE_FIELD}
      Wait until page contains      ${SMS_TEXT}
      Click text      ${SMS_TEXT}
      Sleep       2s
      Click element     ${MOBILE_OTP}
      input value     ${MOBILE_OTP}     ${OTP}
      Sleep       2s
      click text          KONFIRMASI

Validate Hutang Tab
      wait until page contains        Hutang
      wait until page contains        Kontak
      wait until page contains        Laporan



Validate Transaksi Tab

      Click text          Transaksi
      Wait Until Page Contains Text And Click        Ringkasan
      Wait Until Page Contains Text And Click        Pengeluaran
