            # language: pt

            Funcionalidade: Conclusão de cadastro
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que entro na página de conclusão do cadastro

            Esquema do Cenário:
            Quando eu preencher com o <nome>, <sobrenome>, <pais>, <endereco>, <cidade>, <cep>, <telefone> e <e-mail>
            E clicar em finalizar compra
            Então deve apresentar uma <mensagem>: "Compra finalizada"

            Exemplos:
            | nome     | sobrenome | pais      | endereco            | cidade    | cep       | telefone    | e-mail                         | mensagem          |
            | Lucas    | Matos     | Argentina | Rua das Flores      | Tabatinga | 65878-214 | 71992969696 | lucasmateus@ebacshop.com.br    | Compra finalizada |
            | Karlos   | Danilo    | Brasil    | Av. 35 de Agosto    | Chuí      | 32632-455 | 73988554545 | karlosdanilo@ebacshop.com.br   | Compra finalizada |
            | Jambeiro | Júnior    | Chile     | 1ª travessa Alegria | Bonito    | 55896-788 | 41978785264 | jambeirojunior@ebacshop.com.br | Compra finalizada |

            Cenário: Formato inválido no campo de e-mail
            Quando eu preencho o campo de e-mail com "*#:"")@ebacshop.com.br"
            E clicar em finalizar compra
            Então deve exibir mensagem de erro: "Há caracteres inválidos neste campo"

            Cenário: Cadastro com campo vazio
            Quando concluo o cadastro deixando algum campo vazio
            E clicar em finalizar compra
            Então deve exibir mensagem de alerta: "Há campos vazios"
