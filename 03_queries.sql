-- 1. Consultar todos os livros disponíveis para empréstimo, ordenados por título.
SELECT titulo, autor, ano_publicacao
FROM LIVRO
WHERE status = 'Disponível'
ORDER BY titulo ASC;

-- 2. Listar Leitores com empréstimos ativos, usando JOIN entre LEITOR e EMPRESTIMO.
SELECT L.nome AS Nome_Leitor, LV.titulo AS Livro_Emprestado, E.data_devolucao_prevista
FROM LEITOR L
JOIN EMPRESTIMO E ON L.id_leitor = E.id_leitor
JOIN LIVRO LV ON E.id_livro = LV.id_livro
WHERE E.data_devolucao_real IS NULL;

-- 3. Encontrar os empréstimos registrados por um funcionário específico (id_funcionario = 101).
SELECT E.id_emprestimo, LV.titulo AS Livro, LE.nome AS Leitor, E.data_emprestimo
FROM EMPRESTIMO E
JOIN LIVRO LV ON E.id_livro = LV.id_livro
JOIN LEITOR LE ON E.id_leitor = LE.id_leitor
WHERE E.id_funcionario = 101;

-- 4. Consultar o livro mais antigo no acervo da categoria 'Ficção Científica'.
SELECT titulo, autor, ano_publicacao
FROM LIVRO
WHERE categoria = 'Ficção Científica'
ORDER BY ano_publicacao ASC
LIMIT 1;