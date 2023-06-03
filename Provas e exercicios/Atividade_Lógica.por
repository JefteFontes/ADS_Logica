//1. Desenvolva um algoritmo básico que leia uma temperatura em Celsius e retorne o valor correspondente em fahrenheit.

		//Variáveis 
		real celsius, fahren

		//Entrada dos dados
		escreva("Digite a temperatura em celsius para converter em fahrenheit: \n")
		leia(celsius)

		//Formula de conversão
		fahren = (1.8 * celsius) + 32

		//Saída dos dados
		escreva("A temperatura em fahrenheit é "+fahren+"°")
	


//2. Desenvolva um algoritmo que leia o peso e altura de uma pessoa e calcule o IMC correspondente desta pessoa.

		//Variáveis
		real imc, peso, altura

		escreva("Faremos o cálculo do seu IMC. \n \n")

		//Entrada dos dados
		escreva("Digite sua altura (ex: 1.70): ")
		leia(altura)

		escreva("Digite seu peso (ex: 65.5): ")
		leia(peso)
		
		//Cálculo do IMC
		imc = peso / (altura * altura)
		
		//Saída dos dados
		escreva("Seu IMC é "+imc)
	


//3. Escreva um algoritmo que leia o sexo de uma pessoa (M ou F) e imprimir uma mensagem informando se é “Homem” ou “Mulher”.

	inclua biblioteca Texto --> t

		//Variável
		cadeia sexo

		//Entrada dos dados 
		escreva("Qual o seu sexo? Digite 'M' ou 'F'. \n")
		leia(sexo)
		
		sexo = t.caixa_alta(sexo)

		//Saída dos dados
		se (sexo == "M") {
			escreva("Você é homem.")
		} senao se (sexo == "F") {
			escreva("Você é mulher.")
		} senao {
			escreva("Digite uma letra válida.")
		}



//4. Complemente a questão 3 informando também o peso ideal.

	inclua biblioteca Texto --> t

		//Variáveis
		cadeia sexo
		real pesoM, pesoF, altura, alturacm
		

		//Entrada dos dados 
		escreva("Qual o seu sexo? Digite 'M' ou 'F'. \n")
		leia(sexo)

		escreva("Informe sua altura (ex: 1.70): ")
		leia(altura)
		
		sexo = t.caixa_alta(sexo)

		//Cálculos para o peso ideal
		alturacm = altura * 100
		pesoM = (alturacm * 0.95) - 95
		pesoF = (alturacm * 0.85) - 85
		
		//Saída dos dados
		se (sexo == "M") {
			escreva("Você é homem. Seu peso ideal é "+pesoM+"kg")
		} senao se (sexo == "F") {
			escreva("Você é mulher. Seu peso ideal é "+pesoF+"kg")
		} senao {
			escreva("Digite uma letra válida.")
		}


//5. Desenvolva um algoritmo que leia a idade de uma pessoa e determine a categoria de jogador ela pertence.

		//Variável
		inteiro idade

		//Entrada dos dados 
		escreva("Informe sua idade para o classificar em uma categoria de jogador: \n")
		leia(idade)
		
		//Saída dos dados
		se (idade < 8) {
			escreva("Você tem "+idade+" anos. E sua categoria é infantil.")
			
		} senao se (idade >= 8 e idade <=15) {
			escreva("Você tem "+idade+" anos. E sua categoria é juvenil.")
			
		} senao se (idade >= 16 e idade <=50) {
			escreva("Você tem "+idade+" anos. E sua categoria é adulto.")
			
		} senao {
			escreva("Você tem "+idade+" anos. E sua categoria é sênior.")
		}


//6. Escreva um programa que mostre na tela a seguinte contagem:
	//Saída: 6 7 8 9 10 11 Acabou
	
		para(inteiro i=6; i<=11; i++) {
			escreva(i+" ")
		}
		escreva("Acabou")


//7. Faça um algoritmo que mostre na tela a seguinte contagem:
	//Saída: 10 9 8 7 6 5 4 3 Acabou
	
		para(inteiro i=10;i>=3; i--){
			escreva(i+" ")
		}
		escreva("Acabou")



//8. Crie um algoritmo que leia o valor inicial, o valor final de uma contagem e seu incremento, mostrando em seguida todos os valores no intervalo.

		//Variáveis
		inteiro inicial, final, incre, num

		//Entrada dos dados

		escreva("Digite o valor inicial: ")
		leia(inicial)
		escreva("Digite o valor final: ")
		leia(final)
		escreva("Digite seu incremento: ")
		leia(incre)

		//Saída dos dados

		escreva("Contagem: ")
		para(num = inicial; num <= final; num = num + incre){
			escreva(num+" ")
		}
		escreva("Acabou")
	

		
