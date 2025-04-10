Algoritmo "Prova escolar (Usando vetores)"
Var

//gabarito <- vetor das respostas corretas
//nomeAluno <- vetor dos nomes dos alunos
//respostaAluno <- vetor das respostas dos alunos
//guardaNotasAlunos <- vetor que guarda as notas de cada resposta
//somaNotasAlunos <- vetor que guarda a soma das notas de cada resposta dos alunos
//somaNotas <- variável usada meramente pra soma momentânea dos valores de cada resposta
//somaNotasTotais <- variável usada para o armazenamento de todas as notas totais dos alunos, em prol de executar a média da turma
//n1, r1, a <- meramente contadores

gabarito:vetor[1..5] de caractere
nomeAluno:vetor [1..3] de caractere
respostaAluno:vetor [1..5] de caractere
somaNotas: real
somaNotasTotais:real
somaNotasAlunos: vetor[1..5] de real
guardaNotas:vetor[1..5] de real
n1, r1, a:inteiro

Inicio
//1o Parte de especificar o resultado correto
      escreval("Cadastro de gabarito: ")
      escreval("-----------------------")
      r1 <- 1
para r1 <- 1 ate 5 faca
           escreva(r1, "o Resposta:")
           leia(gabarito[r1])
           r1 <- r1 + 1
fimpara
      limpatela

//2o Parte de performar uma resposta
      r1 <- 1
para n1 <- 1 até 3 faca
           escreval("------------------------")
           escreval("Resposta dos Alunos")
           escreval("------------------------")
           escreva("Nome: ")
           leia(nomeAluno[n1])
           escreval("-----------------")
           para r1 <- 1 ate 5 faca
                escreva(r1, "o Questão:" )
                leia(respostaAluno[r1])
                r1 <- r1 + 1
           fimpara

//3o Parte de Correção da resposta (baseada na 1o Parte)
           para r1 <- 1 ate 5 faca
               se (respostaAluno[r1] <> gabarito[r1]) entao
                  guardaNotas[r1] <- 0
               senao
                  guardaNotas[r1] <- 2
               fimse
               somaNotas <- somaNotas + guardaNotas[r1]
           fimpara
           limpatela
           somaNotasAlunos[n1] <- somaNotas
           somaNotasTotais <- somaNotasTotais + somaNotasAlunos[n1]
           somaNotas <- 0
fimpara

//4o Parte de mostrar a média da turma e notas individuais
               escreval("------------------------------------------")
               escreval("Apenas aqueles que tiveram nota superior ou igual a média, que é ",somaNotasTotais/3  :2:0, ", poderão passar de ano")
               escreval("------------------------------------------")
               para n1 <- 1 ate 3 faca
               escreval(nomeAluno[n1], ": ", somaNotasAlunos[n1])
               fimpara
Fimalgoritmo