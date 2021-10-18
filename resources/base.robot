*Settings*
Documentation       Arquivo Principal do Projeto

Library         SeleniumLibrary
Library         String

Resource        actions.robot

*Variables*
${BASE_URL}     https://www.kabum.com.br/

*Keywords*

Start Session   
    Open Browser    about:blank     chrome      options=add_experimental_option('excludeSwitches',['enable-logging'])
    Maximize Browser Window

Finish Session
    Capture Page Screenshot
    Close Browser
