programa
{
	//Conversor de decimal para binário
	funcao inicio()
	{
		inteiro decimal=0, decimalAux=0, contResto=0, potencia=1
		escreva("Digite um decimal inteiro para ser convertido em binário: ")
		leia(decimal)
		decimalAux = decimal
		enquanto(decimalAux>1)
		{
			decimalAux = decimalAux/2
			contResto++
		}
		para(inteiro i=contResto; i>0;i--)
		{
		 	potencia = potencia*2
		}
		para(inteiro cont1=contResto;cont1>=0;cont1--)
		{
			se(decimal >= potencia)
			{
				escreva("1")
				decimal -= potencia
			}
			senao
			{
				escreva("0")				
			}
			potencia /= 2
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 112; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {potencia, 6, 48, 8}-{i, 15, 15, 1}-{cont1, 19, 15, 5}-{decimalAux, 6, 21, 10}-{decimal, 6, 10, 7}-{contResto, 6, 35, 9};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */