# desafio 09 - group by e having

## objetivo

praticar o uso da cláusula `having` para filtrar grupos após o uso do `group by`, reforçando também os conhecimentos em `join` e funções de agregação.

---

## assuntos praticados

- group by
- having
- count()
- avg()
- max()
- min()
- sum()
- join
- order by
- create table
- insert into

---

## questões

1. listar a quantidade de alunos por cidade, mostrando apenas cidades com mais de um aluno.
2. listar a média de idade por cidade, mostrando apenas cidades com média superior a 20 anos.
3. listar a quantidade de alunos por curso utilizando `join` e `having`.
4. listar a média de idade dos alunos por curso.
5. listar a maior idade dos alunos por curso.
6. listar a menor idade por cidade.
7. calcular a quantidade de cursos e a soma dos valores da tabela `Mensalidades`.
8. criar a tabela `Salas`, inserir registros e listar as salas ordenadas por bloco.
9. listar a quantidade de alunos por curso ordenando do maior para o menor.
10. bônus: reunir em uma única consulta a quantidade de alunos, média, maior idade e menor idade por curso, utilizando `having`.

---

## dificuldades encontradas

A principal dificuldade deste desafio foi compreender corretamente o funcionamento da cláusula `HAVING`.

No início tentei utilizar uma coluna comum na condição do `HAVING`, mas durante a correção entendi que ele normalmente deve filtrar o resultado das funções de agregação, como `COUNT()`, `AVG()`, `MAX()` e `MIN()`.

Também cometi pequenos erros de sintaxe, como esquecer o `ON` em um `JOIN` e alguns detalhes no `CREATE TABLE`, mas consegui identificar e corrigir todos eles.

---

## o que aprendi

- diferença entre `WHERE` e `HAVING`;
- utilizar `HAVING` para filtrar grupos;
- combinar `JOIN` com `GROUP BY` e `HAVING`;
- utilizar funções de agregação em consultas mais completas;
- revisar consultas identificando erros de sintaxe antes da versão final.

---

## conclusão

Este desafio foi um dos mais importantes até agora.

Consegui compreender quando utilizar `WHERE` e quando utilizar `HAVING`, além de perceber que o `HAVING` normalmente trabalha filtrando o resultado das funções de agregação.

Também fiquei mais confiante para decidir quando uma consulta precisa de `JOIN` e quando todas as informações já estão na mesma tabela.

Cada desafio está me ajudando a desenvolver mais lógica para construir consultas SQL sem depender apenas de exemplos prontos.