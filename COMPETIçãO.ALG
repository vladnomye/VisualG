Algoritmo "Competição"
Var
time:vetor[1..3] de caractere
c1, c2: inteiro

procedimento escolhaNome()
inicio
para c1 <- 1 ate 3 faca
escreval("Digite o nome de 3 Times diferentes:")
leia(time[c1])
limpatela
fimpara
fimprocedimento

procedimento Tabela()
inicio
para c1 <- 1 ate 3 faca
     para c2 <- 1 ate 3 faca
     se (c1<>c2) entao
     escreval(time[c1]," x ",time[c2])
     fimse
     fimpara
     fimpara
fimprocedimento
Inicio
escolhaNome()
tabela()

Fimalgoritmo