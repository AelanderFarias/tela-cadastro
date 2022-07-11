Algoritmo "DevTour"
// Disciplina   : [Linguagem e Lógica de Programação] 
// Aluno: Aelander de Aelanco Luiz Rosa Farias 

Var

Menu: caracter
cliente: vetor [1..10] de caracter
nCliente: inteiro
destino: vetor [1..10] de caracter
nDestino: inteiro

procedimento cadastroCliente()
   inicio
   nCliente := nCliente + 1
   escreval("-> Cadastro de Cliente <-")
   escreva("Nome completo: ")
   leia(cliente[nCliente])
   nCliente := nCliente + 1
   escreva("Cpf: ")
   leia(cliente[nCliente])
   nCliente := nCliente + 1
   escreval()
   escreval("Cliente cadastrado!")
   escreval("Nome: ", cliente[nCliente-2])
   escreval("CPF: ", cliente[nCliente-1])
fimprocedimento

procedimento cadastroDestino()
   inicio
   nDestino := nDestino + 1
   escreval("-> Cadastro de Destino <-")
   escreva("Qual seu destino? ")
   leia(destino[nDestino])
   nDestino := nDestino + 1
   escreval("Quantos dias de viagem?")
   leia(destino[nDestino])
   nDestino := nDestino + 1	
   escreval()
   escreval("Destino cadastrado!")
   escreval("Destino: ", destino[nDestino-2])
   escreval("Tempo de viagem: ", destino[nDestino-1])
fimprocedimento

procedimento imprimeDadoscliente(indice: inteiro)
   inicio
   escreval("Nome: ", cliente[indice])
   escreval("CPF : ", cliente[indice+1])
fimprocedimento

procedimento consultacliente()
   var
   cliente: caracter
   i: inteiro
   encontroucliente: logico
   inicio
   encontroucliente := falso
   
   escreval("-> Consultando usuário <-")
   escreva("Nome do usuário: ")
   leia(cliente)
   se nCliente >= 1 entao
   para i de 1 ate nCliente passo 3 faca
        se Maiusc(cliente) = Maiusc(cliente[i]) entao
             imprimeDadoscliente(i)
             encontroucliente := verdadeiro
        fimse
   fimpara
   senao
        escreval("Não há nenhum usuário cadastrado")
   fimse
   se nao encontroucliente entao
         escreval("Nenhum cliente foi encontrado com o nome informado")
   fimse
fimprocedimento

procedimento imprimeDadosDestino(indice: inteiro)
   inicio
   escreval("Local: ", destino[indice])
   escreval("Duracao da viagem : ", destino[indice+1], " dias")
fimprocedimento


procedimento consultaDestino()
   var
   destino: caracter
   i: inteiro
   encontrouDestino: logico
   inicio
   encontrouDestino := falso
   
   escreval("-> Consulta de Destino <-")
   escreva("Local do destino: ")
   leia(destino)
   se nDestino >= 1 entao
   para i de 1 ate nDestino passo 3 faca
        se Maiusc(destino) = Maiusc(destino[i]) entao
             imprimeDadosDestino(i)
             encontrouDestino := verdadeiro
        fimse
   fimpara
   senao
        escreval("Não há destino cadastrado.")
   fimse
   se nao encontrouDestino entao
         escreval("Nenhum destino foi encontrado com o lugar informado")
   fimse
fimprocedimento


Inicio
  nCliente := 0
  nDestino := 0


  escreval("-> Agência de viagens DevTour <-")
  escreval()
  menu := ""
  enquanto menu <> "5" faca
     escreval()
     escreval()
     escreval("[ Escolha 1 - Cadastro de cliente / 2 - Cadastro de destino")
     escreval("  3 - consutar cliente / 4 - consultar destino / 5 - sair ]")
     leia(menu)
     limpatela
     escolha menu
       caso "1"
            cadastroCliente()
       caso "2"
            cadastroDestino()
       caso "3"
            consultacliente()
       caso "4"
            consultaDestino()
     fimescolha
  fimenquanto
 escreval()
Fimalgoritmo