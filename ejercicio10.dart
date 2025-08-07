/**
 * Cargar 2 vectores, uno con los códigos de los estudiantes que perdieron C, el segundo con los
códigos de los estudiantes que perdieron Java. Se pide crear otro arreglo formado por los
códigos de los estudiantes que perdieron ambas materias. Mostrar el arreglo resultante.
 */

void main() {
  List<String> perdieronC = ['001', '002', '003'];
  List<String> perdieronJava = ['001', '003', '005'];
  List<String> perdieronAmbas = [];

  for (int i = 0; i < perdieronJava.length; i++) {
    for (int j = 0; j < perdieronC.length; j++) {
      if (perdieronJava[i] == perdieronC[j]) {
        perdieronAmbas.add(perdieronJava[i]);
      }
    }
  }
  print(perdieronAmbas);
}