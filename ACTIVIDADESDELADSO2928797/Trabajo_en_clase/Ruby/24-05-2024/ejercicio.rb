puts "Ingrese su nombre, por favor: ";
n = gets.chomp;

puts "Ingrese su apellido, por favor: ";
ap = gets.chomp;

puts "Ingrese el primer valor, por favor:";
n1 = gets.chomp.to_i;

puts "Ingrese el segundo valor, por favor: ";
n2 = gets.chomp.to_i;

puts "Ingrese el tercer valor, por favor";
n3 = gets.chomp.to_i;

sum = n1 + n2 + n3;
prom = sum/3;

print "Señor(a) #{n} #{ap}, ";
print "su promedio es igual a: #{prom}"; 
