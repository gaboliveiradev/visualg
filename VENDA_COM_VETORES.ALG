Algoritmo "VENDA_COM_VETORES"
//  
//  
//Desenvolva 1 algoritmo para Loja de Roupa – Vendas
//O dono de uma loja precisa desenvolver 1 algoritmo de venda de roupa conforme descritivo abaixo:
//1 – Digite o Nome do Cliente

//2 – Módulo Venda:
//- Digite o nome da roupa, quantidade e valor unitário da roupa, armazene essas informações em vetores para que a lista de itens do pedido possa ser mostrada depois.
//- Acumule o valor da roupa vendida = (quantidade * valor unitário da roupa)
//- Mostre o valor da roupa vendida
//- Mostra a mensagem “Deseja vender outra roupa (S/N) “
//- Se SIM continue no módulo venda e vendendo mais roupa.
//- Crie um acumulador de venda total = venda total + Valor da roupa vendida
//- Se Não – entre no módulo pagamento

//3 – Módulo Pagamento:
//- Apresente os itens inseridos.
//- Apresente o valor Venda total.
//- Entre com o valor em dinheiro do cliente.
//- Calcule o troco = dinheiro do cliente – Venda Total.
//Apresente a Msg – Obrigado – Volte Sempre.


// | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | |
// V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V
// ==============================================================
// Professor, quando for testar no console usa em tela cheia.
// Quando eu tava testando na tela padrão que ele vem, as vezes
// dava uns bugs nas linhas.
// ==============================================================

Var
// Seção de Declarações das variáveis
nome_cliente, add_produtos, option, confirmacao : caractere
i : inteiro
nome_roupas : vetor [1..10] de caractere
valor_unit, qnt_roupas : vetor [1..10] de real
valor_roupa_vendida, venda_total, pgto_cliente, troco_cliente, falta_pagar : real

numero_cartao, cvc_cartao: real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc...
ESCREVA("Digite o nome do cliente: ")
LEIA(nome_cliente)

i <- 1

REPITA
    ESCREVA("Digite o nome da roupa: ")
    LEIA(nome_roupas[i])
    ESCREVA("Digite o valor unitário: R$")
    LEIA(valor_unit[i])
    ESCREVA("Digite a quantidade de roupa: ")
    LEIA(qnt_roupas[i])
    
    i <- i + 1
    ESCREVA("Deseja vender outra roupa (S/N): ")
    LEIA(add_produtos)
    
    SE (add_produtos = "n") ENTÃO
        add_produtos <- "N"
    FIMSE
    ESCREVAL("")
ATÉ (add_produtos = "N")

i <- i - 1

ESCREVAL("")
ESCREVAL("==== HISTÓRICO DE COMPRAS ====")
REPITA
    valor_roupa_vendida <- (qnt_roupas[i] * valor_unit[i])
    ESCREVAL("Nome da peça: ", nome_roupas[i])
    ESCREVAL("Preço por peça: R$", valor_unit[i]:2:2)
    ESCREVAL("Quantidade: ", qnt_roupas[i])
    ESCREVAL("Valor total: R$", valor_roupa_vendida:2:2)
    ESCREVAL("")
    i <- i - 1
    venda_total <- venda_total + valor_roupa_vendida
ATÉ (i = 0)

ESCREVAL("==== FAÇA SEU PAGAMENTO ====")
ESCREVAL("Valor total da compra: R$", venda_total:2:2)
ESCREVA("Dinheiro do cliente: R$ ")
LEIA(pgto_cliente)

SE (pgto_cliente < venda_total) ENTÃO

    falta_pagar <- (venda_total - pgto_cliente)
    ESCREVA("Ainda falta R$", falta_pagar:2:2, ", deseja passar essa quantia no cartão (S/N): ")
    LEIA(option)
    
    SE (option = "s") ou (option = "S") ENTÃO
        ESCREVAL("")
        ESCREVAL("==== MAQUININHA DE CARTÃO ====")
        ESCREVA("Digite o número do seu cartão: ")
        LEIA(numero_cartao)
        ESCREVA("Digite o código de segurança: ")
        LEIA(cvc_cartao)
        ESCREVAL("")
        
        ESCREVAL("==== CONFIRMAÇÃO DE PAGAMENTO ====")
        ESCREVAL("Valor a passar no cartão: R$", falta_pagar:2:2)
        ESCREVAL("Número do cartão: ", numero_cartao)
        ESCREVAL("Código de segurança: ", cvc_cartao)
        ESCREVA("Digite CONFIRMAR para confirmar seu pagamento:")
        LEIA(confirmacao)
        
        SE(confirmacao = "CONFIRMAR") ou (confirmacao = "confirmar") ENTAO
            ESCREVAL("")
            ESCREVAL("Pagamento realizado com sucesso")
        SENAO
            ESCREVAL("")
            ESCREVAL(nome_cliente, " infelizmente seu pagamento foi recusado, e você foi adicionado automaticamente a nossa lista de devedores.") // Não pensei em um nome melhor ;-;
        FIMSE
            
    SENAO
        ESCREVAL("")
        ESCREVAL(nome_cliente, " você foi adicionado com sucesso a nossa lista de devedores.")// Não pensei em um nome melhor ;-;
    FIMSE
SENAO
    troco_cliente <- (pgto_cliente - venda_total)
    ESCREVAL("Troco do cliente: R$", troco_cliente:2:2)
FIMSE
ESCREVAL("")
ESCREVAL("Obrigado, volte sempre!")


Fimalgoritmo