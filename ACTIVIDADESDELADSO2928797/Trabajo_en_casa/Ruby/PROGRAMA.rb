#Evalúate
# Define un arreglo con los siguientes elementos y almacénalo en una variable llamada arr: "Hola", "Mundo", 3, "veces".
arr = ["Hola", "Mundo", 3, "veces"];
puts " 
"
# Escribe un programa que recorra el arreglo que definiste en el punto anterior y muestre la frase: "El valor en la posición x es y" donde x es la posición (empezando en 0) y y el valor del elemento.
arr.each_with_index do |element, index|
    puts "El valor en la posicion #{index}: es  #{element}  " 
end
puts " 
"

#¿Cuáles son las dos formas de insertar un elemento en un arreglo?
array2 = ["Laura"]
array2.push("preciosa")
array2.insert(4, "y") 
array2 << "hermosa "
array2.insert(0, "Hola")
array2.each do |element|
puts element
end
puts " 
"
#¿Cómo se puede eliminar un elemento de una posición específica del arreglo?
array3 = ["wolAA", "gente", "del", "pueblo", "."]
array3.delete_at(4) 
array3.each do |element|
    puts element
end 

#¿Para qué sirve el método shuffle y cuál es la diferencia entre arr.shuffle y arr.shuffle!?
