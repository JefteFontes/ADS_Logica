programa
{
	
	funcao inteiro fatorial(inteiro num){
		inteiro resultado = 1
		para(inteiro i = 1; i <= num; i++){
			resultado *= i
		}
		retorne resultado
	}
	
	funcao inteiro binomial(inteiro n, inteiro p){
		inteiro resu_bin
		resu_bin = fatorial(n) / (fatorial(p) * fatorial(n - p))
		retorne resu_bin
	}
	funcao trianguloPascal(inteiro linha){
		inteiro numero
		para(inteiro y = 0; y < linha; y++){
			para(inteiro x = 0; x <= y; x++){
				numero = binomial(y, x)
				escreva(numero," ")
			}
			escreva("\n")
		}
	}
	funcao inicio()
	{
		inteiro linha_trian

		escreva("Informe o número de linhas que deseja: ")
		leia(linha_trian)

		trianguloPascal(linha_trian)
	}
}
