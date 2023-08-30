#language:pt

            Funcionalidade: configurar produto
            Como cliente do site Ebac
            Quero configurar o produto com meu tamanho e gosto
            Para personaliza-lo antes de compra-lo

            Contexto: Personalização de produto antes da compra

            Cenário: personalização de tamanho
            Quando eu escolher o tamanho do produto
            E clicar no tamanho selecionado
            Então Deve exibir uma mensagem de: "tamanho selecionado com sucesso"

            Cenário: Personalização de cores
            Quando eu escolher a cor do produto
            E clicar na cor selecionada
            Então Deve exibir uma mensagem: "cor selecionada com sucesso"

            Cenário: Quantidade de produto
            Quando eu digitar a quantidade selecionada ou adicionar no botão de mais
            E houver a alteração da quantidade numérica
            Então Deve exibir uma mensagem: "Quantidade alterada com sucesso"

            Cenário: Retorno ao estado inicial
            Quando eu clicar em limpar
            E houver o retorno ao estado inicial
            Então Deve exibir uma mensagem: "Retornado ao estado inicial"

            Funcionalidade: tela de login
            Como cliente do site Ebac
            Quero realizar login na tela de autenticação
            Para pvisualizar meus pedidos

            Contexto: que eu acesse a página de autenticação do site EBAC

            Esquema do Cenário: Alterar multiplos produtos
            Quando Eu escolher realizar alguma <alteracao>
            E o <produto>
            Então Deve exibir a <mensagem> De alteração realizada com sucesso

            Exemplos:
            | Alteracao    | produto              | mensagem                             |
            | "tamanho"    | "for alterado"       | "selecionado com sucesso"            |
            | "cores"      | "for alterado"       | "cor selecionada com sucesso"        |
            | "quantidade" | "for alterado"       | "quantidade selecionada com sucesso" |
            | "limpar"     | "retornar ao inicio" | "Retornado ao estado inicial"        |
