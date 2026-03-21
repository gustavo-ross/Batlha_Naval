# 🚢 Batalha Naval em Portugol

Este é um projeto completo do jogo **Batalha Naval**, desenvolvido em **Portugol Studio**. O sistema conta com um menu interativo, lógica de jogo baseada em matrizes e um módulo financeiro integrado para simular compras e controle de caixa.

## 📌 Sobre o Projeto
O projeto foi desenvolvido como o desafio final para o Portugol com os seguintes objetivos:
* Utilização de estruturas de controle (`enquanto`, `escolha`, `caso`).
* **Modularização** (funções separadas).
* Manipulação de **matrizes**.
* Entrada e saída de dados.
* Lógica de jogos.
* Simulação de um sistema financeiro simples.

---

## 🚀 Funcionalidades
O sistema é dividido em duas frentes principais:

### 1. Gestão Financeira
* **Compra do Jogo:** Simula a venda do software por **R$ 19,90**, calculando troco e validando o pagamento.
* **Relatório de Caixa:** Exibe o total de unidades vendidas e o saldo acumulado em conta.
* **Validação de Dados:** Impede vendas com saldo insuficiente e realiza arredondamento de valores monetários.

### 2. O Jogo (Batalha Naval)
* **Customização:** O jogador escolhe a densidade da frota (1 a 16 navios).
* **Matriz Dinâmica:** Tabuleiro de 4x4 (16 posições) utilizando matrizes de cadeias.
* **IA de Contra-ataque:** O inimigo realiza disparos aleatórios inteligentes (não repete tiros onde já acertou/errou).
* **Radar:** O mapa inimigo permanece oculto, revelando apenas os locais onde o jogador já disparou.

---

## 💰 Sistema de Compra e Caixa
* Compra do jogo com valor fixo.
* Validação de pagamento e cálculo de troco.
* **Controle de Caixa:** Total de vendas realizadas e valor acumulado com exibição formatada.

## 📋 Menu Interativo
O sistema utiliza um loop contínuo até que o usuário decida sair. As opções disponíveis são:
1. Jogar
2. Comprar jogo
3. Ver caixa
4. Sair

---

## 📂 Estrutura do Código
O código está organizado em funções para facilitar a manutenção:

| Função | Descrição |
| :--- | :--- |
| `inicio()` | Gerencia o menu principal e a lógica financeira (caixa/vendas). |
| `jogo()` | Controla o loop principal da partida e alterna os turnos. |
| `gerar_navios()` | Distribui aleatoriamente os navios nas matrizes no início da partida. |
| `mostrar_mapas()` | Renderiza visualmente o tabuleiro do jogador e o radar inimigo. |
| `tiro()` | Valida o disparo do jogador e atualiza o mapa inimigo. |
| `contra_ataque_inimigo()` | Lógica da IA para sortear coordenadas e atacar o jogador. |
| `contador_navios()` | Varre a matriz para verificar quantos navios ainda estão "vivos". |

---

## 🧠 Conceitos Utilizados
* **Modularização com funções:** `jogo()`, `mostrar_mapas()`, `contador_navios_inimigos()`, `tiro()`.
* **Uso de bibliotecas:** `Tipos`, `Util`, `Matematica`.
* **Estruturas de repetição:** `enquanto`, `para`, `faca...enquanto`.
* **Estruturas condicionais:** `se / senao`, `escolha / caso`.

---

## ⚙️ Como Executar
1. **Requisitos:** Portugol Studio instalado.
2. **Passos:**
    * Abra o Portugol Studio.
    * Crie um novo projeto.
    * Cole o código do jogo.
    * Execute o programa.

---

## 👨‍💻 Autor
Desenvolvido por **Luis Gustavo, Guilherme Bouvier e Eduardo Tarrago** 🚀.
*Projeto focado em evolução para sistemas mais complexos.*

## 📄 Licença
Este projeto é livre para uso educacional e aprimoramento.

## ⭐ Contribuição
Sinta-se à vontade para:
* Melhorar o código.
* Corrigir bugs.
* Adicionar novas funcionalidades.

---
### Fluxogramas das funções:

Menu inicial

<img width="721" height="1113" alt="Fluxograma do menu inicial drawio" src="https://github.com/user-attachments/assets/bfde3ec6-e710-4bc2-8487-63fc338aa127" />

Jogar

<img width="699" height="1122" alt="Fluxograma Jogar drawio" src="https://github.com/user-attachments/assets/7c85e2c3-8506-4041-b8c5-82f2e299e19c" />

Tiro do Jogador

<img width="533" height="1093" alt="Fluxograma Tiro do jogador drawio" src="https://github.com/user-attachments/assets/95da845e-5e02-4c91-9953-70bddf3c9b7e" />

Comprar jogo

<img width="532" height="813" alt="Fluxograma Compra do Jogo drawio" src="https://github.com/user-attachments/assets/67543c0c-0441-4e53-bd94-f3d5300d8fe4" />

Relatório de vendas

<img width="186" height="512" alt="Fluxograma relatório de vendas drawio" src="https://github.com/user-attachments/assets/5e18e486-d317-47a3-89d3-33d256f1165f" />
