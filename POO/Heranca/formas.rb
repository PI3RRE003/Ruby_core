class Forma
  
  attr_reader :nome

    def initialize(nome)
        @nome = nome
    end

    def exibir_nome
        puts"Está forma é um #{@nome}"
    end
end

class Retangulo < Forma
    def initialize(largura, altura)
        super("Retangulo") #classe mãe
        @largura = largura
        @altura = altura
    end

    def calcular_area
        area = @largura * @altura
        puts"A area de #{@nome} é de #{area}"
    end
end

class Circulo
  def initialize(raio)
        super("Circulo")#classe mãe
        @raio = raio
  end
    def calcular_area(raio)
        area = Math::PI * (@raio**2)
        puts"A area do #{nome} é de #{area}"
    end
end

