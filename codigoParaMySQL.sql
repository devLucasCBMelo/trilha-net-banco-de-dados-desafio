CREATE DATABASE `Filmes`;

USE `Filmes`;

-------------ATORES----------------------

CREATE TABLE `Atores` (
    `Id` INT AUTO_INCREMENT NOT NULL,
    `PrimeiroNome` VARCHAR(20),
    `UltimoNome` VARCHAR(20),
    `Genero` CHAR(1),
    PRIMARY KEY (`Id`)
) ENGINE = InnoDB;

INSERT INTO
    `Atores` (
        `Id`,
        `PrimeiroNome`,
        `UltimoNome`,
        `Genero`
    )
VALUES (1, 'James', 'Stewart', 'M'),
    (2, 'Deborah', 'Kerr', 'F'),
    (3, 'Peter', 'OToole', 'M'),
    (4, 'Robert', 'DeNiro', 'M'),
    (6, 'Harrison', 'Ford', 'M'),
    (7, 'Stephen', 'Baldwin', 'M'),
    (8, 'Jack', 'Nicholson', 'M'),
    (9, 'Mark', 'Wahlberg', 'M'),
    (10, 'Woody', 'Allen', 'M'),
    (11, 'Claire', 'Danes', 'F'),
    (12, 'Tim', 'Robbins', 'M'),
    (13, 'Kevin', 'Spacey', 'M'),
    (14, 'Kate', 'Winslet', 'F'),
    (15, 'Robin', 'Williams', 'M'),
    (16, 'Jon', 'Voight', 'M'),
    (17, 'Ewan', 'McGregor', 'M'),
    (18, 'Christian', 'Bale', 'M'),
    (
        19,
        'Maggie',
        'Gyllenhaal',
        'F'
    ),
    (20, 'Dev', 'Patel', 'M'),
    (
        21,
        'Sigourney',
        'Weaver',
        'F'
    ),
    (22, 'David', 'Aston', 'M'),
    (23, 'Ali', 'Astin', 'F');

DROP TABLE `Atores`;
--------------------FILMES------------------

CREATE TABLE `Filmes` (
    `Id` INT AUTO_INCREMENT NOT NULL,
    `Nome` VARCHAR(50),
    `Ano` INT,
    `Duracao` INT,
    PRIMARY KEY (`Id`)
) ENGINE = InnoDB;

INSERT INTO
    `Filmes` (`Nome`, `Ano`, `Duracao`)
VALUES ('Um Corpo que Cai', 1958, 128),
    ('Os Inocentes', 1961, 100),
    (
        'Lawrence da Arábia',
        1962,
        216
    ),
    (
        'O Franco Atirador',
        1978,
        183
    ),
    ('Amadeus', 1984, 160),
    ('Blade Runner', 1982, 117),
    (
        'De Olhos Bem Fechados',
        1999,
        159
    ),
    ('Os Suspeitos', 1995, 106),
    ('Chinatown', 1974, 130),
    (
        'Boogie Nights - Prazer Sem Limites',
        1997,
        155
    ),
    (
        'Noivo Neurótico, Noiva Nervosa',
        1977,
        93
    ),
    (
        'Princesa Mononoke',
        1997,
        134
    ),
    (
        'Um Sonho de Liberdade',
        1994,
        142
    ),
    ('Beleza Americana', 1999, 122),
    ('Titanic', 1997, 194),
    ('Gênio Indomável', 1997, 126),
    ('Amargo pesadelo', 1972, 109),
    (
        'Trainspotting - Sem Limites',
        1996,
        94
    ),
    ('O Grande Truque', 2006, 130),
    ('Donnie Darko', 2001, 113),
    (
        'Quem Quer Ser um Milionário?',
        2008,
        120
    ),
    (
        'Aliens, O Resgate',
        1986,
        137
    ),
    (
        'Uma Vida sem Limites',
        2004,
        118
    ),
    ('Avatar', 2009, 162),
    ('Coração Valente', 1995, 178),
    ('Os Sete Samurais', 1954, 207),
    (
        'A Viagem de Chihiro',
        2001,
        125
    ),
    (
        'De Volta para o Futuro',
        1985,
        116
    );

DROP TABLE `Filmes`;

-------------------ELENCO FILME-----

CREATE TABLE `ElencoFilme` (
    `Id` INT AUTO_INCREMENT NOT NULL,
    `IdAtor` INT NOT NULL,
    `IdFilme` INT,
    `Papel` VARCHAR(30),
    PRIMARY KEY (`Id`),
    FOREIGN KEY (`IdAtor`) REFERENCES `Atores` (`Id`),
    FOREIGN KEY (`IdFilme`) REFERENCES `Filmes` (`Id`)
) ENGINE = InnoDB;

INSERT INTO
    `ElencoFilme` (
        `Id`,
        `IdAtor`,
        `IdFilme`,
        `Papel`
    )
VALUES (
        1,
        1,
        1,
        'John Scottie Ferguson'
    ),
    (2, 2, 2, 'Miss Giddens'),
    (3, 3, 3, 'T.E. Lawrence'),
    (4, 4, 4, 'Michael'),
    (5, 6, 6, 'Rick Deckard'),
    (6, 7, 8, 'McManus'),
    (7, 9, 10, 'Eddie Adams'),
    (8, 10, 11, 'Alvy Singer'),
    (9, 11, 12, 'San'),
    (10, 12, 13, 'Andy Dufresne'),
    (11, 13, 14, 'Lester Burnham'),
    (
        12,
        14,
        15,
        'Rose DeWitt Bukater'
    ),
    (13, 15, 16, 'Sean Maguire'),
    (14, 16, 17, 'Ed'),
    (15, 17, 18, 'Renton'),
    (16, 19, 20, 'Elizabeth Darko'),
    (17, 20, 21, 'Older Jamal'),
    (18, 21, 22, 'Ripley'),
    (19, 13, 23, 'Bobby Darin'),
    (20, 8, 9, 'J.J. Gittes'),
    (21, 18, 19, 'Alfred Borden');

DROP TABLE `ElencoFilme`;

-------------------GENEROS------------

CREATE TABLE `Generos` (
    `Id` INT AUTO_INCREMENT NOT NULL,
    `Genero` VARCHAR(20),
    PRIMARY KEY (`Id`)
) ENGINE = InnoDB;

INSERT INTO
    `Generos` (Id, `Genero`)
VALUES (1, 'Ação'),
    (2, 'Aventura'),
    (3, 'Animação'),
    (4, 'Biografia'),
    (5, 'Comédia'),
    (6, 'Crime'),
    (7, 'Drama'),
    (8, 'Horror'),
    (9, 'Musical'),
    (10, 'Mistério'),
    (11, 'Romance'),
    (12, 'Suspense'),
    (13, 'Guerra');

DROP TABLE `Generos`
-----------------FILMES GENERO-------------

CREATE TABLE `FilmesGenero` (
    `Id` INT AUTO_INCREMENT NOT NULL,
    `IdGenero` INT,
    `IdFilme` INT,
    PRIMARY KEY (`Id`),
    FOREIGN KEY (`IdGenero`) REFERENCES `Generos` (`Id`),
    FOREIGN KEY (`IdFilme`) REFERENCES `Filmes` (`Id`)
) ENGINE = InnoDB;

INSERT INTO
    FilmesGenero (Id, IdGenero, IdFilme)
VALUES (1, 1, 22),
    (2, 2, 17),
    (3, 2, 3),
    (4, 3, 12),
    (5, 5, 11),
    (6, 6, 8),
    (7, 6, 13),
    (8, 7, 26),
    (9, 7, 28),
    (10, 7, 18),
    (11, 7, 21),
    (12, 8, 2),
    (13, 9, 23),
    (14, 10, 7),
    (15, 10, 27),
    (16, 10, 1),
    (17, 11, 14),
    (18, 12, 6),
    (19, 13, 4);

DROP TABLE `FilmesGenero`;