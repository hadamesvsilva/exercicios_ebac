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

Cenário: Usuário inválido
Quando eu digitar usuário "fsljhdfjls@ebacshop.kl.dt"
E a senha "123456@ebac"
Então deve exibir uma mensagem de "Usuário ou senha inválidos"

Cenário: Senha inválida
Quando eu digitar usuário "hadames@ebacshop.com.br"
E a senha "skjfs34"
Então deve exibir uma mensagem de "Usuário ou senha inválidos"
