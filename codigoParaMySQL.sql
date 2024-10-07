CREATE DATABASE `Filmes`;

USE `Filmes`;

CREATE TABLE `Atores` (
    `Id` INT AUTO_INCREMENT NOT NULL,
    `PrimeiroNome` VARCHAR(20),
    `UltimoNome` VARCHAR(20),
    `Genero` CHAR(1),
    PRIMARY KEY (`Id`)
) ENGINE = InnoDB;

CREATE TABLE `Filmes` (
    `Id` INT AUTO_INCREMENT NOT NULL,
    `Nome` VARCHAR(50),
    `Ano` INT,
    `Duracao` INT,
    PRIMARY KEY (`Id`)
) ENGINE = InnoDB;

CREATE TABLE `ElencoFilme` (
    `Id` INT AUTO_INCREMENT NOT NULL,
    `IdAtor` INT NOT NULL,
    `IdFilme` INT,
    `Papel` VARCHAR(30),
    PRIMARY KEY (`Id`),
    FOREIGN KEY (`IdAtor`) REFERENCES `Atores` (`Id`),
    FOREIGN KEY (`IdFilme`) REFERENCES `Filmes` (`Id`)
) ENGINE = InnoDB;

CREATE TABLE `Generos` (
    `Id` INT AUTO_INCREMENT NOT NULL,
    `Genero` VARCHAR(20),
    PRIMARY KEY (`Id`)
) ENGINE = InnoDB;

CREATE TABLE `FilmesGenero` (
    `Id` INT AUTO_INCREMENT NOT NULL,
    `IdGenero` INT,
    `IdFilme` INT,
    PRIMARY KEY (`Id`),
    FOREIGN KEY (`IdGenero`) REFERENCES `Generos` (`Id`),
    FOREIGN KEY (`IdFilme`) REFERENCES `Filmes` (`Id`)
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

INSERT INTO
    `Atores` (
        `PrimeiroNome`,
        `UltimoNome`,
        `Genero`
    )
VALUES ('James', 'Stewart', 'M'),
    ('Deborah', 'Kerr', 'F'),
    ('Peter', 'OToole', 'M'),
    ('Robert', 'DeNiro', 'M'),
    ('Harrison', 'Ford', 'M'),
    ('Stephen', 'Baldwin', 'M'),
    ('Jack', 'Nicholson', 'M'),
    ('Mark', 'Wahlberg', 'M'),
    ('Woody', 'Allen', 'M'),
    ('Claire', 'Danes', 'F'),
    ('Tim', 'Robbins', 'M'),
    ('Kevin', 'Spacey', 'M'),
    ('Kate', 'Winslet', 'F'),
    ('Robin', 'Williams', 'M'),
    ('Jon', 'Voight', 'M'),
    ('Ewan', 'McGregor', 'M'),
    ('Christian', 'Bale', 'M'),
    ('Maggie', 'Gyllenhaal', 'F'),
    ('Dev', 'Patel', 'M'),
    ('Sigourney', 'Weaver', 'F'),
    ('David', 'Aston', 'M'),
    ('Ali', 'Astin', 'F');

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
    );

INSERT INTO
    `ElencoFilme` (`IdAtor`, `IdFilme`, `Papel`)
VALUES (1, 1, 'John Scottie Ferguson'),
    (2, 2, 'Miss Giddens'),
    (3, 3, 'T.E. Lawrence'),
    (4, 4, 'Michael'),
    (6, 6, 'Rick Deckard'),
    (7, 8, 'McManus'),
    (9, 10, 'Eddie Adams'),
    (10, 11, 'Alvy Singer'),
    (11, 12, 'San'),
    (12, 13, 'Andy Dufresne'),
    (13, 14, 'Lester Burnham'),
    (14, 15, 'Rose DeWitt Bukater'),
    (15, 16, 'Sean Maguire'),
    (16, 17, 'Ed'),
    (17, 18, 'Renton'),
    (19, 20, 'Elizabeth Darko'),
    (20, 21, 'Older Jamal'),
    (21, 22, 'Ripley'),
    (22, 23, 'Bobby Darin'),
    (23, 9, 'J.J. Gittes'),
    (24, 19, 'Alfred Borden');