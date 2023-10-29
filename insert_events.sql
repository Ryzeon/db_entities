CREATE PROCEDURE UPSInsertEvents @id int, @name varchar(50), @description varchar(100), @date date, @time time, @location_id int, @category_id int, @cost int, @ticket_link varchar(max)
AS
BEGIN
    IF EXISTS (SELECT * FROM events WHERE id = @id)
        BEGIN
            PRINT 'Error: Event already exists';
        END
    ELSE
        BEGIN
             IF EXISTS (SELECT * FROM locations WHERE id = @location_id)
                BEGIN
                    IF EXISTS (SELECT * FROM categories WHERE id = @category_id)
                        BEGIN
                            IF LEN(@name) > 0
                                BEGIN
                                    IF EXISTS (SELECT * FROM events WHERE name = @name)
                                        BEGIN
                                            PRINT 'Error: Event name already exists';
                                        END
                                    ELSE
                                        BEGIN
                                            INSERT INTO events (id, name, description, date, time, location_id, category_id, cost, ticket_link)
                                            VALUES (@id, @name, @description, @date, @time, @location_id, @category_id, @cost, @ticket_link);
                                        END
                                END
                            ELSE
                                BEGIN
                                    PRINT 'Error: Event name cannot be empty';
                                END
                        END
                    ELSE
                        BEGIN
                            PRINT 'Error: Category does not exist';
                        END
                END
            ELSE
                BEGIN
                    PRINT 'Error: Location does not exist';
                END
        END
END;
GO

EXEC UPSInsertEvents 1, 'Stand-Up Comedy Sessions',
        'Lo mejor de la comedia de stand-up está los sábados en el Jazz Zone. Presentamos lo mejor de nuestras canteras, los comediantes que están rompiéndola en los escenarios de Lima.',
        '2023-10-28', '19:30:00', 4, 9, 40,
        'https://www.joinnus.com/events/stand-up/lima-standup-comedy-sessions-57335';
EXEC UPSInsertEvents 2, 'RED HALLOWEEN',
        'Este 31 de Octubre vuelve la fiesta de disfraces más grande del Perú "RED HALLOWEEN", en el Club Cultural Lima - Chorrillos.',
        '2023-10-31', '21:30:00', 5, 1, 80,
        'https://www.joinnus.com/events/festivales/lima-red-halloween-57575';
EXEC UPSInsertEvents 3, 'LA FIESTA DEMENCIAL: LA MENTE + TOURISTA + OLAYA',
        '¡Se despertó el animal! LA MENTE vuelve después de 4 años, y lo hará junto a TOURISTA y los OLAYA SOUND SYSTEM para la más demencial fiesta de Halloween.',
        '2023-10-31', '18:00:00', 6, 1, 89,
        'https://www.joinnus.com/events/concerts/lima-la-fiesta-demencial-la-mente-tourista-olaya-57268';
EXEC UPSInsertEvents 4, 'LA VIDA EN OTROS PLANETAS de Mariana de Althaus',
        'Teatro documental peruano',
        '2023-10-28', '20:00:00', 7, 4, 25,
        'https://www.joinnus.com/events/theater/lima-la-vida-en-otros-planetas-de-mariana-de-althaus-57993';
EXEC UPSInsertEvents 5, 'Carne y Fuego - El Festival Parrillero',
        '¡Volvió el festival parrillero del Perú! Las brasas se van prendiendo para Carne y Fuego 2023, esta vez con más de 20 restaurantes. Sábado 4 de noviembre Lima Polo Club puerta 2',
        '2023-11-04', '12:00:00', 8, 7, 25,
        'https://www.joinnus.com/events/food-drinks/lima-carne-y-fuego-el-festival-parrillero-57952';
EXEC UPSInsertEvents 6, 'Antología Sinfónico - Rumbo A Los 25 Años',
        '¡Vuelve la magia al Anfiteatro del Parque de la Exposición! ¡Antología Sinfónico - Rumbo a los 25 años! Después de una pausa vuelve el concierto sinfónico de Antología, con una puesta en escena de primera y un repertorio especial que recorren estos casi 25 años de trayectoria. Con invitados nacionales e internacionales como Mauricio Mesones, Karina Benites de Amaranta, Milena Warthon, Dorian Y Korian, Coti desde Argentina y más aún por anunciar que harán de esta noche del 04 de Noviembre una velada única e irrepetible.'
            , '2023-11-04', '20:00:00', 9, 2, 89,
        'https://www.joinnus.com/events/concerts/lima-antologia-sinfonico-rumbo-a-los-25-anos-56228';
EXEC UPSInsertEvents 7, 'PLIM PLIM en Vivo - Una Aventura Musical',
        'PLIM PLIM en Vivo - Una Aventura Musical. Preventa hasta el 22/10.',
        '2023-11-05', '12:00:00', 10, 2, 49,
        'https://www.joinnus.com/events/kids/lima-plim-plim-en-vivo-una-aventura-musical-57723';
EXEC UPSInsertEvents 8, 'Comic Convention LATINVERSE - Lima 2023',
        'El evento más grande de cultura pop de Lima regresa en su 5ta edición con grandes invitados, atracciones, shows en vivo y lleno de magia.',
        '2023-11-17', '12:00:00', 3, 7, 57,
        'https://www.joinnus.com/events/entertainment/lima-comic-convention-latinverse-lima-2023-54054';
EXEC UPSInsertEvents 9, 'La ruta del huarike',
    'El chancho al palo del rancho de robertin \ La Caja china de juan talledo \ Carlos Ramirez y su chancho al palo de huaral',
        '2023-11-18', '12:00:00', 9, 7, 42,
        'https://teleticket.com.pe/rutadelhuarike';
EXEC UPSInsertEvents 10, 'Fisher',
        'Fisher Lima Polo Club',
        '2023-11-24', '12:00:00', 8, 2, 100,
        'https://teleticket.com.pe/vastion-pres-fisher-2023';
GO