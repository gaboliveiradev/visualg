Algoritmo "semnome"
//  
//  
// Disciplina   : Técnicas de Programação e Algoritmos
// Professor   : Tiago Antonio da Silva 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 29/07/2021
Var
// Seção de Declarações das variáveis 
nome1, nome2, nome3, nome4 : caractere

pessoas : vetor [1..10] de caractere

posicao : inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
pessoas[1] <- "Thiago"
pessoas[2] <- "Pablo"
pessoas[3] <- "André"
pessoas[4] <- "Bruno"
pessoas[5] <- "Isabella"

//Escreval("A pessoa da posição 2 é ", pessoas[2])

//Escreval("Qual posição você quer ver? ")
//Leia(posicao)

//Escreval("O valor da posição ", posicao, " é ", pessoas[posicao])


// Preenchendo o vetor
Para posicao de 1 até 10 Faça
   Escreval("Digite o nome para a posição ", posicao, "ª")
   Leia(pessoas[posicao])
Fimpara


// Mostrando todos os valores do vetor.
Para posicao de 1 até 10 Faca
   Escreval("O valor da posição ", posicao, " é ", pessoas[posicao])
Fimpara

Fimalgoritmo