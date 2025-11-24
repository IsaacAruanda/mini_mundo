# Trabalho: Criação e Manipulação de Dados com SQL (Mini-mundo)

Este repositório contém scripts para criação de um pequeno banco de dados relacional (mini-mundo), inserção de dados, consultas (SELECT), e comandos DML (UPDATE e DELETE). Foi pensado para execução em PostgreSQL (pgAdmin ou psql). Também funciona em MySQL com pequenos ajustes de tipos e serial/auto-increment.

## Arquivos
- schema.sql : criação de tabelas e constraints
- inserts.sql : scripts INSERT para povoar as tabelas
- queries.sql : consultas SELECT (exemplos com JOIN, WHERE, ORDER BY, LIMIT)
- updates_deletes.sql : três UPDATEs e três DELETEs com condições

## Passo a passo para executar (PostgreSQL / pgAdmin)

1. Abra o pgAdmin ou um terminal com psql.
2. Crie o banco de dados (se desejar):
   - No terminal: `createdb mini_mundo`
   - No pgAdmin: clique com o botão direito em Databases -> Create -> Database -> nome: mini_mundo
3. Conecte-se ao banco `mini_mundo`.
4. Execute os scripts na ordem:
   - `schema.sql` (cria tabelas)
   - `inserts.sql` (insere dados)
   - `queries.sql` (rodar as consultas de exemplo)
   - `updates_deletes.sql` (testar operações UPDATE e DELETE)
   > No psql: `\i /caminho/para/schema.sql` etc.
5. Verifique os resultados com SELECTs simples, por exemplo:
   - `SELECT * FROM aluno LIMIT 10;`

## Notas importantes
- Se usar MySQL ajuste `SERIAL` para `INT AUTO_INCREMENT` e tipos `NUMERIC(4,2)` pode virar `DECIMAL(4,2)`.
- As constraints (FOREIGN KEY, UNIQUE, CHECK) garantem integridade; remova ou ajuste conforme a necessidade do seu ambiente.
- O script contém exemplos; você pode criar mais dados para testar queries JOIN complexas (JOIN com subqueries, window functions, etc).

## Entrega sugerida
- Disponibilize o repositório no GitHub com um link público.
- Inclua um README (este arquivo) com instruções de execução.
- Inclua os scripts `.sql` pedidos.
