*Settings*  
Documentation       Caso de Teste 1- Escolha de Departamento

Library         ${EXECDIR}/resources/factories/users.py
Resource        ${EXECDIR}/resources/base.robot


Suite Setup          Start Session 
Suite Teardown       Finish Session

*Test Cases*
Caso de Teste 3- Escolha de Departamento
    Dado que acesso a página inicial da Kabum
    E desejo procurar por um determinado produto
    E Pesquiso SubMenu Cadeira Gamer
    Quando seleciono uma Cadeira
    Então o produto deverá constar no meu carrinho de compras


    