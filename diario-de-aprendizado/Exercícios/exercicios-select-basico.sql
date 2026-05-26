-- =========================================
-- Exercícios SQL - SELECT Básico
-- Curso: Bancos de Dados e SQL para Ciência de Dados com Python
-- =========================================

-- Exercício 1
-- Recupere todos os dados da tabela Clientes

SELECT *
FROM Clientes;

------------------------------------------------

-- Exercício 2
-- Recupere apenas nome e idade dos clientes

SELECT nome, idade
FROM Clientes;

------------------------------------------------

-- Exercício 3
-- Recupere os clientes maiores de 18 anos

SELECT *
FROM Clientes
WHERE idade > 18;

------------------------------------------------

-- Exercício 4
-- Recupere os clientes da cidade de Goiânia

SELECT *
FROM Clientes
WHERE cidade = 'Goiânia';

------------------------------------------------

-- Exercício 5
-- Recupere os clientes com idade diferente de 25

SELECT *
FROM Clientes
WHERE idade <> 25;

------------------------------------------------

-- Exercício 6
-- Recupere apenas os nomes dos clientes menores de 21 anos

SELECT nome
FROM Clientes
WHERE idade < 21;

------------------------------------------------

-- Exercício 7
-- Recupere nome e cidade dos clientes maiores ou iguais a 18 anos

SELECT nome, cidade
FROM Clientes
WHERE idade >= 18;