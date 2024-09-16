puts "Ingrese el número de personas que participarán: "

num_personas = gets.chomp.to_i

personas = []
num_personas.times do

  puts "Ingrese el nombre de la persona: "
  personas << gets.chomp 

end

puts "La persona seleccionada es #{personas.sample}"