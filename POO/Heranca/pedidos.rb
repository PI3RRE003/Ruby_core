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

pedido_comida = PratoPrincipal.new("Lasanha", 45.00, ["Massa", "Queijo", "Molho"])
pedido_bebida = Bebida.new("Refrigerante", 8.00, false)
pedido_drink = Bebida.new("Caipirinha", 15.00, true)

puts "--- Pedido 1 ---"
pedido_comida.preparar

puts "\n--- Pedido 2 ---"
pedido_bebida.preparar

puts "\n--- Pedido 3 ---"
pedido_drink.preparar