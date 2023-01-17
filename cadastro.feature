            # language: pt

            Funcionalidade: Conclusão de cadastro
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Cenário: Conclusão de cadastro para a finalização da compra

            Dado que entro na página de conclusão do cadastro
            E preencho com todos os dados obrigatórios

            | nome     | sobrenome | país      | endereço            | cidade    | cep       | telefone    | e-mail                         |
            | Lucas    | Matos     | Argentina | Rua das Flores      | Tabatinga | 65878-214 | 71992969696 | lucasmateus@ebacshop.com.br    |
            | Karlos   | Danilo    | Brasil    | Av. 35 de Agosto    | Chuí      | 32632-455 | 73988554545 | karlosdanilo@ebacshop.com.br   |
            | Jambeiro | Júnior    | Chile     | 1ª travessa Alegria | Bonito    | 55896-788 | 41978785264 | jambeirojunior@ebacshop.com.br |

            Então deve apresentar uma mensagem de "Cadastro concluído"

            Contexto:
            Dado que entro na página de conclusão do cadastro

            Cenário: Formato inválido no campo de e-mail
            E preencho o campo de e-mail com "*#:"")@ebacshop.com.br"
            Então deve exibir mensagem de erro: "Há itens e formatos inválidos neste campo"

            Cenário: Cadastro com campo vazio
            E concluo o cadastro deixando algum campo vazio
            Então deve exibir mensagem de alerta: "Há campos vazios"

