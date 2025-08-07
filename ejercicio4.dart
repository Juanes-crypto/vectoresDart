import 'dart:io';

/**
 * Crear un vector de 20 elementos con valores numéricos diferentes.
 *Hallar el mayor valor y su
posición y el valor promedio.
 */

void main(){
  List<int> numeros = List.filled(20, 0);
  int cantidad = 0;
  for (int i = 0; i < numeros.length; i++) {
    stdout.write("digite un numero: ");
    int numero = int.parse(stdin.readLineSync()!); 
    cantidad += numero;
    numeros[i] = numero;
  }
 int mayor = numeros[0];
 int posicion = 0;
  for (int i = 0; i < numeros.length; i++) {
    if (mayor < numeros[i]) {
      mayor = numeros[i];
      posicion = i;
    }
  }
  print(numeros);
  print("promedio: ${cantidad/20}");
  print("el numero mayor del array es: $mayor");
  print("el numero mayor esta en la posicion: $posicion");
}