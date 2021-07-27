hash = {:nombre => "Coding", :apellido => "Dojo", :edad => "30"}


#Método delete(:clave)
hash.delete(:edad)

puts hash

#Método .empty?
puts hash.empty?

#Método .has_key?(:clave)
puts hash.has_key?(:apellido)

#Método .has_value?(valor)
puts hash.has_value?("Dojo")