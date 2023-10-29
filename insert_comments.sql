CREATE PROCEDURE UPSAddComment @user_id int, @event_id int, @comment varchar(100), @rating int, @issue_date date
AS
    IF EXISTS (SELECT *
               FROM users
               WHERE id = @user_id) AND EXISTS (SELECT *
                                                FROM events
                                                WHERE id = @event_id)
        BEGIN
            IF EXISTS (SELECT *
                       FROM user_feebacks
                       WHERE user_id = @user_id
                         AND event_id = @event_id)
                BEGIN
                    print('Error: User already commented this event')
                END
            ELSE
                BEGIN
                    INSERT INTO feedbacks (user_id, event_id, comment, rating, issue_date)
                    VALUES (@user_id, @event_id, @comment, @rating, @issue_date)
                    INSERT INTO user_feebacks (user_id, event_id)
                    VALUES (@user_id, @event_id)
                END
        END
    ELSE
        BEGIN
            PRINT 'Error: User or event does not exist'
        END
GO

EXEC UPSAddComment 1, 1, 'Comentario 1', 5, '2023-10-28'
EXEC UPSAddComment 2, 2, 'Comentario 2', 4, '2023-10-28'
EXEC UPSAddComment 3, 3, 'Comentario 3', 3, '2023-10-28'
EXEC UPSAddComment 4, 4, 'Comentario 4', 4, '2023-10-28'
EXEC UPSAddComment 5, 5, 'Comentario 5', 5, '2023-10-28'
EXEC UPSAddComment 6, 6, 'Comentario 6', 4, '2023-10-28'
EXEC UPSAddComment 7, 7, 'Comentario 7', 3, '2023-10-28'
EXEC UPSAddComment 8, 8, 'Comentario 8', 4, '2023-10-28'
EXEC UPSAddComment 9, 9, 'Comentario 9', 5, '2023-10-28'
EXEC UPSAddComment 10, 10, 'Comentario 10', 4, '2023-10-28'