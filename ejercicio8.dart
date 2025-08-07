/**
 * Se tiene un vector con las notas de un grupo de 30 estudiantes. 
 * Hallar y mostrar la nota
más alta y la más baja, cuántas personas perdieron y 
la nota promedio del grupo.
 */
void main(){
  List<int> notas = [2,3,4,5,3,1,0];
  int alta = notas[0];
  int baja = notas[0]; 
  int perdieron = 0;
  int acumulador = 0;
  for (int i = 0; i < notas.length; i++) {
    baja = notas[i] < baja ? notas[i] : baja;
    alta = notas[i] > alta ? notas[i] : alta;
    if (notas[i] < 3.2) {
      perdieron++;
    }
    acumulador += notas[i];
  }
  print("La nota mas alta es: $alta");
  print("La nota mas baja es: $baja");
  print("Total de estudiantes que perdieron: $perdieron");
  print("El promedio total del grupo es: ${acumulador/notas.length}");
}