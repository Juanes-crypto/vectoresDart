//Leer 5 números, crear un vector con ellos y luego mostrar el vector.
import 'dart:io';

void main(){
  List<int> numeros = [0,0,0,0,0];
  for (var i = 0; i < numeros.length; i++) {
    stdout.write("digite un numero: ");
    int? num = int.parse(stdin.readLineSync()!);
    numeros[i] = num;
  }
  print("lista de numeros: [$numeros]");
}