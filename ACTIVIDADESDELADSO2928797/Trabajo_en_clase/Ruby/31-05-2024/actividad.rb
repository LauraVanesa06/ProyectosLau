puts "Ingrese la cantidad de estudiantes: "

num_estudiantes = gets.chomp.to_i

for i in 1..num_estudiantes
    puts "Ingrese el nombre del estudiante #{i}:"
    nombre = gets.chomp

    puts "Ingrese la primera nota de #{nombre}: "
    n1 = gets.chomp.to_i

    puts "Ingrese la segunda nota de #{nombre}: "
    n2 = gets.chomp.to_i 

    puts "Ingrese la tercera nota de #{nombre}: "
    n3 = gets.chomp.to_i
    
    if n1 >= 1 && n1 <=10 && n2 >= 1 && n2 <=10 && n3 >= 1 && n3 <=10

        suma = n1 + n2 + n3
        promedio = suma / 3 

        puts "El estudiante #{nombre} tuvo un promedio de #{promedio} por ende: "

        if promedio > 6 
            puts "Aprovó este curso con exito. "
        else
            puts "Es insuficiente para aprovar."
        end 

    elsif

        puts "Ha ingresado el valor de una nota mal, ingrese una nota entre 1 y 10. "
    
    end

end