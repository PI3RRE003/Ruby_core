class Maquina

    attr_reader :credito_inserido
    
    def initialize(estoque_inicial)
        @estoque_inicial = estoque_inicial
        @credito_inserido = 0
    end

    def inserir_credito(credito)
        if credito > 0
            @credito_inserido += credito
        else
            puts"Credito não pode ser menor que zero"
            return
        end
    end

    def escolher_produto(nome)
        
        unless produto_existe?(nome)
            puts"Error: Produto #{nome} não existe"
            return
        end

        unless tem_estoque?(nome)
            puts"Error: #{nome} está fora de estoque"
            return
        end

        preco = @estoque_inicial[nome][:preco]
        unless tem_credito_suficiente?(preco)
            puts"Error: Credito insuficiente, Faltam R$:#{preco - @credito_inserido}"
            return
        end

        processar_venda(nome, preco)
    end

    def devolver_troco
        puts"Devolvendo seu troco: R$#{@credito_inserido}"
        @credito_inserido = 0
    end
    
    private
    def produto_existe?(nome)
    
        @estoque_inicial.key?(nome)
    
    end

    def tem_estoque?(nome)
        @estoque_inicial[nome][:qtd] > 0
    end

    def tem_credito_suficiente?(preco_produto)
       
        @credito_inserido >= preco_produto
    
    end

    def processar_venda(nome, preco)
        
        @estoque_inicial[nome][:qtd] -= 1
        @credito_inserido -= preco
        
        puts"Venda aprovada! Retire '#{nome}'."
        puts"Crédito restante: R$#{credito_inserido}"
    end
end

estoque_loja_kaw = {
    "coca" => {preco: 5, qtd: 2},
    "pepsi" => {preco: 4, qtd: 3},
    "chips" => {preco: 3, qtd: 0}
}

maquina_kaw = Maquina.new(estoque_loja_kaw)

maquina_kaw.inserir_credito(5)
maquina_kaw.escolher_produto("batata")
maquina_kaw.escolher_produto("chips")
maquina_kaw.escolher_produto("coca")