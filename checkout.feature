      #language: pt

      Como cliente da EBAC-SHOP
      Quero fazer concluir meu Cadastro
      Para finalizar minha compra

      Contexto:
      Dado que estou na página de cadastro da EBAC-SHOP

      Cenário: Cadastro Válido
      Quando inserir os campos obrigatórios nome "Juliano", sobrenome "Ramos", país "Brasil", endereco "Rua Camanducaia", cidade "Viamao", cep "99485111", telefone "99994475" e email "juliano@gmail.com"
      Entao apresentar mensagem "Cadastro efetuado com sucesso"

      Esquema do Cenário: Teste de Múltiplas Tentativas de Cadastro Inválido
      Quando inserir os campos obrigatórios <nome>, <sobrenome>, <pais>, <endereco>, <cidade>, <cep>, <telefone> e <email>
      Entao deve exibir a <mensagem>

      | nome      | sobrenome   | pais     | endereco     | cidade        | cep        | telefone     | email                 | mensagem                   |
      | "Juliano" | "Ramos"     |          | "Rua Caju"   | "Brotolandia" | "94457555" | "5533333333" | "juliano@ebac.com.br" | "Falta selecionar um País" |
      | "Gabriel" | "Dornelles" | "Brasil" | "Rua Abacate | "Mampituba"   | "94948777" | "5199999999" | "gabrielgmail.com"    | "Insira um email válido"   |