class ItemPedido
    
    attr_reader :nome, :preco

    def initialize(nome, preco)
        @nome = nome  
        @preco = preco
    end

    def preparar
        puts"Pedido #{@nome} recebido"
        puts"Preço: R$#{format('%.2f', @preco)}"
    end
end

class PratoPrincipal < ItemPedido
    attr_reader :lista_ingredientes
    def initialize(nome,preco,lista_ingredientes)
        super(nome,preco)
        @lista_ingredientes = lista_ingredientes
    end

    def preparar
        super()
        puts"Lista de ingredientes:(#{@lista_ingredientes.join(', ')})"
    end
end

class Bebida < ItemPedido
    attr_reader :alcoolica
    def initialize(nome, preco, alcoolica)
        super(nome, preco)
        @alcoolica = alcoolica
    end

    def preparar
        super()
        puts"Pedido #{@nome} enviado para o bar"
        if @alcoolica
          puts"Verifique a idade do cliente"
        end
    end
end

class Comanda 
    def initialize
        @lista_items = []    
    end

    def adicionar_item(item)
        @lista_items << item
        puts"#{item.nome} adicionado a comanda"
    end

    def preparar_todos
        puts"\n------ PREPARANDO COMANDA COMPLETA -----"
        @lista_items.each do |item_da_lista|
            item_da_lista.preparar
            puts"-----------"
        end
        puts"----- COMANDA FINALIZADA ------"
    end

    def calcular_total
        total = 0
        @lista_items.each do |item_da_lista|
            total += item_da_lista.preco
        end
        puts"Total da comanda: R$#{format('%.2f', total)}"
        return total
    end
end

# --- Como Testar seu Código ---

# 1. Criar os itens (objetos de classes DIFERENTES)
lasanha = PratoPrincipal.new("Lasanha", 45.00, ["Massa", "Queijo"])
refri = Bebida.new("Refrigerante", 8.00, false)
drink = Bebida.new("Caipirinha", 15.00, true)

# 2. Criar a Comanda
comanda_mesa_10 = Comanda.new

# 3. Adicionar os itens
#    A 'Comanda' não se importa que 'lasanha' e 'refri' são
#    de classes diferentes. Ambos são "Itens de Pedido".
comanda_mesa_10.adicionar_item(lasanha)
comanda_mesa_10.adicionar_item(refri)
comanda_mesa_10.adicionar_item(drink)

# 4. A MÁGICA: Chamar o método polimórfico
comanda_mesa_10.preparar_todos
# (Isso deve chamar 'preparar' de cada objeto,
#  e cada um vai imprimir sua mensagem específica!)

# 5. O Bônus
comanda_mesa_10.calcular_total # Deve somar 45 + 8 + 15 = 68