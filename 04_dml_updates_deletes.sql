-- 1. Aumentar a multa em R$ 2.00 para todos os empréstimos encerrados com multa (Exemplo 404).
UPDATE EMPRESTIMO
SET multa = multa + 2.00
WHERE id_emprestimo = 404;

-- 2. Corrigir o status do livro 302 (Dom Casmurro) após uma devolução (Se o status foi esquecido de ser atualizado).
UPDATE LIVRO
SET status = 'Disponível'
WHERE id_livro = 302;

-- 3. Mudar o cargo de um funcionário (promover Bruno Mendes).
UPDATE FUNCIONARIO
SET cargo = 'Bibliotecário Pleno'
WHERE nome = 'Bruno Mendes';

-- 1. Deletar um leitor que nunca fez empréstimos nem reservas (assumindo que 203 nunca fez empréstimos ou reservas)
DELETE FROM EMPRESTIMO
WHERE id_emprestimo = 404 AND data_devolucao_real IS NOT NULL; -- Deleta empréstimo encerrado

-- 2. Deletar uma reserva que foi cancelada ou atendida (id_reserva 501).
DELETE FROM RESERVA
WHERE id_reserva = 501 AND status_reserva = 'ativa'; -- Deletar a reserva antes de deletar o leitor/livro

-- 3. Deletar um funcionário que não é mais essencial para o sistema, após garantir que ele não tem empréstimos ativos registrados (assumindo que 103 não tem mais registros ativos).
DELETE FROM FUNCIONARIO
WHERE id_funcionario = 103;