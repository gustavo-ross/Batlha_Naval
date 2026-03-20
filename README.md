🚢 Batalha Naval em Portugol
Este é um projeto completo do jogo Batalha Naval, desenvolvido em Portugol Studio. O sistema conta com um menu interativo, lógica de jogo baseada em matrizes e um módulo financeiro integrado para simular compras e controle de caixa.

📌 Sobre o Projeto
O projeto foi desenvolvido como o desafio final para o Portugol com os seguintes objetivos:
Utilização de estruturas de controle (enquanto, escolha, caso)
Modularização (funções separadas)
Manipulação de matrizes
Entrada e saída de dados
Lógica de jogos
Simulação de um sistema financeiro simples

🚀 Funcionalidades
O sistema é dividido em duas frentes principais:
1. Gestão Financeira
Compra do Jogo: Simula a venda do software por R$ 19,90, calculando troco e validando o pagamento.
Relatório de Caixa: Exibe o total de unidades vendidas e o saldo acumulado em conta.
Validação de Dados: Impede vendas com saldo insuficiente e realiza arredondamento de valores monetários.
2. O Jogo (Batalha Naval)
Customização: O jogador escolhe a densidade da frota (1 a 16 navios).
Matriz Dinâmica: Tabuleiro de 4x4 (16 posições) utilizando matrizes de cadeias.
IA de Contra-ataque: O inimigo realiza disparos aleatórios inteligentes (não repete tiros onde já acertou/errou).
Radar: O mapa inimigo permanece oculto, revelando apenas os locais onde o jogador já disparou.

💰 Sistema de Compra
Compra do jogo com valor fixo
Validação de pagamento
Cálculo de troco
Arredondamento de valores

📊 Controle de Caixa
Total de vendas realizadas
Valor acumulado em caixa
Exibição formatada

📋 Menu Interativo
Loop contínuo até o usuário sair.
Opções:
Jogar
Comprar jogo
Ver caixa
Sair

📂 Estrutura do Código
O código está organizado em funções para facilitar a manutenção:
Função
Descrição
inicio()
Gerencia o menu principal e a lógica financeira (caixa/vendas).
jogo()
Controla o loop principal da partida e alterna os turnos.
gerar_navios()
Distribui aleatoriamente os navios nas matrizes no início da partida.
mostrar_mapas()
Renderiza visualmente o tabuleiro do jogador e o radar inimigo.
tiro()
Valida o disparo do jogador e atualiza o mapa inimigo.
contra_ataque_inimigo()
Lógica da IA para sortear coordenadas e atacar o jogador.
contador_navios()
Varre a matriz para verificar quantos navios ainda estão "vivos".


🧠 Conceitos Utilizados
Modularização com funções:
jogo()
mostrar_mapas()
contador_navios_inimigos()
tiro()
Uso de bibliotecas:
Tipos
Util
Matemática
Estruturas de repetição:
enquanto
para
faca...enquanto
Estruturas condicionais:
se / senao
escolha / caso

⚙️ Como Executar
Requisitos:
Portugol Studio instalado.
Passos:
Abra o Portugol Studio.
Crie um novo projeto.
Cole o código do jogo.
Execute o programa.

👨‍💻 Autor
Desenvolvido por Luis Gustavo, Guilherme Bouvier e Eduardo tarrago 🚀.
 Projeto focado em evolução para sistemas mais complexos.

📄 Licença
Este projeto é livre para uso educacional e aprimoramento.

⭐ Contribuição
Sinta-se à vontade para:
Melhorar o código
Corrigir bugs
Adicionar novas funcionalidades 
