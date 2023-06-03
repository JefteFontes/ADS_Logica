/*
JOGO DE ADIVINHAÇÃO V1.0
*/
programa {
	funcao inicio() {
		//Variáveis
		inteiro num = 53, num_maior = 100, num_menor = 0, num_adivin, tentativa = 0, resta = 10

		faca {
			//Conta o número de tentativas
      			tentativa++

      			//Entrada dos dados
      			escreva("O um número está entre ", num_menor, " e ",num_maior, ". Informe o número: ")
      			leia(num_adivin)

      			//Medida de precaução caso o número informado não atender o intervalo determinado.
      			se(num_adivin > num_maior e tentativa < 10){
        			escreva("\nInforme um número que esteja no intervalo descrito acima.\n")
      			} senao se(num_adivin < num_menor e tentativa < 10){
        			escreva("\nInforme um número que esteja no intervalo descrito acima.\n")
     			}

      			//Altera o intervalo da pergunta, para aproximar o usuário do número a ser adivinhado.	
			se (num_adivin < num e num_adivin > num_menor) {
        			num_menor = num_adivin
      			} senao se (num_adivin > num e num_adivin < num_maior) {
        			num_maior = num_adivin
      			}

      			//Irá informar ao usúario o número de tentativas restantes
      			se (num_adivin != num e tentativa < 10) {
        			//Decremento do número de tentativas
        			resta--
        			escreva("\nVocê tem ",(resta)," tentativa(s) restante(s). Tente adivinhar novamente!\n\n")
      			}
    		} enquanto (num_adivin != num e tentativa < 10)//Condiçao para a repetição da lógica.

    		//Determinação das saídas de dados mediante a condição estabelecida.
    		se (tentativa < 10){
     	 		escreva("\nParabéns você acertou em ",tentativa," tentativa(s). O número era ",num)
    		} senao 
      			escreva("\nVocê estorou o limite de tentativas. GAME OVER!!")
  	}
}
