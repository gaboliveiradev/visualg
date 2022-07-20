Algoritmo "SOMA_TERMOS"
// Disciplina   : Técnicas de Programação e Algoritmos
// Professor   : Tiago Antonio da Silva 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 09/06/2021
Var
// Seção de Declarações das variáveis
numero_digitado, soma:real
termos, i:inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
Escreval("Quantos números você quer somar?")
Leia(termos)

soma <- 0

para i de 1 até termos faca
   Escreval("Digite o número da ", i, "ª vez:")
   Leia(numero_digitado)
   soma <- soma + numero_digitado
fimpara

Escreval("A soma dos ", termos, " termos é ", soma)

Fimalgoritmo