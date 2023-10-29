CREATE DATABASE nearplaces;
GO

USE nearplaces;
GO

CREATE TABLE categories
(
    id   int         NOT NULL,
    name varchar(50) NOT NULL,
    PRIMARY KEY (id)
);
GO

CREATE TABLE events
(
    id          int          NOT NULL,
    name        varchar(50)  NULL,
    description varchar(max) NOT NULL,
    date        date         NOT NULL,
    time        time         NOT NULL,
    location_id int          NOT NULL,
    category_id int          NOT NULL,
    cost        decimal      NOT NULL,
    ticket_link varchar(100)  NOT NULL,
    PRIMARY KEY (id)
);
GO

CREATE TABLE favorites
(
    user_id  int NOT NULL,
    event_id int NOT NULL,
    PRIMARY KEY (user_id, event_id)
);
GO

CREATE TABLE feedbacks
(
    user_id    INT,
    event_id   INT,
    comment    varchar(max),
    rating     INT,
    issue_date DATE,
    PRIMARY KEY (user_id, event_id)
);
GO

CREATE TABLE groups
(
    id          int          NOT NULL,
    name        varchar(100)  NOT NULL,
    description     varchar(max),
    PRIMARY KEY (id)
);
GO

CREATE TABLE locations
(
    id            int          NOT NULL,
    location_name varchar(50)  NOT NULL,
    address       varchar(100) NOT NULL,
    city          varchar(30)  NOT NULL,
    region        varchar(30)  NOT NULL,
    PRIMARY KEY (id)
);
GO

CREATE TABLE notifications
(
    id    int         NOT NULL,
    type  varchar(10) NOT NULL,
    state bit         NOT NULL,
    PRIMARY KEY (id)
);
GO

CREATE TABLE preferences
(
    id   int          NOT NULL,
    name varchar(100) NOT NULL,
    PRIMARY KEY (id)
);
GO

CREATE TABLE user_feebacks
(
    user_id  int NOT NULL,
    event_id int NOT NULL,
    PRIMARY KEY (user_id, event_id)
);
GO

CREATE TABLE user_preferences
(
    user_id       int NOT NULL,
    preference_id int NOT NULL,
    PRIMARY KEY (user_id, preference_id)
);
GO

CREATE TABLE users
(
    id              int         NOT NULL,
    name            varchar(50) NOT NULL,
    password        varchar(50) NOT NULL,
    age             int         NOT NULL,
    gender          varchar(2)  NOT NULL,
    notification_id int         NOT NULL,
    PRIMARY KEY (id)
);
GO

CREATE TABLE users_groups
(
    user_id  int NOT NULL,
    group_id int NOT NULL,
    PRIMARY KEY (user_id, group_id)
);
GO

ALTER TABLE events
    ADD CONSTRAINT FK_locations_TO_events
        FOREIGN KEY (location_id)
            REFERENCES locations (id);
GO

ALTER TABLE events
    ADD CONSTRAINT FK_categories_TO_events
        FOREIGN KEY (category_id)
            REFERENCES categories (id);
GO

ALTER TABLE users
    ADD CONSTRAINT FK_notifications_TO_users
        FOREIGN KEY (notification_id)
            REFERENCES notifications (id);
GO

ALTER TABLE favorites
    ADD CONSTRAINT FK_users_TO_favorites
        FOREIGN KEY (user_id)
            REFERENCES users (id);
GO

ALTER TABLE favorites
    ADD CONSTRAINT FK_events_TO_favorites
        FOREIGN KEY (event_id)
            REFERENCES events (id);
GO
          
ALTER TABLE user_feebacks
    ADD CONSTRAINT FK_users_TO_user_feedbacks
        FOREIGN KEY (user_id)
            REFERENCES users (id);
GO

ALTER TABLE user_feebacks
    ADD CONSTRAINT FK_events_TO_user_feedbacks
        FOREIGN KEY (event_id)
            REFERENCES events (id);
GO

ALTER TABLE users_groups
    ADD CONSTRAINT FK_users_TO_users_groups
        FOREIGN KEY (user_id)
            REFERENCES users (id);
GO

ALTER TABLE users_groups
    ADD CONSTRAINT FK_groups_TO_users_groups
        FOREIGN KEY (group_id)
            REFERENCES groups (id);
GO

ALTER TABLE user_preferences
    ADD CONSTRAINT FK_users_TO_user_preferences
        FOREIGN KEY (user_id)
            REFERENCES users (id);
GO

ALTER TABLE user_preferences
    ADD CONSTRAINT FK_preferences_TO_user_preferences
        FOREIGN KEY (preference_id)
            REFERENCES preferences (id);
GO