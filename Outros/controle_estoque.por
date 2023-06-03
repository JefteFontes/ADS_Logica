programa
{
	
	inteiro produto = 0, cadastrar, venda
	
	funcao exibir(){
		escreva("\nEstoque atual: ",produto)
	}
	
	funcao cadastro(){
		escreva("Informe quantos produtos deseja cadastrar: ")
		leia(cadastrar)

		produto += cadastrar
	}
	funcao vender(){
		escreva("Informe quantos produtos deseja vender: ")
		leia(venda)

		se(produto > 0 ){
			produto -= venda
			se(produto <= 500){
				escreva("\nEstoque mínimo atingido!")
			}
		} senao
			escreva("\nEstoque zerado!")
	}
	funcao inicio()
	{
		inteiro opcao = 0

		enquanto(opcao != 4){
			escreva("\n----------------------------------")
			escreva("\n        ESTOQUE DE PRODUTOS        ")
			escreva("\n----------------------------------")
			escreva("\n1 - Exibir estoque")
			escreva("\n2 - Cadastrar produtos")
			escreva("\n3 - Vender produtos")
			escreva("\n4 - Sair")
			escreva("\n----------------------------------")
			escreva("\nOpção: ")
			leia(opcao)
			limpa()

			escolha(opcao){
				caso 1:
					exibir()
				pare
				caso 2:
					cadastro()
				pare
				caso 3:
					vender()
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
