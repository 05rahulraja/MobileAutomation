*** Settings ***
Library       BuiltIn
Library       String
Library       AppiumLibrary
Library       DateTime
Library     ../Custom_Library.py
Variables     ../../Variable/BukuKas_Variable/Common_Variable.py
Variables     ../../Keyword/Custom_Library.py
Variables     ../../Variable/Environment.py


*** Keywords ***



Wait Until Page Contains Text And Click
    [Documentation]  This is to wait for a text to appear and then click on text
    [Arguments]      ${text}
        Wait Until Page Contains  ${text}   ${EXPLICIT_TIMEOUT}
        Click Text  ${text}
