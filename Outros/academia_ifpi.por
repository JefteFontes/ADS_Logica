programa
{	
	inteiro opcao = 0, num_pessoas
	real valor1[3] = {89.00, 79.00, 69.00}
	real valor2[3] = {82.00, 73.00, 63.00}
	real valor3[3] = {79.00, 70.00, 61.00}

	funcao menu2 (real vetor[]){
		inteiro opcao1
		escreva("----------------------------------")
		escreva("\n          ACADEMIA - IFPI         ")
		escreva("\n----------------------------------")
		escreva("\n1 - 5x/SEM - R$",vetor[0])
		escreva("\n2 - 3x/SEM - R$",vetor[1])
		escreva("\n3 - 2x/SEM - R$",vetor[2])
		escreva("\n4 - Voltar")
		escreva("\n----------------------------------")
		escreva("\n\nOpção: ")
		leia(opcao1)
		limpa()
		
		escolha(opcao1){
				caso 1:
					valorPagar(vetor, 0)
				pare
				caso 2:
					valorPagar(vetor, 1)
				pare
				caso 3:
					valorPagar(vetor, 2)
				pare
		}
	}
	
funcao valorPagar(real vetor[], inteiro t){
		real valor = vetor[t]
		escreva("Informe o número de pessoas inclusas no plano: ")
		leia(num_pessoas)
		limpa()
		se(num_pessoas == 2){
			valor -= vetor[t]* 0.05
		} senao se(num_pessoas >= 3){
			valor -= vetor[t]* 0.10
		} 
		escreva("Valor a pagar: R$", valor,"\n\n")	
	}
	funcao inicio()
	{
		enquanto(opcao != 4){
			escreva("----------------------------------")
			escreva("\n      PLANOS ACADEMIA - IFPI         ")
			escreva("\n----------------------------------")
			escreva("\n1 - Mensal")
			escreva("\n2 - Trimestral")
			escreva("\n3 - Semestral")
			escreva("\n4 - Sair")
			escreva("\n----------------------------------")
			escreva("\n\nOpção: ")
			leia(opcao)
			limpa()
			
			escolha(opcao){
				caso 1:
					menu2(valor1)
				pare
				caso 2:
					menu2(valor2)
				pare
				caso 3:
					menu2(valor3)
				pare
				caso 4:
					escreva("\n         Programa finalizado!         \n")
				pare
				caso contrario:
					escreva("Informe uma opção válida.")
				pare
			}
		}
	}
}
