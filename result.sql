SELECT nome, ano
FROM Filmes;


SELECT nome, ano
FROM Filmes
ORDER BY ano;


SELECT nome, ano, duracao
FROM Filmes
WHERE nome = 'De Volta para o Futuro';


SELECT nome, ano
FROM Filmes
WHERE ano = 1997;


SELECT nome, ano
FROM Filmes
WHERE ano > 2000;


SELECT nome, duracao
FROM Filmes
WHERE duracao > 100 AND duracao < 150
ORDER BY duracao ASC;


SELECT ano, COUNT(*)quantidade_filmes
FROM Filmes
GROUP BY ano
ORDER BY quantidade_filmes DESC;


SELECT PrimeiroNome, UltimoNome,Genero
FROM Atores
WHERE genero = 'M';


SELECT PrimeiroNome, UltimoNome,Genero
FROM Atores
WHERE genero = 'F'
ORDER BY PrimeiroNome ;


SELECT Nome  nome_filme, Genero  nome_genero
FROM Filmes f
JOIN FilmesGenero fg ON f.id = fg.idFilme
JOIN Generos g ON fg.idGenero = g.id;


SELECT f.nome  nomeFilme, g.Genero  nomeGenero
FROM Filmes f
JOIN FilmesGenero fg ON f.id = fg.IdFilme
JOIN Generos g ON fg.IdGenero = g.id
WHERE g.Genero = 'Mistério';



SELECT f.nome  nomeFilme, a.PrimeiroNome, a.UltimoNome, fa.Papel
FROM Filmes f
JOIN ElencoFilme fa ON f.id = fa.IdFilme
JOIN Atores a ON fa.IdAtor = a.id;


