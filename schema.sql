-- schema.sql
-- Criação do banco de dados e tabelas (PostgreSQL)

-- Cria o banco (execute em um servidor PostgreSQL com usuário que tenha permissão)
-- CREATE DATABASE mini_mundo;
-- \c mini_mundo

-- Tabelas principais: departamento, professor, curso, aluno, matricula

CREATE TABLE departamento (
    dept_id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE professor (
    prof_id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE,
    dept_id INTEGER REFERENCES departamento(dept_id) ON DELETE SET NULL
);

CREATE TABLE curso (
    curso_id SERIAL PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    codigo VARCHAR(20) NOT NULL UNIQUE,
    dept_id INTEGER REFERENCES departamento(dept_id) ON DELETE SET NULL,
    creditos INTEGER NOT NULL CHECK (creditos > 0)
);

CREATE TABLE aluno (
    aluno_id SERIAL PRIMARY KEY,
    nome VARCHAR(120) NOT NULL,
    matricula VARCHAR(30) NOT NULL UNIQUE,
    data_nascimento DATE,
    email VARCHAR(150) UNIQUE
);

CREATE TABLE matricula (
    matricula_id SERIAL PRIMARY KEY,
    aluno_id INTEGER NOT NULL REFERENCES aluno(aluno_id) ON DELETE CASCADE,
    curso_id INTEGER NOT NULL REFERENCES curso(curso_id) ON DELETE CASCADE,
    ano INTEGER NOT NULL CHECK (ano >= 2000 AND ano <= 2100),
    semestre SMALLINT NOT NULL CHECK (semestre IN (1,2)),
    nota NUMERIC(4,2),
    UNIQUE(aluno_id, curso_id, ano, semestre)
);
