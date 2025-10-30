class Cofre
    def initialize(senha)
        @senha_correta = senha
        @estado_cofre = false 
    end

    def abrir(tentativa_senha)
        if senha_correta?(tentativa_senha)
            @estado_cofre = true
            puts("Cofre Aberto")
        else
            puts("Senha incorreta")
        end
    end

    def fechar 
        @estado_cofre = false
        puts("Cofre Fechado")
    end

    def ver_conteudo
        if @estado_cofre == true
            puts("Aqui estão seus diamantes")
        else
            puts("Você precisa abrir o cofre primeiro")
        end
    end

    private 
    def senha_correta?(tentativa)
        if tentativa == @senha_correta
            return true
        else
            return false
        end
    end

end

meu_cofre = Cofre.new("kaw123")

meu_cofre.abrir("kaw123")
meu_cofre.ver_conteudo
meu_cofre.fechar

