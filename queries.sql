-- queries.sql
-- Conjunto de consultas SELECT (duas a cinco consultas com WHERE, ORDER BY, LIMIT, JOIN etc.)

-- 1) Selecionar alunos matriculados em 'Banco de Dados' com suas notas
SELECT a.nome AS aluno, a.matricula, c.nome AS curso, m.ano, m.semestre, m.nota
FROM aluno a
JOIN matricula m ON a.aluno_id = m.aluno_id
JOIN curso c ON m.curso_id = c.curso_id
WHERE c.codigo = 'CC202'
ORDER BY a.nome;

-- 2) Média de notas por curso (apenas registros com nota preenchida)
SELECT c.nome AS curso, COUNT(m.matricula_id) AS qtd_alunos, ROUND(AVG(m.nota)::numeric,2) AS media
FROM curso c
JOIN matricula m ON c.curso_id = m.curso_id
WHERE m.nota IS NOT NULL
GROUP BY c.nome
ORDER BY media DESC;

-- 3) Listar professores por departamento com limite (exemplo de LIMIT)
SELECT d.nome AS departamento, p.nome AS professor, p.email
FROM professor p
LEFT JOIN departamento d ON p.dept_id = d.dept_id
ORDER BY d.nome, p.nome
LIMIT 10;

-- 4) Busca com WHERE e ORDER BY: alunos nascidos depois de 2000
SELECT nome, matricula, data_nascimento FROM aluno
WHERE data_nascimento > '2000-01-01'
ORDER BY data_nascimento ASC;

-- 5) Consulta usando WHERE, JOIN e LIMIT/OFFSET (paginação)
SELECT a.aluno_id, a.nome, a.matricula, COUNT(m.matricula_id) AS total_matriculas
FROM aluno a
LEFT JOIN matricula m ON a.aluno_id = m.aluno_id
GROUP BY a.aluno_id
ORDER BY total_matriculas DESC
LIMIT 5 OFFSET 0;
