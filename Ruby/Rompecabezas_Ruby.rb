#Cree un arreglo con los siguientes valores 3,5,1,2,7,9,8,13,25,32. Muestre la suma de todos los números del arreglo. 
#Haz que la función también devuelva un arreglo que incluya solo los números que sean mayores a 10 
#(ejemplo: cuando pasas el arreglo anterior, debe devolver un arreglo con los valores de 13, 25, 32 - Pista: utilice los métodos reject o find_all. 

def sumaArreglo(array)
    puts array.sum
    puts (array.reject { |numeros| numeros < 10 }).to_s
end
sumaArreglo([3, 5, 1, 2, 7, 9, 8, 13, 25, 32]);

#Cree un arreglo con los siguientes valores: John, KB, Oliver, Cory, Matthew, Christopher. Mezcla el arreglo y muestre el nombre de cada persona.
# Haz que el programa devuelva un arreglo con los nombres que tengan una longitud mayor a 5 caracteres. 

def nombresMayor5(array)
    mayor5= []
    array.shuffle!
    array.each do |valor|
        puts valor.to_s.to_s
        mayor5.push(valor) if valor.length > 5
    end
    puts mayor5
end

array = ["John","KB", "Oliver", "Cory", "Matthew", "Christopher"]
nombresMayor5(array);

# Cree un arreglo que contenga las 26 letras del alfabeto (este arreglo tiene que tener 26 valores). 
#Mézclalo y muestre la primera y la última letra del arreglo. Si la primera letra del arreglo es una vocal, haz que muestre un mensaje.  

array = ["a", "b", "c","d","e", "f", "g", "h", "i", "j", "k", "l","m", "n", "ñ", "o", "p", "q", "r", "s", "t", "u", "v","w","x", "y", "z"]
def mixAlfabeto(array)
    puts array.shuffle!
    puts array.first
    puts array.last
        if (mixAlfabeto[0] == 'a' || mixAlfabeto[0] == 'e' || mixAlfabeto[0] =='i' || mixAlfabeto[0] == 'o' || mixAlfabeto[0] == 'u')
        puts "Es vocal"
    end
end
mixAlfabeto(array)


#Genere un arreglo con 10 números aleatorios entre 55 - 100.  
#Genere un arreglo con 10 números aleatorios entre 55 - 100 y haz que esté en orden (el número más pequeño en la primera posición). 
#Muestre todos los números del arreglo. Por último, muestre el valor mínimo y el valor máximo del arreglo.

def numerosAleatorios()
    array=[]
    10.times do
        num = rand(55..100)
        array.push(num)
    end
    array.sort!

    puts "Array generado: #{array}"
    puts "Número mínimo: #{array.min}"
    puts "Número máximo: #{array.max}"
end

numerosAleatorios 

#Genere una cadena aleatoria de 5 caracteres. (Pista (65+rand(26)).chr devuelve un caracter aleatorio).  
#Genere un arreglo con 10 cadenas aleatorias de 5 caracteres cada una.

def cadenaAleatoria()
    cadena=""
    5.times do
        cadena += (65+rand(26)).chr
    end

    return cadena
end

def generaCadena(num_cadenas)
    array=[]
    num_cadenas.times do
        array.push(cadenaAleatoria)
    end
    p "Cadena aleatoria #{array}"
end

generaCadena (1)
generaCadena (10)