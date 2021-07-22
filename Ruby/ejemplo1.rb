
def saludar nombre1, nombre2
    if nombre1.empty? or nombre2.empty?
    return "¿Quién eres?"
    end
    # No ejecuta esta línea porque utilizamos return anteriormente
    "Hola, #{nombre1} y #{nombre2}"
end
puts saludar "", ""

