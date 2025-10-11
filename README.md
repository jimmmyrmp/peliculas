Descripción del Proyecto

Este proyecto consiste en la creación e implementación de una base de datos para un sistema de renta de videos, desarrollado como parte del Desafío 3 de la Experiencia de Aprendizaje 4.
Información General

    Asignatura: Base de Datos

    Desafío: 3 (15% de la calificación)

    Modalidad: Trabajo en grupos de 5 personas

    Fecha de entrega: 12 de octubre 2025

    Tiempo estimado: 5 días

Estructura de la Base de Datos
Archivos SQL Incluidos:

    01_create_tables.sql - Script de creación de la base de datos y tablas

    02_insert_data.sql - Script de inserción de datos en las tablas

Esquema de la Base de Datos

La base de datos "renta_video" contiene las siguientes tablas:
Tablas Principales:

    categorias - Tipos de categorías de películas (10 categorías)

    tipos - Formatos de video (DVD, VHS, CASSETTE)

    clientes - Información de clientes registrados (10 clientes)

    peliculas - Catálogo de películas disponibles (16 películas)

    rentas - Registro de transacciones de renta (15 rentas)

Requisitos Técnicos Implementados
1. Configuración de la Base de Datos

    Nombre: renta_video

    Archivo físico: Tamaño inicial 10MB, máximo 20MB, crecimiento 10%

    Archivo lógico: Tamaño inicial 9MB, máximo 15MB, crecimiento 5MB

2. Restricciones y Validaciones

    CHECK constraint en la tabla "tipos" para permitir solo: 'DVD', 'VHS', 'CASSETTE'

    Llaves primarias y foráneas correctamente definidas

    Integridad referencial entre tablas relacionadas

Consultas Solicitadas
Consultas Básicas:

    Clientes mayores de 25 años ordenados por edad descendente

    Clientes entre 18 y 26 años

    Categorías excluyendo "Suspenso" y "Drama"

    Clientes con mora en pagos

    Clientes afiliados entre abril y junio de 2008

    Top 3 películas con más existencias

    Actualizar categoría "Juegos" a "Games"

    Modificar fecha y disponibilidad de "Ace Ventura"

    Películas que comienzan con "A"

    Eliminar rentas de Pedro Arias Rivas Cisneros

Consultas con JOIN:

    Categoría y nombre de película

    Categoría, tipo y nombre de película

Entregables Requeridos

    Video explicativo subido a YouTube

    Script SQL con la URL del video

    Código fuente de la base de datos

Notas Importantes

    Los scripts proporcionados ya implementan la estructura completa de la base de datos

    Los datos de ejemplo están incluidos para pruebas y demostraciones

    Se deben verificar las relaciones entre tablas antes de ejecutar consultas complejas

Como Ejecutar

    Ejecutar "01_create_tables.sql" para crear la estructura

    Ejecutar "02_insert_data.sql" para poblar las tablas

    Verificar que todas las tablas y relaciones se crearon correctamente
