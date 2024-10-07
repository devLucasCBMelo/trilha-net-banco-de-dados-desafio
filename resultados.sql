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
SELECT `Nome`, `Ano`, `Duracao` FROM `Filmes` WHERE `Ano` = 1997
-- Requisito 5 -  Buscar os filmes lançados APÓS o ano 2000
SELECT `Nome`, `Ano`, `Duracao` FROM `Filmes` WHERE `Ano` > 2000;

-- Requisito 6 - Buscar os filmes com a duração maior que 100 e menor que 150, ordenado pela duração em ordem crescente
SELECT `Nome`, `Ano`, `Duracao`
FROM `Filmes`
WHERE
    `Duracao` > 100
    AND `Duracao` < 150
ORDER BY `Duracao` ASC