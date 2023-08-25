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

            Cenário: Autenticação válida
            Quando eu digitar o usuário "joao@ebac.com.br"
            E a senha "senha@123"
            Então Deve exibir uma mensagem de boas vindas: "Olá joão"

            Cenário: Usuário inexistente
            Quando eu digitar o usuário "jazaoao@ebac.com.br"
            E a senha "senha@123"
            Então Deve exibir uma mensagem de alerta: "Usuário inexistente"

            Cenário: Usuário com senha inválida
            Quando eu digitar o usuário "joao@ebac.com.br"
            E a senha "senha@66555"
            Então Deve exibir uma mensagem de alerta: "Usuário com senha inválida"

            Funcionalidade: finalizar compra
            Como cliente do site Ebac
            Quero concluir meu cadastro
            Para finalizar minha compra

            Contexto: concluir cadastro para finalizar compra

            Cenário: cadastro de dados
            Quando eu preencher os dados de cadastro
            E preencher todos os dados marcados com asterisco
            Então Deve exibir uma mensagem de: "cadastro realizada com sucesso"

            Cenário: cadastro de dados
            Quando eu preencher os dados de cadastro
            E  não preencher todos os dados marcados com asterisco
            Então Deve exibir uma mensagem de: "preencher todos os dados marcados com *"

            Cenário: cadastro de email
            Quando eu preencher o email
            E com caracteres válidos
            Então Deve exibir uma mensagem de: "email valido"

            Cenário: cadastro de email
            Quando eu preencher o email
            E com caracteres invalidos
            Então Deve exibir uma mensagem de: "email invalido"

            Esquema do Cenário: cadastro de dados
            Quando Eu preencher alguma <campo de dados>
            E o <preenchimento for valido>
            Então Deve exibir a <mensagem> De dado cadastrado com sucesso

            Exemplos:
            | campo de dados   | preenchimento for valido | mensagem                      |
            | "email"          | "a@a.com.br"             | "dado cadastrado com sucesso" |
            | "email"          | "a.com.br"               | "erro ao cadastrar o email"   |
            | "dados pessoais" | "rafael"                 | "dado cadastrado com sucesso" |
            | "dados pessoais" | "azcuzartes"             | "erro ao cadastrar dados"     |


            Esquema do Cenário: Autenticar multiplos usuários
            Quando Eu digitar <usuario>
            E a <senha>
            Então Deve exibir a <mensagem> De sucesso

            Exemplos:
            | usuario            | senha       | mensagem                     |
            | "joao@ebac.com.br" | "teste@123" | "Olá João"                   |
            | "moao@ebac.com.br" | "teste@123" | "Usuário inexistente"        |
            | "aoao@ebac.com.br" | "teste@123" | "Usuário com senha inválida" |

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