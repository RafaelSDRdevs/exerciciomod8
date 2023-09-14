 #language:pt

            Contexto: concluir cadastro para finalizar compra

            Cenário: cadastro de dados
            Quando eu preencher os dados de cadastro
            E preencher todos os dados marcados com asterisco
            Então Deve exibir uma mensagem de: "cadastro realizada com sucesso"

            Cenário: cadastro de dados
            Quando eu preencher os dados de cadastro
            E  não preencher todos os dados marcados com asterisco
            Então Deve exibir uma mensagem de: "preencher todos os dados marcados com *"

            Cenário: cadastro de email valido
            Quando eu preencher o email
            E com caracteres válidos
            Então Deve exibir uma mensagem de: "email valido"

            Esquema do Cenário: cadastro de dados
            Quando Eu preencher alguma <campo de dados>
            E o <preenchimento for valido>
            Então Deve exibir a <mensagem> De dado cadastrado com sucesso

            Esquema do Cenário: cadastro de dados
            Quando Eu preencher alguma <usuario>
            E o <email>
            Então Deve exibir a <mensagem> De dado cadastrado com sucesso

            Exemplos:
            | usuario  | email        | mensagem                      |
            | "joão"   | "a@a.com.br" | "dado cadastrado com sucesso" |
            | "rafael" | "a.com.br"   | "erro ao cadastrar o email"   |
