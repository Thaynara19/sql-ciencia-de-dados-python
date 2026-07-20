# desafio 08 - group by e funções de agregação
# DATA : 17/07/2026

## objetivo

praticar consultas utilizando `group by` juntamente com as principais funções de agregação do sql.

---

## assuntos praticados

- group by
- count()
- avg()
- max()
- min()
- sum()
- join
- aliases
- consultas com agrupamento

---

## questões

1. contar a quantidade de alunos por cidade.
2. calcular a média de idade por cidade.
3. mostrar a maior idade por cidade.
4. mostrar a menor idade por cidade.
5. contar alunos matriculados em cada curso utilizando join.
6. calcular a média de idade dos alunos por curso.
7. mostrar a maior idade dos alunos por curso.
8. mostrar a menor idade dos alunos por curso.
9. criar a tabela `Mensalidades` e inserir os dados.
10. calcular a soma dos valores das mensalidades.
11. bônus: utilizar uma única consulta para exibir quantidade de alunos, média, maior idade e menor idade por curso.

---

## dificuldades encontradas

Durante os primeiros exercícios consegui entender rapidamente o funcionamento das funções de agregação.

A principal dificuldade apareceu quando utilizei `group by` junto com `join`. Em algumas consultas esqueci de utilizar o `group by` após o `join` e também precisei corrigir o uso dos aliases das tabelas.

Após revisar os erros consegui compreender quando o `group by` é obrigatório.

---

## o que aprendi

- utilizar o `group by` para agrupar registros.
- utilizar `count()`, `avg()`, `max()`, `min()` e `sum()`.
- combinar `join` com funções de agregação.
- utilizar aliases para deixar as consultas mais organizadas.
- compreender que toda coluna exibida no `select`, quando não está dentro de uma função de agregação, deve aparecer no `group by`.

---

## conclusão

Este desafio consolidou meu aprendizado sobre funções de agregação no SQL Server.

Além de praticar consultas utilizando `group by`, consegui combinar esse conteúdo com `join`, reforçando o relacionamento entre tabelas estudado no desafio anterior.

Percebi uma evolução importante na construção das consultas e consegui identificar e corrigir meus próprios erros antes da versão final dos exercícios.