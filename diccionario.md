# Diccionario de datos

> Explica cada columna de tu muestra para que otra persona la entienda sin preguntarte. Si no sabes algo, escribe **PENDIENTE:** y qué te falta confirmar.

- **Archivo:** (https://github.com/giseth18-dotcom/analisis-de-datos/blob/main/datos/originales/Bases%20de%20Datos%20General.csv)
- **Fuente y fecha de descarga: MinCIT, Extranjeros no residentes. datos.gov.co/d/7wm8-w5ad. Descargado el 17 de noviembre 
- **Cada fila es: la cantidad de extranjeros no residentes que llegaron a Medellín desde un país de residencia en un mes de un año.
- **Filas en la muestra:** 
- **Campo que identifica cada fila (clave):

16037 filas con año + mes + país de residencia

## Columnas

Copia este bloque una vez por columna. Hoy, mínimo tres.

### nombre_de_la_columna: a_o
- Qué significa: año en que los extranjeros llegaron a Medellín
- Tipo: número
- Unidad o formato: AAAA 
- Valores válidos: de 2015 a 2026 (2026 solo de enero a junio)
- Si está vacía, significa: no hay filas vacías

### nombre_de_la_columna: mes
- Qué significa: mes de ingreso a Medellín
- Tipo: Texto
- Unidad o formato: abreviatura de 3 letras
- Valores válidos: Ene, Feb, Mar, Abr, May, Jun, Jul, Ago, Sep, Oct, Nov, Dic
- Si está vacía, significa: no hay filas vacías

### nombre_de_la_columna:paisoeeresidencia
- Qué significa: Lugar al que llega desde el país de origen
- Tipo: Texto
- Unidad o formato: Texto
- Valores válidos: nombres de países, como Estados Unidos o México
- Si está vacía, significa:no hay vacías, pero 6 filas dicen «Sin Especificar»

### nombre_de_la_columna:cant_extranjeros_no_residentes
- Qué significa: número de extrajeros por país que llegan a Medellín
- Tipo: Número
- Unidad o formato: Número
- Valores válidos: números enteros de 1 a 40.247
- Si está vacía, significa: no hay filas vacías (comprobado en Colab)
