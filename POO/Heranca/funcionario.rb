class Funcionario
  
  attr_reader :nome
  attr_reader :salario_base

    def initialize(nome, salario_base)
      @nome = nome
      @salario_base = salario_base          
    end

    def calcular_pagamento_mensal
            return @salario_base
    end
end

class Gerente < Funcionario 
    def initialize(nome, salario_base, bonus_anual)
            super(nome,salario_base)
            @bonus_anual = bonus_anual
    end
    
    def calcular_pagamento_mensal
        pagamento_base = super()
        bonus_mensal =  @bonus_anual / 12.0
       
        return pagamento_base + bonus_mensal
    end
end

class Programador < Funcionario
  def programar
        puts"Programando..."
  end
end

func = Funcionario.new("Davi", 1000)
prog = Programador.new("Vitor",2000)
gere =  Gerente.new("Kawane", 10000, 20000)

puts"Pagamento de Davi #{func.calcular_pagamento_mensal}"
puts"Pagamento de Vitor #{prog.calcular_pagamento_mensal}"
puts"Pagamento de Kawane #{format('%.2f',gere.calcular_pagamento_mensal)}"