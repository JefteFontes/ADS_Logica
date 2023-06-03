/*
1. Sabrina Xavier se mostra uma amante dos animais, em especial dos cachorros, tanto que possui três.
No seu dia a dia como fisioterapeuta precisou realizar um atendimento presencial em uma residência que
também era uma ong. Ela, como boa pessoa que é, se solidarizou com a ong e decidiu produzir um algoritmo
para controle dos animais. O algoritmo recebe como entrada o tipo de animal (gato/cachorro) existentes na
ong e produz como saída a quantidade de total dos animais e as correspondentes quantidade individual de
cada tipo.
*/

programa
{
	
	funcao inicio()
	{
		//Variáveis
		inteiro qtd_total = 0, qtd_gato = 0, qtd_cachorro = 0, tipo_pet, sair

		//Laço de repetição - ENQUANTO para coletar os dados dos tipos de pets
		enquanto(tipo_pet != -1){
			//Entrada dos dados
			escreva("Informe o tipo de animal. 1 - Cachorro | 2 - Gato | -1 - Sair: ")
			leia(tipo_pet)

			//Saída caso for informado um valor inválido. Para a repetição até o valor está válido.
			se ((tipo_pet != 1 e tipo_pet != 2) {
				limpa()
				escreva("\nResposta inválida, por favor insira novamente.\n\n")
			}

			//Condição para a contagem de cachorros
			se (tipo_pet == 1){
				//Incremento da quantidade de cachorros
				qtd_cachorro++
				//Incremento do total de pets
				qtd_total++
			} senao se (tipo_pet == 2){ //Condição para a contagem de gatos
				//Incremento da quantidade de gatos
				qtd_gato++
				qtd_total++
			}
		}
		limpa()
		//Saída dos dados
		escreva("Quantidade de gatos: ",qtd_gato)
		escreva("\nQuantidade de cachorros: ",qtd_cachorro)
		escreva("\nQuantidade total de pets: ",qtd_total)
	}
}

/*
2. David Rufino foi contratado por uma multinacional de produção e exportação de peixes que será
instalada em Parnaíba. Ela construirá na região diversos açudes para produção de Tilápia para exportação.
A função dele será desenvolver um algoritmo que leia uma quantidade indeterminada de despescas que
ocorreram durantes os dias de um mês. De cada despesca deverá ser guardada a quantidade de peixes e
o correspondente em Kg. Como saída o algoritmo deverá informar a quantidade de despescas que
ocorreram no período, o total de Kg e a maior quantidade de quilos nas despescas.
*/


programa
{
	
	funcao inicio()
	{	
		//Variáveis 
		inteiro qtd_peixes = 1, qtd_despescas = 0, cont_despesca = 1
		real peso, maior_peso = 0.0, peso_total = 0.0

		//Informações iniciais do programa 
		escreva("Iremos coletar uma quantidade indeterminada de despescas que ocorreram durantes os dias de um mês.")
		escreva("\nPara encerrar o programa informe um valor '-1' ou um numero negativo.2\n\n")

		//Laço de repetição - ENQUANTO para coletar os dados das despescas.
		enquanto(qtd_peixes != -1 e qtd_peixes > 0){
			//Entrada de dados 
			escreva("Informe a quantidade de peixes da ",cont_despesca,"º despesca: ")
			leia(qtd_peixes)

			//Condição para a continuação da coleta dos dados.
			se (qtd_peixes != -1 e qtd_peixes > 0){
				//2º entrada de dados
				escreva("Informe o peso da despesca (em kg): ")
				leia(peso)
				//Contagem das despescas
				qtd_despescas++
				//Soma dos pesos
				peso_total += peso
				//Determinação do maior peso
				se (peso > maior_peso){
					maior_peso = peso
				}
				//Número da despesca atual
				cont_despesca++
				limpa()
			} senao { //Determinação da parada do programa.
				limpa()
				escreva("\n       Programa finalizado       \n\n")
			}
		}
		//Saída dos dados
		escreva("Total de despescas: ",qtd_despescas)
		escreva("\nTotal de peso das despescas: ",peso_total,"kg")
		escreva("\nMaior peso em uma despesca: ",maior_peso,"kg\n")
	}
}

/*
3. (3,0) A máquina de cartão de crédito da empresa do professor Edney (escolinha de inglês) quebrou. Para
tal ele precisa de um algoritmo que lhe permita simular seu faturamento caso contrate o serviço da
maquininha da figura abaixo (como exemplo).
Observações:
• Os tipos de pagamento que iremos considerar serão
somente débito e crédito. Desconsiderar crédito em 12x.
• A máquina cobra uma taxa de acordo com o tipo de
venda. Para vendas no débito 1,40% e para o crédito
3,74%.

O algoritmo a ser desenvolvido deverá ler uma quantidade indeterminada de pagamento feitos na
maquininha. Em cada pagamento (Entrada) deverá ser lido um tipo de pagamento (débito/crédito) e um
valor. Para determinar o fim da simulação você deverá considerar o tipo de pagamento igual a -1 (Flag).
Como saída deverá exibir as seguintes informações: Total das vendas, valor feito no crédito, valor feito no
débito, valores a serem pagos de taxas tanto no crédito quanto no débito e o mais importante, qual valor o
Edney ficará ao final da simulação.
*/

programa
{
	
	funcao inicio()
	{
	
		//Variáveis
		inteiro tipo_pagar = 0
		real valor, total_vendas = 0.0, valor_c = 0.0, valor_d = 0.0, taxa_c = 0.0, taxa_d = 0.0, valor_receber = 0.0, T_taxa_c = 0.0, T_taxa_d = 0.0

		//Laço de repetição - ENQUANTO para simulação da maquininha
		enquanto(tipo_pagar != -1){
			//Entrada do tipo de pagamento
			escreva("Escolha o tipo do pagamento. 1 - Crédito | 2 - Débito | -1 - Finalizar: ")
			leia(tipo_pagar)

			//Condição para a continuação do programa
			se(tipo_pagar != -1){
				//Saída caso o valor informado for inválido 
				se (tipo_pagar != 1 e tipo_pagar != 2){
					limpa()
					escreva("\nResposta inválida, por favor insira novamente.\n\n")
				} senao {//Continuação do programa caso o valor for válido
					
					//Entrada do valor do pagamento
					escreva("Informe o valor do pagamento: ")
					leia(valor)

					//Somatório do total das vendas
					total_vendas += valor

					//Cálculos do valores de crédito 
					se(tipo_pagar == 1){
						valor_c += valor
						taxa_c = valor * 0.0374
						T_taxa_c += taxa_c
						valor_receber += valor - taxa_c
						escreva("\nPagamento efetuado com sucesso!\n\n")
					} senao se (tipo_pagar == 2){//Cálculos do valores de débito
						valor_d += valor
						taxa_d = valor * 0.014
						T_taxa_d += taxa_d
						valor_receber += valor - taxa_d
						escreva("\nPagamento efetuado com sucesso!\n\n")
					}
				}
			} senao {//Saída de parada do programa
				limpa()
				escreva("\n       Programa finalizado       \n\n")
			}
		}
		//Saída dos dados
		escreva("Total da vendas: R$",total_vendas)
		escreva("\nTotal dos valores no crédito: R$",valor_c)
		escreva("\nTotal dos valores no débito: R$",valor_d)
		escreva("\nTotal de taxa no crédito: R$",T_taxa_c)
		escreva("\nTotal de taxa no débito: R$",T_taxa_d)
		escreva("\n-------------------------------------")
		escreva("\nValor a receber: R$",valor_receber,"\n")
	}
}

