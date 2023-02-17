      #language: pt

      Como cliente da EBAC-SHOP
      Quero fazer login na plataforma
      Para visualizar meus pedidos

      Contexto:
      Dado que eu estou na página de login da EBAC-SHOP

      Cenário: Validar Cadastro
      Quando eu informar o usuário "JulianoRamos" e senha "@123gremio"
      Entao devo ser direcionado para a tela de checkout

      Esquema do Cenário: Cadastro Inválido
      Quando eu informar o <usuario> e <senha>
      Entao deve exibir a <mensagem>

      Exemplos:
      | usuario           | senha             | mensagem                 |
      | "jairinexistente" | "@123gremio"      | "Usuário não cadastrado" |
      | "JulianoRamos"    | "senhaEquivocada" | "Senha incorreta"        |