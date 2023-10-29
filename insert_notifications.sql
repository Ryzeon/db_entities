CREATE PROCEDURE UPSInsertNotifications @id int, @type varchar(50), @state bit
AS
BEGIN
    IF EXISTS (SELECT * FROM notifications WHERE id = @id)
        BEGIN
            PRINT 'Error: Notification already exists';
        END
    ELSE
        BEGIN
            IF LEN(@type) > 0
                BEGIN
                    IF EXISTS (SELECT * FROM notifications WHERE type = @type)
                        BEGIN
                            PRINT 'Error: Notification type already exists';
                        END
                    ELSE
                        IF @state = 0 OR @state = 1
                            BEGIN
                                INSERT INTO notifications (id, type, state)
                                VALUES (@id, @type, @state);
                            END
                        ELSE
                            BEGIN
                                PRINT 'Error: Notification state must be a boolean';
                            END
                END
            ELSE
                BEGIN
                    PRINT 'Error: Notification type cannot be empty';
                END
        END
END;
GO

EXEC UPSInsertNotifications 1, 'SMS', 1;
EXEC UPSInsertNotifications 2, 'PHONE', 1;
EXEC UPSInsertNotifications 3, 'WHATSAPP', 1;