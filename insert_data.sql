--  Insertando datos para la tabla

-- Aca se ingrega las locaciones
INSERT INTO locations (id, location_name, address, city, region)
VALUES (1, 'The Westin Lima Hotel & Convention Center', 'C. Las Begonias 450', 'Lima', 'San Isidro'),
       (2, 'Casa Andina Premium Miraflores', 'Av. La Paz 463', 'Lima', 'Miraflores'),
       (3, 'Jockey Club', 'La Victoria 15018', 'Lima', 'La Victoria'),
       (4, 'Jazz Zone', 'Av. la Paz 656,', 'Lima', 'Miraflores'),
       (5, 'Centro Cultural Deportivo Lima', 'Av Alameda Sur 1530', 'Lima', 'Chorrillos'),
       (6, 'C.C. Festiva', 'Av. Alfonso Ugarte 1439', 'Lima', 'Lima'),
       (7, 'Galería ICPNA Miraflores', 'Av. Angamos Oeste 120', 'Lima', 'Miraflores'),
       (8, 'Lima Polo Club', 'Av Lima Polo 395-315', 'Lima', 'Surco'),
       (9, 'Anfiteatro del Parque de la Exposición', 'Av. P.º de la República 6', 'Lima', 'La Victoria'),
       (10, 'Auditorio Colegio Santa Ursula', 'Av. Santo Toribio 150', 'Lima', 'San Isidro')
;

-- Aca se ingregan valores para la tabla de categorias de los eventos
INSERT INTO categories (id, name)
VALUES (1, 'Fiesta'),
       (2, 'Concierto'),
       (3, 'Festival'),
       (4, 'Teatro'),
       (5, 'Cine'),
       (6, 'Deporte'),
       (7, 'Feria'),
       (8, 'Conferencia'),
       (9, 'Comedia'),
       (10, 'Taller')

-- Aca ingresamos los eventos
INSERT INTO events (id, name, description, date, time, location_id, category_id, cost, ticket_link)
VALUES (1, 'Stand-Up Comedy Sessions',
        'Lo mejor de la comedia de stand-up está los sábados en el Jazz Zone. Presentamos lo mejor de nuestras canteras, los comediantes que están rompiéndola en los escenarios de Lima.',
        '2023-10-28', '19:30:00', 4, 9, 40,
        'https://www.joinnus.com/events/stand-up/lima-standup-comedy-sessions-57335'),
       (2, 'RED HALLOWEEN',
        'Este 31 de Octubre vuelve la fiesta de disfraces más grande del Perú "RED HALLOWEEN", en el Club Cultural Lima - Chorrillos.',
        '2023-10-31', '21:30:00', 5, 1, 80,
        'https://www.joinnus.com/events/festivales/lima-red-halloween-57575'),
       (3, 'LA FIESTA DEMENCIAL: LA MENTE + TOURISTA + OLAYA',
        '¡Se despertó el animal! LA MENTE vuelve después de 4 años, y lo hará junto a TOURISTA y los OLAYA SOUND SYSTEM para la más demencial fiesta de Halloween.',
        '2023-10-31', '18:00:00', 6, 1, 89,
        'https://www.joinnus.com/events/concerts/lima-la-fiesta-demencial-la-mente-tourista-olaya-57268'),
       (4, 'LA VIDA EN OTROS PLANETAS de Mariana de Althaus',
        'Teatro documental peruano',
        '2023-10-28', '20:00:00', 7, 4, 25,
        'https://www.joinnus.com/events/theater/lima-la-vida-en-otros-planetas-de-mariana-de-althaus-57993'),
       (5, 'Carne y Fuego - El Festival Parrillero',
        '¡Volvió el festival parrillero del Perú! Las brasas se van prendiendo para Carne y Fuego 2023, esta vez con más de 20 restaurantes. Sábado 4 de noviembre Lima Polo Club puerta 2',
        '2023-11-04', '12:00:00', 8, 7, 25,
        'https://www.joinnus.com/events/food-drinks/lima-carne-y-fuego-el-festival-parrillero-57952'),
       (6, 'Antología Sinfónico - Rumbo A Los 25 Años',
        '¡Vuelve la magia al Anfiteatro del Parque de la Exposición!  ¡Antología Sinfónico - Rumbo a los 25 años!    Después de una pausa vuelve el concierto sinfónico de Antología, con una puesta en escena de primera y un repertorio especial que recorren estos casi 25 años de trayectoria. Con invitados nacionales e internacionales como Mauricio Mesones, Karina Benites de Amaranta, Milena Warthon, Dorian Y Korian, Coti desde Argentina y más aún por anunciar que harán de esta noche del 04 de Noviembre una velada única e irrepetible.'
           , '2023-11-04', '20:00:00', 9, 2, 89,
        'https://www.joinnus.com/events/concerts/lima-antologia-sinfonico-rumbo-a-los-25-anos-56228'),
       (7, 'PLIM PLIM en Vivo - Una Aventura Musical',
        'PLIM PLIM en Vivo - Una Aventura Musical. Preventa hasta el 22/10.',
        '2023-11-05', '12:00:00', 10, 2, 49,
        'https://www.joinnus.com/events/kids/lima-plim-plim-en-vivo-una-aventura-musical-57723'),
       (8, 'Comic Convention LATINVERSE - Lima 2023',
        'El evento más grande de cultura pop de Lima regresa en su 5ta edición con grandes invitados, atracciones, shows en vivo y lleno de magia.',
        '2023-11-17', '12:00:00', 3, 7, 57,
        'https://www.joinnus.com/events/entertainment/lima-comic-convention-latinverse-lima-2023-54054'),
       (9, 'La ruta del huarike',
        'El chancho al palo del rancho de robertin \ La Caja china de juan talledo \ Carlos Ramirez y su chancho al palo de huaral',
        '2023-11-18', '12:00:00', 9, 7, 42,
        'https://teleticket.com.pe/rutadelhuarike'),
       (10, 'Fisher',
        'Fisher Lima Polo Club',
        '2023-11-24', '12:00:00', 8, 2, 100,
        'https://teleticket.com.pe/vastion-pres-fisher-2023')
;

-- Agregamos los tipos de notificaciones
INSERT INTO notifications (id, type, state)
VALUES (1, 'SMS', 1),
       (2, 'PHONE', 1),
       (3, 'WHATSAPP', 1)
;

-- Agregamos los usuarios
INSERT INTO users (id, name, password, age, gender, notification_id)
VALUES (1, 'Juan Perez', '123456', 25, 'M', 1),
       (2, 'Maria Lopez', '123456', 34, 'F', 2),
       (3, 'Pedro Rodriguez', '123456', 50, 'M', 3),
       (4, 'Ana Garcia', '123456', 18, 'F', 1),
       (5, 'Carlos Sanchez', '123456', 25, 'M', 2),
       (6, 'Luisa Torres', '123456', 25, 'F', 3),
       (7, 'Jose Ramirez', '123456', 20, 'M', 1),
       (8, 'Sofia Diaz', '123456', 33, 'F', 2),
       (9, 'Jorge Perez', '123456', 25, 'M', 3),
       (10, 'Mariana Lopez', '123456', 21, 'F', 1)

-- Agregamos los eventos que le gustan a los usuarios
INSERT INTO favorites (user_id, event_id)
VALUES (1, 7),
       (1, 8),
       (1, 9),
       (1, 10),
       (2, 1),
       (2, 2),
       (2, 3),
       (2, 4),
       (3, 5),
       (3, 6),
       (3, 7),
       (3, 8),
       (4, 9),
       (4, 10),
       (4, 1),
       (4, 2),
       (5, 3),
       (5, 4),
       (5, 5),
       (5, 6),
       (6, 7),
       (6, 8),
       (6, 9),
       (6, 10),
       (7, 1),
       (7, 2),
       (7, 3),
       (7, 4),
       (8, 5),
       (8, 6),
       (8, 7),
       (8, 8),
       (9, 9),
       (9, 10),
       (9, 1),
       (9, 2),
       (10, 3),
       (10, 4),
       (10, 5),
       (10, 6)

-- Aca creamos grupos
INSERT INTO groups (id, name, description)
VALUES (1, 'Grupo de Comedia', 'Grupo de personas que les gusta la comedia'),
       (2, 'Grupo de Teatro', 'Grupo de personas que les gusta el teatro'),
       (3, 'Grupo de Deporte', 'Grupo de personas que les gusta el deporte'),
       (4, 'Grupo de Musica', 'Grupo de personas que les gusta la musica'),
       (5, 'Grupo de Salsa', 'Grupo de personas que les gusta la salsa'),
       (6, 'Grupo de Campo', 'Grupo de personas que les gusta el campo'),
       (7, 'Grupo de Pet Friendly', 'Grupo de personas que les gusta los animales'),
       (8, 'Grupo de Aire Libre', 'Grupo de personas que les gusta el aire libre'),
       (9, 'Grupo de Playa', 'Grupo de personas que les gusta la playa'),
       (10, 'Grupo de Familiar', 'Grupo de personas que les gusta lo familiar')

-- Aca creamos los usuarios de los grupos
INSERT INTO users_groups (user_id, group_id)
VALUES (1, 1),
       (2, 1),
       (3, 1),
       (4, 1),
       (7, 1),
       (8, 1),
       (9, 1),
       (10, 1),
       (1, 2),
       (2, 2),
       (3, 2),
       (4, 2),
       (9, 2),
       (10, 2),
       (4, 3),
       (5, 3),
       (6, 3),
       (7, 3),
       (8, 3),
       (9, 3),
       (10, 3),
       (1, 4),
       (2, 4),
       (4, 4),
       (5, 4),
       (6, 4),
       (7, 4),
       (8, 4),
       (9, 4),
       (10, 4),
       (1, 5),
       (2, 5),
       (3, 5),
       (5, 5),
       (6, 5),
       (7, 5),
       (8, 5),
       (9, 5),
       (10, 5),
       (1, 6),
       (2, 6),
       (7, 6),
       (8, 6),
       (9, 6),
       (10, 6),
       (1, 7),
       (2, 7),
       (7, 7),
       (8, 7),
       (9, 7),
       (10, 7)
;

-- Aca se ingresa las prefencias de eventos
INSERT INTO preferences (id, name)
VALUES (1, 'Aire Libre'),
       (2, 'Playa'),
       (3, 'Teatro'),
       (4, 'Familiar'),
       (5, 'Deporte'),
       (6, 'Comunidad'),
       (7, 'Musica'),
       (8, 'Salsa'),
       (9, 'Campo'),
       (10, 'Pet Friendly')

-- Aca se ingresa las prefencias de los usuarios a los eventos
INSERT INTO user_preferences (user_id, preference_id)
VALUES (1, 1),
       (1, 2),
       (1, 3),
       (2, 4),
       (2, 5),
       (2, 6),
       (3, 10),
       (3, 1),
       (3, 2),
       (3, 3),
       (4, 4),
       (4, 5),
       (4, 6),
       (4, 10),
       (5, 1),
       (5, 2),
       (5, 3),
       (5, 4),
       (5, 9),
       (5, 10),
       (6, 1),
       (6, 2),
       (6, 3),
       (6, 4),
       (6, 5),
       (7, 1),
       (7, 10),
       (8, 1),
       (8, 2),
       (8, 3),
       (8, 8),
       (9, 4),
       (9, 5),
       (10, 5)
;

-- Aca se ingresa los comentarios del usuario hacia los eventos
-- Esos valores nos dan la llave compuesta del comentario
INSERT INTO user_feebacks(user_id, event_id)
VALUES (1, 1),
       (2, 2),
       (3, 3),
       (4, 4),
       (5, 5),
       (6, 6),
       (7, 7),
       (8, 8),
       (9, 9),
       (10, 10)

-- Aca se ingresan los feedbacks
-- El id es la llave compuesta del usuario y el evento
INSERT INTO feedbacks (user_id, event_id, comment, rating, issue_date)
VALUES
    (1, 1, 'Comentario 1', 5, '2023-10-28'),
    (2, 2, 'Comentario 2', 4, '2023-10-28'),
    (3, 3, 'Comentario 3', 3, '2023-10-28'),
    (4, 4, 'Comentario 4', 4, '2023-10-28'),
    (5, 5, 'Comentario 5', 5, '2023-10-28'),
    (6, 6, 'Comentario 6', 4, '2023-10-28'),
    (7, 7, 'Comentario 7', 3, '2023-10-28'),
    (8, 8, 'Comentario 8', 4, '2023-10-28'),
    (9, 9, 'Comentario 9', 5, '2023-10-28'),
    (10, 10, 'Comentario 10', 4, '2023-10-28');