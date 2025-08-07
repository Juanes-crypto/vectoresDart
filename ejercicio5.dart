/**
 * Leer un vector de N elementos numéricos enteros y posteriormente:
 * - Mostrar cuántas veces se repite el número 10.
 * - Sume los elementos de las posiciones pares.
 * - Muestre los elementos del vector empezando por el último elemento.
 */

import 'dart:io';

void main() {
  stdout.write('Ingrese la cantidad de elementos: ');
  int n = int.parse(stdin.readLineSync()!);

  List<int> vector = [];

  for (int i = 0; i < n; i++) {
    stdout.write('Elemento ${i + 1}: ');
    vector.add(int.parse(stdin.readLineSync()!));
  }

  // 1. Contar cuántas veces se repite el número 10
  int contador10 = vector.where((e) => e == 10).length;
  print('El número 10 se repite $contador10 veces.');

  // 2. Sumar los elementos de las posiciones pares (índices 0, 2, 4, ...)
  int sumaPares = 0;
  for (int i = 0; i < vector.length; i += 2) {
    sumaPares += vector[i];
  }
  print('La suma de los elementos en posiciones pares es: $sumaPares');

  // 3. Mostrar los elementos del vector empezando por el último
  print('Elementos del vector en orden inverso:');
  for (int i = vector.length - 1; i >= 0; i--) {
    print(vector[i]);
  }
}