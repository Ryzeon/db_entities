CREATE PROCEDURE UPSInsertCategories @id int, @name varchar(50)
AS
BEGIN
    IF EXISTS (SELECT * FROM events WHERE id = @id)
        BEGIN
            PRINT 'Error: Event already exists';
        END
    ELSE
        BEGIN
            IF LEN(@name) > 0
                BEGIN
                    IF EXISTS (SELECT * FROM events WHERE name = @name)
                        BEGIN
                            PRINT 'Error: Event name already exists';
                        END
                    ELSE
                        BEGIN
                            INSERT INTO events (id, name)
                            VALUES (@id, @name);
                        END
                END
            ELSE
                BEGIN
                    PRINT 'Error: Event name cannot be empty';
                END
        END
END;
GO

EXEC UPSInsertCategories 1, 'Fiesta';
EXEC UPSInsertCategories 2, 'Concierto';
EXEC UPSInsertCategories 3, 'Festival';
EXEC UPSInsertCategories 4, 'Teatro';
EXEC UPSInsertCategories 5, 'Cine';
EXEC UPSInsertCategories 6, 'Deporte';
EXEC UPSInsertCategories 7, 'Feria';
EXEC UPSInsertCategories 8, 'Conferencia';
EXEC UPSInsertCategories 9, 'Comedia';
EXEC UPSInsertCategories 10, 'Taller';
