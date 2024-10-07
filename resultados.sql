-- Requisito 1 - Buscando o nom e o ano dos filmes
SELECT `Nome`, `Ano` FROM `Filmes`;

-- Requisito 2 - Buscando nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT `Nome`, `Ano`, `Duracao` FROM `Filmes` ORDER BY `Ano`;

-- Requisito 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e duração
SELECT `Nome`, `Ano`, `Duracao`
FROM `Filmes`
WHERE
    LOWER(`Nome`) LIKE LOWER('%de Volta para o Futuro');