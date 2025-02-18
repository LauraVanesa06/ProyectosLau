class Person
    atr_accesor :nombre, :dir

    def guardar
        conexion sql
    end
end

persona = Person.new
persona.nombre = "Luis"
persona.dir = "cread"
persona.guardar



