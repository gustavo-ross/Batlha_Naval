programa
{
	 
	inclua biblioteca Matematica --> mat
	inclua biblioteca Tipos --> t
	inclua biblioteca Util --> u

	funcao inicio()
	{
		// Variáveis do Menu e Financeiro
		real valor_jogo = 19.90, dinheiro_recebido, troco, troco_arredondado, caixa = 0.0, caixa_arredondado
		inteiro opcao, continuar = 1, total_vendas = 0
		cadeia enter

		enquanto (continuar == 1)
		{
			limpa()
			//---------------------------------TITULO ORIGINAL--------------------
			escreva ("~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~~^~^~^ \n\n")
			escreva(" xxxxxxx                xx                xx  xx                            xx    xx                                    xx     \n")
			escreva(" Xx    xx   xxxxxxx   xxxxxxx  xxxxxxx    xx  xx        xxxxxxx             xxx   xx  xxxxxxx  xx        xx  xxxxxxx    xx     \n")
			escreva(" xx    xx         xx    xx           xx   xx  xx              xx            xxxx  xx        xx  xx      xx         xx   xx     \n")
			escreva(" xxxxxxx     xxxxxxx    xx      xxxxxxx   xx  xxxxxxx    xxxxxxx            xx xx xx   xxxxxxx   xx    xx     xxxxxxx   xx     \n")
			escreva(" xx     xx  xx    xx    xx     xx    xx   xx  xx    xx  xx    xx            xx  xxxx  xx    xx    xx  xx     xx    xx   xx     \n")
			escreva(" xx     xx  xx    xx    xx     xx    xx   xx  xx    xx  xx    xx            xx   xxx  xx    xx     xxxx      xx    xx   xx     \n")
			escreva(" xxxxxxxx   xxxxxxxx    xxxx   xxxxxxxx   xx  xx    xx  xxxxxxxx            xx    xx  xxxxxxxx      xx       xxxxxxxx   xx     \n")
			escreva ("\n\n~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~~^~^~^ \n\n")

			escreva ("1 - JOGAR ON-LINE\n")
			escreva ("2 - COMPRAR JOGO\n")
			escreva ("3 - VALOR EM CAIXA\n")
			escreva ("4 - SAIR\n")
			escreva ("\nESCOLHA UMA OPCAO\n")
			leia(opcao)

			escreva ("\n\n~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^ \n\n")

			escolha(opcao)
			{
				caso 1:
					//----------------------------- LAYOUT DE REGRAS ORIGINAL ------------------
					escreva ("    _____________________________________________________________________     \n")
					escreva ("  /  |                                                                   |     \n")
					escreva (" |   |                            REGRA DO JOGO                          |.    \n")
					escreva ("  |_ |                            ----------------                       |.    \n")
					escreva ("     |  Batalha Naval: É um jogo de estrategia para dois jogadores onde  |.    \n")
					escreva ("     | o objetivo é afundar todos os navios do oponente, posicionados    |.    \n")
					escreva ("     | secretamente no tabuleiro,  esse jogo vai usar um sorteio para    |.    \n")
					escreva ("     | para determinar a posicao do NÁVIO.                               |.    \n") 
					escreva ("     |                                                                   |.    \n")
					escreva ("     |   Os jogadores alternam as jogadas disparando, usando linha e     |.    \n")  
					escreva ("     | coluna  para determinar as coordenadas, marcando ACERTOU ou ÁGUA  |.    \n")
					escreva ("     | até que a frota do inimigo seja destruida.                        |.    \n")
					escreva ("     |                                                                   |.    \n")
					escreva ("     |                               BOM JOGO!                           |.    \n")
					escreva ("     |   ________________________________________________________________|__  \n")
					escreva ("     |  /                                                                  /. \n")
					escreva ("     |_/__________________________________________________________________/.  \n")

					escreva ("\n\nAPERTE ( ENTER ) PARA INICIAR\n")
					leia(enter)
					
					jogar_batalha_naval() 
					
					escreva ("\n\n~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^ \n\n")
					pare

				caso 2:
					// Lógica de compra (mantida)
					escreva("      BATALHA NAVAL .game\n\n")
					escreva("Voce optou por comprar o Jogo\nValor do jogo R$: ", valor_jogo, "\n")
					escreva("Digite o dinheiro recebido? ")
					leia(dinheiro_recebido)
					se (dinheiro_recebido >= valor_jogo) {
						troco = (dinheiro_recebido - valor_jogo)
						troco_arredondado = mat.arredondar(troco, 2)
						total_vendas++
						caixa = caixa + valor_jogo
						escreva("\nJogo comprado com sucesso! Troco: ", troco_arredondado, "\n")
					} senao { escreva("Dinheiro insuficiente!\n") }
					pare

				caso 3:
					caixa_arredondado = mat.arredondar(caixa, 2)
					escreva("\n===== TOTAL EM CAIXA =====\n\nCaixa: ", caixa_arredondado, " Reais\n")
					pare

				caso 4:
					continuar = 0
					pare
			}
		}
	}

	funcao jogar_batalha_naval()
	{
		cadeia aliados[4][4], inimigos[4][4]
		inteiro navios_inimigos, navios_aliados, linha, coluna
		
		para(inteiro i = 0; i < 4; i++){
			para(inteiro j = 0; j < 4; j++){
				aliados[i][j] = t.inteiro_para_cadeia(u.sorteia(0,1), 10)
				inimigos[i][j] = t.inteiro_para_cadeia(u.sorteia(0,1), 10)
			}
		}

		faca{
			limpa()
			escreva("-- BATALHA NAVAL --\n\n")
			
			mostrar_mapas(aliados, inimigos)
			navios_inimigos = contador_navios(inimigos)
			navios_aliados = contador_navios(aliados)
			
			escreva("\nNavios inimigos: ", navios_inimigos, " | Seus navios: ", navios_aliados, "\n\n")
	
			// TURNO DO JOGADOR
			escreva("SUA VEZ! Digite a LINHA (0 a 3): ")
			leia(linha)
			escreva("Digite a COLUNA (0 a 3): ")
			leia(coluna)
	
			tiro(inimigos, coluna, linha)
			u.aguarde(1500) 

			// TURNO DO INIMIGO (Aparece logo após a rodada do usuário)
			navios_inimigos = contador_navios(inimigos)
			se (navios_inimigos > 0) {
				contra_ataque_inimigo(aliados)
				u.aguarde(2000)
			}
			
			navios_aliados = contador_navios(aliados)
		}
		enquanto(navios_inimigos > 0 e navios_aliados > 0)

		limpa()
		se (navios_inimigos == 0) {
			escreva("PARABÉNS! Você afundou todos os navios inimigos!")
		} senao {
			escreva("GAME OVER! O inimigo destruiu sua frota...")
		}
		u.aguarde(3000)
	}

	//---------------------------------------------------------------------------------------
	// CONTRA-ATAQUE DO INIMIGO
	//---------------------------------------------------------------------------------------
	funcao contra_ataque_inimigo(cadeia mapa_jogador[][])
	{
		inteiro lin_ini = 0, col_ini = 0
		logico tiro_confirmado = falso
		
		escreva("\n--- TURNO DO INIMIGO --- \n")
		u.aguarde(1500) // Pausa dramática conforme sua ideia
		
		enquanto (tiro_confirmado == falso) {
			// Sorteia de 0 a 3 (índices válidos para o mapa 4x4)
			lin_ini = u.sorteia(0, 3)
			col_ini = u.sorteia(0, 3)
		
			// Verifica se o tiro é inédito (se é água "0" ou navio "1")
			se (mapa_jogador[lin_ini][col_ini] == "0" ou mapa_jogador[lin_ini][col_ini] == "1") {
				tiro_confirmado = verdadeiro 
			}
		}
		
		escreva("O inimigo disparou na posição: [", lin_ini, "][", col_ini, "]\n")
		
		se (mapa_jogador[lin_ini][col_ini] == "1") {
			escreva(" ALERTA! Um de seus navios foi atingido! \n")
			mapa_jogador[lin_ini][col_ini] = "*" // Marca acerto
		} 
		senao {
			escreva(" O tiro inimigo caiu no mar. \n")
			mapa_jogador[lin_ini][col_ini] = "A" // Marca água
		}
	}

	//---------------------------------------------------------------------------------------
	// FUNÇÕES DE SUPORTE
	//---------------------------------------------------------------------------------------

	funcao mostrar_mapas(cadeia m_aliados[][], cadeia m_inimigos[][]){
		escreva("-- SEU MAPA --\n")
		para(inteiro i = 0; i < 4; i++){
			para(inteiro j = 0; j < 4; j++){
				escreva(m_aliados[i][j], " | ")
			}
			escreva("\n")
		}

		escreva("\n-- MAPA INIMIGO (Radar) --\n")
		para(inteiro i = 0; i < 4; i++){
			para(inteiro j = 0; j < 4; j++){
				se(m_inimigos[i][j] == "*" ou m_inimigos[i][j] == "A"){
					escreva(m_inimigos[i][j], " | ")
				} senao {
					escreva("~ | ")
				}
			}
			escreva("\n")
		}
	}

	funcao inteiro contador_navios(cadeia mapa[][]){
		inteiro soma = 0
		para(inteiro i = 0; i < 4; i++){
			para(inteiro j = 0; j < 4; j++){
				se(mapa[i][j] == "1") soma++
			}		
		}
		retorne soma
	}

	funcao tiro(cadeia m_inimigos[][], inteiro c, inteiro l){
		se(l < 0 ou l > 3 ou c < 0 ou c > 3){
			escreva("\nCoordenada inválida!\n")
		}
		senao se(m_inimigos[l][c] == "1") {
			m_inimigos[l][c] = "*" 
			escreva("\nBUMMM! Navio inimigo atingido!\n")
		}
		senao se(m_inimigos[l][c] == "0") {
			m_inimigos[l][c] = "A"
			escreva("\n~~~~ Água ~~~~\n")
		}
		senao {
			escreva("\nVocê já atirou aqui!\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 8705; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */