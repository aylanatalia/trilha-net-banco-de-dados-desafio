--1 Buscar o nome e o ano dos filmes --

SELECT Nome, Ano FROM Filmes

--2 buscar nomes e ano dos filmes ordenados por ordem crescente pelo ano--

SELECT Nome, Ano FROM Filmes ORDER BY Ano

--3 buscar pelo nome do filme de volta para o futuro com nome, ano e duração

SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome = 'De volta para o futuro'

--4 buscar filmes lançados em 1997--

SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano = 1997

--5 buscar filmes laçados após o ano 200--

SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano > 2000

--6 buscar filmes com a duração maior que 100 e menor que 150, ordenando pela duração em ordem crescente--

SELECT Nome, Ano, Duracao FROM Filmes WHERE Duracao > 100 AND Duracao < 150 ORDER BY Duracao

--7 buscar a quantidade de filmes lancadas no ano agrupando por ano ordenado pela duracao em ordem decrescente--

SELECT Ano, COUNT(*) Quantidade FROM Filmes GROUP BY Ano ORDER BY Quantidade DESC

--8 buscar atores do genero masculino retornando o primeiro nome e o ultimo--

SELECT * FROM Atores WHERE Genero = 'M'

--9 buscar atores do genero feminino retornando o primeiro nome ultimo nome e ordenando pelo primeiro nome

SELECT * FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome

--10 buscar o nome e o genero do filme--

SELECT Filmes.Nome, Generos.Genero FROM Filmes JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme JOIN Generos ON Generos.Id = FilmesGenero.IdGenero

--11 buscar nome do filme e genero do tipo mistério--

SELECT Filmes.Nome, Generos.Genero FROM Filmes JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme JOIN Generos ON Generos.Id = FilmesGenero.IdGenero WHERE Generos.Genero = 'Mistério'

--12 buscar o nome do filme  e os atores trazendo o primeiro nome, o ultimo e seu papel--

SELECT Filmes.Nome, Atores.PrimeiroNome,Atores.UltimoNome,ElencoFilme.Papel FROM Filmes JOIN ElencoFilme ON Filmes.Id = ElencoFilme.IdFilme 
JOIN Atores ON Atores.Id = ElencoFilme.IdAtor