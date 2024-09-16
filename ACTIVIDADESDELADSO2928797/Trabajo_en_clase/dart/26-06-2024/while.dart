import 'dart:io';

void main() {
  int i = 0;
// mientras que (Valida la condición antes de entrar o ejecutar)
while (i < 850) {
  print ('Hola mundo');
  i = i + 1;
}

//Hasta que (se imprime primero y luego valida la condición para segir imprimiendo. )
int rec = int.parse(stdin.readLineSync()!);
do{
  String variable0 = stdin.readLineSync()!;
  print(variable0);
} while (rec < 100);


}