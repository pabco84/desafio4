module Habilidades
    module Volador
        def volar
            'Estoy volandooooo!'
        end

        def aterrizar
            'Estoy cansado de volar, voy a aterrizar'
        end
    end

    module Nadador
        def nadar
            'Estoy nadando!'
        end

        def sumergir
            'glu glub glub glu'
        end
    end
    
    module Caminante
        def caminar
            'Puedo caminar!'
        end
    end
end

module Alimentacion
    module Herbivoro
        def comer
            'Puedo comer plantas!'
        end
    end 
    module Omnivoro
        def comer
            'Puedo comer lo que sea!'
        end
    end
    module Carnivoro
        def comer
            'Puedo comer carne!'
        end
    end
end

class Animal
    attr_reader :name
    def initialize(name)
        @name = name
    end
end

class Insecto < Animal
    include Habilidades
    include Alimentacion
end

class Mamifero < Animal
    include Habilidades
    include Alimentacion
end

class Ave < Animal
    include Habilidades
    include Alimentacion
end

class Pingüino < Ave
    include Nadador
    include Caminante
    include Carnivoro
end

class Pato < Ave
    include Nadador
    include Volador
    include Caminante
    include Omnivoro
end

class Paloma < Ave
    include Volador
    include Caminante
    include Omnivoro
end

class Perro < Mamifero
    include Caminante
    include Nadador
    include Carnivoro 
end

class Gato < Mamifero
    include Caminante
    include Carnivoro 
end

class Vaca < Mamifero
    include Caminante
    include Herbivoro
end

class Abeja < Insecto
    include Volador
    include Caminante
    include Herbivoro
end

class Mosca < Insecto
    include Volador
    include Caminante
    include Omnivoro
end

class Mariposa < Insecto
    include Volador
    include Caminante
    include Herbivoro
end

x = Pingüino.new('juanito')
y = Pato.new('pedro')

# pp x.nadar
# pp x.caminar
pp y.nadar
pp y.caminar
pp y.volar
pp y.comer
pp y.sumergir