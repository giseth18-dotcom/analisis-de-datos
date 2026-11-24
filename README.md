# Nombre del proyecto

Equipo E6 · Análisis de Datos Básico · Estud-IA (Capa 2)

> **Cómo llenar este archivo:** borra «Escribe aquí» y responde debajo de cada pregunta. Si todavía no sabes algo, escribe **PENDIENTE:** y qué te falta confirmar. No inventes datos.

## Ficha del proyecto · versión 1

### 1. Usuario y decisión
> ¿Quién usará el resultado (una persona o un área) y qué va a decidir con él?

Mercadeo decide a qué países dirigir campañas y en qué meses lanzar promociones.

### 2. Pregunta principal
> Una sola pregunta que ayude a tomar esa decisión.

¿De qué países de residencia vienen los extranjeros que llegan a Medellín en las temporadas de vacaciones y eventos, y en qué se diferencian del resto del año?

Columnas con las que describimos el perfil del visitante: solo tres. paisoeeresidencia dice de dónde viene, y mes y a_o dicen cuándo llega. Las columnas departamento y ciudad siempre dicen Antioquia y Medellín, así que no sirven para diferenciar visitantes. La base no trae edad, sexo ni motivo del viaje.

### 3. Fuente de datos
> Enlace o nombre de la fuente. ¿Es pública o es una muestra de práctica inventada (sintética)? Si es inventada, dilo aquí.

1. https://github.com/giseth18-dotcom/analisis-de-datos/blob/main/datos/originales/Bases%20de%20Datos%20General.csv

Fuente: MinCIT · Extranjeros no residentes	Enlace: datos.gov.co/d/7wm8-w5ad

### 4. Qué representa una fila
> Completa la frase: «Cada fila es…». ¿Qué campo distingue una fila de otra?

La cantidad de extranjeros no residentes que llegaron a Medellín desde un país en un mes de un año. La distingue la combinación año + mes + país. Hay 16.037 filas y 6 columnas.

Una fila no es una persona. Es un país en un mes de un año, y cant_extranjeros_no_residentes dice cuántas personas llegaron.

Peso de la temporada alta: llegadas en los meses de temporada alta ÷ llegadas totales del año × 100.

Temporada alta: julio, agosto, noviembre y diciembre. Son los meses que superan el promedio en el índice de temporada de 2015 a 2025, sin contar 2020 y 2021 por la pandemia: diciembre 1,24, julio 1,18, agosto 1,13 y noviembre 1,10.
Temporada baja: septiembre y octubre.
Quién la define: el equipo, con el índice de temporada y el calendario de eventos de Medellín. Mercadeo del hostal la valida.
Ejemplo: en 2025 la temporada alta suma el 37,2 % de las llegadas del año. Si todos los meses pesaran igual, 4 meses serían el 33,3 %.

### 5. Periodo
> ¿Qué fechas cubren los datos?

De enero de 2015 a junio de 2026. El año 2026 está incompleto.

### 6. Cuatro indicadores
> Nombre de cada indicador y, si ya puedes, cómo se calcula (qué se divide entre qué).

1. Participación por país = llegadas del país ÷ llegadas totales × 100. Estados Unidos tiene el 34,8 %.
2. Índice de temporada del mes = llegadas del mes ÷ promedio mensual del año. Julio de 2025 da 1,20 y septiembre da 0,88.
3. Variación anual = (llegadas del año − año anterior) ÷ año anterior × 100. 2025 frente a 2024 da +9,1 %.
4. Peso de la temporada alta = llegadas en julio, agosto, diciembre y enero ÷ llegadas del año × 100. En 2025 da 37,3 %. Si todos los meses pesaran igual, esos 4 meses serían el 33,3 %, así que la temporada sí atrae más visitantes.

### 7. Fuera de alcance
> Lo que este proyecto NO va a responder.

Actividades, presupuesto, tiempo de estadía, edad, sexo, motivo del viaje y tipo de alojamiento. La base no trae esas columnas.

## Si alcanzas hoy (para el jueves es obligatorio)

### Dos comparaciones útiles
> Por ejemplo: por mes, por comuna, por categoría.

1. Por mes: cuántos visitantes llegan cada mes, usando el índice de temporada.
2. Por temporada: la temporada alta (julio, agosto, noviembre y diciembre) frente a la temporada baja (septiembre y octubre), y dentro de cada una, de qué países vienen.

### Tres riesgos de calidad
> ¿Qué podría venir mal en los datos? ¿Qué harías si la fuente falla?

1. Años incompletos o atípicos. 2026 llega solo hasta junio y 2020 cae casi a cero por la pandemia. Qué haré: comparar solo años completos y mostrar 2020 y 2021 aparte.
2. Filas mal clasificadas. Hay una fila con departamento «Sin Especificar» que repite a EE. UU. en mayo de 2015, 6 filas con país «Sin Especificar» y «San Martin» escrito de dos formas. Qué haré: anotarlo en la bitácora y corregirlo en una copia en datos/limpios/, sin tocar el original.
3. La base no mide justo lo que preguntamos, o la fuente desaparece. País de residencia no es nacionalidad, y no sabemos si se hospedaron en Medellín. Qué haré: hablar siempre de «país de residencia» y guardar la copia con su fecha y enlace.

### Mapa de preguntas
- ¿Qué pasó?
- ¿Dónde o cuándo es distinto?
- ¿Qué recomendaría y con qué límites?

## Archivos del proyecto

| Archivo o carpeta | Qué contiene |
|---|---|
| [diccionario.md](diccionario.md) | Qué significa cada columna de la muestra |
| [bitacora.md](bitacora.md) | Decisiones y por qué; uso de IA |
| `datos/originales/` | La muestra tal como se descargó (no se modifica) |
| `consultas/` | Consultas SQL comentadas (sesión 3) |
| `notebooks/` | Cuadernos de Colab (sesiones 3 a 5) |
| `tablero/` | Capturas y enlace del tablero (sesión 6) |

## Reglas del repositorio

- Es **público**: nada de datos personales (nombres, cédulas, teléfonos, correos, direcciones), contraseñas ni llaves.
- Lo que está en `datos/originales/` no se modifica: se guarda tal como se descargó.
- Cada commit dice en su mensaje **qué** se decidió y **por qué**.

---

Proyecto desarrollado en Estud-IA · Capa 2 · Análisis de Datos.
