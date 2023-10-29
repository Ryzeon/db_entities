-- Triggers
CREATE TRIGGER TRIEvent ON events
FOR INSERT
AS
    BEGIN
        print('A new event was inserted')
    END

GO

CREATE TRIGGER TRIEventDelete ON events
FOR DELETE
AS
    BEGIN
        print('An event was deleted')
    END
GO

CREATE TRIGGER TRILocation ON locations
FOR INSERT
AS
    BEGIN
        print('A new location was inserted')
    END
GO

CREATE TRIGGER TRIEventFeedback ON user_feebacks
FOR INSERT
AS
    BEGIN
        print('A new feedback was inserted')
    END
GO

CREATE TRIGGER TRINotificationUpdate ON notifications
FOR UPDATE
AS
    BEGIN
        print('A notification was updated')
    END
GO