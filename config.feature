            # language: pt

            Funcionalidade: Configurar produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que eu acesse a página do produto

            Esquema do Cenário: Configurar múltiplos produtos
            Quando eu escolher a <cor> e o <tamanho>
            E a <quantidade> de 10 itens no máximo
            Então temos um <resultado> positivo

            Exemplos:
            | cor      | tamanho | quantidade | resultado |
            | azul     | g       | 1          | positivo  |
            | vermelho | m       | 10         | positivo  |
            | amarelo  | p       | 5          | positivo  |
            
            Cenário: Configurar produto utilizando o botão limpar
            Quando eu tiver escolhido uma quantidade do produto
            E decidir desfazer a ação com o botão limpar
            Então deve zerar a quantidade de itens selecionados