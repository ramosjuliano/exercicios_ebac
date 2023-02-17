      #language: pt

      Funcionalidade: Configurar Produto
      Como cliente da EBAC-SHOP
      Quero configurar meu produto de acordo com meu tamanho e gosto
      E escolher a quantidade
      Para depois inserir no carrinho

      Contexto:
      Dado que eu estou configurando um produto escolhido na EBAC-SHOP

      Cenário: Seleção Válida de Produto
      Quando eu selecionar uma cor "Amarela", tamanho "M" e "2" unidades do produto escolhido
      Então deve exibir uma mensagem "Produto adicionado ao carrinho"

      Cenário: Seleção Inválida de Produto
      Quando eu selecionar uma cor "Amarela", tamanho "M" e não fornecer a quantidade do produto escolhido
      Então deve exibir uma mensagem de alerta "Falta informar a quantidade de itens do produto."

      Esquema do Cenário: Validação de Múltiplos Produtos
      Quando eu selecionar uma <cor>, <tamanho> e <quantidade>
      Entao deve exibir um alerta com a <mensagem>

      Exemplos:
      | cor       | tamanho | quantidade | mensagem                                               |
      | "amarela" | "M"     | 9          | "Produto adicionado ao Carrinho"                       |
      | "verde"   | "M"     | 10         | "Produto Adicionado ao Carrinho"                       |
      | "azul"    | "G"     | 11         | "Número de produtos excede o limite máximo por compra" |

      Cenário: Validar Limpar Carrinho
      Quando eu clicar no botão "Limpar"
      Então o total de itens do meu carrinho deve ser "0"
