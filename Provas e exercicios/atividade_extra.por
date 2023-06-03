//1. Faça um programa que leia um número inteiro e mostre o seu antecessor e seu sucessor.
	
	//Variável
	inteiro num
	
	//Entrada dos dados
	escreva("Digite um número: ")
	leia(num)
	
	//Saída dos dados
	escreva("O antecessor de "+num+" é "+(num - 1))
	escreva("\nO sucessor de "+num+" é "+(num + 1))

/*
2. Faça um programa que leia a largura e altura de uma parede, calcule e mostre a área a ser pintada e a quantidade de tinta necessária para o serviço, sabendo que cada
litro de tinta pinta uma área de 2 metros quadrados.
*/

	inclua biblioteca Matematica --> m
		
		//Variáveis
		real larg, altu, area
		
		//Entrada dos dados
		escreva("Digite a largura de sua parede: ")
		leia(larg)

		escreva("Digite a altura de sua parede: ")
		leia(altu)
		
		//Cálculo área da parede
		area = larg * altu
		area = m.arredondar(area, 2)
		
		//Saída dos dados
		escreva("A área a ser pintada é de "+area+"m²")
		escreva("\nE para realizar o serviço será necessário "+(area/2)+" litros de tinta.")

//3. Crie um programa que leia o preço de um produto, calcule e mostre o seu PREÇO PROMOCIONAL, com 5% de desconto.

	inclua biblioteca Matematica --> m
		
		//Variável
		real valor
		
		//Entrada dos dados
		escreva("Informe o preço do seu produto: R$")
		leia(valor)
		
		//Cálculo do desconto
		valor -= valor * 0.05

		valor = m.arredondar(valor, 1)
		
		//Saída dos dados
		escreva("O seu PREÇO PROMOCIONAL com 5% de desconto foi de "+valor+" R$")

/*
4. Escreva um programa para calcular a redução do tempo de vida de um fumante. Pergunte a quantidade de cigarros fumados por dias e quantos anos ele já fumou. Considere
que um fumante perde 10 min de vida a cada cigarro. Calcule quantos dias de vida um fumante perderá e exiba o total em dias.
*/

	//variáveis
	inteiro quant_ciga, quant_anos, temp_perdi

	//Entrada de dados
	escreva("Informe a quantidade de cigarros fumados por dia pelo individuo: ")
	leia(quant_ciga)

	escreva("Informe quantos anos de fumante tem o individuo: ")
	leia(quant_anos)

	//Cálculo para saber a quantidade de dias perdidos
	temp_perdi = (quant_ciga * 10) * (quant_anos * 365) / (24 * 60)

	//Saída de dados
	escreva("O individuo perdeu "+temp_perdi+" dias por fumar.")

/*
5. Escreva um programa que pergunte a velocidade de um carro. Caso ultrapasse 80Km/h, exiba uma mensagem dizendo que o usuário foi multado. Nesse caso, exiba o valor da
multa, cobrando R$5 por cada Km acima da velocidade permitida.
*/

	//variável
	inteiro veloc

	//Entrada dos dados
	escreva("Informe a velocidade em km/h do individuo: ")
	leia(veloc)

	//Saída dos dados
	se (veloc > 80){
		escreva("O individuo deve ser multado em "+((veloc - 80)* 5)+"R$.")
	} senao 
		escreva("O individuo não deve ser multado.")

//6. Faça um programa que leia o ano de nascimento de uma pessoa, calcule a idade dela e depois mostre se ela pode ou não votar.

	inteiro ano_voto, ano_nasc

	escreva("Informe o ano da próxima votação: ")
	leia(ano_voto)
	escreva("Informe o ano do seu nascimento: ")
	leia(ano_nasc)

	se ((ano_voto - ano_nasc) >= 16) {
		escreva("\nNa próxima eleição, você está apto a votar.")
	} senao 
		escreva("\nNa próxima eleição, você não está apto a votar")

/*
7. Escreva um programa que leia o ano de nascimento de um rapaz e mostre a sua situação em relação ao alistamento militar.
a. - Se estiver antes dos 18 anos, mostre em quantos anos faltam para o alistamento.
b. - Se já tiver depois dos 18 anos, mostre quantos anos já se passaram do alistamento.
*/

	//variáveis 
	inteiro ano_nasc, idade

	//entrada dos dados
	escreva("Informe seu ano de nascimento: ")
	leia(ano_nasc)

	//Cálculo idade
	idade = 2023 - ano_nasc

	//saída dos dados
	se (idade < 18){
		escreva("Faltam "+(18 - idade)+" ano(s) para o seu alistamento militar.")
	} senao se (idade > 18){
		escreva("Já se passaram "+(idade - 18)+" ano(s) do seu alistamento militar.")
	} senao 
		escreva("Já está na hora de se alistar!")

/*
8. Faça um programa que leia a largura e o comprimento de um terreno retangular, calculando e mostrando a sua área em m2. O programa também deve mostrar a classificação
desse terreno, de acordo com a lista abaixo:
a. - Abaixo de 100m2 =TERRENO POPULAR
b. - Entre 100m2 e 500m2 = TERRENO MASTER
c. - Acima de 500m2 = TERRENO VI
*/
	//Variáveis
	real larg, comp, area
	
	//Entrada dos dados
	escreva("Digite a largura do seu terreno: ")
	leia(larg)

	escreva("Digite o comprimento do seu terreno: ")
	leia(comp)
	
	//Cálculo da área
	area = larg * comp
	area = m.arredondar(area, 1)	
	
	//Saída dos dados
	escreva("\nO seu terreno possui "+area+"m² de área.\n")
	
	//Determinação da classificação
	se (area < 100){
		escreva("Classificação do terreno: TERRENO POPULAR\n")
	} senao se (area >= 100 e area <= 500){
		escreva("Classificação do terreno: TERRENO MASTER\n")
	} senao 
		escreva("Classificação do terreno: TERRENO VI\n")

/*
9. Desenvolva um programa que leia o nome de um funcionário, seu salário, quantos anos ele trabalha na empresa e mostre seu novo salário, reajustado de acordo com a 
tabela a seguir:
a. - Até 3 anos de empresa: aumento de 3%
b. - Entre 3 e 10 anos: aumento de 12.5%
c. - 10 anos ou mais: aumento de 20%
*/

	//Variáveis 
	cadeia nome
	inteiro anos 
	real salario

	//Entrada dos dados
	escreva("Informe seu nome: ")
	leia(nome)
	escreva("Informe seus anos de serviço na empresa: ")
	leia(anos)
	escreva("Informe seu salário atual: ")
	leia(salario)

	//Saída dos dados
	se (anos <= 3) {
		escreva("Olá "+nome+", você terá um aumento de 3% no seu salário atual.\n")
		escreva("Seu novo salário: "+((salario * 0.03) + salario)+"R$")
	} senao se (anos > 3 e anos < 10) {
		escreva("Olá "+nome+", você terá um aumento de 12.5% no seu salário atual.\n")
		escreva("Seu novo salário: "+((salario * 0.125) + salario)+"R$")
	} senao se (anos >= 10) {
		escreva("Olá "+nome+", você terá um aumento de 20% no seu salário atual.\n")
		escreva("Seu novo salário: "+((salario * 0.2) + salario)+"R$")
	} 

/* 
10. Desenvolva um algoritmo que mostre uma contagem regressiva de 30 até 1, marcando os números que forem divisíveis por 4, como mostrado abaixo: 
30 29 [28] 27 26 25 [24] 23 22 21 [20] 19 18 17 [16]...
*/
	//Texto inicial
	escreva("Contagem regressiva.\n")
	
	//Saída dos dados
	para (inteiro i = 30; i > 0; i--){
		se (i % 4 == 0) {
			escreva("["+i+"] ")
		} senao 
			escreva(i+" ")
	}

//11. Crie um programa que leia 6 números inteiros e no final mostre quantos deles são pares e quantos são ímpares.

	//Variáveis
	inteiro n, par = 0, impar = 0

	//Laço para determinar os números pares e ímpares
	para(inteiro i = 1; i <= 6; i++){
		//Entrada dos dados
		escreva("Informe o "+i+" número inteiro: ")
		leia(n)

		//Determinação dos números pares e ímpares
		se (n % 2 == 0){
			par += 1
		} senao 
			impar += 1
	}

	//Saída dos dados
	escreva("\nDos números informados, "+par+" números são pares.\nE "+impar+" números são ímpares.")

/*
12. Crie um algoritmo que leia a idade de 10 pessoas, mostrando no final:
a) Qual é a média de idade do grupo
b) Quantas pessoas tem mais de 18 anos
c) Quantas pessoas tem menos de 5 anos
d) Qual foi a maior idade lida.
*/

	//Variáveis
	inteiro idade, soma_idade = 0, quant_maior = 0, quant_menor = 0, maior_idade = 0

	//Laço de repetição para coletar as idade dos individuos do grupo
	para (inteiro i = 1; i <= 10; i++) {
		//Entrada dos dados
		escreva("Informe a idade da "+i+"º pessoa: ")
		leia(idade)

		//Soma da idades para tirar a média das idades
		soma_idade += idade

		//Contagem das idades maiores de 18 anos / menores de 5 anos
		se (idade > 18){
			quant_maior += 1
		} senao se (idade < 5) {
			quant_menor += 1
		}

		//Determinação da maior idade do grupo
		se (idade > maior_idade) {
			maior_idade = idade
		}
	}
	//Saída dos dados
	escreva("\nA média de idade do grupo é "+(soma_idade/10)+" anos.\n")
	escreva("O grupo possui "+quant_maior+" pessoas maiores de 18 anos.\n")
	escreva("O grupo possui "+quant_menor+" pessoas menores de 5 anos.\n")
	escreva("A maior idade lida foi "+maior_idade+" anos.")

/*
13. Desenvolva um aplicativo que leia o peso e a altura de 7 pessoas, mostrando no final:
a) Qual foi a média de altura do grupo
b) Quantas pessoas pesam mais de 90Kg
c) Quantas pessoas que pesam menos de 50Kg tem menos de 1.60m
d) Quantas pessoas que medem mais de 1.90m pesam mais de 100Kg
*/
	inclua biblioteca Matematica --> m

		//Variáveis
		real altu, peso, soma_altu = 0.0, media
		inteiro quant1 = 0, quant2 = 0, quant3 = 0
	
		//Laço de repetição para coleta da altura e peso das pessoas do grupo
		para (inteiro i = 1; i <= 7; i++){
		
			//Entrada dos dados
			escreva("Informe a altura da "+i+"º pessoa: ")
			leia(altu)
			escreva("Informe o peso da "+i+"º pessoa: ")
			leia(peso)
		
			//Soma da altura para tirar a média
			soma_altu += altu
		
			//Contagem das pessoas que atendem as condições transcritas em b, c, d. 
			se (peso > 90.0){
				quant1 += 1
			} senao se (peso < 50.0 e altu < 1.60){
				quant2 += 1
			} 
			se (altu > 1.90 e peso > 100.0){
				quant3 += 1
			}
		}
		//Cálculo da média das alturas
		media = soma_altu/7
		m.arredondar(media, 2)
	
		//Saída dos dados
		escreva("\nA média de altura do grupo é "+media+" metros.\n")
		escreva(quant1+" pessoas pesam mais de 90kg.\n")
		escreva(quant2+" pessoas pesam menos de 50Kg e tem menos de 1.60m.\n")
		escreva(quant3+" pessoas medem mais de 1.90m e pesam mais de 100Kg.")



//14. Faça um algoritmo para calcular e imprimir a série Fibonacci até 0 N-ésimo termo. A série tem a seguinte forma: 1, 1, 2, 3, 5, 8, 13, 21, 34, ...

	//Variáveis
	inteiro n, na = 0, ns, n_atual = 1

	//Entrada dos dados
	escreva("Até qual termo a série Fibonacci vai: ")
	leia(n)
		
	//Saída da série Fibonacci
	para (inteiro i = 1; i<= n; i++){
		escreva(n_atual+", ")
		
		ns = n_atual + na
		na = n_atual
		n_atual = ns
	}
//Alternativo: Agora faça em ordem decrescente
          
	  //Variáveis
	  inteiro n, na = 0, ns, n_atual = 1

	  //Entrada dos dados
	  escreva("Até qual termo a série Fibonacci vai: ")
	  leia(n)
	  //Saída da série Fibonacci em ordem crescente
	  escreva("Ordem crescente: ")
	  para (inteiro i = 1; i<= n; i++){
          	escreva(n_atual," ")
		//Cálculo dos termos da série 
	  	ns = n_atual + na
	  	na = n_atual
		n_atual = ns
    	  }
	  //Troca dos valores para fazer a ordem descrescente
    	  n_atual = na
          na = ns
          escreva("\n")//Quebra da linha
	  //Saída da série Fibonacci em ordem decrescente
	  escreva("Ordem decrescente: ")
          para (inteiro i = 1; i<= n; i++){
          	escreva(n_atual," ")
          	//Cálculo dos termos da série
                ns = na - n_atual
         	na = n_atual
         	n_atual = ns
    	  }

/*
15. Faça um programa que dado um valor n, gere um "quadrado" de n linhas e n colunas que tenha caracteres 'X' nas posições da diagonal principal e os caracteres '-' nas
demais posições.
Exemplo: n = 5
X----
-X---
--X--
---X-
----X
*/	
	//Variável
	inteiro n
	
	//Entrada dos dados
    	escreva("Qual a medida n do seu quadrado? ")
    	leia(n)
	
	//Algoritmo para formação do desenho
	para (inteiro y = 1; y <= n; ++y){
		para (inteiro x = 1; x <= n; ++x){
			se (y == x){
				escreva("X")
			}
			senao {
				escreva("-")
			}
		}
	escreva("\n")
	}
		

