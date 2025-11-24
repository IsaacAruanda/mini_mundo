-- updates_deletes.sql
-- Comandos UPDATE (três exemplos) e DELETE (três exemplos) com condições

-- UPDATE 1: atualizar email de um professor
UPDATE professor
SET email = 'ana.s@univ.edu'
WHERE nome = 'Ana Silva';

-- UPDATE 2: atribuir créditos diferentes a um curso
UPDATE curso
SET creditos = 5
WHERE codigo = 'EN101';

-- UPDATE 3: atribuir nota final a uma matrícula específica
UPDATE matricula
SET nota = 8.0
WHERE aluno_id = 4 AND curso_id = 2 AND ano = 2023 AND semestre = 1;

-- DELETE 1: remover matrícula com nota muito baixa (exemplo condicional)
DELETE FROM matricula
WHERE nota IS NOT NULL AND nota < 5.0;

-- DELETE 2: remover aluno que não tem matrícula (exemplo de integridade)
DELETE FROM aluno a
WHERE NOT EXISTS (SELECT 1 FROM matricula m WHERE m.aluno_id = a.aluno_id)
AND a.matricula = '20200456';

-- DELETE 3: remover curso sem alunos matriculados
DELETE FROM curso c
WHERE NOT EXISTS (SELECT 1 FROM matricula m WHERE m.curso_id = c.curso_id)
AND c.codigo = 'MA999'; -- ajuste o código conforme necessário
