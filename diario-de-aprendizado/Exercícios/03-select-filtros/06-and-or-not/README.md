# 📚 Desafio 06 – Operadores AND, OR e NOT

## 🎯 Objetivo

Neste desafio pratiquei a combinação de condições em consultas SQL utilizando os operadores **AND**, **OR** e **NOT**.

Além disso, revisei todos os comandos estudados anteriormente, aplicando-os em situações mais próximas do dia a dia de um banco de dados.

---

## 📝 Questões praticadas

### Questão 1
Listar alunos da cidade de Goiânia com idade maior ou igual a 20 anos.

### Questão 2
Listar alunos das cidades de Brasília ou Anápolis.

### Questão 3
Listar professores da disciplina Matemática que moram em Anápolis.

### Questão 4
Listar professores das disciplinas Português ou Biologia.

### Questão 5
Listar alunos que não moram em Goiânia.

### Questão 6
Contar a quantidade de alunos de Goiânia com idade maior ou igual a 20 anos.

### Questão 7
Encontrar a maior idade entre alunos de Goiânia ou Brasília.

### Questão 8
Calcular a média de idade dos alunos de Goiânia entre 18 e 25 anos.

### Questão 9
Atualizar a cidade do aluno Pedro para Anápolis, somente se ele possuir idade igual a 20 anos.

### Questão 10
Listar todos os alunos em ordem alfabética.

### Desafio Final

Criação da tabela **Funcionarios**, inserção de registros e realização de consultas utilizando:

- AND
- OR
- NOT
- BETWEEN

---

## 📖 O que aprendi

### ✔ AND

Utilizado quando todas as condições precisam ser verdadeiras.

```sql
WHERE cidade = 'Goiânia'
AND idade >= 20
```

---

### ✔ OR

Utilizado quando basta uma das condições ser verdadeira.

```sql
WHERE cidade = 'Brasília'
OR cidade = 'Anápolis'
```

---

### ✔ NOT

Utilizado para negar uma condição.

```sql
WHERE NOT cidade = 'Goiânia'
```

---

## 💡 Dificuldades encontradas

Durante o desafio percebi que meus erros aconteceram principalmente por falta de atenção.

Alguns exemplos:

- Escrevi `cidade = 'Biologia'` em vez de `disciplina = 'Biologia'`.
- Esqueci de utilizar `COUNT(*)` em uma consulta.
- Digitei um espaço antes de "Brasília", o que poderia impedir a consulta de retornar resultados.

Apesar desses detalhes, consegui desenvolver praticamente todas as consultas sem consultar material, mostrando que estou assimilando os comandos SQL.

---

## 🚀 Evolução

Até este desafio já pratiquei:

- CREATE DATABASE
- USE
- CREATE TABLE
- INSERT
- SELECT
- WHERE
- UPDATE
- DELETE
- ORDER BY
- LIKE
- BETWEEN
- IN
- NOT IN
- IS NULL
- IS NOT NULL
- AND
- OR
- NOT
- COUNT
- MAX
- MIN
- AVG

Cada desafio aumenta minha confiança para escrever consultas SQL de forma mais natural.

---

## 📌 Próximo desafio

O próximo passo será estudar **JOINs**, aprendendo a relacionar tabelas e realizar consultas entre diferentes conjuntos de dados, um dos conceitos mais importantes em SQL.

---

**Tecnologias utilizadas**

- SQL Server
- SQL
- SQL Server Management Studio (SSMS)
- Git
- GitHub

---

📅 Continuação do meu plano de estudos para construir uma base sólida em SQL antes de avançar para Administração de Banco de Dados (DBA).