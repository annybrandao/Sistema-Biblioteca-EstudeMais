# 📚 Projeto: Sistema de Gerenciamento de Biblioteca "EstudeMais"

## 🎯 Visão Geral e Propósito do Sistema

A Biblioteca EstudeMais é um sistema que organiza o cadastro de livros, usuários e empréstimos.

* **Público-alvo:** Estudantes, bibliotecários e demais usuários da biblioteca.
* **Propósito:** Tornar o processo de empréstimo mais eficiente, reduzir perdas e melhorar o acesso à leitura.
* **Escopo Principal (Funcionalidades):**
    * Gerenciar o cadastro de livros, usuários e autores.
    * Controlar empréstimos e devoluções, garantindo rastreabilidade.
    * Facilitar o acesso às informações sobre disponibilidade dos livros.

---

## 💻 Estrutura do Banco de Dados

O modelo lógico foi desenvolvido a partir de um Diagrama Entidade-Relacionamento (DER) que segue as três primeiras formas normais (3FN).

### 1. Diagrama Entidade-Relacionamento (DER)

* **O DER está incluído neste repositório como imagem ou pode ser visualizado na documentação original.**

### 2. Entidades Principais

| Entidade | Chave Primária (PK) | Chaves Estrangeiras (FK) |
| :--- | :--- | :--- |
| **LIVRO** | `id_livro` | Nenhuma |
| **LEITOR** | `id_leitor` | Nenhuma |
| **FUNCIONARIO** | `id_funcionario` | Nenhuma |
| **EMPRÉSTIMO** | `id_emprestimo` | `id_livro`, `id_leitor`, `id_funcionario` |
| **RESERVA** | `id_reserva` | `id_livro`, `id_leitor` |

---

## ⚙️ Instruções de Execução dos Scripts

Para executar o projeto, siga a ordem dos arquivos para garantir que as tabelas sejam criadas antes da manipulação de dados.

### Pré-requisitos
* Um SGBD (Sistema Gerenciador de Banco de Dados) relacional (Ex: MySQL, PostgreSQL).
* Uma ferramenta de administração de banco de dados (Ex: MySQL Workbench ou pgAdmin).

### Ordem de Execução

1.  **`01_create_tables.sql` (DDL):** Contém comandos `CREATE TABLE` para construir o *schema* do banco de dados.
2.  **`02_insert_data.sql` (DML - INSERT):** Popula as cinco tabelas com dados iniciais para testes.
3.  **`03_queries.sql` (DML - SELECT):** Contém consultas de demonstração (`JOIN`, `WHERE`, `ORDER BY`, `LIMIT`).
4.  **`04_dml_updates_deletes.sql` (DML - UPDATE/DELETE):** Demonstra a manipulação condicional de dados e a manutenção da integridade.

---


## 📜 Detalhes dos Scripts DML

### A. Consultas (SELECT)
O arquivo `03_queries.sql` demonstra a extração de informações utilizando, por exemplo:
* `JOIN` para listar Leitores com empréstimos ativos[cite: 93].
* `WHERE` e `ORDER BY` para filtrar livros por status e ordená-los.
* `LIMIT` para selecionar o item mais antigo (baseado no `ano_publicacao`).

### B. Manipulação de Dados (UPDATE e DELETE)
O arquivo `04_dml_updates_deletes.sql` demonstra a aplicação da lógica de negócio:
* **UPDATE:** Alteração do status de um livro para 'Disponível' após uma devolução [cite: 43, 50] ou a atualização de multas.
* **DELETE:** Remoção de reservas atendidas ou empréstimos muito antigos, sempre utilizando cláusulas `WHERE` para evitar a perda acidental de dados.

---
