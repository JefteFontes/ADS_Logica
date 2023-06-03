programa
{
	
	funcao inicio()
	{
		inteiro binario, base = 2, digito, potencia = 1, decimal = 0

		escreva("Informe um valor binário: ")
		leia(binario)

		para (inteiro i = 1; binario > 0; i++){
			digito = binario % 10
			decimal += digito * potencia
			potencia *= 2
			binario /= 10
		}
		escreva("O valor decimal equivalente é: ", decimal)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 124; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */