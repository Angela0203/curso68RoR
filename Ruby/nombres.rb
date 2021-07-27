=begin Cree un método Ruby que revise cada nombre en el arreglo de nombres y muestre algo como lo siguiente.
a = {nombre: "Michael", apellido: "Choi"}
b = {nombre: "John", apellido: "Doe"}
c = {nombre: "Jane", apellido: "Doe"}
d = {nombre: "James", apellido: "Smith"}
e = {nombre: "Jennifer", apellido: "Smith"}
nombres = [a, b, c, d, e]
=end
def mostrarNombres array
    array.each do |hash|
        puts "El nombre es '#{hash[:nombre]} #{hash[:apellido]}'"
    end
end

a = {nombre: "Michael", apellido: "Choi"}
b = {nombre: "John", apellido: "Doe"}
c = {nombre: "Jane", apellido: "Doe"}
d = {nombre: "James", apellido: "Smith"}
e = {nombre: "Jennifer", apellido: "Smith"}
nombres = [a, b, c, d, e]

mostrarNombres(nombres)