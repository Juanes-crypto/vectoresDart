/**
 * Realizar un algoritmo que genere los números pares de 2 a 200, 
 * llenar un vector con ellos y mostrar el vector.
 */
void main(){
  List<int> numero = [];
  for (int i = 2; i < 201; i++) {//si lo inicio en 0 me los muestra desde cero
    if (i % 2 == 0) {//son desde el dos y no desde el cero
      numero.add(i);
    }
  }
  print(numero);
}