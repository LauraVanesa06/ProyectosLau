

import 'dart:io';


void main() {
    
    List<String?> numeros_i = [];
        String? ingreso_num = '';
        print('Ingrese el nombre de las personas a participar: ');
        
        while (ingreso_num != 'listo') {
              ingreso_num = stdin.readLineSync();

          if (ingreso_num != 'listo') {
             try {
        numeros_i.add((ingreso_num));
        } catch (e) {
       print('Por favor, ingrese un nombre o la palabra "listo" para obtener el resultado.');
      }
          }
         
        }
  print(numeros_i);

     
       
    
}

