/**
 * Elabore un algoritmo que lea un vector de N elementos. Si el número de elementos es par
intercambiar el elemento i‐ésimo por el elemento i‐ésimo+1. Mostrar el vector final. Si el
número de elementos es impar, indicarlo en un mensaje que no es posible hacer el
intercambio y forzar al usuario hasta que digite un número de elementos par.
 */

import 'dart:io';

void main() {
  int n;
  do {
    stdout.write('Ingrese la cantidad de elementos (par): ');
    n = int.parse(stdin.readLineSync()!);
    if (n % 2 != 0) {
      print('No es posible hacer el intercambio. Ingrese un número par.');
    }
  } while (n % 2 != 0);

  List<int> vector = [];
  for (int i = 0; i < n; i++) {
    stdout.write('Elemento ${i + 1}: ');
    vector.add(int.parse(stdin.readLineSync()!));
  }

  // Intercambiar elementos i y i+1
  for (int i = 0; i < n; i += 2) {
    int temp = vector[i];
    vector[i] = vector[i + 1];
    vector[i + 1] = temp;
  }

  print('Vector final: $vector');
}