CREATE PROCEDURE UPSAddGroup @id int, @name varchar(50), @description varchar(max)
AS
BEGIN
    IF EXISTS (SELECT * FROM groups WHERE id = @id) or EXISTS (SELECT * FROM groups WHERE name = @name)
        BEGIN
            print ('Error: This group already exists')
        END
    ELSE
        BEGIN
            INSERT INTO groups (id, name, description)
            VALUES (@id, @name, @description)
        END
END
GO

--  Test
EXEC UPSAddGroup 1, 'Grupo de Comedia', 'Grupo de personas que les gusta la comedia'
EXEC UPSAddGroup 2, 'Grupo de Teatro', 'Grupo de personas que les gusta el teatro'
EXEC UPSAddGroup 3, 'Grupo de Deporte', 'Grupo de personas que les gusta el deporte'
EXEC UPSAddGroup 4, 'Grupo de Musica', 'Grupo de personas que les gusta la musica'
EXEC UPSAddGroup 5, 'Grupo de Salsa', 'Grupo de personas que les gusta la salsa'
EXEC UPSAddGroup 6, 'Grupo de Campo', 'Grupo de personas que les gusta el campo'
EXEC UPSAddGroup 7, 'Grupo de Pet Friendly', 'Grupo de personas que les gusta los animales'
EXEC UPSAddGroup 8, 'Grupo de Aire Libre', 'Grupo de personas que les gusta el aire libre'
EXEC UPSAddGroup 9, 'Grupo de Playa', 'Grupo de personas que les gusta la playa'
EXEC UPSAddGroup 10, 'Grupo de Familiar', 'Grupo de personas que les gusta lo familiar'
