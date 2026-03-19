programa
{
	inclua biblioteca Tipos --> t
	inclua biblioteca Util --> u
	
	funcao inicio()
	{
		// Variáveis locais
		cadeia aliados[4][4], inimigos[4][4]
		inteiro marcador, navios_inimigos, linha, coluna
		
		// Gerando barcos aliados:
		para(inteiro i = 0; i < 4; i++){
			para(inteiro j = 0; j < 4; j++){
				marcador = u.sorteia(0,1)
				se(marcador == 0){
					aliados[i][j] = "0"	
				}senao{
					aliados[i][j] = "1"
				}
				
			}
		}

		// Gerando barcos inimigos:
		para(inteiro i = 0; i < 4; i++){
			para(inteiro j = 0; j < 4; j++){
				marcador = u.sorteia(0,1)
				se(marcador == 0){
					inimigos[i][j] = "0"	
				}senao{
					inimigos[i][j] = "1"
				}
			}
		}

		// Mostrar interface:
		faca{
			limpa()
			escreva("-- BATALHA NAVAL --\n\n")
			
			mostrar_mapas(aliados, inimigos)
			navios_inimigos = contador_navios_inimigos(inimigos)
			escreva("\nNavios inimigos dectados: ", navios_inimigos, "\n\n")
	
			escreva("Digite a coluna (0 a 4): ")
			leia(coluna)
			
			escreva("\nDigite a linha (0 a 4): ")
			leia(linha)
	
			tiro(inimigos, coluna, linha)
		}
		enquanto(navios_inimigos != 0)
			escreva("Você venceu!")

	}

//---------------------------------------------------------------------------------------

	// Função de mostrar mapas:
	funcao mostrar_mapas(cadeia m_aliados[][], cadeia m_inimigos[][]){
		
		escreva("-- MAPA ALIADO --\n")
		para(inteiro i = 0; i < 4; i++){
			para(inteiro j = 0; j < 4; j++){
				escreva(m_aliados[i][j], " | ")
			}
			escreva("\n")
		}

		escreva("\n-- MAPA INIMIGO --\n")
			para(inteiro i = 0; i < 4; i++){
				para(inteiro j = 0; j < 4; j++){
					se(m_inimigos[i][j] == "* | "){
						escreva(m_inimigos[i][j], "* | ")
					}
					senao se(m_inimigos[i][j] == "A"){
						escreva(m_inimigos[i][j], "A | ")
					}
					senao{
						escreva("~ | ")
					}
				}
				escreva("\n")
			}
	}

//---------------------------------------------------------------------------------------

	funcao inteiro contador_navios_inimigos(cadeia m_inimigos[][]){
		inteiro soma = 0
		para(inteiro i = 0; i < 4; i++){
			para(inteiro j = 0; j < 4; j++){
				se(m_inimigos[i][j] == "1"){
					soma = soma + 1
				}
			}		
		}
		retorne soma
	}

//---------------------------------------------------------------------------------------

	funcao tiro(cadeia m_inimigos[][], inteiro c, inteiro l){
		 se(m_inimigos[l][c] == "1") {
        		m_inimigos[l][c] = "* | " 
        		escreva("\nBUMMM! Navio inimigo atingido!\n")
		}
		senao se(m_inimigos[l][c] == "0") {
        		m_inimigos[l][c] = "A | "
        		escreva("\n~~~~ Água ~~~~\n")
    		}
	}

}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 626; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {inimigos, 9, 24, 8};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */