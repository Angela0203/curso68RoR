class Usuario
    attr_accessor :nombre , apellido #getters and setters (obtener y setear)
    #attr_reader :apellido #getter (muestra)(attr = atributo)
    #attr_writer :apellido #setter (obtiene)
end

=begin
    # setters, asigna el valor a un atributo
    def nombre = (valor)
        @nombre = valor
    end

    #getters, retorna valor de un atributo (propiedad o caracteristica de un elemento)
    def nombre
        return @nombre
    end

    def apellido = (valor)
        @apellido = valor
    end

    def calcular_sueldo (hora)
    end

    def descuento
    end

end
=end

#instancia de una clase 
usuario1 = Usuario.new #crear variable que es de tipo usuario
usuario2 = Usuario.new
#usuario1 == usuairo2 # =>false
#llamando un metodo de la clase
usuario1.nombre = "Matz" # llamando el metodo nombre, pero aun no esta definido, por eso si lo definimos ahi, es un error.

puts usuario1
puts usuario2

#usuario1.calcular_sueldo(10)
#usuario1.descuento 

# el papa es la clase y el hijo es el objeto
# metodo o funcion es lo mismo
# un metodo puede tener muchos atributos dentro
