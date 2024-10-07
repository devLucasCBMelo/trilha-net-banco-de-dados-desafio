-- Requisito 1 - Buscando o nom e o ano dos filmes
SELECT `Nome`, `Ano` FROM `Filmes`;

-- Requisito 2 - Buscando nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT `Nome`, `Ano`, `Duracao` FROM `Filmes` ORDER BY `Ano`;

-- Requisito 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e duração
SELECT `Nome`, `Ano`, `Duracao`
FROM `Filmes`
WHERE
    LOWER(`Nome`) LIKE LOWER('%de Volta para o Futuro');

-- Requisto 4 -  Buscar os filmes lançados em 1997
SELECT `Nome`, `Ano`, `Duracao`
FROM `Filmes`
WHERE
    `Ano` = 1997
    -- Requisito 5 -  Buscar os filmes lançados APÓS o ano 2000
SELECT `Nome`, `Ano`, `Duracao`
FROM `Filmes`
WHERE
    `Ano` > 2000;

-- Requisito 6 - Buscar os filmes com a duração maior que 100 e menor que 150, ordenado pela duração em ordem crescente
SELECT `Nome`, `Ano`, `Duracao`
FROM `Filmes`
WHERE
    `Duracao` > 100
    AND `Duracao` < 150
ORDER BY `Duracao` ASC;

-- Requisito 7 -  Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT `Ano`, COUNT(*) AS Quantidade
FROM `Filmes`
GROUP BY
    `Ano`
ORDER BY SUM(`Duracao`) DESC;

-- Requisito 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
SELECT * FROM `Atores` WHERE `Genero` = 'M';

-- Requisito 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT * FROM `Atores` WHERE `Genero` = 'F' ORDER BY `PrimeiroNome`;

-- Requisito 10 - Buscar o nome do filme e o gênero
SELECT `Nome`, `Genero`
FROM
    `Filmes` AS F
    INNER JOIN `FilmesGenero` AS FG ON `F`.`Id` = FG.`IdFilme`
    INNER JOIN `Generos` AS G ON G.`Id` = FG.`IdGenero`;

-- Requisito 11 - Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT `Nome`, `Genero`
FROM
    `Filmes` AS F
    INNER JOIN `FilmesGenero` AS FG ON `F`.`Id` = FG.`IdFilme`
    INNER JOIN `Generos` AS G ON G.`Id` = FG.`IdGenero`
WHERE
    `Genero` = 'Mistério';

SELECT
    `Nome`,
    `PrimeiroNome`,
    `UltimoNome`,
    `Papel`
FROM
    `Filmes` AS F
    INNER JOIN `ElencoFilme` AS EF ON F.`Id` = EF.`IdFilme`
    INNER JOIN `Atores` AS A ON A.`Id` = EF.`IdAtor`;