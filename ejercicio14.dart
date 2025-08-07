/**
 * Teniendo un vector de 144 elementos numéricos enteros diferentes, realice lo siguiente:
‐ Buscar el elemento mayor y en qué posición lo encontró.
‐ Sumar los elementos almacenados en las posiciones pares y mostrar la suma.
‐ Buscar cuántos elementos del vector son mayores de 80 y menores de 120.
‐ Hallar cuántos elementos del vector son múltiplos de 7.
‐ Mostrar los elementos del vector de forma inversa.
 */

void main() {
  // Ejemplo de vector con 144 elementos diferentes
  List<int> vector = List.generate(144, (i) => i + 1);

  // 1. Buscar el elemento mayor y su posición
  int mayor = vector[0];
  int posicionMayor = 0;
  for (int i = 1; i < vector.length; i++) {
    if (vector[i] > mayor) {
      mayor = vector[i];
      posicionMayor = i;
    }
  }
  print('Elemento mayor: $mayor en la posición $posicionMayor');

  // 2. Sumar los elementos en posiciones pares (índices 0, 2, 4, ...)
  int sumaPares = 0;
  for (int i = 0; i < vector.length; i += 2) {
    sumaPares += vector[i];
  }
  print('Suma de elementos en posiciones pares: $sumaPares');

  // 3. Contar elementos mayores de 80 y menores de 120
  int contadorRango = 0;
  for (var num in vector) {
    if (num > 80 && num < 120) {
      contadorRango++;
    }
  }
  print('Cantidad de elementos >80 y <120: $contadorRango');

  // 4. Contar elementos múltiplos de 7
  int contadorMultiplos7 = 0;
  for (var num in vector) {
    if (num % 7 == 0) {
      contadorMultiplos7++;
    }
  }
  print('Cantidad de elementos múltiplos de 7: $contadorMultiplos7');

  // 5. Mostrar los elementos del vector de forma inversa
  print('Elementos en orden inverso:');
  for (int i = vector.length - 1; i >= 0; i--) {
    print(vector[i]);
  }
}