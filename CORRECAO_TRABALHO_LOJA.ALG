Algoritmo "semnome"
// Disciplina   : Técnicas de Programação e Algoritmos
// Professor   : Tiago Antonio da Silva 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 22/07/2021

//Desenvolva 1 algoritmo para Loja de Roupa – Vendas
//O dono de uma loja precisa desenvolver 1 algoritmo de venda de roupa conforme
//descritivo abaixo:
//1 – Digite o Nome do Cliente
//2 – Módulo Venda:

//- Digite o nome da roupa, quantidade e valor unitário da roupa
//- Acumule o valor da roupa vendida = (quantidade * valor unitário da roupa)
//- Mostre o valor da roupa vendida
//- Mostra a mensagem “Deseja vender outra roupa (S/N) “
//- Se SIM continue no módulo venda e vendendo mais roupa.
//- Crie um acumulador de venda total = venda total + Valor da roupa vendida
//- Se Não – entre no módulo pagamento

//3 – Módulo Pagamento:
//- Apresente o valor Venda total
//- Entre com o valor em dinheiro do cliente
//- Calcule o troco = dinheiro do cliente – Venda Total
//Apresente a Msg – Obrigado – Volte Sempre.




Var
// Seção de Declarações das variáveis 
nome, nome_roupa, add_mais_produtos : caractere
valor_roupa_vendida, valor_unitario, valor_total_compra, pgto_cliente, troco : real
quantidade : inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

Escreval("Bem vindo ao EtecStore")
Escreval("Qual é o nome do cliente?")
Leia (nome)

valor_total_compra <- 0

Repita
   Escreva("Qual é a roupa?")
   Leia (nome_roupa)
   Escreva("Qual é o valor unitário da peça de roupa?")
   Leia (valor_unitario)
   Escreva("Qual é a quantidade?")
   Leia (quantidade)
   
   valor_roupa_vendida <- valor_unitario * quantidade
   valor_total_compra <- valor_total_compra + valor_roupa_vendida
   
   Escreval("Deseja vender outra roupa (S/N)")
   Leia (add_mais_produtos)
   SE (add_mais_produtos = "n") ENTÃO
       add_mais_produtos <- "N"
   FIMSE

Até (add_mais_produtos = "N")

Escreval("A compra ficou em: R$ ", valor_total_compra:2:2)

Escreva("Quanto o cliente pagou: ")
Leia(pgto_cliente)

Se (pgto_cliente > valor_total_compra) Então
    troco <- pgto_cliente - valor_total_compra
    Escreval("Seu troco é de R$ ", troco:2:2)
Senão
   Se (pgto_cliente = valor_total_compra) Então
       Escreval("Divida quitada")
   Senão
       Escreval("Pagamento insuficiente. Falta R$ ", valor_total_compra - pgto_cliente )
   Fimse
Fimse

Escreval("Obrigado, ", nome, " volte sempre.")







Escreval("Saiu do programa")

Fimalgoritmo