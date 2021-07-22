=begin
class Usuario
    attr_accessor :nombre, :apellido
    end
    kobe = Usuario.new #instancia de la clase
    puts Kobe.inspect
#kobe.nombre = "Kobe"
#kobe.apellido = "Bryant"
=end


    class User
        attr_accessor :first_name, :last_name
        def initialize(f_name, l_name)# metodo constructor, construyendo un objeto con parametros
            @first_name = f_name
            @last_name = l_name
    end
end
steph = User.new("Stephen", "Curry")We can do this now. #instancia de la clase
puts steph.inspect

#dos formas de inicializar una clase