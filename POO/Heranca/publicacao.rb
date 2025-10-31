class Publicacao
  
  attr_reader :titulo
  attr_reader :conteudo

    def initialize(titulo, conteudo)
            @titulo = titulo
            @conteudo = conteudo
    end

    def exibir
        puts @titulo.upcase
        puts"--------"
        puts @conteudo
        puts"\n"
    end
end

class PublicacaoPatrocinada < Publicacao
  def initialize(titulo,conteudo)
        super(titulo, conteudo)
  end
  def exibir
        puts"----- PATROCINADO -----"
        super()
  end     
end

post_normal = Publicacao.new("Aprendendo ruby","POO é legal")
post_patrocinado = PublicacaoPatrocinada.new("Compre já","É incrivel")

puts"----- POST NORMAL -----"
post_normal.exibir

puts"----- POST PATROCINADO ------"
post_patrocinado.exibir