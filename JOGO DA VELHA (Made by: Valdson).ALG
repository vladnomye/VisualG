Algoritmo "Jogo da Velha (Made by: Valdson)"
Var
//Matrizes
numMat3Ordem:vetor[1..3, 1..3] de caractere
verificaVouF:vetor[1..9] de logico
//Contadores
jogada:caractere
l, c, a: inteiro
//procedimentos

procedimento tabela()
Inicio
escreval("                Jogo da Velha")
escreval("               ---------------")
escreval("     Jogadas invalidas não serão contadas!!")
escreval()
escreval(" _|_|_|_|_|_|_|_")
escreval()
      para l <- 1 ate 3 faca
           para c <- 1 ate 3 faca
           escreva("| ",numMat3Ordem[l,c]:2,"|")
           fimpara
           escreval()
      fimpara
fimprocedimento

procedimento tabelaResult()
inicio
       para l <- 1 ate 3 faca
           para c <- 1 ate 3 faca
           escreva("| ",letMat3Ordem[l,c]:1, " |")
           fimpara
           escreval()
      fimpara

fimprocedimento

procedimento jogadaX()
inicio
      escreval("Escolha um lugar para X")
      leia(jogada)

      se (jogada = numMat3Ordem[1,1]) entao
      numMat3Ordem[1,1] <- "X"
      verificaVouF[1] <- verdadeiro
      senao
      
      se jogada = numMat3Ordem[1,2] entao
      numMat3Ordem[1,2] <- "X"
      verificaVouF[2] <- verdadeiro
      senao
      
      se jogada = numMat3Ordem[1,3] entao
      numMat3Ordem[1,3] <- "X"
      verificaVouF[3] <- verdadeiro
      senao

      se jogada = numMat3Ordem[2,1] entao
      numMat3Ordem[2,1] <- "X"
      verificaVouF[4] <- verdadeiro
      senao
      
      se jogada = numMat3Ordem[2,2] entao
      numMat3Ordem[2,2] <- "X"
      verificaVouF[5] <- verdadeiro
      senao
      
      se jogada = numMat3Ordem[2,3] entao
      numMat3Ordem[2,3] <- "X"
      verificaVouF[6] <- verdadeiro
      senao
      
      se jogada = numMat3Ordem[3,1] entao
      numMat3Ordem[3,1] <- "X"
      verificaVouF[7] <- verdadeiro
      senao
      
      se jogada = numMat3Ordem[3,2] entao
      numMat3Ordem[3,2] <- "X"
      verificaVouF[8] <- verdadeiro
      senao
      
      se jogada = numMat3Ordem[3,3] entao
      numMat3Ordem[3,3] <- "X"
      verificaVouF[9] <- verdadeiro

      fimse
      fimse
      fimse
      fimse
      fimse
      fimse
      fimse
      fimse
      fimse


limpatela
fimprocedimento

procedimento VenceX()
inicio
      //Diagonal Direita
       para l <- 1 ate 3 faca
          se (numMat3Ordem[1,3] = numMat3Ordem[2,2]) e (numMat3Ordem[2,2] = numMat3Ordem[3,1]) entao
             escreval("X Venceu Porra")
             fimJogo()
          fimse
fimpara
      //Diagonal Esquerda
para l <- 1 ate 3 faca
          se (numMat3Ordem[1,1] = numMat3Ordem[2,2]) e (numMat3Ordem[2,2] = numMat3Ordem[3,3]) entao
             escreval("X Venceu Porra")
             fimJogo()
          fimse
fimpara

      //Vertical
para l <- 1 ate 3 faca
          se (numMat3Ordem[l,1] = numMat3Ordem[l,2]) e (numMat3Ordem[l,2] = numMat3Ordem[l,3]) entao
             escreval("X Venceu Porra")
             fimJogo()
          fimse
fimpara
     //Horizontal
     para c <- 1 ate 3 faca
          se (numMat3Ordem[1,c] = numMat3Ordem[2,c]) e (numMat3Ordem[2,c] = numMat3Ordem[3,c]) entao
             escreval("X Venceu Porra")
             fimJogo()
          fimse
     fimpara
  limpatela
fimprocedimento

procedimento VenceO()
inicio

      //Diagonal Direita
       para l <- 1 ate 3 faca
          se (numMat3Ordem[1,3] = numMat3Ordem[2,2]) e (numMat3Ordem[2,2] = numMat3Ordem[3,1]) entao
             escreval("O Venceu Porra")
             fimJogo()
          fimse
fimpara

      //Diagonal Esquerda
para l <- 1 ate 3 faca
          se (numMat3Ordem[1,1] = numMat3Ordem[2,2]) e (numMat3Ordem[2,2] = numMat3Ordem[3,3]) entao
             escreval("O Venceu Porra")
             fimJogo()
          fimse
fimpara


      //Vertical
para l <- 1 ate 3 faca
          se (numMat3Ordem[l,1] = numMat3Ordem[l,2]) e (numMat3Ordem[l,2] = numMat3Ordem[l,3]) entao
             escreval("O Venceu Porra")
             fimJogo()
          fimse
fimpara
     //Horizontal
     para c <- 1 ate 3 faca
          se (numMat3Ordem[1,c] = numMat3Ordem[2,c]) e (numMat3Ordem[2,c] = numMat3Ordem[3,c]) entao
             escreval("O Venceu Porra")
             fimJogo()
          fimse
     fimpara
  limpatela
fimprocedimento

procedimento fimJogo()
inicio
fimalgoritmo
fimprocedimento

procedimento fimJogoEm()
inicio
para l <- 1 ate 9 faca
se (verificaVouF[l] = verdadeiro ) entao
fimse
fimpara
escreval("Empatou")
fimJogo()
fimprocedimento

procedimento jogadaO()
inicio

      escreval("Escolha um lugar para O")
      leia(jogada)
      limpatela


      se (jogada = numMat3Ordem[1,1]) entao
      numMat3Ordem[1,1] <- "O"
      verificaVouF[1] <- verdadeiro
      senao

      se jogada = numMat3Ordem[1,2] entao
      numMat3Ordem[1,2] <- "O"
      verificaVouF[2] <- verdadeiro
      senao

      se jogada = numMat3Ordem[1,3] entao
      numMat3Ordem[1,3] <- "O"
      verificaVouF[3] <- verdadeiro
      senao

      se jogada = numMat3Ordem[2,1] entao
      numMat3Ordem[2,1] <- "O"
      verificaVouF[4] <- verdadeiro
      senao

      se jogada = numMat3Ordem[2,2] entao
      numMat3Ordem[2,2] <- "O"
      verificaVouF[5] <- verdadeiro
      senao

      se jogada = numMat3Ordem[2,3] entao
      numMat3Ordem[2,3] <- "O"
      verificaVouF[6] <- verdadeiro
      senao

      se jogada = numMat3Ordem[3,1] entao
      numMat3Ordem[3,1] <- "O"
      verificaVouF[7] <- verdadeiro
      senao

      se jogada = numMat3Ordem[3,2] entao
      numMat3Ordem[3,2] <- "O"
      verificaVouF[8] <- verdadeiro
      senao

      se jogada = numMat3Ordem[3,3] entao
      numMat3Ordem[3,3] <- "O"
      verificaVouF[9] <- verdadeiro

      fimse
      fimse
      fimse
      fimse
      fimse
      fimse
      fimse
      fimse
      fimse
limpatela

fimprocedimento

Inicio
//Verdades Absolutas
  //Posições
      numMat3Ordem[1,1] <- "1"
      numMat3Ordem[1,2] <- "2"
      numMat3Ordem[1,3] <- "3"
      numMat3Ordem[2,1] <- "4"
      numMat3Ordem[2,2] <- "5"
      numMat3Ordem[2,3] <- "6"
      numMat3Ordem[3,1] <- "7"
      numMat3Ordem[3,2] <- "8"
      numMat3Ordem[3,3] <- "9"

//Programa
para l <- 1 ate 9 faca
     enquanto (verificaVouF[l] = falso) faca

               tabela()
                       escreval()
                       escreval(" _|_|_|_|_|_|_|_")
                       escreval()
               jogadaX()
               venceX()
               
               tabela()
                       escreval()
                       escreval(" _|_|_|_|_|_|_|_")
                       escreval()
               jogadaO()
               venceO()
               
      fimenquanto
fimpara
fimJogoEm()
fimalgoritmo