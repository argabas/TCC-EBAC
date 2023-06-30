#language: pt

Funcionalidade: Cadastro e pesquisa de cupons
Como admin da EBAC-SHOP
Quero criar um serviço de cupom
Para poder listar e cadastrar os cupons

Contexto:
Dado que pesquise ou cadastre um cupom

Cenário: Pesquisa de lista de cupons
Quando eu pesquisar os cupons sem digitar o ID
Então deve mostrar todos os cupons cadastrados

Cenário: Pesquisa de cupom válido
Quando eu pesquisar um cupom digitando o id "ganhe10"
Então deve mostrar os dados desse cupom

Cenário: Pesquisa de cupom inválido
Quando eu pesquisar um cupom digitando o ID "xpto50"
Então deve emitir mensagem "O cupom digitado está incorreto!"

Cenário: Cadastro válido de cupom informando todos os campos
Quando eu digitar o id "ganhe10"
E digitar o valor "10,00"
E digitar o tipo de desconto "fixed_product"
E digitar a descrição "cupom de teste"
E clicar em post
Então deve emitir mensagem "Cupom cadastrado com sucesso!"

Cenário: Cadastro inválido de cupom informando todos os campos
Quando eu digitar o id "teste100"
E digitar o valor "100,00"
E digitar o tipo de desconto "fixed_product"
E digitar a descrição "cupom de teste"
E clicar em post
Então deve emitir mensagem "Este cupom já existe na base de dados!"
