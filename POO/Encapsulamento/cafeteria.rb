class Cafeteria
    attr_reader :agua
    attr_reader :cafe

    def initialize
        @agua = 0
        @cafe = 0
    end

    def adicionar_agua(quantidade_ml)
        @agua += quantidade_ml
        puts "Adicionado a quantidade de #{quantidade_ml}ml de agua. Total:#{@agua}"
    end

    def adicionar_cafe(quantidade_gramas)
        @cafe += quantidade_gramas
        puts "Adicionado #{quantidade_gramas}g de café. Total:#{@cafe}g"
    end

    def fazer_cafe(tipo = "expresso")
        agua_necessaria = (tipo == "longo") ? 150 : 50
        cafe_necessario = 15
    
    unless tem_recurso_suficiente?(agua_necessaria,cafe_necessario)
        puts "Recursos Insuficientes. Adicione mais água ou café"
        return
    end
    
    

    gastar_recursos(agua_necessaria, cafe_necessario)
    
    puts "Aqui está seu café #{tipo}"
    end

    private
    def tem_recurso_suficiente?(agua_necessaria, cafe_necessario)
        if @agua >= agua_necessaria && @cafe >= cafe_necessario 
        end
    end

    def gastar_recursos(agua_gasta, cafe_gasto)
        @agua -= agua_gasta
        @cafe -= cafe_gasto
    end
end

cafeteria_de_kaw =  Cafeteria.new
#cafeteria_de_kaw.fazer_cafe programa vai falhar
cafeteria_de_kaw.adicionar_agua(200)
cafeteria_de_kaw.adicionar_cafe(20)
cafeteria_de_kaw.fazer_cafe("expresso")
