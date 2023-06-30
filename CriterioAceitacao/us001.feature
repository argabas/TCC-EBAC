#language: pt

Funcionalidade: Tela de carrinho de compra
Como cliente da EBAC-SHOP
Quero adicionar produtos ao carrinho
Para realizar a compra dos itens

Contexto: 
Dado que eu acesse a página do meu carrinho de compras

Cenário: Permitir compra sem cupom de desconto
Quando eu informar a quantidade do produto "1"
E o valor total for "R$ 168,00"
E o cupom não for aplicado
E clicar no botão "Concluir compra"
Então deve exibir mensagem "Compra realizada com sucesso"

Cenário: Permitir compra com cupom de desconto de 10%
Quando eu informar a quantidade do produto "2"
E o valor total for "R$ 336,00"
E aplicar cupom de desconto de "10%"
E clicar no botão "Concluir compra"
Então deve exibir mensagem "Compra realizada com sucesso"

Cenário: Permitir compra com cupom de desconto de 15%
Quando eu informar a quantidade do produto "4"
E o valor total for "R$ 672,00"
E aplicar cupom de desconto de "15%"
E clicar no botão "Concluir compra"
Então deve exibir mensagem "Compra realizada com sucesso"

Cenário: Negar compra pela quantidade
Quando eu informar a quantidade do produto "11"
E o valor total for "R$ 900,00"
E aplicar cupom de desconto de "15%"
E clicar no botão "Concluir compra"
Então deve exibir mensagem "Não é permitida a compra da quantidade informada! A quantidade máxima permitida é 10 itens."

Cenário: Negar compra pelo valor
Quando eu informar a quantidade do produto "10"
E o valor total for "R$ 991,00"
E aplicar cupom de desconto de "15%"
E clicar no botão "Concluir compra"
Então deve exibir mensagem "O valor total da compra excede o limite de R$ 990,00! Diminua a quantidade de itens do carrinho."

Cenário: Negar compra por cupom 15% aplicado em compras menores que R$ 200,00
Quando eu informar a quantidade do produto "1"
E o valor total for "R$ 168,00"
E aplicar cupom de desconto de "10%"
E clicar no botão "Concluir compra"
Então deve exibir mensagem "Este cupom só é ativado em valores maiores que R$ 200,00! Aumente a quantidade de itens do carrinho ou exclua o cupom informado."

Cenário: Negar compra por cupom 15% aplicado em compras menores que R$ 200,00
Quando eu informar a quantidade do produto "1"
E o valor total for "R$ 168,00"
E aplicar cupom de desconto de "15%"
E clicar no botão "Concluir compra"
Então deve exibir mensagem "Este cupom só é ativado em valores maiores que R$ 600,00! Aumente a quantidade de itens do carrinho ou exclua o cupom informado."

Cenário: Negar compra por cupom 15% aplicado em compras menores que R$ 600,00
Quando eu informar a quantidade do produto "2"
E o valor total for "R$ 336,00"
E aplicar cupom de desconto de "15%"
E clicar no botão "Concluir compra"
Então deve exibir mensagem "Este cupom só é ativado em valores maiores que R$ 600,00! Aumente a quantidade de itens do carrinho ou use um cupom de 10% de desconto."
