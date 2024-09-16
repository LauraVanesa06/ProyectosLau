# imprime los elementos de nuestro array.
array = [1, "Pedro", true, false, "Juan"]

array.each do |element|
  puts element
end

#Si necesitamos el índice de cada elemento podemos utilizar el método each_with_index en vez de each:

#array = [1, "Pedro", true, false, "Juan"]

array.each_with_index do |element, index|
  puts "#{index}: #{element}"
end

#Es posible reemplazar el valor de cualquier elemento del arreglo. Por ejemplo:


#array = [1, "Pedro", true, false, "Juan"]

array[1] = "Germán" 
array.each do |element|
    puts element
end 

puts "Otro caso"
#Tanto el método push como el operador << nos permiten agregar un elemento al final de la lista y para agregar un elemento en otra posición usamos el método insert:
array2 = ["Pedro"]
array2.push("Germán")
array2 << "Diana" 
array2.insert(1, "Juan")
#array = ["Pedro", "Juan", "Germán", "Diana"]
#El método insert recibe 2 argumentos: la posición en la que se quiere insertar el elemento y el valor del nuevo elemento. Todos los elementos desde esa posición se mueven a la derecha.
#Para eliminar elementos de un arreglo utiliza delete_at:

array2.delete_at(1) 
array2.each do |element|
    puts element
end 

