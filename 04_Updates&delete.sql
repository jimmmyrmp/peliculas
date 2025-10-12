Modifique la fecha de ingreso a 13 de abril 2022 y la cantidad disponible a 10 de la película deACE Ventura(en una sola consulta)

UPDATE peliculas
SET fecha_ingreso = '2003-02-12', disponible = disponible + 5
WHERE codp = 'P001';

Elimine las rentas que realizó Pedro Arias Rivas Cisneros

DELETE FROM rentas 
WHERE DUI = '01900683-1';  -- Pedro Arias

--- Juegos to games:
UPDATE categorias
SET categorias = "Juegos"
WHERE CodC = "C006"