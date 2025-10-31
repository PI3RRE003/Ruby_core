class Conta
    
    attr_reader :saldo
    
    def initialize(saldo)
      @saldo = saldo
    end

    def depositar(valor)
        @saldo += valor
        puts"Valor depositado R$#{valor}"
    end

    def saque(valor)
      if valor > @saldo 
        puts"Saque não pode ser maior que saldo em conta #{@saldo}"
        return
      elsif valor <= 0
        puts"Valor de saque não pode ser menor ou igual a zero"
        return
      else
        @saldo -= valor
        puts"Saque realizado com sucesso R$#{valor}, saldo atualizado R$#{@saldo}"
      end
    end
end

class ContaPoupanca < Conta
    def render_juros(taxa_percentual = 0.05)
        juros = saldo * (taxa_percentual / 100)
        @saldo += juros
        puts"Juros rendendo na conta R$#{juros}, saldo atual R$#{@saldo}"
    end

end

class ContaCorrente < Conta
    def initialize(saldo, limite_cheque)
      super(saldo)
      @limite_cheque
    end

    def saque(valor)
        if valor <= 0
            puts"Valor não pode ser menor ou igual a zero"
            return
        end

        saldo_total_disponivel = @saldo + @limite_cheque

        if valor <= saldo_total_disponivel
            @saldo -= valor
            puts"Saque realizado de R$#{valor} realizado do cheque especial"
            puts"Novo saldo R$#{@saldo}"
        else
          puts"Error: Limite total (R$#{saldo_total_disponivel})"
        end
    end
end