class Termostato
    
    attr_reader :temperatura_padrao
    attr_reader :temperatura_maxima
    attr_reader :temperatura_minima
    
    def initialize(minima, maxima, padrao=21)
        @temperatura_atual = padrao
        @temperatura_maxima = maxima
        @temperatura_minima = minima

        puts "Termostato iniciado(Min:#{@temperatura_minima}°C, Max:#{@temperatura_maxima}°C)"
        puts "Temperatura atual: #{@temperatura_atual}°C"

    end

    def definir_temperatura(nova_temperatura)
        if temperatura_valida?(nova_temperatura)
            return
        end

        unless temperatura_valida?(nova_temperatura)
            puts "Error: Temperatura#{nova_temperatura}°C está fora da faixa permitida (#{@temperatura_minima} - #{@temperatura_maxima})"
        end

        @temperatura_atual = nova_temperatura
        puts "Temperatura ajustada para #{@temperatura_atual}"
    end

    private
    def temperatura_valida?(temperatura)
        if temperatura >= @temperatura_minima && temperatura <= @temperatura_maxima
            puts "Temperatura válida, ajustando para: #{temperatura}°C"
            return true
        else
            puts "Error: Temperatura#{nova_temperatura}°C está fora da faixa permitida (#{@temperatura_minima} - #{@temperatura_maxima})"
            return false
        end
    end
end

meu_quarto = Termostato.new(18, 26)

meu_quarto.definir_temperatura(24)
