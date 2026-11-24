-- Pregunta: ¿cuántas filas hay en los meses de temporada alta (Jul, Ago, Nov, Dic)?
-- Datos: datos/originales/Bases de Datos General.csv (16037 filas)
-- Cifra de control: 16037 en total, 5230 después del filtro
SELECT COUNT(*) AS filas_filtradas
FROM datos
WHERE mes IN ('Jul', 'Ago', 'Nov', 'Dic');
