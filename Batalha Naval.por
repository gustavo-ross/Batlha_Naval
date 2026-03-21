programa
{
    inclua biblioteca Matematica --> mat
    inclua biblioteca Tipos --> t
    inclua biblioteca Util --> u

    funcao inicio()
    {
        // Variáveis do Menu e Financeiro
        real valor_jogo = 19.90, dinheiro_recebido, troco, troco_arredondado, caixa = 0.0, caixa_arredondado
        inteiro opcao, continuar = 1, total_vendas = 0, dificuldade
        cadeia enter 

        enquanto(continuar == 1)
        
        {
            limpa()
            //---------------------------------TITULO ORIGINAL--------------------
            escreva ("~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^ \n\n")
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
            escreva ("\nESCOLHA UMA OPÇÃO\n")
            leia(opcao)

            escreva ("\n\n~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^ \n\n")

            escolha(opcao)
            {
                caso 1:
                    //----------------------------- LAYOUT DE REGRAS ORIGINAL ------------------
                    escreva ("    _____________________________________________________________________     \n")
                    escreva ("  /  |                                                                   |     \n")
                    escreva (" |   |                           REGRAS DO JOGO                          |.    \n")
                    escreva ("  |_ |                            ----------------                       |.    \n")
                    escreva ("     |  Batalha Naval: É um jogo de estrátegia para dois jogadores onde  |.    \n")
                    escreva ("     | o objetivo é afundar todos os navios do oponente, posicionados    |.    \n")
                    escreva ("     | secretamente no tabuleiro,  esse jogo vai usar um sorteio para    |.    \n")
                    escreva ("     | para determinar a posicao do NAVIO.                               |.    \n") 
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

                    jogo() 
                    
                    escreva ("\n\n~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^ \n\n")
                    pare

                caso 2:                                     //---------------------------------------------------------VENDA DO JOGO
                    limpa()
                    escreva("      BATALHA NAVAL .game\n\n")
                    escreva("Valor do jogo R$: ", valor_jogo, "\n")
                    escreva("Digite o dinheiro recebido: ")
                    leia(dinheiro_recebido)

                    se (dinheiro_recebido >= valor_jogo) {                 //----------------------------------------VENDA SO ACONTECE SE DINHEIORO RECEBIDO FOR MAIOR OU IGUAL PRECO DO JOGO
                        troco = (dinheiro_recebido - valor_jogo)           //-----------------------------------------TROCO SUBTRAI (VALOR RECEBIDO - VALOR JOGO)
                        troco_arredondado = mat.arredondar(troco, 2)       //------------------------------------------USANDO A BIBLIOTACA MATEMATICA PARA ARRENDAR O TROCO 
                        total_vendas++                                     //------------------------------------------ACUMULANDO O VALOR E QUANTIDADES DE VENDAS
                        caixa = caixa + valor_jogo 
                        
                        escreva("\nJogo comprado com sucesso!")
                        escreva("\nTroco: R$ ", troco_arredondado)
                    } senao { 
                        escreva("\n(-) Dinheiro insuficiente!") 
                    }
                    
                    escreva("\n\nPressione ENTER para voltar ao menu...")
                    leia(enter)
                    pare

                caso 3:
                    limpa()
                    caixa_arredondado = mat.arredondar(caixa, 2)                //------------------------------------------USANDO A BIBLIOTACA MATEMATICA PARA ARRENDAR O CAIXA                                  
                    escreva("\n===== RELATÓRIO FINANCEIRO =====\n")
                    escreva("\nTotal de vendas: ", total_vendas, " unidades")
                    escreva("\nSaldo em Caixa: R$ ", caixa_arredondado)
                    escreva("\n\nPressione ENTER para voltar ao menu...")
                    leia(enter)
                    pare

                caso 4:
                    continuar = 0
                    escreva("\nSaindo do sistema... Até logo!\n")
                    u.aguarde(2000)
                    pare

                caso contrario:
                    escreva("\nOpção Inválida!")
                    u.aguarde(1500)
            }
        }
    }

 //-----------------------------------------------------------               //------------------------------------------------------FUNÇÃO JOGO
funcao jogo()
{
    inteiro navios_total
    cadeia aliados[4][4], inimigos[4][4]
    inteiro navios_inimigos, navios_aliados, linha, coluna

    // Escolha de quantidade de navios
    escreva("Quantos navios deseja no tabuleiro? (1 a 16): ")
    leia(navios_total)

    enquanto(navios_total < 1 ou navios_total > 16){ 
        escreva("Valor inválido! Digite entre 1 e 16: ")                  //----------------------------------- SE A QUANTIDADE DE NAVIO FOR MENOR QUE " 0 " OU MAIOR QUE " 16 " ELE INVALIDA
        leia(navios_total) 
    }
 
    // Inicializa os mapas com água                                       //-----------------------------------------------------------O TABULEIRO INICIA VAZIO
    para(inteiro i = 0; i < 4; i++){
        para(inteiro j = 0; j < 4; j++){
            aliados[i][j] = "0"
            inimigos[i][j] = "0"
        }
    }

    // Distribui navios corretamente                                        //----------------------------------------------------------- MODULARIÇÃO DA DISTRIBUIÇÃO DOS NAVIOS
    gerar_navios(aliados, navios_total)                        
    gerar_navios(inimigos, navios_total)

    faca{
        limpa()
        escreva("-- BATALHA NAVAL --\n\n")                                    //-----------------------------------------------------------INICIO DO JOGO CHAMANDO AS FUNÇÕES MODULARIZADAS

        mostrar_mapas(aliados, inimigos)                                    //----------------------------------------------------------- MOSTRAR MAPA + QUANTIDADES DE NAVIOS
        navios_inimigos = contador_navios(inimigos)
        navios_aliados = contador_navios(aliados)       

        escreva("\nNavios inimigos: ", navios_inimigos, " | Seus navios: ", navios_aliados, "\n\n")

        // TURNO DO JOGADOR
        escreva("SUA VEZ! Digite a LINHA (0 a 3): ")
        leia(linha)                                                         //-----------------------------------------------------------TURNO DO JOGADOR ESCOLHA LINHA E COLUNA
        escreva("Digite a COLUNA (0 a 3): ")
        leia(coluna)

        tiro(inimigos, linha, coluna)
        u.aguarde(1500)

        // TURNO DO INIMIGO
        navios_inimigos = contador_navios(inimigos)                        //-----------------------------------------------------------SE (NAVIOS INIMIGOS FOR MAIOR QUE "0" ENTÃO É A VEZ DO INIMIGO)
        se (navios_inimigos > 0) {
            contra_ataque_inimigo(aliados)                                 //-----------------------------------------------------------(LOOP ENQUANTO (INIMIGO E ALIADOS FOREM MAIOR QUE ZERO REPETE)
            u.aguarde(2000)
        }

        navios_aliados = contador_navios(aliados)                        
    }
    enquanto(navios_inimigos > 0 e navios_aliados > 0)                    

    limpa()
    se (navios_inimigos == 0) {                                         
         mensagem_ganhador()                                
        //escreva("PARABÉNS! Você afundou todos os navios inimigos!")        //-----------------------------------------------------------MENSAGEM DE FIM DE JOGO + FUNÇÃO LIMPAR TELA E VOLTAR PARA O MENU
    } senao {
    	    mensagem_perdedor()
       // escreva("GAME OVER! O inimigo destruiu sua frota...")
    }
    u.aguarde(3000)
}

// Função para gerar navios controlados
funcao gerar_navios(cadeia mapa[][], inteiro quantidade){
    inteiro colocados = 0
    inteiro l, c

    enquanto(colocados < quantidade){                          //----------------------------------------                  A FUNÇÃO ENQUANTO DISTRIBUI OS NAVIOS ATE QUE A QUANTIDADE SEJA ATINGIDA
        l = u.sorteia(0,3)                                    //-----------------------------------------------------------CRIAMOS UMA VARIÁVEL QUANTIDADE E BOTAMOS DENTRO DO ENQUANTO; ENQUANTO (COLOCADOS < QUANTIDADE ) 
        c = u.sorteia(0,3)                                    //-----------------------------------------------------------ELE SORTEIO UMA POSÇÃO E ACRESCENTA UM NAVIO REPETINDO COM COLOCADOS ++ ATE A QUANTIDADE DESEJADA

        se(mapa[l][c] == "0"){
            mapa[l][c] = "1"
            colocados++
        }
    }
}

// Função para mostrar os mapas
funcao mostrar_mapas(cadeia m_aliados[][], cadeia m_inimigos[][]){               //-----------------------------------------------------------MOSTRAR MAPA
    escreva("-- SEU MAPA --\n")                                                  //-----------------------------------------------------------USANNDO O LOOP (PARA (INTEIRO i = 0; i<4; i++) PARA LINHA E COLUNA 
    para(inteiro i = 0; i < 4; i++){
        para(inteiro j = 0; j < 4; j++){
            escreva(m_aliados[i][j], " | ")
        }
        escreva("\n")
    }

    escreva("\n-- MAPA INIMIGO (Radar) --\n")               //-----------------------------------------------------------      ??????????????????????????? //-----------------------------------------------------------
    
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

funcao contra_ataque_inimigo(cadeia mapa_jogador[][])                                //----------------------------------------------------------CONTRA ATAQUE DECLARANDO A LINHA E COLUNA COMO VARIÁVEIS = 0 , UMA LOGICA DE =FALSO PARA TIRO
{                                                                                   //--------------------------------------------------------- USANDO O SORTEIO PARA LINHA E PARA COLUNA DE (0, A 3)
    inteiro lin_ini = 0, col_ini = 0
    logico tiro_confirmado = falso

    escreva("\n--- TURNO DO INIMIGO --- \n")
    u.aguarde(1500)

    enquanto (tiro_confirmado == falso) {                                        //---------------------------------------------------------ENQUANTO TIRO = 0 REPETE A BATALHA 
        lin_ini = u.sorteia(0, 3)
        col_ini = u.sorteia(0, 3)

        se (mapa_jogador[lin_ini][col_ini] == "0" ou mapa_jogador[lin_ini][col_ini] == "1") {         //----------------------------------------SE TIRO = 1 PONTO
            tiro_confirmado = verdadeiro 
        }
    }

    escreva("O inimigo disparou na posição: [", lin_ini, "][", col_ini, "]\n")

    se (mapa_jogador[lin_ini][col_ini] == "1") {                               //---------------------------------------------------------USANDO A LOGICA PARA COMPARA SE POSIÇÃO DO TIRO DO INIMIGO = 1 (NAVIO ALIADO)  == ATINGIDO 
        escreva(" ALERTA! Um de seus navios foi atingido! \n")                 //---------------------------------------------------------SENAO TIRO CAIO NO MAR
        mapa_jogador[lin_ini][col_ini] = "*"
    } 
    senao {
        escreva(" O tiro inimigo caiu no mar. \n")
        mapa_jogador[lin_ini][col_ini] = "A"
    }
}

funcao inteiro contador_navios(cadeia mapa[][]){                          //-----------------------------------------------------------CONTADOR NAVIO        INICIANDO COM A VARIÁVEL (SOMA =0) INCLUINDO UM LAÇO (PARA) (SOMA++) E (REORNE SOMA) 
    inteiro soma = 0
    para(inteiro i = 0; i < 4; i++){
        para(inteiro j = 0; j < 4; j++){
            se(mapa[i][j] == "1") soma++
        }        
    }
    retorne soma
}

funcao tiro(cadeia m_inimigos[][], inteiro l, inteiro c){                 //-----------------------------------------------------------TIRO
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
 //---------------------------------------------------------------------------
funcao mensagem_ganhador()
	{
	      escreva("                                      xx                                                                                \n")
		 escreva("xx         xx                       xx  xx           xxxxxxx                                                            \n") 
		 escreva("xx        xx                                        xx                                 xx                               \n")    
		 escreva(" xx      xx     xxxxxx     xxxxxx   xxxxxx          xx           xxxxxxx     xxxxxx    xx         xxxxxx    xx     xx   \n")
 		 escreva("  xx    xx     xx    xx   xx       xx    xx         xx xxxxxxx         xx   xx    xx   xxxxxxx   xx    xx   xx     xx   \n")
		 escreva("   xx  xx      xx    xx   xx       xxxxxxx          xx      xx    xxxxxxx   xx    xx   xx   xx   xx    xx   xx     xx   \n")
		 escreva("    xxxx       xx    xx   xx       xx               xx      xx   xx    xx   xx    xx   xx   xx   xx    xx   xx     xx   \n")
		 escreva("     xx         xxxxxx     xxxxxx   xxxxxx           xxxxxxx     xxxxxxxxx  xx    xx   xx   xx    xxxxxx     xxxxxxx    \n") 
		 
		        
	}

//-----------------------------------------------------------------
funcao mensagem_perdedor()
	{
	      escreva("                                      xx                                                                                \n")
		 escreva("xx         xx                       xx  xx           xxxxxxx                                                            \n") 
		 escreva("xx        xx                                        xx     xx                              xx                           \n")    
		 escreva(" xx      xx     xxxxxx     xxxxxx   xxxxxx          xx     xx    xxxxxx    xx xxxx         xx     xxxxxx    xx      xx  \n")
 		 escreva("  xx    xx     xx    xx   xx       xx    xx         xxxxxxxxx   xx    xx   xxx   xx   xxxxxxx    xx    xx   xx      xx  \n")
		 escreva("   xx  xx      xx    xx   xx       xxxxxxx          xx          xxxxxxx    xx        xx    xx    xxxxxxxx   xx      xx  \n")
		 escreva("    xxxx       xx    xx   xx       xx               xx          xx         xx        xx    xx    xx         xx      xx  \n")
		 escreva("     xx         xxxxxx     xxxxxx   xxxxxx          xx          xxxxxxx    xx         xxxxxx     xxxxxxxx     xxxxxxx   \n") 
		 
		        
	}

//-----------------------------------------------------------------

}