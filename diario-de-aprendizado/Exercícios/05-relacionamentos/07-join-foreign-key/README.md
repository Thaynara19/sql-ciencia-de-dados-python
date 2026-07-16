# desafio 07 - relacionamento entre tabelas e join


## objetivo

praticar o relacionamento entre tabelas utilizando chave estrangeira (foreign key) e consultas com join.

---

## assuntos praticados

- create table
- insert into
- alter table
- add column
- foreign key
- update
- join
- where
- order by
- count
- avg
- group by

---

## questões

1. criar a tabela cursos.
2. inserir os cursos.
3. adicionar a coluna idCurso na tabela alunos.
4. criar a foreign key.
5. relacionar os alunos aos cursos utilizando update.
6. listar todos os alunos.
7. mostrar aluno e curso utilizando join.
8. mostrar aluno, cidade e curso.
9. listar somente alunos do curso ciência de dados.
10. ordenar alunos pelo nome.
11. ordenar primeiro pelo curso e depois pelo aluno.
12. contar alunos por curso.
13. calcular a média de idade por curso.
14. listar alunos de cursos com carga horária superior a 50 horas.
15. listar alunos de goiânia e seus respectivos cursos.

---

## dificuldades encontradas

- no início tive dificuldade para entender qual coluna fazia a ligação entre as tabelas.
- confundi algumas vezes o nome da coluna `id` da tabela cursos com `idCurso`.
- também tive dificuldade para utilizar corretamente os aliases (`a` e `c`).
- nas primeiras consultas utilizei `Cursos.id` mesmo após definir o alias da tabela.
- tive dúvidas ao utilizar `group by`, `count` e `avg`, pois ainda não havia estudado esse conteúdo.

---

## o que aprendi

- criar relacionamentos utilizando foreign key.
- compreender que a ligação acontece entre `Alunos.idCurso` e `Cursos.id`.
- utilizar aliases corretamente durante o join.
- organizar consultas utilizando select, from, join, on, where e order by.
- compreender melhor como funciona o relacionamento entre tabelas.

---

## conclusão
este desafio foi o primeiro contato com relacionamentos entre tabelas utilizando foreign key e consultas com join. após algumas correções consegui entender melhor como as tabelas se relacionam e como utilizar aliases corretamente. também tive meu primeiro contato com group by, count e avg, assuntos que serão aprofundados nos próximos desafios.