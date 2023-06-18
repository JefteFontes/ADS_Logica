programa
{	
	//Variáveis 
	cadeia jogoVelha[3][3], player, vencedor
	inteiro linha, coluna, fim, cont = 0

	//Função para verificar se há vencedor
	funcao cadeia verificacao(cadeia jogo1[][]){
		//Verifica as linhas
		para(inteiro i = 0; i <= 2; i++){
			se((jogo1[i][0] == jogo1[i][1]) e (jogo1[i][1] == jogo1[i][2])){
				retorne jogo1[i][0]
			}
		}
		//Verifica as colunas
		para(inteiro i = 0; i <= 2; i++){
			se((jogo1[0][i] == jogo1[1][i]) e (jogo1[1][i] == jogo1[2][i])){
				retorne jogo1[0][i]
			}
		}
		//Verifica as diagonais
		se((jogo1[0][0] == jogo1[1][1]) e (jogo1[1][1] == jogo1[2][2])){
				retorne jogo1[0][0]
		} senao se((jogo1[0][2] == jogo1[1][1]) e (jogo1[1][1] == jogo1[2][0])){
				retorne jogo1[0][2]
		}
		retorne " "
	}
	//Imprime o jogo-da-velha no console
	funcao imprimir(cadeia jogo2[][]){
		para (inteiro i = 0; i <= 2; i++){
			escreva("			")
			para(inteiro j = 0; j <= 2; j++){
				escreva(jogo2[i][j])
        			se (j < 2)
           	     	escreva(" | ")
			}
			escreva("\n")
			escreva("			")
			se (i < 2)
           		escreva("---------\n")
		}
	}
	//Determina qual será o simbolo da vez
	funcao partida(cadeia jogovelha[][], cadeia jogador, inteiro l, inteiro c){
		cadeia simbo

		se(jogador == "X"){
			simbo = "X"
		} senao 
			simbo = "O"

		jogovelha[l][c] = simbo
	}
	funcao inicio()
	{
		//Preenche a matriz com espaços vazios
		para (inteiro y= 0; y <= 2; y++){
			para(inteiro x = 0; x <= 2; x++){
				jogoVelha[x][y] = " "
			}
		}
		//Determinação para inicio do jogo
		player = "X"
		fim = 1

		//laço de repetição - ENQUANTO para a realização do jogo
		enquanto(fim != -1){
			//Informa o jogador que irá jogar
			escreva("\n\n		Jogador [ ", player," ] irá jogar.\n\n")
			//Determinaão da linha que irá o simbolo
      		escreva("Digite a linha (1 a 3): ")
      		leia(linha)
      		//Determinação da coluna que irá o simbolo
      		escreva("Digite a coluna (1 a 3): ")
      		leia(coluna)

			//Tratamento para quando número de linha ou coluna não se encontra no intervalo de 1 a 3
      		se(linha < 1 ou linha > 3 ou coluna < 1 ou coluna > 3){
      			limpa()
      			escreva("\n		Posição inválida! Tente novamente.\n\n")
      		} senao se(jogoVelha[linha - 1][coluna - 1] != " "){//Verifica se a posição já está ocupada
      			limpa()
      			escreva("\n		Posição já ocupada! Tente novamente.\n\n\n")
      		}
      		senao{
      			//Contagem da quantidade de vezes jogado
      			cont++
      			limpa()
      			//chamada das funções para realização do jogo
      			partida(jogoVelha, player, linha - 1, coluna - 1)
      			imprimir(jogoVelha)
      			//Vencedor receberá o valor que vem da função de verificação
      			vencedor = verificacao(jogoVelha)

				//Determinação do fim do jogo - se o valor de 'vencedor' for um dos simbolos
      			se(vencedor != " "){
      				//Saída do ganhador do jogo - sendo 'X' ou 'O'
      				escreva("\n\n		   Jogador [ ", vencedor, " ] venceu!\n\n")
      				//Finalização do ENQUANTO
            			fim = -1
      			} senao {// Se houver um resultado diferente
      				se(cont >= 9){//Se o número de jogadas forem atingidas determina um empate!
      					escreva("\n\n		O jogo empatou!")
      					fim = -1
      				} senao{//Continuação normal do jogo e atribuição de quem jogará em sequência
      					se(player == "X"){
      						player = "O"
      					} senao
      						player = "X"
      				}
      			}
      		}
		}
		escreva("		        FIM DE JOGO!\n\n")
	}
}
