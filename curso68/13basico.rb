#Bonificación: Intente utilizar la menor cantidad de líneas posible para cada pregunta.

#Mostrar 1-255
#Escriba un programa que muestre todos los números del 1 al 255.

for i in (i..255)
    puts i
end

(1..255)arreglo.each do|i| #debiese ser el mas rapido
puts i
end
i=1
num = 255
while i <= num do
    puts i
    i+= 1
end

1.upto (255){|i|print i," "}


#Mostrar números impares entre 1 y 255
#Escriba un programa que muestre todos los números impares del 1 al 255.

i=1
num = 255
while i <= num do
    puts if
    i+ = 2
end

(1..255).step(2) do |i|
    puts i
end

puts (1..255).find_all {|i|i%2 ==0}
#end

for i in 1..255
    if !(i%2 ==0)
        puts i
    end
end
    #puts (0..255).select { |elem| elem.odd? }

#Muestre la suma
#Escriba un programa que muestre los números del 0 al 255, pero esta vez, muestre también la suma de los números que se han mostrado hasta el momento. Por ejemplo, tu programa debe mostrar algo como esto:
suma =0;
for num in(0..255)
    suma+=num
    puts "Nuevo número: #{num} suma #{suma}"
end

for i in (1..255)
    
    x= 1..i
    puts i
    puts "Suma: #{x.sum}"
    
end

i=1
suma=0
while i<=255 do
    puts "Nuevo número: #{i} suma #{suma+=i}"
    i+=1
end

#Recorriendo un arreglo
#Dado un arreglo X, digamos [1, 3, 5, 7, 9, 13], escriba un programa que recorra cada elemento del arreglo y muestre su valor. Ser capaz de recorrer cada elemento de un arreglo es sumamente importante.

a = [1, 3, 5, 7, 9, 13]

for i in a
        puts i
end

x.each do |elemento|
    puts elemento
end

#Encontrar el máximo
#Escriba un programa (un conjunto de instrucciones) que tome cualquier arreglo y muestre el valor máximo del arreglo. Tu programa debe funcionar también con arreglos que tengan todos los números negativos (ejemplo [-3, -5, -7]), o incluso una combinación con números positivos, negativos y cero.

def encontrarMax arreglo #esto es una funcion
puts arreglo.max
end
encontrarMax [-3, -5, -7]

def encontrarMax arreglo #esto es una funcion
    yield arreglo.max
    end

encontrarMax ([-3, -5, -7]) {|i|puts "el maximo es: #{i}"}

def encontrarMax arreglo #esto es una funcion
    yield arreglo.sort !.last
    end
encontrarMax ([-3, -5, -7]){|i|puts "el maximo es: #{i}"}

#Promedio
#Escriba un programa que tome un arreglo y muestre el PROMEDIO de los valores del arreglo. Por ejemplo para el arreglo [2, 10, 3] tu programa debe mostrar un promedio de 5. De nuevo, asegúrate de crear un caso base y escribe las instrucciones para resolver este caso primero, luego ejecuta tus instrucciones para otros casos más complicados. Puedes utilizar la función length para esta actividad.

def getPromedio (arreglo)
    yield arreglo.sum / arreglo.size
end
getPromedio ([1,3,5]){|i| puts "el promedio es: #{i}" }

def prom(x)
    suma = 0
    x.each do |i|
        suma+=i
    end
    puts "el promedio es: #{suma/x.length}"
end

prom([1,3,5])

#Arreglo con números impares
#Escriba un programa que cree un arreglo "y" que contenga todos los números impares entre 1 y 255. Cuando el programa se complete, "y" debe tener los valores de [1, 3, 5, 7, ... 255].
y=[]
for i in 1..255
    if !(i%2 ==0)
        y.push(i)
    end
end

puts a.to_a.join(",")

puts (0..255).select { |elem| elem.odd? }

puts (1..255).find_all { |i| i % 2 != 0 }.to_s 

#Mayor que Y
#Escriba un programa que tome un arreglo y devuelva la cantidad de números que son mayores a un valor dado Y. Por ejemplo si el arreglo es [1, 3, 5, 7] y Y = 3, después de ejecutar tu programa debe mostrar 2 (debido a que hay 2 valores en el arreglo que son mayores a 3).

arreglo= [1, 3, 5, 7] 
y=3
puts [1,3,5,7].find_all {|i| i > y }.to_a.size #no es necesario el to.a (arreglo)

arreglo= [1, 3, 5, 7] 
y=3
mayores=[]

for i in arreglo

if i => Y
mayores.push(i)

end
end

#Elevar al cuadrado
#Dado un arreglo x, digamos [1, 5, 10, -2], cree un algoritmo (un conjunto e instrucciones) que multiplique cada valor en el arreglo por si mismo. Cuando el programa termine, el arreglo x debe tener valores que han sido elevados al cuadrado, es decir [1, 25, 100, 4].

x=[1, 5, 10, -2]
for i in x 
y=i*i
puts y
end

puts [1, 5, 10, -2].collect {|x|x*x}

#raiz cua x*x
puts [1, 5, 10, -2].collect { |x| (x*x) ** 0.5 }

#Eliminar números negativos
#Dado un arreglo x, digamos [1, 5, 10, -2], cree un algoritmo que reemplace cualquier número negativo con 0. Cuando el programa termine, x no debe tener valores negativos, es decir [1, 5, 10, 0].
def reemplazo(x)
    x.each_with_index do |elemento, indice|
        if elemento < 0
            x.delete(x[indice])
        end
    end
    puts x.to_s
end

reemplazo([1, 5, 10, -2])

#Max, Min, y Promedio
#Dado un arreglo x, digamos [1, 5, 10, -2], cree un algoritmo que devuelva un hash con el valor máximo, el valor mínimo y el promedio de los valores en el arreglo.

x= [1, 5, 10, -2]

numeros = {}

numeros["minimo"]= x.min
numeros["maximo"]= x.max
numeros["promedio"]= x.sum/x.size

puts numeros.to_s

#Cambiar los valores en el arreglo
#Dado un arreglo x, cree un algoritmo que cambie cada número del arreglo por el número que hay en la siguiente posición. Por ejemplo, dado el arreglo [1, 5, 10, 7, -2], cuando el programa termine, este arreglo debe ser [5, 10, 7, -2, 0].

arreglo = [1,5,10,7,-2]
arreglo.delete_at(0)
arreglo.push(0)
puts agreglo.to_s

x=[1, 5, 10, 7, -2]

a=[]
x.each_with_index do |data,i=1|  
    puts "valor de i #{i}"
    if i>0 
        a.push(data)
    end 
end

a.push(0)
puts a

(10..100).step(10) do |n|
    puts "n : #{n}"
end   

#Números a cadenas
#Escriba un programa que tome un arreglo de números y reemplace cualquier número negativo con la palabra "Dojo". Por ejemplo, dado el arreglo x = [-1, -3, 2], después que el programa haya terminado, ese arreglo debe ser ['Dojo', 'Dojo', 2].

