Nome - Aluno: Jefté Fontes de Araújo

/*
1. (3,0) Escreva um algoritmo que leia uma quantidade X de números inteiros positivos e escreva:
a. Quantos deles estão no intervalo [0..25].
b. Quantos estão no intervalo [26..50].
c. Quantos são maiores do que 50.
*/
		//Variáveis 
		inteiro quant_num, num, int_25 = 0, int_50 = 0, maior_50 = 0

		//Entrada dos dados - quantidade de números inteiros a serem solicitados
		escreva("Digite a quantidade de números inteiros que irá informar: ")
		leia(quant_num)

		para (inteiro i = 1; i <= quant_num; i++) {
			//Entrada de dados - Cada número inteiro
			escreva("Informe o ",i,"º número inteiro: ")
			leia(num)

			//Contagem dos números que atenderem as condições de cada alternativa da questão
			se(num >= 0 e num <= 25){
				int_25++
			} senao se (num >= 26 e num <= 50){
				int_50++
			} senao 
				maior_50++
		}
		//Saída dos dados - Resposta das alternativas
		escreva("\nQuantidade de números inteiro no intervalo [0..25]: ", int_25)
		escreva("\nQuantidade de números inteiro no intervalo [26..50]: ", int_50)
		escreva("\nQuantidade de números inteiro maiores que 50: ", maior_50)
		
	


/*
2. (3,0) Faça um algoritmo que leia a idade e o sexo de 5 pessoas, mostrando no final:
a. Quantos homens foram cadastrados
b. Quantas mulheres foram cadastradas
c. A média de idade do grupo
d. A média de idade dos homens
e. Quantas mulheres tem mais de 20 anos.
*/	
		//Variáveis
		inteiro idade, cont_M = 0, cont_F = 0, idade_grupo = 0, idade_M = 0, maior_20 = 0
		caracter sexo

		//Laço de repetição para coletar os dados e determinar as saídas
		para (inteiro i = 1; i <= 5; i++) {
			//Coleta dos dados de cada pessoas
			escreva("Informe a idade da ",i,"º pessoa: ")
			leia(idade)
			escreva("Informe o sexo da ",i,"º pessoa. M (homem) ou F (mulher): ")
			leia(sexo)
			escreva("\n")

			//Soma de todas as idades
			idade_grupo += idade

			//Determinação das devidas saídas, de acordo com as condições determinadas pelas alternativas
			se (sexo == 'M'){
				cont_M++
				idade_M += idade
			} senao se (sexo == 'F') {
				cont_F++
			} senao 
				escreva("Informe uma letra válida.")

			se(idade > 20 e sexo == 'F') {
				maior_20++
			}	
		}
		//Saída dos dados - Resposta das alternativas
		escreva("A quantidade de homens foi: ",cont_M)
		escreva("\nA quantidade de mulheres foi: ",cont_F)
		escreva("\nA média de idade do grupo foi: ",idade_grupo / 5," anos.")
		escreva("\nA média de idade dos homens foi: ",idade_M / cont_M," anos.")
		escreva("\nA quantidade de mulheres maiores de 20 anos: ",maior_20)
	

/*
3. (4,0) Ao receber meu contracheque me deparei com algumas dúvidas sobre a forma de cálculo dele.
Pesquisando no site a receita federal me deparei com tabelas abaixo.

Para tal desenvolva um algoritmo que:
1. Ao informar o valor bruto do salário calcule o valor do INSS a ser pago.
2. Logo após deduzir do salário bruto o valor do INSS.
3. O valor resultante é submetido a tabela do IR para se descobrir o valor do IR a ser pago.
4. O salário após a dedução do IR (salário líquido/a receber) é o valor que tenho direito a receber.
*/
	inclua biblioteca Matematica --> m
	
		real salario_bruto, salario_bruto1= 0.0, valor_INSS = 0.0, valor_IR = 0.0, salario_liquido

		escreva("Informe o seu salário bruto para o cálculo do seu INSS e IR: ")
		leia(salario_bruto)

		se(salario_bruto <= 1302.00){
			valor_INSS = salario_bruto * 0.075
			salario_bruto1 = salario_bruto - valor_INSS
		} senao se (salario_bruto >= 1302.01 e salario_bruto <= 2571.29){
			valor_INSS = salario_bruto * 0.09
			salario_bruto1 = salario_bruto - valor_INSS
		} senao se (salario_bruto >= 1571.30 e salario_bruto <= 3856.94){
			valor_INSS = salario_bruto * 0.12
			salario_bruto1 = salario_bruto - valor_INSS
		} senao se (salario_bruto >= 3856.95 e salario_bruto <= 7507.49){
			valor_INSS = salario_bruto * 0.14
			salario_bruto1 = salario_bruto - valor_INSS
		} senao se (salario_bruto > 7507.49){
			salario_bruto1 = salario_bruto - (7507.49 * 0.14)
			valor_INSS = 7507.49 * 0.14
		}

		se(salario_bruto1 <= 1903.98){
			valor_IR = 0.0
			salario_liquido = salario_bruto1
		} senao se (salario_bruto1 > 1903.98 e salario_bruto1 <= 2826.65){
			valor_IR = salario_bruto1 * 0.075
			valor_IR -= 142.80
			salario_liquido = salario_bruto1 - valor_IR
		} senao se (salario_bruto1 > 2826.66 e salario_bruto1 <= 3751.05){
			valor_IR = salario_bruto1 * 0.15
			valor_IR -= 354.80
			salario_liquido = salario_bruto1 - valor_IR
		} senao se (salario_bruto1 > 3751.06 e salario_bruto1 <= 4664.68){
			valor_IR = salario_bruto1 * 0.225
			valor_IR -= 636.13
			salario_liquido = salario_bruto1 - valor_IR
		} senao {
			valor_IR = salario_bruto1 * 0.275
			valor_IR -= 869.36
			salario_liquido = salario_bruto1 - valor_IR
		}

		valor_INSS = m.arredondar(valor_INSS, 2)
		valor_IR = m.arredondar(valor_IR, 2)
		salario_liquido = m.arredondar(salario_liquido, 2)

		escreva("--------------------------\n")
		escreva("Salário Bruto: ", salario_bruto)
		escreva("\nValor INSS: ", valor_INSS)
		escreva("\nValor IR: ", valor_IR)
		escreva("\n--------------------------\n")
		escreva("\nSálario Líquido/Resultante: ", salario_liquido)
			
