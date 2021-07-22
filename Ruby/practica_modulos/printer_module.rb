module Printer #creamos modulos para crear acciones especifica
    def print_each_element
        for i in 0...self.length # va recorrer desde la posicion 0
            puts self[i] #va imprimir
        end
    end
end
#self definicion generica del elementro que voy a recibir, por lo que debo especificar si son string o inter, etc.