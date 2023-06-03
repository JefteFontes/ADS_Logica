/*
1. Crie um programa que mostre na tela a seguinte contagem, usando a estrutura "faça enquanto".
	0 3 6 9 12 15 18 21 24 27 30 Acabou!
*/

programa
{
	
	funcao inicio()
	{	
		//Variável
		inteiro num = 0
		
		//Laço de repetição - ENQUANTO
		enquanto (num <= 30) {
			//Saída de dados
			escreva(num," ")
			
			//Incremento
			num += 3
		}
		
		//Saída final
		escreva("Acabou!")

	}
}


/*
2. Faça um programa usando a estrutura “faça enquanto” que leia a idade de várias
pessoas. A cada laço, você deverá perguntar para o usuário se ele quer ou não
continuar a digitar dados. No final, quando o usuário decidir parar, mostre na tela:
a) Quantas idades foram digitadas.
b) Qual é a média entre as idades digitadas.
c) Quantas pessoas tem 21 anos ou mais.
*/
	
programa
{
	funcao inicio()
	{	
		//Variáveis
		inteiro idade, quant_idade = 0, cont_21 = 0, s_idade = 0
		caracter continue
		
		//Laço de repetição - FAÇA-ENQUANTO
		faca {
			quant_idade++
			
			//Entrada de dados 
			escreva("Informe a idade ",quant_idade,"º pessoa: ")
			leia(idade)
			
			//Soma das idades
			s_idade += idade
			
			//Contagem das pessoas com mais de 21 anos
			se(idade >= 21){
				cont_21++
			}
			
			//Determinação da parada do 'enquanto'
			escreva("\nDeseja continuar? S ou N\n")
			leia(continue)
			
		} enquanto (continue == 'S' ou continue == 's')
		
		//Saída dos dados
		escreva("\nQuantidade de idades informadas: ",quant_idade)
		escreva("\nMédia das idades informadas: ",(s_idade / quant_idade))
		escreva("\nQuantidade de pessoas com 21 anos ou mais: ",cont_21)

	}
}

/*
3. Crie um programa usando a estrutura “faça enquanto” que leia vários números. A
cada laço, pergunte se o usuário quer continuar ou não. No final, mostre na tela:
a) O somatório entre todos os valores.
b) Qual foi o menor e o maior valor digitado.
c) A média entre todos os valores.
d) Quantos valores são pares.
*/

programa
{
	funcao inicio()
	{
		//Variáveis
		inteiro num, quant_num = 0, maior = 0, menor = 0, par = 0
		caracter continue
		real media, s_num = 0.0
		
		//Laço de repetição - FAÇA-ENQUANTO
		faca {
			quant_num++
			
			//Entrada de dados 
			escreva("Informe o ",quant_num,"º número: ")
			leia(num)	
			
			//Soma dos números
			s_num += num
			
			//Determinação do maior e menor número
			se(quant_num == 1) {
				maior = num
				menor = num
			} senao {
				se(num > maior){
					maior = num
				} senao se(num < menor) {
					menor = num
				}
			}
			
			//Contagem dos números pares
			se(num % 2 == 0) {
				par++
			}
			
			//Determinação da parada do 'enquanto'
			escreva("\nDeseja continuar? S ou N\n")
			leia(continue)
		} enquanto (continue == 'S' ou continue == 's')
		
		//Cálculo da média
		media = s_num / quant_num
		
		//Saída dos dados
		escreva("\nO somatório entre todos os valores: ",s_num)
		escreva("\nO menor número informado: ",menor)
		escreva("\nO maior número informado: ",maior)
		escreva("\nMédia dos números informados: ",media)
		escreva("\nQuantidade de números pares informados: ",par)

	}
}

/*
4. Crie um algoritmo utilizando ENQUANTO que leia o valor inicial da contagem, o valor
final e o incremento, mostrando em seguida todos os valores no intervalo:
Ex:
Digite o primeiro Valor: 3
Digite o último Valor: 10
Digite o incremento: 2
Contagem: 3 5 7 9 Acabou!
*/

programa
{
	funcao inicio()
	{	
		//Variáveis
		inteiro num_i, num_f, incre
		
		//Entrada dos dados
		escreva("Digite o primeiro valor: ")
		leia(num_i)
		escreva("Digite o último valor: ")
		leia(num_f)
		escreva("Digite o valor do incremento: ")
		leia(incre)
		
		//Saída inicial
		escreva("Contagem: ")
		
		//Laço de repetição - ENQUANTO
		enquanto (num_i <= num_f) {
		
			//Saída dos dados
			escreva(num_i," ")
			
			//Valor sendo incrementado
			num_i += incre
		}
		//Saída final
		escreva("Acabou!")

	}
}

/*
5. O programa acima (questão 4) vai ter um problema quando digitarmos o primeiro
valor maior que o último. Resolva esse problema com um código que funcione em
qualquer situação.
*/
programa
{
	funcao inicio()
	{	
		//Variáveis
		inteiro num_i, num_f, incre
		
		//Entrada dos dados
		escreva("Digite o primeiro valor: ")
		leia(num_i)
		escreva("Digite o último valor: ")
		leia(num_f)
		escreva("Digite o valor do incremento: ")
		leia(incre)
		
		//Resolução do problema transcrito na questão
		se (num_i <= num_f){
		
			//Saída inicial
			escreva("\nContagem: ")
			
			//Laço de repetição - ENQUANTO 
			enquanto (num_i <= num_f) {
			
				//Saída dos dados
				escreva(num_i," ")
				
				//Valor sendo incrementado
				num_i += incre
			}
			//Saída final
			escreva("Acabou!")
		} senao 
			escreva("\nInforme um número inicial menor que o final.")
		

	}
}

/*
6. Nesta questão vamos utilizar um artificio computacional chamado FLAG, que nada
mais é que você determinar algo ou valor, que quando acontecer o programa é
finalizado. Pensando nisto, crie um programa que leia vários números pelo teclado
e mostre no final o somatório entre eles.
Observação: O programa será interrompido (FLAG) quando o número 1111 for
digitado. Lembrando que o flag não é considerado no cálculo.
*/

programa
{	
	funcao inicio()
	{	
		//Variáveis 
		inteiro num = 0, soma = 0, num_cont = 0
		
		//Laço de repetição - ENQUANTO - sendo interrompido quando o número informado for 1111
		enquanto(num != 1111){
			num_cont++
			
			//Entrada dos dados
			escreva("Informe o ",num_cont,"º número: ")
			leia(num)
			escreva("\n")
			
			//Soma dos números diferentes de 1111
			se (num != 1111){
				soma += num
			}
		}
		
		//Saída dos dados
		escreva("O somatório dos números foi: ",soma)
	}
}

/*
7. Crie um programa que leia o sexo e a idade de várias pessoas. O programa vai
perguntar se o usuário quer continuar ou não a cada pessoa (criar um FLAG). No
final, mostre:
a) qual é a maior idade lida.
b) quantos homens foram cadastrados.
c) qual é a idade da mulher mais jovem.
d) qual é a média de idade entre os homens.
*/

programa
{
	funcao inicio()
	{
		inteiro idade, soma_idadeM = 0, cont_M = 0, maior_idade = 0, menor_idadeF = 0, num_cont = 0
		caracter flag = 's', sexo

		enquanto(flag == 'S' ou flag == 's'){
			
			num_cont++
			escreva("Informe a idade da ",num_cont,"º pessoa: ")
			leia(idade)
			escreva("Informe o sexo da ",num_cont,"º pessoa (M ou F): ")
			leia(sexo)

			//Determinação da maior idade
			se(num_cont == 1) {
				maior_idade = idade
			}senao {
				se(idade > maior_idade){
					maior_idade = idade
				}
			}

			//Determinação da menor idade entre as mulheres cadastradas
			se(num_cont == 1 e (sexo == 'F' ou sexo == 'f')){
				menor_idadeF = idade
			} senao se ((sexo == 'F' ou sexo == 'f') e idade < menor_idadeF){
				menor_idadeF = idade
			}

			//Contagem da quantidade de homens cadastrados
			se (sexo == 'M' ou sexo == 'm'){
				cont_M++
				soma_idadeM += idade
			}

			//Determinação de parada do ENQUANTO
			escreva("\nDeseja continuar? S ou N\n")
			leia(flag)
			escreva("\n")
		}
		limpa()
		escreva("----------------------------------------------------")
		escreva("\nA maior idade lida: ",maior_idade," ano(s)")
		escreva("\nA quantidade de homens cadastrados: ",cont_M)
		escreva("\nA menor idade entre as mulheres: ",menor_idadeF," ano(s)")
		escreva("\nA média de idade entre os homens: ",(soma_idadeM / cont_M)," ano(s)")
		escreva("\n----------------------------------------------------")
	}
}
