/**
 * Lea un vector S de N elementos e inviértalo. Utilice otro Vector.
14 12 6 25 34 23 5
5 23 34 25 6 12 14
 */

void main() {
  List<int> numeros = [14, 12, 6, 25, 34, 23, 5];
  List<int> invertido = [];
  int posicion = numeros.length;
  for (int i = 0; i < numeros.length ; i++) {
    posicion--;
    invertido.add(numeros[posicion]);
  }
  print(numeros);
  print(invertido);
}