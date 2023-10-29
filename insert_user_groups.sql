CREATE PROCEDURE UPSAddUserToGroup @user_id INT,
                                   @group_id INT
AS
BEGIN
    IF EXISTS (SELECT * FROM users_groups WHERE user_id = @user_id AND group_id = @group_id)
        BEGIN
            print ('Error: This user is already in this group')
        END
    ELSE
        BEGIN
            IF EXISTS (SELECT * FROM groups WHERE id = @group_id)
                BEGIN
                    IF EXISTS (SELECT * FROM users WHERE id = @user_id)
                        BEGIN
                            INSERT INTO users_groups (user_id, group_id)
                            VALUES (@user_id, @group_id)
                        END
                    ELSE
                        BEGIN
                            print ('Error: This user does not exist')
                        END
                END
            ELSE
                BEGIN
                    print ('Error: This group does not exist')
                END
        END
END
GO

--  Test
EXEC UPSAddUserToGroup 1, 1
EXEC UPSAddUserToGroup 2, 1
EXEC UPSAddUserToGroup 3, 1
EXEC UPSAddUserToGroup 4, 1
EXEC UPSAddUserToGroup 7, 1
EXEC UPSAddUserToGroup 8, 1
EXEC UPSAddUserToGroup 9, 1
EXEC UPSAddUserToGroup 10, 1
EXEC UPSAddUserToGroup 1, 2
EXEC UPSAddUserToGroup 2, 2
EXEC UPSAddUserToGroup 3, 2
EXEC UPSAddUserToGroup 4, 2
EXEC UPSAddUserToGroup 9, 2
EXEC UPSAddUserToGroup 10, 2
EXEC UPSAddUserToGroup 4, 3
EXEC UPSAddUserToGroup 5, 3
EXEC UPSAddUserToGroup 6, 3
EXEC UPSAddUserToGroup 7, 3
EXEC UPSAddUserToGroup 8, 3
EXEC UPSAddUserToGroup 9, 3
EXEC UPSAddUserToGroup 10, 3
EXEC UPSAddUserToGroup 1, 4
EXEC UPSAddUserToGroup 2, 4
EXEC UPSAddUserToGroup 4, 4
EXEC UPSAddUserToGroup 5, 4
EXEC UPSAddUserToGroup 6, 4
EXEC UPSAddUserToGroup 7, 4
EXEC UPSAddUserToGroup 8, 4
EXEC UPSAddUserToGroup 9, 4
EXEC UPSAddUserToGroup 10, 4
EXEC UPSAddUserToGroup 1, 5
EXEC UPSAddUserToGroup 2, 5
EXEC UPSAddUserToGroup 3, 5
EXEC UPSAddUserToGroup 5, 5
EXEC UPSAddUserToGroup 6, 5
EXEC UPSAddUserToGroup 7, 5
EXEC UPSAddUserToGroup 8, 5
EXEC UPSAddUserToGroup 9, 5
EXEC UPSAddUserToGroup 10, 5
EXEC UPSAddUserToGroup 1, 6
EXEC UPSAddUserToGroup 2, 6
EXEC UPSAddUserToGroup 7, 6
EXEC UPSAddUserToGroup 8, 6
EXEC UPSAddUserToGroup 9, 6
EXEC UPSAddUserToGroup 10, 6
EXEC UPSAddUserToGroup 1, 7
EXEC UPSAddUserToGroup 2, 7
EXEC UPSAddUserToGroup 7, 7
EXEC UPSAddUserToGroup 8, 7
EXEC UPSAddUserToGroup 9, 7
EXEC UPSAddUserToGroup 10, 7
