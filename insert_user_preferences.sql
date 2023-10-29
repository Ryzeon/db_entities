CREATE PROCEDURE UPSAddUserPreference @user_id INT,
                                      @preference_id INT
AS
BEGIN
    IF EXISTS (SELECT * FROM user_preferences WHERE user_id = @user_id AND preference_id = @preference_id)
        BEGIN
            print ('Error: This preference is already in user preferences')
        END
    ELSE
        BEGIN
            IF EXISTS (SELECT * FROM preferences WHERE id = @preference_id)
                BEGIN
                    IF EXISTS (SELECT * FROM users WHERE id = @user_id)
                        BEGIN
                            INSERT INTO user_preferences (user_id, preference_id)
                            VALUES (@user_id, @preference_id)
                        END
                    ELSE
                        BEGIN
                            print ('Error: This user does not exist')
                        END
                END
            ELSE
                BEGIN
                    print ('Error: This preference does not exist')
                END
        END
END
GO

EXEC UPSAddUserPreference 1, 1
EXEC UPSAddUserPreference 1, 2
EXEC UPSAddUserPreference 1, 3
EXEC UPSAddUserPreference 2, 4
EXEC UPSAddUserPreference 2, 5
EXEC UPSAddUserPreference 2, 6
EXEC UPSAddUserPreference 3, 10
EXEC UPSAddUserPreference 3, 1
EXEC UPSAddUserPreference 3, 2
EXEC UPSAddUserPreference 3, 3
EXEC UPSAddUserPreference 4, 4
EXEC UPSAddUserPreference 4, 5
EXEC UPSAddUserPreference 4, 6
EXEC UPSAddUserPreference 4, 10
EXEC UPSAddUserPreference 5, 1
EXEC UPSAddUserPreference 5, 2
EXEC UPSAddUserPreference 5, 3
EXEC UPSAddUserPreference 5, 4
EXEC UPSAddUserPreference 5, 9
EXEC UPSAddUserPreference 5, 10
EXEC UPSAddUserPreference 6, 1
EXEC UPSAddUserPreference 6, 2
EXEC UPSAddUserPreference 6, 3
EXEC UPSAddUserPreference 6, 4
EXEC UPSAddUserPreference 6, 5
EXEC UPSAddUserPreference 7, 1
EXEC UPSAddUserPreference 7, 10
EXEC UPSAddUserPreference 8, 1
EXEC UPSAddUserPreference 8, 2
EXEC UPSAddUserPreference 8, 3
EXEC UPSAddUserPreference 8, 8
EXEC UPSAddUserPreference 9, 4
EXEC UPSAddUserPreference 9, 5
EXEC UPSAddUserPreference 10, 5