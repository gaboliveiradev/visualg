Algoritmo "semnome"
//  
//  
// Disciplina   : Técnicas de Programação e Algoritmos
// Professor   : Tiago Antonio da Silva 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 16/06/2021
Var
// Seção de Declarações das variáveis 
opcao:caractere

nome:caractere

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

Repita
     Escreval("Bem-vindo ao SysEtec")

     Se(nome = "") Então
         Escreval("Informe seu nome")
         Leia(nome)
     Fimse
     
     Escreval("X - Lista de Alunos")
     Escreval("Y - Inserir Aluno")
     Escreval("Z - Sair do Sistema")
     Leia(opcao)
     
     Se(opcao = "x") Então
        opcao <- "X"
     Fimse
     
     Escolha opcao
         Caso "X"
              Escreval("Vai aparecer a lista de Alunos")

         Caso "Y"
              Escreval("Vai cadastrar um aluno")
              
         Caso "Z"
              Escreval("Até logo, ", nome)
              
         Outrocaso
              Escreval("Opção Inválida. Digite a opcao certa ", nome)
     Fimescolha
         
         
     
     //Se(opcao = 1) Então
     //    Escreval("Vai aparecer a lista de Alunos")
     //Fimse
     
     //Se(opcao = 2) Então
     //    Escreval("Vai cadastrar um aluno")
     //Fimse

Até (opcao = "Z")

Fimalgoritmo