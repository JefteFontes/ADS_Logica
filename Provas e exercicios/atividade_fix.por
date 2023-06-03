//QUESTÃO 1 
	
		//Variáveis
		real h, m3, c, l
		
		//Entrada dos dados
		escreva("Informe a largura da piscina: \n")
		leia(l)
		escreva("Informe comprimento da piscina: \n")
		leia(c)
		escreva("Informe a profundidade da piscina: \n")
		leia(h)
		
		//Cálculos para o volume da piscina 
		m3 = c * l * h
		
		//Saída dos dados
		escreva("*************************************** \n")
		escreva("Sua piscina tem a capacidade de "+(m3 * 1000)+" litros./nLogo precisará de "+(m3 * 14)+" gramas de cloro.")


//QUESTÃO 2
	
		//Variáveis
		inteiro v, t, d, l
		
		//Entrada de dados
		escreva("Informe o tempo gasto na viagem: \n")
		leia(t)
		escreva("Informe a velocidade média atingida durante a viagem: \n")
		leia(v)
		
		//Calculos para litros usados
		d = v * t
		l = d / 12
		
		//Saída dos dados
		escreva("\nVocês percorreram "+d+" km, com uma velocidade de "+v+"km/h durante "+t+" horas. \n")
		escreva("A quantidade de litros de combustível utilizada na viagem foi de "+l+" litros.")
		


//QUESTÃO 3
	
		//Variáveis
		inteiro m3
		
		//Entrada dos dados 
		escreva("Digite seu consumo de agua no mês, para calcular o valor a ser pago: \n")
		leia(m3)
		
		//Saída dos dados
		se (m3 <= 10){
			escreva("O valor a ser pago é 36.21 R$")
		} senao se (m3 == 11 ou m3 <= 15){
			escreva("O valor a ser pago é "+(36.21 +(6.75 * m3))+" R$")
		} senao se (m3 == 16 ou m3 <= 20){
			escreva("O valor a ser pago é "+(69.96 +(7.42 * m3))+" R$")
		} senao se (m3 == 21 ou m3 <= 25){
			escreva("O valor a ser pago é "+(107.06 +(8.10 * m3))+" R$")
		} senao se (m3 == 26 ou m3 <= 35){
			escreva("O valor a ser pago é "+(147.56 +(12.81 * m3))+" R$")
		} senao {
			escreva("O valor a ser pago é "+(275.66 +(13.98 * m3))+" R$")
		}

//QUESTÃO 4

		//Variáveis
		cadeia nome
		inteiro dia 
		
		//Entrada dos dados 
		escreva("Informe o seu nome: \n")
		leia(nome)
		
		escreva("Olá "+nome+" bem-vindo a nosso hotel.\nInforme quantas diárias deseja: ")
		leia(dia)
		
		//Saída dos dados
		se (dia < 15) {
			escreva("-----------------------------\n")
			escreva("Cliente: "+nome+"\n")
			escreva("-----------------------------\n")
			escreva("Diárias: "+dia+"\n")
			escreva("Valor por diária: "+(dia * 120.00)+" R$\n")
			escreva("Taxa de serviços: "+(dia * 5.50)+" R$\n")
			escreva("-----------------------------\n")
			escreva("Total a pagar: "+((dia * 120.00)+(dia * 5.50))+" R$")
		} senao se (dia == 15) {
			escreva("-----------------------------\n")
			escreva("Cliente: "+nome+"\n")
			escreva("-----------------------------\n")
			escreva("Diárias: "+dia+"\n")
			escreva("Valor por diária: "+(dia * 120.00)+" R$\n")
			escreva("Taxa de serviços: "+(dia * 6.00)+" R$\n")
			escreva("-----------------------------\n")
			escreva("Total a pagar: "+((dia * 120.00)+(dia * 6.00))+" R$")
		} senao {
			escreva("-----------------------------\n")
			escreva("Cliente: "+nome+"\n")
			escreva("-----------------------------\n")
			escreva("Diárias: "+dia+"\n")
			escreva("Valor por diária: "+(dia * 120.00)+" R$\n")
			escreva("Taxa de serviços: "+(dia * 8.00)+" R$\n")
			escreva("-----------------------------\n")
			escreva("Total a pagar: "+((dia * 120.00)+(dia * 8.00))+" R$")
		}


//QUESTÃO 5
	
		//Variáveis
		cadeia nome1, nome2
		real altu1, altu2, peso1, peso2
		
		//Entrada dos dados
		escreva("Digite o nome do individuo 1: \n")
		leia(nome1)
		escreva("Digite a altura do individuo 1: \n")
		leia(altu1)
		escreva("Digite o peso do individuo 1: \n")
		leia(peso1)
		
		escreva("Digite o nome do individuo 2: \n")
		leia(nome2)
		escreva("Digite a altura do individuo 2: \n")
		leia(altu2)
		escreva("Digite o peso do individuo 2: \n")
		leia(peso2)
		
		//Saída dos dados
		se(altu1 > altu2){
			escreva("\n"+nome1+" é mais alto(a) que "+nome2+", com "+altu1+" metros de altura.\n")
		} senao {
			escreva("\n"+nome2+" é mais alto(a) que "+nome1+", com "+altu2+" metros de altura.\n")
		}

		se (peso1 > peso2){
			escreva("\n"+nome1+" é mais pesado(a) que "+nome2+", com um peso de "+peso1+"kg.\n")
		} senao {
			escreva("\n"+nome2+" é mais pesado(a) que "+nome1+", com um peso de "+peso2+"kg.\n")
		}
//QUESTÃO 6 
	
		//Variáveis
		real d , s, total = 0.0
		
		//Estrutura de controle
		para (inteiro n = 1; n <= 10; n++){
			d = n * n
			s = n / d
			se (n % 2 == 0){
				total -= s
			}
			senao {
				total += s
			}
		}
		
		//Saída dos dados
		escreva("O valor de S foi "+total)
		
//QUESTÃO 7

	inclua biblioteca Matematica --> m
	
		real idade, altura, soma_idade = 0.0, soma_altura = 0.0, media_altu, media_idade
		inteiro quan_idade = 0, quan_altura = 0

		para (inteiro est = 1; est <= 5; est++) {
			escreva("Digite a idade do aluno "+est+": ")
			leia(idade)
			escreva("Digite a altura do aluno "+est+": ")
			leia(altura)

			se (altura < 1.70){
				soma_idade += idade
				quan_idade++
			}
			se (idade > 20){
				soma_altura += altura
				quan_altura++
			}
		}
		
		se (quan_idade > 0 ){
			media_idade = soma_idade / quan_idade
			media_idade = m.arredondar(media_idade, 1)
			escreva("\nA idade média dos alunos com menos de 1,70m é "+ media_idade+" anos.")
		} senao {
			escreva("\nNão tem alunos com menos de 1.70m.")
		}
		
		se (quan_altura > 0 ){
			media_altu = soma_altura / quan_altura
			media_altu = m.arredondar(media_altu, 2)
			escreva("\nA altura média dos alunos com mais de 20 anos é "+ media_altu+" metros.")
		} senao {
			escreva("\nNão tem alunos com mais de 20 anos.")
		}

//QUESTÃO 8

		inteiro nu_conta
		real saldo_atual, valor, saldo_novo = 0
		caracter operac

		escreva("Informe o número da conta: ")
		leia(nu_conta)
		escreva("Informe o saldo atual da conta "+nu_conta+": R$ ")
		leia(saldo_atual)

		escreva("Qual operação deseja realizar? Digite 'D' para depósito ou 'S' para saque: ")
		leia(operac)

		escreva("Informe o valor da operação: R$ ")
		leia(valor)

		se (operac == 'S'){
			saldo_novo = saldo_atual - valor
		} senao se (operac == 'D'){
			saldo_novo = saldo_atual + valor
		} senao {
			escreva("\nInforme uma letra válida.")
		}

		se (saldo_novo < 0.0){
			escreva("\nConta estourada.\n")
		}

		escreva("\nSeu novo saldo R$ "+saldo_novo+".")

//QUESTÃO 9



//QUESTÃO 10

	
		real num, s
		inteiro quant = 1

		escreva("Escreva um numero: ")
		leia(num)
		escreva("\nO numero será dividido por 2 até o resultado ser menor que 1.\n\n")
		s = num/2
		escreva("Foram efetuadas as divisões: \n"+num+" / 2 \n")
		enquanto(s >= 1) {
			++quant
			
			escreva(s+" / 2 \n")
			s = s / 2			
		}
		escreva("\nForam efetuadas "+quant+" divisões. E o resultado da ultima divisão foi "+s)















