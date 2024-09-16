puts "Ingrese la cantidad de aprendices de este ambiente"
CantApren = gets.chomp.to_i
for i in 1..CantApren

    puts "Ingrese el nombre del aprendíz #{i}"
    NomApren = gets.chomp

    cant = NomApren.length
    resta = cant - 1
    dso =  NomApren[resta, 3]
    
    puts "Su nombre tiene un total de #{cant} caracteres y los últimos dos son #{dso} " 

end

