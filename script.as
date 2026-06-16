// arquivo: script.js

// Classe que gerencia a lógica de ligações na interface do site
class GerenciadorLigacoes {
    constructor() {
        this.fila = [];
        this.historicoContador = 0;
        
        // Mapeando os elementos do HTML/CSS para o JavaScript
        this.containerStatus = document.getElementById("lista-status");
        this.contadorAtendidos = document.getElementById("contador-atendidos");
        this.inputNome = document.getElementById("nome-cliente");
    }

    // Método para adicionar uma nova ligação (Conexão com a ação do usuário)
    receberLigacao() {
        const nome = this.inputNome.value.trim();
        
        if (nome === "") {
            alert("Por favor, digite o nome do cliente para simular a ligação!");
            return;
        }

        // Adiciona o cliente na fila
        this.fila.push(nome);
        
        // Cria o elemento visual no site (com as classes do CSS verde-musgo)
        const novoCard = document.createElement("div");
        novoCard.className = "status-ligacao";
        novoCard.id = `chamada-${nome.replace(/\s+/g, '')}`;
        novoCard.innerHTML = `📞 <strong>${nome}</strong> entrou na linha e está aguardando...`;
        
        this.containerStatus.appendChild(novoCard);
        
        // Limpa o campo de texto
        this.inputNome.value = "";
    }

    // Método para atender a próxima ligação da fila (Interação e Mudança de Estado)
    atenderProxima() {
        if (this.fila.length === 0) {
            alert("Não há nenhuma ligação na fila para atender no momento! ☕");
            return;
        }

        // Remove o primeiro da fila (Conceito FIFO do código anterior)
        const proximoCliente = this.fila.shift();
        const idCard = `chamada-${proximoCliente.replace(/\s+/g, '')}`;
        const cardExistente = document.getElementById(idCard);

        if (cardExistente) {
            // Aplica a classe CSS de ligação ativa (muda a cor da borda/fundo)
            cardExistente.className = "status-ligacao ligacao-ativa";
            cardExistente.innerHTML = `🎧 [ATENDENTE]: "Olá, <strong>${proximoCliente}</strong>! Como posso ajudar?"`;

            // Simula o tempo de conversa (ex: 3 segundos) e depois finaliza
            setTimeout(() => {
                cardExistente.className = "status-ligacao";
                cardExistente.innerHTML = `✅ Chamada de <strong>${proximoCliente}</strong> encerrada com sucesso.`;
                
                // Atualiza o painel de histórico no rodapé
                this.historicoContador++;
                this.contadorAtendidos.innerText = `${this.historicoContador} Clientes atendidos.`;
            }, 3000);
        }
    }
}

// Inicializa o gerenciador assim que a página estiver pronta
const sistemaLigacoes = new GerenciadorLigacoes();
