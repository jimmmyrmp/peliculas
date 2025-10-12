

USE renta_video
GO

--Mostrar Categoria + Nombre de la pelicula

SELECT
	c.Categorias AS Categoria,
	p.Nombre AS Pelicula
FROM dbo.peliculas AS p
INNER JOIN dbo.categorias AS c
	ON p.CodC = c.CodC
ORDER BY c.Categorias, p.Nombre;

--Mostrar Categoria + Tipo + Nombre de la Pelicula

SELECT
	c.Categorias AS Categoria,
	t.Nombre_Tipo AS Tipo,
	p.Nombre AS Pelicula
FROM dbo.peliculas AS p
INNER JOIN dbo.categorias AS c
	ON p.CodC = c.CodC
INNER JOIN dbo.tipos AS t
	ON p.CodT = t.CodT
ORDER BY c.Categorias, t.Nombre_Tipo, p.Nombre;

--Extra: Mostrar Peliculas que comienzen con A

SELECT
	c.Categorias AS Categoria,
	t.Nombre_Tipo AS Tipo,
	p.Nombre AS Pelicula
FROM dbo.peliculas AS p
INNER JOIN dbo.categorias AS c
	ON p.CodC = c.CodC
INNER JOIN dbo.tipos AS t
	ON p.CodT = t.CodT
WHERE p.Nombre LIKE 'A%'
ORDER BY c.Categorias, t.Nombre_Tipo, p.Nombre;