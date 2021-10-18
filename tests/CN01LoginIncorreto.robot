*Settings*  
Documentation       Caso de Teste 1- Validação de Usuãrio Inválido

Library         ${EXECDIR}/resources/factories/users.py
Resource        ${EXECDIR}/resources/base.robot


Suite Setup          Start Session 
Suite Teardown       Finish Session

*Test Cases*
Caso de Teste 1- Validação de Usuãrio Inválido
    [Tags]      inv_login
    ${user}    Factory Usuario   
    
    Dado que acesso a página inicial da Kabum 
    E clico em login Faça seu Login        
    Quando faço a inclusão de dados incorretos do cliente   ${user}
    Então vejo a notificação Dados inválidos, tente novamente! 
