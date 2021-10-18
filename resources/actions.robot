*Settings*
Documentation       Acções Customizadas da Kabum

Library             SeleniumLibrary

*Keywords*

Dado que acesso a página inicial da Kabum 
    Go to           ${BASE_URL}

E clico em login Faça seu Login
    CLick Element                     id=linkLoginHeader

Quando faço a inclusão de dados incorretos do cliente
    [Arguments]      ${user}
    Wait Until Page Contains        Já tenho cadastro       5
    Input Text     css=input[id=inputUsuarioLogin]      ${user}[usuario]         
    Input Text     css=input[id=inputSenhaLogin]        ${user}[password]
    Click Element  id=botaoLogin 

Então vejo a notificação Dados inválidos, tente novamente! 

    Wait Until Element Is Visible      //*[@id="inputSenhaLogin"]/div[2]    5

Quando Procuro por um Iphone

    Click Element   id=input-busca
    Input Text      id=input-busca      iPhone
    Click Element   dom:document.querySelector("#barraBuscaKabum > div > form > button") 

Então vejos todos os modelos encontrados

    Wait Until Element Is Visible   //*[@id="listingHeader"]/img      5

E desejo procurar por um determinado produto

    Mouse Over                      //*[@id="menuExpansivelCategorias"]/div/div/div/nav/div/button
    Mouse Over                      //*[contains(text(),'Cadeira')]
    Wait Until Element Is Visible   //*[contains(text(),'Cadeiras Gamer')]

E Pesquiso SubMenu Cadeira Gamer

    Mouse Over                      //*[contains(text(),'Cadeiras Gamer')]
    Wait Until Element Is Visible   //*[contains(text(),'Aerocool')]
    Mouse Over                      //*[contains(text(),'Aerocool')]
    Click Element                   //*[contains(text(),'Aerocool')]

Quando seleciono uma Cadeira
    Mouse Down                          //*[@id="listing"]/article/section/div[2]/div/main/div[1]/a/div/h2
    Wait Until Element Is Visible       //*[@id="listing"]/article/section/div[2]/div/main/div[1]/a/div/h2
    Mouse Over                          //*[@id="listing"]/article/section/div[2]/div/main/div[1]/a/div/h2
    Click Element                       //*[@id="listing"]/article/section/div[2]/div/main/div[1]/div[2]/div[1]/button
    Wait Until Element Is Visible       //*[contains(text(),'PRODUTO ADICIONADO NO CARRINHO')]

Então o produto deverá constar no meu carrinho de compras
    Click Element       //*[@id="__next"]/div[1]/section/div/div[3]/button[2]
    Wait Until Element Is Visible       //*[contains(text(),'RESUMO')]