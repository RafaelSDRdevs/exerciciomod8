          #language:pt

            Funcionalidade: tela de login
            Como aluno do portal EBAC
            Quero me autenticar
            Para visualizar minhas notas

            Contexto: que eu acesse a página de autenticação do portal EBAC

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

            Esquema do Cenário: Autenticar multiplos usuários
            Quando Eu digitar <usuario>
            E a <senha>
            Então Deve exibir a <mensagem> De sucesso

            Exemplos:
            | usuario            | senha       | mensagem   |
            | "joao@ebac.com.br" | "teste@123" | "Olá João" |
            | "moao@ebac.com.br" | "teste@123" | "Olá João" |
            | "aoao@ebac.com.br" | "teste@123" | "Olá João" |
