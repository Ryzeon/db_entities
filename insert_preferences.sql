CREATE PROCEDURE UPSAddPreference @id INT,
                                  @name VARCHAR(50)
AS
BEGIN
    IF EXISTS (SELECT * FROM preferences WHERE id = @id OR name = @name)
        BEGIN
            print ('Error: This preference already exists')
        END
    ELSE
        BEGIN
            INSERT INTO preferences (id, name)
            VALUES (@id, @name)
        END
END
GO

--  Test

EXEC UPSAddPreference 1, 'Aire Libre'
EXEC UPSAddPreference 2, 'Playa'
EXEC UPSAddPreference 3, 'Teatro'
EXEC UPSAddPreference 4, 'Familiar'
EXEC UPSAddPreference 5, 'Deporte'
EXEC UPSAddPreference 6, 'Comunidad'
EXEC UPSAddPreference 7, 'Musica'
EXEC UPSAddPreference 8, 'Salsa'
EXEC UPSAddPreference 9, 'Campo'
EXEC UPSAddPreference 10, 'Pet Friendly'
