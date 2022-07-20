Algoritmo "semnome"
// Disciplina   : Técnicas de Programação e Algoritmos
// Professor   : Tiago Antonio da Silva 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 29/07/2021
Var
// Seção de Declarações das variáveis 
pessoas: vetor [1..5] de caracter
idades: vetor[1..5] de inteiro

i : inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

Para i de 1 até 5 Faça
   Escreval("Informe os dados da posição ", i)
   
   Escreval("Qual é o nome?")
   Leia(pessoas[i])
   
   Escreval("Qual é a idade?")
   Leia(idades[i])
Fimpara


Fimalgoritmo