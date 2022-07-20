Algoritmo "semnome"
// 
//  
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 05/08/2021
Var
// Seção de Declarações das variáveis 
notas: vetor [1..5] de real
resultado: real
position: caractere
i: inteiro
soma: real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
i <- 1
position <- "primeira"

Repita
      Se (i = 2) Entao
          position <- "segunda"
      Senao
          Se (i = 3) Entao
              position <- "terceira"
          Senao
              Se (i = 4) Entao
                  position <- "quarta"
              Senao
                  Se (i = 5) Entao
                      position <- "quinta"
                  Fimse
              Fimse
          Fimse
      Fimse
      
      Escreva("Digite sua ", position, " nota: ")
      Leia(notas[i])
      soma <- notas[i] + soma
      i <- i + 1
Até i > 5

resultado <- soma/5

Escreval("")
Escreval("Sua média foi de:", resultado)



Fimalgoritmo