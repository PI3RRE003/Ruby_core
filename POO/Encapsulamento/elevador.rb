class Elevador

    attr_reader :capacidade_maxima
    attr_reader :numero_andares
    attr_reader :pessoas_atuais
    attr_reader :andar_atual

    def initialize(capacidade_maxima, andar_maximo)
        @capacidade_maxima = capacidade_maxima
        @andar_maximo = andar_maximo
        
        @pessoas_atuais = 0
        @andar_atual = 0 
    end

    def embarcar(num_pessoas)
        if num_pessoas <= 0
            puts"Quantidade de pessoas inválidas"
            return
        end

        if (@pessoas_atuais + num_pessoas) > @capacidade_maxima
            puts"Capacidade excedida"
            return
        end
        
        

        @pessoas_atuais += num_pessoas
        puts"Embarcando no elevador #{num_pessoas} Pessoas"
    end

    def desembarcar(num_pessoas)
        if num_pessoas <= 0
            puts"Quantidade de pessoas inválidas"
            return
        end

        if @pessoas_atuais < num_pessoas
            puts"Desembarque atual maior que a quantidade de pessoas no elevador"
            return
        end

        @pessoas_atuais -= num_pessoas
        puts"#{num_pessoas} pessoa desembarcando, quantidade restante no elevador #{@pessoas_atuais}"
    end
    
    def ir_para_o_andar(andar)
        if andar < 0 || andar > @andar_maximo
            puts"Andar não existe, predio contem apenas #{@andar_maximo} andares"
            return
        end

        if andar == @andar_atual
            puts"Você já está no andar"
            return
        end

        @andar_atual = andar
        puts"Movendo para o andar #{andar}, andar atual #{@andar_atual}"
    end


end

elevador = Elevador.new(8, 10)
elevador.embarcar(7)
elevador.ir_para_o_andar(11)
elevador.desembarcar(1)