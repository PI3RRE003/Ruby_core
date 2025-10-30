class Dado

    attr_reader :numero_guardado

    def initialize
        @numero_guardado = rand(1..6)
    end

end

dado_1 = Dado.new
puts"#{dado_1.numero_guardado}"

