CREATE PROCEDURE UPSInsertLocations @id int, @location_name varchar(50), @address varchar(50), @city varchar(50),
                                    @region varchar(50)
AS
BEGIN
    IF EXISTS (SELECT * FROM locations WHERE id = @id)
        BEGIN
            PRINT 'Error: Location already exists';
        END
    ELSE
        BEGIN
            IF LEN(@location_name) > 0 AND LEN(@address) > 0 AND LEN(@city) > 0 AND LEN(@region) > 0
                BEGIN
                    IF EXISTS (SELECT * FROM locations WHERE location_name = @location_name)
                        BEGIN
                            PRINT 'Error: Location name already exists';
                        END
                    ELSE
                        BEGIN
                            INSERT INTO locations (id, location_name, address, city, region)
                            VALUES (@id, @location_name, @address, @city, @region);
                        END
                END
            ELSE
                BEGIN
                    PRINT 'Error: Location name cannot be empty';
                END
        END
END;
GO

EXEC UPSInsertLocations 1, 'The Westin Lima Hotel & Convention Center', 'C. Las Begonias 450', 'Lima', 'San Isidro';
EXEC UPSInsertLocations 2, 'Casa Andina Premium Miraflores', 'Av. La Paz 463', 'Lima', 'Miraflores';
EXEC UPSInsertLocations 3, 'Jockey Club', 'La Victoria 15018', 'Lima', 'La Victoria';
EXEC UPSInsertLocations 4, 'Jazz Zone', 'Av. la Paz 656,', 'Lima', 'Miraflores';
EXEC UPSInsertLocations 5, 'Centro Cultural Deportivo Lima', 'Av Alameda Sur 1530', 'Lima', 'Chorrillos';
EXEC UPSInsertLocations 6, 'C.C. Festiva', 'Av. Alfonso Ugarte 1439', 'Lima', 'Lima';
EXEC UPSInsertLocations 7, 'Galería ICPNA Miraflores', 'Av. Angamos Oeste 120', 'Lima', 'Miraflores';
EXEC UPSInsertLocations 8, 'Lima Polo Club', 'Av Lima Polo 395-315', 'Lima', 'Surco';
EXEC UPSInsertLocations 9, 'Anfiteatro del Parque de la Exposición', 'Av. P.º de la República 6', 'Lima', 'La Victoria';
EXEC UPSInsertLocations 10, 'Auditorio Colegio Santa Ursula', 'Av. Santo Toribio 150', 'Lima', 'San Isidro';
GO
