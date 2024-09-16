puts 'Ingrese la cantidad de códigos a generar'
cantcodigos = gets.chomp.to_i
i = 0
for i to cantcodigos..1
    dos = i  + 1

    puts 'Ingrese el nombre del usuario.'
    nom_usuario = gets.chomp

    puts 'Ingrese la placa del vehiculo usuario.'
    placa_usuario = gets.chomp

    puts 'Ingrese el municipio del usuario.'
    municipio = gets.chomp 
    
    muni = municipio[1, 3] ;
     nombre= nom_usuario[(municipio.length ) -1, 2] ;
    placa = placa_usuario[(placa_usuario.length) - 2, 3] ;
    codigo = muni  + nombre + placa;
    puts('su codigo es ' + codigo);

end     