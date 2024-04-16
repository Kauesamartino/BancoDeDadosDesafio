
--1
SELECT Nome,Ano FROM Filmes

--2
SELECT Nome,Ano FROM Filmes
Order By Ano

--3
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Nome = 'De Volta para o Futuro'

--4
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Ano = 1997

--5
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Ano > 2000

--6
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150

--7 
SELECT Ano, Count(*) Quantidade
FROM Filmes
GROUP BY Ano
Order By Quantidade DESC

--8
SELECT PrimeiroNome, UltimoNome, Genero
FROM Atores
WHERE Genero = 'M'

--9
SELECT PrimeiroNome, UltimoNome, Genero
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

--10
SELECT 
	Filmes.Nome,
	Generos.Genero
FROM FilmesGenero
INNER JOIN Filmes on Filmes.Id = IdFilme 
INNER JOIN Generos on Generos.Id = IdGenero


--11
SELECT 
	Filmes.Nome,
	Generos.Genero
FROM FilmesGenero
INNER JOIN Filmes on Filmes.Id = IdFilme 
INNER JOIN Generos on Generos.Id = IdGenero
WHERE Generos.Genero = 'Mistério'

--12
SELECT 
	Filmes.Nome,
	Atores.PrimeiroNome,
	Atores.UltimoNome,
	Papel
FROM ElencoFilme
INNER JOIN Filmes on Filmes.Id = IdFilme
INNER JOIN Atores on Atores.Id = IdAtor


