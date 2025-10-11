-- 1. Clientes con mora
SELECT c.DUI, c.Nombres, c.Apellidos, r.Mora
FROM clientes c
JOIN rentas r ON c.DUI = r.DUI
WHERE r.Mora > 0;

-- 2. Clientes afiliados abril–junio 2008
SELECT DUI, Nombres, Apellidos, Fecha_Afiliacion
FROM clientes
WHERE Fecha_Afiliacion BETWEEN '2008-04-01' AND '2008-06-30';

-- 3. Top 3 películas con más disponibles
SELECT Nombre, Disponible
FROM peliculas
ORDER BY Disponible DESC, nombre
OFFSET 0 ROWS FETCH NEXT 3 ROWS ONLY;
