programa
{
	
	real saldoTotal = 0.0
	real valor_saque
	real valor_deposito
	
	funcao saque(){
		se(saldoTotal > 0.0){
			escreva("Informe quanto quer sacar: ")
			leia(valor_saque)

			saldoTotal -= valor_saque
		} senao 
			escreva("Seu saldo está zerado.")
		
	}
	
funcao deposito(){
		escreva("Informe quanto quer depositar: ")
		leia(valor_deposito)

		saldoTotal += valor_deposito
		
	}
	funcao inicio()
	{
		inteiro opcao = 0

		enquanto(opcao != 4){
			escreva("\n----------------------------------")
			escreva("\n          BANCO - IFPI          ")
			escreva("\n----------------------------------")
			escreva("\n1 - Consutar saldo")
			escreva("\n2 -  ealizar saque")
			escreva("\n3 - Realizar depósito")
			escreva("\n4 - Sair")
			escreva("\n----------------------------------")
			escreva("\nOpção: ")
			leia(opcao)
			limpa()

			escolha(opcao){
				caso 1:
					escreva("Seu saldo atual é: R$",saldoTotal)
				pare
				caso 2:
					saque()
				pare
				caso 3:
					deposito()
				pare
				caso 4:
					escreva("\n         Programa finalizado!         \n")
				pare
				caso contrario:
					escreva("Informe uma opção válida.")
			}
		}
	}
}
