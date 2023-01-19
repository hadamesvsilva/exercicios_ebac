            # language: pt

            Funcionalidade: Tela de login
            Como cliente da EBAC-SHOP
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que eu acesse a página de autenticação do portal EBAC-SHOP

            Cenário: Autenticação válida
            Quando eu digitar usuário "hadames@ebacshop.com.br"
            E a senha "123456@ebac"
            Então deve exibir a tela de Checkout

            Esquema do Cenário: Usuário ou senha inválidos
            Quando eu digitar <usuario>
            E a <senha>
            Então deve exibir <mensagem>: "Usuário ou senha inválidos"

            Exemplos:
            | usuario                   | senha       | mensagem                   |
            | fsljhdfjls@ebacshop.kl.dt | 123456@ebac | Usuário ou senha inválidos |
            | hadames@ebacshop.com.br   | * = skjfs34 | Usuário ou senha inválidos |
