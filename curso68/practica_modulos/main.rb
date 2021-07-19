#es el que gatilla que se ejecute una accion, es el primero
require_relative 'printer_module'#nombre del archivo
class Array
    include Printer #modulo
end
class String
    include Printer#modulo
end
[1,2,3].print_each_element #metodo va tomar este arreglo, va a llamar al metodo, va a recibir (self) va sacar el tamaño y cada vez que lo recorra lo va imprimir.
"hola".print_each_element # metodo
