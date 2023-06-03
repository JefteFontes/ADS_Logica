/*
1. Uma coisa normal para todas as mães ou pais que acabaram de ter filho é a quantidade de vezes que
precisa dar de mamar ou medicar seu filhinho. Diante disto, crie um algoritmo que leia a ação a realizar
(mamar/medicar) e ao fim de 15 horas retorne à quantidade de vezes que cada uma destas ações foi
realizada. Vamos considerar que o mamar ocorre a cada duas horas e a medicação a cada 3 horas.
*/

programa
{
	
	funcao inicio()
	{	
		//Variáveis
		cadeia acao
		inteiro qtd_mamar = 0, qtd_medicar = 0
		
		//Entrada dos dados
		escreva("Escolha a ação a ser realizada. 1 - Dar de mamar | 2 - Dar medicamento: ")
		leia(acao)
		
		//Laço de repetição - PARA
		para(inteiro t = 1; t <= 15; i++){
			//No intervalo de 2 em 2 horas, a contagem de quantas vezes foi dado de mamar
			se(i % 2 == 0 e acao == "1"){
				qtd_mamar++
			}
			//No intervalo de 3 em 3 horas, a contagem de quantas vezes foi dado medicamento
			se(i % 3 == 0 e acao == "2"){
				qtd_medicar++
			}
		}
		//Saída caso ação escolhida foi dar de mamar
		se(acao == "1"){
			escreva("\nQuantidade de vezes que deu de mamar: ",qtd_mamar,"\n")
		} senao se (acao == "2"){ //Saída caso ação escolhida foi dar medicamento
			escreva("\nQuantidade de vezes que medicou: ",qtd_medicar,"\n")
		} senao //Saída caso nenhuma das ações for escolhida
			escreva("\nFoi informado um valor inválido.\n")
	}
}


/*
2. Com base no entendimento acima crie um algoritmo que permita simular uma quantidade indeterminada
de jogos. Para o algoritmo ficar mais simples vamos utilizar como entrada somente a ODD final e o valor
da aposta. Ao final da simulação o algoritmo deverá retornar o valor total de apostas, o valor da menor
aposta e o valor a ganhar (pagar) caso todas as apostas sejam ganhadoras.
*/

programa
{
	
	funcao inicio()
	{	
		//Variáveis 
		real odd = 1.0, valor = 1.0, valor_total = 0.0, menor_valor = 0.0, valor_pagar = 0.0
		inteiro num_apostas = 0
		
		//Saída inicial para informar instruções realização da simulação 
		escreva("Iremos simular todas as apostas que você fez. \nPara finalizar a simulação informe um valor '0'.\n")
		
		//Laço de repetição - ENQUANTO para coletar as odds e valores de cada aposta
		enquanto(odd > 0 e valor > 0) {
			//Contagem das apostas
			num_apostas++
			
			//Entrada dos dados de odd
			escreva("Informe o valor da ",num_apostas,"º odd final: ")
			leia(odd)
			//Entrada dos dados de valores das apostas
			escreva("Informe o ",num_apostas,"º valor apostado: ")
			leia(valor)
			escreva("\n")
			
			//Continuação da simulação caso condição do SE for atendida
			se (odd > 0 e valor > 0) {
				//Cálculo dos valores total e a pagar das apostas
				valor_pagar += (odd * valor)
				valor_total += valor
				
				//Atribuição do menor valor entre as apostas
				se (num_apostas == 1){
					menor_valor = valor
				} senao se (menor_valor > valor){
					menor_valor = valor
				}
			} senao //Saída da parada da simulação
				escreva("\n     Simulação finalizada!     \n\n")
		}
		//Saída final
		escreva("Valor total da apostas: R$",valor_total)
		escreva("\nValor da menor aposta: R$",menor_valor)
		escreva("\nValor a ser pago caso ganhe as apostas: R$",valor_pagar)
	}
}

/*
3. Nilton, desenvolver, é procurado por um escritório de advocacia para confeccionar um algoritmo que
lhes permita simular o valor a receber de acordo com as causas. O algoritmo deverá calcular uma
quantidade indeterminada de simulações durante um dia de acordo com os seguintes percentuais: 15% -
causas trabalhistas, 25% - causas civis e 35% - causas penais. Como entrada deverá receber o tipo da
causa e o valor da mesma e ao final da simulação exibir o valor total das simulações, o valor de cada causa
e o valor que o escritório irá receber.
*/

programa
{
	
	funcao inicio()
	{	
		//Variáveis 
		real valor = 1.0, valor_pagar = 0.0, total_valor = 0.0, valor_ct = 0.0, valor_cc = 0.0, valor_cp = 0.0
		inteiro n_simu = 0
		cadeia causa

		//Saída inicial para informar instruções sobre o programa
		escreva("Simulação do valor a receber de acordo com as causas. Para finalizar simulação informe um valor '0'. \nInforme os tipos de causa assim:")
		escreva("\n1 - Causas trabalhistas")
		escreva("\n2 - Causas civis")
		escreva("\n3 - Causas penais\n\n")

		//Laço de repetição - ENQUANTO para coletar os dados necessários para o programa
		enquanto (valor > 0) {
			//Contagem do número de simulações
			n_simu++
			//Entrada dos dados dos valores de cada causa
			escreva("Informe o valor da ",n_simu,"º causa: ")
			leia(valor)

			se (valor > 0) {
				//Entrada dos tipos de causa
				escreva("Escreva o tipo da ",n_simu,"º causa: ")
				leia(causa)

				//Tratativa para sempre que o valor informado for inválido
				enquanto (causa != "1" e causa != "2" e causa != "3"){
					limpa()
					escreva("Informe um número que esteja de acordo com as causas.\n")
					escreva("Escreva o tipo da ",n_simu,"º causa: ")
					leia(causa)
				}
				//Cálculos de cada causa mediante ao seu tipo
				se (causa == "1") {
					total_valor += valor
					valor_ct += valor
					valor_pagar += (valor_ct * 0.15)
				} senao se (causa == "2") {
					total_valor += valor
					valor_cc += valor 
					valor_pagar += (valor_cc * 0.25)
				} senao se (causa == "3") {
					total_valor += valor
					valor_cp += valor 
					valor_pagar += (valor_cp * 0.35)
				} 
			} senao {//Saída quando o ENQUANTO for finalizado
				limpa()
				escreva("\n      Programa finalizado!      \n")
			}
			
		}
		//Saída final do programa
		escreva("\nValor total informado: R$",total_valor)
		escreva("\nValor das causas trabalhistas: R$", valor_ct)
		escreva("\nValor das causas civis: R$", valor_cc)
		escreva("\nValor das causas penais: R$", valor_cp)
		escreva("\nValor que o escritório irá receber: R$",valor_pagar)
	}
}
