*Settings*  
Documentation       Caso de Teste 2- Busca Produto Iphone

Library         ${EXECDIR}/resources/factories/users.py
Resource        ${EXECDIR}/resources/base.robot


Suite Setup          Start Session 
Suite Teardown       Finish Session


*Test Cases*
Caso de Teste 2- Busca de Produto
    [Tags]      busc_prod
    ${user}    Factory Busca   
    Dado que acesso a página inicial da Kabum
    Quando Procuro por um iPhone
    Então vejos todos os modelos encontrados