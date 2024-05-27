--Buscar o nome e o ano dos filmes
SELECT Nome, Ano
FROM Filmes

--Buscar o nome e ano dos filmes ordenados por ano
SELECT Nome, Ano, Duracao
FROM Filmes ORDER BY Ano

--Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a dura��o
SELECT Nome, Ano, Duracao
FROM Filmes 
WHERE Nome  = 'De volta para o futuro'

--Buscar os filmes lan�ados em 1997
SELECT * FROM Filmes
WHERE Ano = '1997'

--Buscar os filmes lan�ados AP�S o ano 2000
SELECT * FROM Filmes
WHERE Ano > '2000'

--Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT * FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao

--Buscar a quantidade de filmes lan�adas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT Ano, COUNT(*) Quantidade From Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

--Buscar os Atores do g�nero masculino, retornando o PrimeiroNome, UltimoNome
SELECT PrimeiroNome, UltimoNome, Genero
FROM Atores
WHERE Genero = 'M'

--Buscar os Atores do g�nero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT PrimeiroNome, UltimoNome, Genero
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

-- Buscar o nome do filme e o g�nero
select Nome, Genero
from FilmesGenero
inner join Filmes on FilmesGenero.IdFilme = Filmes.Id
inner join Generos on Generos.Id = FilmesGenero.IdGenero

--Buscar o nome do filme e o g�nero do tipo "Mist�rio"
select Nome, Genero
from FilmesGenero
inner join Filmes on FilmesGenero.IdFilme = Filmes.Id
inner join Generos on Generos.Id = FilmesGenero.IdGenero and Genero = 'Mist�rio'

--Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT Nome, PrimeiroNome, UltimoNome, Papel
FROM ElencoFilme
INNER JOIN Filmes on ElencoFilme.IdFilme = Filmes.Id
INNER JOIN	Atores ON Atores.Id = ElencoFilme.IdAtor



