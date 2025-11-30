-- Tabela FUNCIONARIO
CREATE TABLE FUNCIONARIO (
    id_funcionario INT PRIMARY KEY,
    nome VARCHAR(100),
    cargo VARCHAR(50)
);

-- Tabela LEITOR
CREATE TABLE LEITOR (
    id_leitor INT PRIMARY KEY,
    nome VARCHAR(100),
    telefone VARCHAR(15),
    email VARCHAR(100),
    endereco VARCHAR(200)
);

-- Tabela LIVRO
CREATE TABLE LIVRO (
    id_livro INT PRIMARY KEY,
    titulo VARCHAR(200),
    autor VARCHAR(100),
    categoria VARCHAR(50),
    ano_publicacao INT,
    status VARCHAR(20) -- Disponível/Emprestado
);

-- Tabela RESERVA (Depende de LIVRO e LEITOR)
CREATE TABLE RESERVA (
    id_reserva INT PRIMARY KEY,
    data_reserva DATE,
    status_reserva VARCHAR(20), -- ativa/atendida/cancelada
    id_livro INT,
    id_leitor INT,
    FOREIGN KEY (id_livro) REFERENCES LIVRO(id_livro),
    FOREIGN KEY (id_leitor) REFERENCES LEITOR(id_leitor)
);

-- Tabela EMPRESTIMO 
CREATE TABLE EMPRESTIMO (
    id_emprestimo INT PRIMARY KEY,
    data_emprestimo DATE,
    data_devolucao_prevista DATE,
    data_devolucao_real DATE,
    multa DECIMAL(10, 2),
    id_livro INT,
    id_leitor INT,
    id_funcionario INT,
    FOREIGN KEY (id_livro) REFERENCES LIVRO(id_livro),
    FOREIGN KEY (id_leitor) REFERENCES LEITOR(id_leitor),
    FOREIGN KEY (id_funcionario) REFERENCES FUNCIONARIO(id_funcionario)
);