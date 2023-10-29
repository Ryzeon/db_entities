CREATE PROCEDURE UPSInsertUsers @id int, @name varchar(50), @password varchar(50), @age int, @gender varchar(1),
                                @notification_id int
AS
BEGIN
    IF EXISTS(SELECT * FROM users WHERE id = @id)
        BEGIN
            print ('Error: User already exists')
        END
    ELSE
        BEGIN
            IF LEN(@name) > 0
                BEGIN
                    IF LEN(@name) < 0
                        BEGIN
                            PRINT ('Error: Name cannot be empty')
                        END
                    ELSE
                        BEGIN
                            IF LEN(@password) < 8
                                BEGIN
                                    PRINT ('Error: Password must be more than 8 characters')
                                END
                            ELSE
                                BEGIN
                                    IF @gender = 'M' or @gender = 'F'
                                        BEGIN
                                            INSERT INTO users (id, name, password, age, gender, notification_id)
                                            VALUES (@id, @name, @password, @age, @gender, @notification_id)
                                        END
                                    ELSE
                                        BEGIN
                                           PRINT('Error: Gender must be M or F')
                                        END
                                END
                        END
                END
        END
END
GO

EXEC UPSInsertUsers 1, 'Juan Perez', '123456', 25, 'M', 1
EXEC UPSInsertUsers 2, 'Maria Lopez', '123456', 34, 'F', 2
EXEC UPSInsertUsers 3, 'Pedro Rodriguez', '123456', 50, 'M', 3
EXEC UPSInsertUsers 4, 'Ana Garcia', '123456', 18, 'F', 1
EXEC UPSInsertUsers 5, 'Carlos Sanchez', '123456', 25, 'M', 2
EXEC UPSInsertUsers 6, 'Luisa Torres', '123456', 25, 'F', 3
EXEC UPSInsertUsers 7, 'Jose Ramirez', '123456', 20, 'M', 1
EXEC UPSInsertUsers 8, 'Sofia Diaz', '123456', 33, 'F', 2
EXEC UPSInsertUsers 9, 'Jorge Perez', '123456', 25, 'M', 3
EXEC UPSInsertUsers 10, 'Mariana Lopez', '123456', 21, 'F', 1