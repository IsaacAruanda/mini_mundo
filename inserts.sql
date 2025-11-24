-- inserts.sql
-- Script de inserção com comandos INSERT para povoar as tabelas principais

-- Departamentos
INSERT INTO departamento (nome) VALUES
('Ciência da Computação'),
('Matemática'),
('Engenharia');

-- Professores
INSERT INTO professor (nome, email, dept_id) VALUES
('Ana Silva','ana.silva@univ.edu', 1),
('Bruno Costa','bruno.costa@univ.edu', 1),
('Carla Pinto','carla.pinto@univ.edu', 2);

-- Cursos
INSERT INTO curso (nome, codigo, dept_id, creditos) VALUES
('Algoritmos e Estruturas de Dados','CC101',1,4),
('Banco de Dados','CC202',1,4),
('Cálculo I','MA101',2,6),
('Física I','EN101',3,5);

-- Alunos
INSERT INTO aluno (nome, matricula, data_nascimento, email) VALUES
('Lucas Ferreira','20200123','2001-05-12','lucas.ferreira@student.edu'),
('Mariana Rocha','20200234','2000-11-02','mariana.rocha@student.edu'),
('Pedro Alves','20200345','1999-07-20','pedro.alves@student.edu'),
('Sofia Gomes','20200456','2002-03-30','sofia.gomes@student.edu');

-- Matrículas (INSERTs para provar as tabelas principais)
INSERT INTO matricula (aluno_id, curso_id, ano, semestre, nota) VALUES
(1, 1, 2023, 1, 8.5),
(1, 2, 2023, 1, 7.0),
(2, 1, 2023, 1, 9.0),
(3, 3, 2023, 1, 6.5),
(4, 2, 2023, 1, NULL);
