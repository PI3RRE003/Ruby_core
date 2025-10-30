class Animal
    def respirar
        puts"Inspirando e Expirando"
    end
end

class Cachorro < Animal
    def latir
        puts"Au Au"
    end
end

zaya = Cachorro.new
zaya.respirar
zaya.latir