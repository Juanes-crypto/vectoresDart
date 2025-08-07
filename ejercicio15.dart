/**
 * Se tiene un vector de 125 elementos con valores numéricos, realice lo siguiente:
‐ Hallar y mostrar el valor promedio del vector.
‐ Leer un valor x y buscar en que posición del vector se encuentra.
‐ Llene un vector con los elementos de las posiciones impares.
‐ Busque cuántos elementos del vector son múltiplos de 3 y positivos.
 */

import 'dart:io';

void main() {
  // Ejemplo de vector con 125 elementos
  List<int> vector = List.generate(125, (i) => i - 62); // valores de -62 a 62

  // 1. Hallar y mostrar el valor promedio del vector
  double promedio = vector.reduce((a, b) => a + b) / vector.length;
  print('Promedio del vector: $promedio');

  // 2. Leer un valor x y buscar en qué posición del vector se encuentra
  stdout.write('Ingrese el valor x a buscar: ');
  int x = int.parse(stdin.readLineSync()!);
  int posicion = vector.indexOf(x);
  if (posicion != -1) {
    print('El valor $x se encuentra en la posición $posicion');
  } else {
    print('El valor $x no se encuentra en el vector');
  }

  // 3. Llenar un vector con los elementos de las posiciones impares
  List<int> impares = [];
  for (int i = 1; i < vector.length; i += 2) {
    impares.add(vector[i]);
  }
  print('Elementos en posiciones impares: $impares');

  // 4. Buscar cuántos elementos del vector son múltiplos de 3 y positivos
  int contadorMultiplos3Positivos = 0;
  for (var num in vector) {
    if (num > 0 && num % 3 == 0) {
      contadorMultiplos3Positivos++;
    }
  }
  print('Cantidad de elementos múltiplos de 3 y positivos: $contadorMultiplos3Positivos');
}