/*
1. Desenvolva um procedimento que leia dois valores pelo teclado e passe esses valores 
para um procedimento Maior() que vai verificar qual deles é o maior e mostrá-lo 
na tela. Caso os dois valores sejam iguais, mostrar uma mensagem informando essa
característica.
*/
programa {
	//1. Procedure Maior
	funcao maior(inteiro a, inteiro b)
	{
		se(a == b){
      		escreva("\nNúmeros são iguais!")
    		} senao se(a > b){
      		escreva("\nO 1º número é maior que o 2º.")
    		} senao
      		escreva("\nO 2º número é maior que o 1º.")
  	}
	//Principal
	funcao inicio(){
		inteiro num_1, num2

		escreva("Informe o 1º número: ")
		leia(num_1)
		escreva("Informe o 2º número: ")
		leia(num2)

		maior(num_1, num2)
  	}  
}

/*
2. Crie um procedimento ParOuImpar() que receba como parâmetro um valor, verifique
e mostre na tela se o valor passado como parâmetro é PAR ou ÍMPAR.
*/

programa
{
	
	//2. Procedure Par ou Impar
 	funcao ParOuImpar(inteiro a){
 		se(a % 2 == 0){
 			escreva("\nO valor é par.")
 		} senao 
 			escreva("\nO valor é impar.")
 	}
	funcao inicio()
	{
		inteiro num

		escreva("Informe um valor: ")
		leia(num)

		ParOuImpar(num)
	}
}

/*
3. Crie uma função Media(), que recebe 2 notas de um aluno e retornar a sua média
para o programa principal.
*/

programa
{
	
	//3. function Média
 	funcao real media(real a, real b){
 		real resultado = (a + b) / 2
 		retorne resultado
 	}
	
	funcao inicio()
	{
		real nota1, nota2

		escreva("Informe a 1º nota: ")
		leia(nota1)
		escreva("Informe a 2º nota: ")
		leia(nota2)

		escreva("\nA média do aluno foi: ",media(nota1, nota2))
	}
}

/*
4. Construa um procedimento chamado Contador() que recebe três valores como parâmetro: 
o início, o fim e o incremento de uma contagem. O programa principal deve solicitar a 
digitação desses valores e passá-los ao procedimento, que vai mostrar a contagem na tela.
Ex: Para os valores de início (4), fim (20) e incremento(3) teremos Contador(4, 20,
3) vai mostrar na tela:
4 >> 7 >> 10 >> 13 >> 16 >> 19 >> FIM
*/

programa
{
	
	//function Contador
	funcao contador(inteiro n, inteiro f, inteiro incr){
		para(inteiro i = 0; n < f; i++){
			escreva(n," >> ")
			n += incr
		}
		escreva("FIM")
	}
	
	funcao inicio()
	{
		inteiro inicial, final, incre

		escreva("Informe o número inicial: ")
		leia(inicial)
		escreva("Informe o número final: ")
		leia(final)
		escreva("Informe o valor do incremento: ")
		leia(incre)
		
		contador(inicial, final, incre)
	}
}

/*
5. Faça uma função chamada Potencia(), que recebe dois parâmetros numéricos (base
e expoente) e vai calcula o resultado da exponenciação.
Ex: Potencia(5,2) vai calcular 5^2 = 25
*/
programa
{
	
	funcao inteiro potencia(inteiro b, inteiro exp){
		inteiro resultado = 1
		para(inteiro i = 0; i < exp; i++){
			resultado *= b
		}	
		
		retorne resultado
	}
	
	funcao inicio()
	{
		inteiro base, expoente

		escreva("Informe o valor da base: ")
		leia(base)
		escreva("Informe o valor da expoente: ")
		leia(expoente)

		escreva("O resultado da exponenciação foi: ", potencia(base, expoente))
	}
}

/*
6. Crie uma função chamada SuperSomador(), que receber dois números como parâ-
metro e retorna a soma de todos os valores no intervalo entre os valores recebidos.
Ex:
SuperSomador(1, 6) vai somar 1 + 2 + 3 + 4 + 5 + 6 e vai retornar 21
SuperSomador(15, 19) vai somar 15 + 16 + 17 + 18 + 19 e vai retornar 85
*/
programa
{
	
	funcao inteiro superSomador(inteiro a, inteiro b){
		inteiro resultado = 0
		para(inteiro i = a; i <= b; i++){
			resultado += i
		}
		retorne resultado
	}
	
	funcao inicio()
	{
		inteiro num_inicial, num_final

		escreva("Informe o valor inicial: ")
		leia(num_inicial)
		escreva("Informe o valor final: ")
		leia(num_final)

		escreva(superSomador(num_inicial, num_final))
	}
}

/*
7. Crie um procedimento que gere um menu que incorpore todas as opções acima e
permita que elas sejam executadas uma quantidade indeterminada de vezes e
quando necessário. O menu deverá ter uma aparência semelhante a imagem abaixo,
só que com as opções das questões acima.
*/

programa
{
	
	//Variáveis globais
	inteiro num_1, num_2
	inteiro num
	real nota1, nota2 
	inteiro inicial, final, incre
	inteiro base, expoente
	inteiro num_inicial, num_final
	//1. Procedure Maior
	funcao maior(inteiro a, inteiro b)
	{
		se(a == b){
      		escreva("\nNúmeros são iguais!")
    		} senao se(a > b){
      		escreva("\nO 1º número é maior que o 2º.")
    		} senao
      		escreva("\nO 2º número é maior que o 1º.")
  	}
  	//2. Procedure Par ou Impar
 	funcao ParOuImpar(inteiro a){
 		se(a % 2 == 0){
 			escreva("\nO valor é par.")
 		} senao 
 			escreva("\nO valor é impar.")
 	}
 	//3. function Média
 	funcao real media(real a, real b){
 		real resultado = (a + b) / 2
 		retorne resultado
 	}
 	//4. function Contador
	funcao contador(inteiro n, inteiro f, inteiro incr){
		para(inteiro i = 0; n < f; i++){
			escreva(n," >> ")
			n += incr
		}
		escreva("FIM")
	}
	//5. function Potencia
	funcao inteiro potencia(inteiro b, inteiro exp){
		inteiro resultado = 1
		para(inteiro i = 0; i < exp; i++){
			resultado *= b
		}	
		
		retorne resultado
	}
	//6. function Super Somador
	funcao inteiro superSomador(inteiro a, inteiro b){
		inteiro resultado = 0
		para(inteiro i = a; i <= b; i++){
			resultado += i
		}
		retorne resultado
	}
	funcao inicio()
	{
		inteiro opcao = 0

		enquanto(opcao != 7){
			escreva("\n\n----------------------------------")
			escreva("\n          MENU DE OPÇÕES          ")
			escreva("\n----------------------------------")
			escreva("\n1 - Maior número")
			escreva("\n2 - Par ou impar")
			escreva("\n3 - Média de aluno")
			escreva("\n4 - Contador")
			escreva("\n5 - Potencia")
			escreva("\n6 - Super Somador")
			escreva("\n7 - Sair")
			escreva("\n----------------------------------")
			escreva("\nOpção: ")
			leia(opcao)
			limpa()
		     
			escolha(opcao){
				caso 1:
					escreva("Informe o 1º número: ")
					leia(num_1)
					escreva("Informe o 2º número: ")
					leia(num_2)

					maior(num_1, num_2)
				pare
				caso 2:
					escreva("Informe um valor: ")
					leia(num)

					ParOuImpar(num)
				pare
				caso 3:
					escreva("Informe a 1º nota: ")
					leia(nota1)
					escreva("Informe a 2º nota: ")
					leia(nota2)

					escreva("\nA média do aluno foi: ",media(nota1, nota2))
				pare
				caso 4:
					escreva("Informe o número inicial: ")
					leia(inicial)
					escreva("Informe o número final: ")
					leia(final)
					escreva("Informe o valor do incremento: ")
					leia(incre)

					escreva("\n")
					contador(inicial, final, incre)
				pare
				caso 5:
					escreva("Informe o valor da base: ")
					leia(base)
					escreva("Informe o valor da expoente: ")
					leia(expoente)

					escreva("O resultado da exponenciação foi: ", potencia(base, expoente))
				pare
				caso 6:
					escreva("Informe o valor inicial: ")
					leia(num_inicial)
					escreva("Informe o valor final: ")
					leia(num_final)

					escreva("\nO resultado do Super Somador foi: ",superSomador(num_inicial, num_final))
				pare
				caso 7: 
					escreva("\n         Programa finalizado!         \n")
				pare
				caso contrario:
					escreva("Informe uma opção válida.")
			}
				
		}
	}
}
