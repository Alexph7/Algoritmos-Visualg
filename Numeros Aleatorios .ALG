
Algoritmo "Sorteio aleatorio"
//
//
//Descri��o   : Gera Quantidades De Numeros Aleat�rios e Al�m Disso
//              Conta Quais Numeros Foram Repetidos e Quantas Vezes Ocorreu
// Autor(a)    : Alex Rodrigues
// Data atual  : 15/11/2020
Var
   ale:vetor[1..50] de inteiro
   h:vetor [1..50] de inteiro
   ax:vetor [1..50] de inteiro
   au:vetor [1..50] de inteiro
   zero:vetor[1..50]de inteiro
   i,j,aux,auxd,x,y,auxf,cont:inteiro

   //-------------------------------------------------------------------
procedimento preenchimentoVetor()
inicio
   aleatorio 1,x
   para i de 1 ate x faca
      leia(ale[i])
   fimpara
   aleatorio off
fimprocedimento
//------------------------------------------------------------------
procedimento copiarVetor()
inicio
   para i de 1 ate x faca   //Vai Copiar vetor "ale" para vetor "h" para ser comparado depois.
      h[i]<-ale[i]
   fimpara
fimprocedimento
//------------------------------------------------------------------
procedimento numerosRepetidos()
inicio
   para i de 1 ate y faca   //Vai Preencher Um Vetor Especifico S� Para Numeros Que Se Repetiram.
      para j de i+1 ate x faca
         se(ale[i]=h[j])entao
            ax[j]<-ale[i]
         fimse
      fimpara
   fimpara
fimprocedimento
//----------------------------------------------------------------------
procedimento numerosOcorrencia()
inicio
   para i de 1 ate y faca   //preenche Vetor dizendo quantidades de ocorrencias de um mesmo numero.
      para j de i+1 ate x faca
         se(ale[i]=ale[j])e(ale[i]<>ax[i])entao
            au[i]<-au[i]+1
         fimse
      fimpara
   fimpara
fimprocedimento
//----------------------------------------------------------------------
procedimento ocorrenciaAleatoria()
inicio
   escreval()
   escreval("--------------------------")
   escreval("NUMEROS DE OCORR�NCIAS (Aleat�rias)")
   escreval()
   para i de 1 ate x faca  //repeti��o para mostrar o numero e a qtd de vezes que ele ocorreu sem ordem por enquanto.
      se (au[i]<>0) entao
         escreval("":1,ale[i]:2," {",au[i]+1," }")   // numero de casos repetidos + 1 que � a propria ocorrencia do numero em si.
      senao
         se(au[i]=0)e(ax[i]=0)entao   //se ele for igual a zero, Ent�o Ele ocorreu no min�mo uma vez mas n�o repetiu, e se for igual no vetor "ax" entao ele n�o � igual ao numero jaa repetido.
            escreval("":1,ale[i]:2," {",au[i]+1," }")
         fimse
      fimse
   fimpara
fimprocedimento

//--------------------------------------------------------------------
procedimento ordenador()
inicio
   para i de 1 ate y faca
      para j de i+1 ate x faca   //ordena os vetores
         se(au[i]<au[j])entao
            aux<-au[i]
            auxf<-ax[i]
            auxd<-ale[i]
            au[i]<-au[j]
            ale[i]<-ale[j]
            ax[i]<-au[j]
            au[j]<-aux
            ale[j]<-auxd
            ax[j]<-auxf
         fimse
      fimpara
   fimpara
fimprocedimento
//-----------------------------------------------------------------
procedimento ordemDecrescente()
inicio
   escreval()
   escreval("------------------------")
   escreval("ORDEM DECRESCENTE")
   para i de 1 ate x faca   //Repeti��o Para Colocar Os Numeros Que Ocorreram Mais primeiros ate os Numeros que ocorreram menos.
      se(au[i]<>0)entao
         escreval("O N�: ",ale[i],"  Ocorreu ",au[i]+1,"  Vezes.")   //Seria zero mas � acrescentado +1 pra somar a Pr�pria Ocorr�ncia do N�mero em Si.
      fimse
      se(au[i]=0)e(ax[i]=0)entao
         escreval("O N�: ",ale[i]:2,"  Ocorreu ",au[i]+1:4,"  Vezes.")
      fimse
   fimpara

fimprocedimento
//--------------------------------------------------------------------
procedimento verificarQuemNaoSaiu() //ver quais numeros nao ocorreram nenhuma vez
inicio
   para i de 1 ate x faca
      zero[i]<-i //preenche todo vetor de 1,2,3,4... ate x
   fimpara
   
   para i de 1 ate x faca
   cont<-0   //reseta contador
      para j de 1 ate x faca
         se(zero[i]<>ale[j])entao
            cont<-cont+1      //se atingir x vezes de diferen�a entao nao tem nenhuma igualdade, entao ocorreu zero vezes
         fimse
      fimpara
      se(cont=x)entao
         escreval("O N�: ",zero[i]:2,"  Ocorreu 0 Vezes.")
      fimse
   fimpara
fimprocedimento
//--------------------------------------------------------------------
Inicio
   y<-49   //numero de vezes que o contador "j" vai rodar.
   x<-50  //N�mero De Vezes Que o Contador "i" vai Rodar.
   //para mudar quantidades de numeros altere 'x' e o 'y'
   //com 1 a menos

   preenchimentoVetor()
   copiarVetor()
   numerosRepetidos()
   numerosOcorrencia()
   ordenador()
   ordemDecrescente() //mostra numeros ocorridos ordenado em Decrescente.
   verificarQuemNaoSaiu() //N�meros sem ocorrencias.


Fimalgoritmo