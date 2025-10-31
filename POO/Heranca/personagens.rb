class Personagem
    
    attr_reader :nome, :hp

    def initialize(nome, hp)
        @nome = nome
        @hp = hp        
    end

    def sofrer_dano(dano)
        if dano > 0
            @hp -= dano
            puts"#{@nome} sofreu dano de #{dano}"
        end
    end

    def exibir_status
        puts"Nome:#{@nome}"
        puts"HP:#{@hp}"
    end
end

class Guerreiro < Personagem
    
    attr_reader :furia

    def initialize(nome,hp, furia)
        super(nome, hp)
        @furia = furia
    end

    def exibir_status
        puts"----- GUERREIRO:#{@nome} -----"
        super()
        puts"Furia:#{@furia}"
    end

    def sofrer_dano(dano)
        super(dano)
        @furia += 5
        puts"#{@nome} sofreu dano de #{dano}"
        puts"É aumentou a furia #{@furia}"
    end
end

class Mago < Personagem

    attr_reader :mana
  
    def initialize(nome,hp,mana)
        super(nome,hp)
        @mana = mana
    end

    def exibir_status
        puts"----- MAGO:#{@nome} -----"
        super()
        puts"Mana:#{@mana}"
    end

    
    def sofrer_dano(dano)
        super(dano)
        @mana += 10
        puts"#{@nome} sofreu dano de #{dano}"
        puts"É aumentou a mana #{@mana}"
    end
end

garen = Guerreiro.new("Garen", 150, 0)
veigar = Mago.new("Veigar", 80, 50)

puts "--- Início ---"
garen.exibir_status
veigar.exibir_status

puts "\n--- A Batalha ---"
# O Mago ataca o Guerreiro
veigar.sofrer_dano(10) # <-- Ops, Mago não pode atacar. Digamos que ele apanha.
garen.sofrer_dano(20) # Guerreiro apanha

puts "\n--- Fim ---"
garen.exibir_status
veigar.exibir_status