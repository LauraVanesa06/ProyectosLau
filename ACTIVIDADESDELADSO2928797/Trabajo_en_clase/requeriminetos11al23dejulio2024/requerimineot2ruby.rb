puts "Ingrese la cantidad de aprendices de este ambiente"
CantApren = gets.chomp.to_i
for i in 1..CantApren

    puts "Ingrese el nombre del aprendíz #{i}"
    NomApren = gets.chomp
    Cant = NomApren.length;
    Acum = ""
        for k in Cant..1
            alreves =  NomApren[ k, 3]
            Acum = Acum + alreves
        end

    
   puts Acum 

end