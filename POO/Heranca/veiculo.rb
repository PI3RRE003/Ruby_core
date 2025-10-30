class Veiculo
    attr_reader :marca
    def initialize(marca)
        @marca = marca
        @ligado = false
    end
    
    def ligar
        @ligado = true
        puts"O #{marca} ligou"
    end

    def desligar
        @ligado = false
        puts"O #{marca} desligou"
    end

end

class Carro < Veiculo
    def dirigir
        if @ligado == true
            puts"#{marca} esta ligado dirigindo"
        else
            puts"#{marca} não ligado não pode dirigir"
        end
    end
end

class Moto < Veiculo
    def pilotar
        if @ligado == true
            puts"#{marca} esta ligado pode dirigir"
        else
            puts"#{marca} não ligado não pode dirigir"
        end
    end
end


uno = Carro.new("Uno")
uno.dirigir
uno.ligar
uno.dirigir
