DROP DATABASE IF EXISTS libreria_casa; -- borra base de datos libreria_casa si existe
CREATE DATABASE libreria_casa;-- creamos base de datos libreria_casa
USE libreria_casa;
CREATE TABLE libros_casa (
	ISBN VARCHAR(20), 
	LibroId INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    Titulo VARCHAR(225) NOT NULL,
    Autor VARCHAR(225),
    Genero VARCHAR(225)
);

DESCRIBE Libros_casa;

INSERT INTO libros_casa (ISBN, LibroId, Titulo, Autor, Genero) VALUES
('00001', NULL, 'Don Quijote de la Mancha', 'Miguel de Cervantes', 'Novela'),
('00002', NULL, 'La Sombra del Viento', 'Carlos Ruiz Zafón', 'Novela'),
('00003', NULL, 'El Tiempo entre Costuras', 'Maria Dueñas', 'Ficción Histórica'),
('00004', NULL, 'Patria', 'Fernando Aramburu', 'Drama'),
('00005', NULL, 'La Reina Descalza', 'Ildefonso Falcones', 'Ficción Histórica'),
('00006', NULL, 'El Asedio', 'Arturo Pérez Reverte', 'Novela Histórica'),
('00007', NULL, 'Los Renglones Torcidos de Dios', 'Torcuato Luna de Tena', 'Misterio'),
('00008', NULL, 'El prisionero del cielo', 'Carlos Ruiz Zafón', 'Novela'),
('00009', NULL, 'El Laberinto de los Espíritus', 'Carlos Ruiz Zafón', 'Novela'),
('00010', NULL, 'Las Tres Bodas de Manolita', 'Almudena Grandes', 'Novela')
;

SELECT Titulo, Autor , Genero
FROM (
    SELECT 
        Titulo,
        Autor,
        Genero
    FROM libros_casa
) AS Subconsulta
WHERE Genero LIKE '%Novela%';
