import 'dart:io';

/**
 * De los 50 elementos de un vector, muestre cuántos son:
 * pares, impares, negativos y positivos.
 */
void main(){
    List<int> numeros = [];
    int positivos = 0;
    int negativos = 0;
    int par = 0;
    int impar = 0;
    for (int i = 0; i < 51; i++) {
      stdout.write("Digite un numero (puede ser negativo o psitivo):");
      int numero = int.parse(stdin.readLineSync()!);
      numeros.add(numero);
      if (numero < 0){
        numero % 2 == 0 ? par++ : negativos++;
        numero % 2 != 0 ? impar++ : negativos++;
      } else if(numero > 0){
        numero % 2 == 0 ? par++ : positivos++;
        numero % 2 != 0 ? impar++ : positivos++;
      }
    }
    print("cantidad de numeros positivos: $positivos");
    print("cantidad de numeros negativos: $negativos");
    print("cantidad de numeros pares: $par");
    print("cantidad de numeros impares: $impar");
}