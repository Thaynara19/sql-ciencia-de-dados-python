# 📘 Desafio 10.2 - Praticando Subqueries

## 🎯 Objetivo

Continuar praticando **Subqueries**, reforçando o raciocínio lógico antes da escrita do SQL.

Além da construção das consultas, o foco deste desafio foi entender como identificar corretamente:

- A consulta principal.
- A subconsulta.
- Qual valor a subconsulta deve retornar.
- Quando utilizar `=`, `IN` e `NOT IN`.

---

## 📚 Conteúdos praticados

- Subqueries
- AVG()
- MIN()
- MAX()
- Comparações utilizando `>`
- Comparações utilizando `=`
- Operador `IN`
- Subqueries aninhadas (Nested Subqueries)
- Planejamento da consulta antes da implementação

---

## 📝 Exercícios realizados

Durante este desafio pratiquei consultas envolvendo:

- Alunos abaixo da média de idade.
- Curso com menor carga horária.
- Alunos matriculados em um curso específico utilizando Subquery.
- Cursos com alunos matriculados.
- Cursos sem alunos.
- Cursos acima da média de carga horária.
- Alunos matriculados no curso de maior carga horária.

---

## ⚠️ Dificuldades encontradas

Durante os exercícios percebi que minha maior dificuldade não está mais em identificar a tabela principal da consulta.

Hoje consegui identificar corretamente qual tabela utilizar na maioria das situações.

Os erros encontrados aconteceram principalmente em:

- Retornar `SELECT *` quando a Subquery precisava retornar apenas um único campo.
- Confundir qual coluna deveria ser utilizada na Subquery.
- Relacionar corretamente o resultado da Subquery com a consulta principal.
- Diferenciar quando preciso retornar um `id` e quando preciso retornar um valor calculado.

---

## 💡 O que aprendi

Percebi que antes de escrever qualquer SQL preciso responder algumas perguntas:

1. Qual tabela será a consulta principal?
2. O que preciso descobrir primeiro?
3. A Subquery retorna um único valor ou vários valores?
4. Qual coluna da consulta principal será comparada com o resultado da Subquery?

Também comecei a praticar uma habilidade importante para entrevistas técnicas: explicar meu raciocínio em voz alta antes de escrever a consulta.

Esse exercício me ajudou a organizar melhor o pensamento e identificar os erros antes mesmo de executar o código.

---

## 🚀 Próximos passos

Pretendo continuar praticando Subqueries até conseguir montar consultas de forma natural.

Meu objetivo agora é evoluir principalmente em:

- Subqueries utilizando `IN` e `NOT IN`.
- Subqueries aninhadas.
- Identificação correta das colunas utilizadas em cada consulta.

Após dominar esse conteúdo, seguirei para novos assuntos mais avançados em SQL.

---

## ✅ Conclusão

Hoje percebi uma evolução importante no meu processo de aprendizagem.

Antes eu tentava escrever a consulta diretamente.

Agora procuro entender primeiro a lógica da solução, explicar meu raciocínio e somente depois escrever o SQL.

Essa mudança de abordagem está tornando meu aprendizado muito mais consistente e acredito que também será um diferencial em futuras entrevistas técnicas.

Continuarei praticando até dominar completamente Subqueries.