puts "Ingrese su nombre completo, por favor: ";
nombre = gets.chomp 

puts "Ingrese el valor de la renta a pagar, por favor: ";
   valor_pagar = gets.chomp.to_f

   if valor_pagar >= 0 && valor_pagar <= 10

      descuento = valor_pagar * 0.2
      total = valor_pagar - descuento
      puts " Señor(a) #{nombre}, debido a su monto en la declaración de renta  se le ha dado un descuento del 20%."
      puts "El valor total es #{total} pesos"

    elsif valor_pagar >= 11 && valor_pagar <= 100

      descuento = valor_pagar * 0.1
      total = valor_pagar - descuento
      puts " Señor(a) #{nombre}, debido a su monto en la declaración de renta  se le ha dado un descuento del 10%."
      puts "El valor total es #{total} pesos"
     


    elsif valor_pagar >= 101 && valor_pagar <= 1000

      descuento = valor_pagar * 0.05
      total = valor_pagar - descuento
      puts " Señor(a) #{nombre}, debido a su monto en la declaración de renta  se le ha dado un descuento del 5%."
      puts "El valor total es #{total} pesos"
     

    elsif (valor_pagar > 1000) 

      descuento = valor_pagar * 0.01
      total = valor_pagar - descuento
      puts " Señor(a) #{nombre}, debido a su monto en la declaración de renta  se le ha dado un descuento del 1%."
      puts "El valor total es #{total} pesos"

    end


  