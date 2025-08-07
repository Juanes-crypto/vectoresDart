import 'dart:io';

/**
 * En vector de 40 elementos numéricos llamado totales, se requiere
 *ir sumando y mostrando
cada elemento, siempre y cuando sea mayor al primer elemento y menor 
al elemento 25.
Finalmente, muestre el total de los elementos que fueron sumados.
 */
void main(){
  List<int> totales = [];
  int sumando = 0;
  for (int i = 0; i < 5; i++) {
     stdout.write("digite un numero para sumarlo: ");
     int numero = int.parse(stdin.readLineSync()!);
     totales.add(numero);
     sumando += numero;
     if (totales[i] > totales[0] && totales[i] < 25){
      print("Sumando $numero");
      print("la suma va en: $sumando");
     }
  }
  print(totales);
  print("el total de elementos sumados es de: $sumando");
} 