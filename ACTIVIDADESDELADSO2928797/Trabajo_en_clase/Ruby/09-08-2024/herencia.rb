class Padre
    # estatic en ruby es self.
    def self.prueba
        puts "Hola"
    end
end

class Hijo < Padre
end

Padre.prueba
