CREATE PROCEDURE UPSAddFavorite @user_id INT,
                                @event_id INT
AS
BEGIN
    IF EXISTS (SELECT * FROM favorites WHERE user_id = @user_id AND event_id = @event_id)
        BEGIN
            print ('Error: This event is already in user favorites')
        END
    ELSE
        BEGIN
            IF EXISTS (SELECT * FROM events WHERE id = @event_id)
                BEGIN
                    IF EXISTS (SELECT * FROM users WHERE id = @user_id)
                        BEGIN
                            INSERT INTO favorites (user_id, event_id)
                            VALUES (@user_id, @event_id)
                        END
                    ELSE
                        BEGIN
                            print ('Error: This user does not exist')
                        END
                END
            ELSE
                BEGIN
                    print ('Error: This event does not exist')
                END
        END
END
GO

--  Test
EXEC UPSAddFavorite 1, 5
EXEC UPSAddFavorite 1, 22
EXEC UPSAddFavorite 1, 4
EXEC UPSAddFavorite 2, 5
EXEC UPSAddFavorite 2, 1
EXEC UPSAddFavorite 2, 6
EXEC UPSAddFavorite 3, 7
EXEC UPSAddFavorite 3, 8
EXEC UPSAddFavorite 4, 9
EXEC UPSAddFavorite 4, 3
EXEC UPSAddFavorite 4, 2
EXEC UPSAddFavorite 5, 4
EXEC UPSAddFavorite 5, 7
EXEC UPSAddFavorite 5, 1
EXEC UPSAddFavorite 6, 2
EXEC UPSAddFavorite 6, 8
EXEC UPSAddFavorite 7, 8
EXEC UPSAddFavorite 8, 5
EXEC UPSAddFavorite 9, 2
EXEC UPSAddFavorite 10, 1

