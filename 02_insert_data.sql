-- Insere Funcionários (Bibliotecários)
INSERT INTO FUNCIONARIO (id_funcionario, nome, cargo) VALUES
(101, 'Ana Silva', 'Bibliotecária Chefe'),
(102, 'Bruno Mendes', 'Atendente de Acervo'),
(103, 'Carla Oliveira', 'Estagiária');

-- Insere Leitores (Usuários)
INSERT INTO LEITOR (id_leitor, nome, telefone, email, endereco) VALUES
(201, 'Pedro Santos', '11987654321', 'pedro.santos@exemplo.com', 'Rua A, 100'),
(202, 'Mariana Costa', '21912345678', 'mariana.costa@exemplo.com', 'Av. B, 250'),
(203, 'João Pereira', '31900001111', 'joao.pereira@exemplo.com', 'Rua C, 30');

-- Insere Livros
INSERT INTO LIVRO (id_livro, titulo, autor, categoria, ano_publicacao, status) VALUES
(301, 'O Guia do Mochileiro das Galáxias', 'Douglas Adams', 'Ficção Científica', 1979, 'Disponível'),
(302, 'Dom Casmurro', 'Machado de Assis', 'Literatura', 1899, 'Emprestado'),
(303, 'Banco de Dados Essencial', 'Heitor Vidal', 'Tecnologia', 2018, 'Disponível'),
(304, '1984', 'George Orwell', 'Ficção Científica', 1949, 'Emprestado');

-- Empréstimos Ativos e Históricos
INSERT INTO EMPRESTIMO (id_emprestimo, data_emprestimo, data_devolucao_prevista, data_devolucao_real, multa, id_livro, id_leitor, id_funcionario) VALUES
-- Empréstimo ativo (Livro 302, Leitor 201)
(401, '2025-10-20', '2025-11-03', NULL, 0.00, 302, 201, 101),
-- Empréstimo ativo (Livro 304, Leitor 203)
(402, '2025-11-15', '2025-11-29', NULL, 0.00, 304, 203, 102),
-- Empréstimo encerrado (Livro 303, Leitor 202) - Devolução no prazo
(403, '2025-09-01', '2025-09-15', '2025-09-15', 0.00, 303, 202, 101),
-- Empréstimo encerrado com multa (Livro 301, Leitor 202) - Atrasado
(404, '2025-08-01', '2025-08-15', '2025-08-20', 5.00, 301, 202, 102);


-- Reservas Ativas
INSERT INTO RESERVA (id_reserva, data_reserva, status_reserva, id_livro, id_leitor) VALUES
-- Reserva ativa para o livro 302 (Dom Casmurro) que está emprestado
(501, '2025-11-25', 'ativa', 302, 202),
-- Reserva ativa para o livro 304 (1984) que está emprestado
(502, '2025-11-28', 'ativa', 304, 201);