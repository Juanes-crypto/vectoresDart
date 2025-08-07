import 'dart:io';

/**
 * Crear 2 vectores de "N" posiciones cada uno. 
 * Con el resultado de la multiplicación de
elemento por elemento entre cada vector, formar otro arreglo; 
muestre posteriormente, los
elementos del vector resultante.
 */
 void main(){
  List<int> vector1 = [];
  List<int> vector2 = [];
  List<int> vectorResultante = [];
  int temporal = 0;
  stdout.write("digite un numero, este numero sera el tamaño de dos vectores: ");
  int tamano = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < tamano; i++) {
    stdout.write("digite un valor para la posicion ${i +1} del primer vector: ");
    int numero = int.parse(stdin.readLineSync()!);
    vector1.add(numero);
  }
  for (int i = 0; i < tamano; i++) {
    stdout.write("digite un valor para la posicion ${i +1} del segundo vector: ");
    int numero = int.parse(stdin.readLineSync()!);
    vector2.add(numero);
  }
  for (int i = 0; i < tamano; i++) {
    temporal = (vector2[i] * vector1[i]); 
    vectorResultante.add(temporal);
 }
 print("vector 1: $vector1");
 print("vector 2: $vector2");
 print("Con esos dos vectores y los resultados puestos, has creado este nuevo vector: $vectorResultante");
}