/**
 * Llenar un vector con los 10 primeros múltiplos de 3 
 * y luego sume los elementos del vector.
Mostrar la suma de los elementos.
 */

void main() {
  List<int> numeros = List.filled(10, 0);
  int cantidad = 0;
  int posicion = -1;
  for (int i = 3; i < 31; i+= 3) {
    posicion++;
    numeros[posicion] = i;
    cantidad += i;
  }
  print(numeros);
  print(cantidad);
}