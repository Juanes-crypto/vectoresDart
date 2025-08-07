/**
 * Se tiene un vector de 365 elementos, cada elemento corresponde a la estación para ese
día (V ‐ Verano, I‐ Invierno, O ‐ Otoño, P ‐ Primavera). Calcular el número de días de verano
durante el año.
 */

void main() {
  // Ejemplo de vector de estaciones (puedes cambiarlo por datos reales)
  List<String> estaciones = List.filled(365, 'V'); // Todos los días son verano

  int diasVerano = 0;
  for (var estacion in estaciones) {
    if (estacion == 'V') {
      diasVerano++;
    }
  }

  print('Número de días de verano: $diasVerano');
}