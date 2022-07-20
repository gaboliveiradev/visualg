Algoritmo "IMC"
//  
//  
// Faça um algoritmo que cálcule o Índice de Massa
// Corporal (IMC). Para calcular, receba a altura
// e o peso do usuário, mostre o valor do índice
// e a classficação que ele se encontra.
// Fórmula: imc = peso /(altura * altura)
Var
// Seção de Declarações das variáveis 
imc, altura, peso : real

Inicio
Escreval("Etec Health - Cálculo do IMC")

Escreval("Informe seu peso em kilogramas")
Leia(peso)

Escreval("Informe sua altura em metros")
Leia (altura)

imc <- peso / (altura * altura)

Escreval("Seu IMC é de ", imc:2:2)

Se (imc < 18.5) Então
   Escreval("Abaixo do peso normal")
Senão
   Se (imc >= 18.5) e (imc < 25) Então
       Escreval("Peso Normal")
   Senão
      Se (imc >= 25) e (imc < 30) Então
          Escreval("Excesso de Peso")
      Senão
          Se (imc >= 30) e (imc < 35) Então
              Escreval("Obesidade Classe I")
          Senão
              Se (imc >= 35) e (imc < 40) Então
                  Escreval("Obesidade Classe II")
              Senão
                  Escreval("Obesidade Classe III")
              Fimse
          Fimse // Fecha Se do >= 30
      Fimse // Fecha Se do >= 25
   Fimse // Fecha Se do >= 18.5
Fimse // Fecha Se do < 18.5

Fimalgoritmo