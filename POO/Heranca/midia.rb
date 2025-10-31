class Midia
    
    attr_reader :nome 
    attr_reader :preco 
    
    def initialize(nome, preco)
        @nome = nome
        @preco = preco
    end

    def exibir_detalhes
        puts"Nome:#{@nome}"
        puts"Preço: R$:#{format('%.2f', @preco)}"
    end

end

class Livro < Midia
  
    attr_reader :autor, :numero_paginas
  
    def initialize(titulo,preco, autor, numero_paginas)
        super(titulo, preco)
        @autor = autor
        @numero_paginas = numero_paginas
    end

    def exibir_detalhes
        puts"----- LIVRO -----"
        super()
        puts"Autor:#{@autor}"
        puts"Numero de paginas:#{@numero_paginas}"
    end
end

class Filme < Midia

    attr_reader :diretor, :duracao_em_minutos
  
    def initialize(titulo, preco, diretor,duracao_em_minutos)
        super(titulo,preco)
        @diretor = diretor
        @duracao_em_minutos = duracao_em_minutos
    end

    def exibir_detalhes
        puts"----- FILME -----"
        super()
        puts"Diretor:#{@diretor}"
        puts"Duração em minutos:#{@duracao_em_minutos}"
            
    end
end

livro = Livro.new("O Senhor dos Anéis", 59.90, "J.R.R. Tolkien", 1200)
filme = Filme.new("O Poderoso Chefão", 19.90, "Francis Ford Coppola", 175)

livro.exibir_detalhes
puts"\n"
filme.exibir_detalhes