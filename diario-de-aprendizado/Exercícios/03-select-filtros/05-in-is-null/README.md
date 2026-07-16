# 📚 Desafio 05 – Operadores IN e IS NULL

## 🎯 Objetivo

Neste desafio pratiquei consultas utilizando os operadores **IN**, **NOT IN**, **IS NULL** e **IS NOT NULL**, aprendendo quando utilizar cada um deles em situações reais.

---

## 📝 Questões praticadas

### Questão 1
Cadastrar um novo aluno utilizando `INSERT`.

### Questão 2
Listar alunos que não possuem cidade cadastrada utilizando `IS NULL`.

### Questão 3
Listar alunos que possuem cidade cadastrada utilizando `IS NOT NULL`.

### Questão 4
Listar alunos das cidades Goiânia e Brasília utilizando `IN`.

### Questão 5
Listar professores das cidades Goiânia e Anápolis utilizando `IN`.

### Questão 6
Listar professores que **não** moram em Goiânia ou Brasília utilizando `NOT IN`.

### Questão 7
Contar a quantidade de alunos das cidades Goiânia e Brasília.

### Questão 8
Encontrar a maior idade entre alunos das cidades Goiânia e Brasília.

### Questão 9
Calcular a média de idade dos alunos das cidades Goiânia e Brasília.

### Questão 10
Listar todos os alunos em ordem alfabética.

### Desafio Final
Criar a tabela **Departamentos**, inserir registros e utilizar o operador `IN` para selecionar departamentos específicos.

---

## 📖 O que aprendi

Durante este desafio aprendi a diferença entre operadores que, no início, pareciam muito parecidos.

### ✔ IN

Utilizado para pesquisar vários valores ao mesmo tempo.

Exemplo:

```sql
WHERE cidade IN ('Goiânia', 'Brasília')
```

---

### ✔ NOT IN

Utilizado para excluir um ou mais valores da consulta.

Exemplo:

```sql
WHERE cidade NOT IN ('Goiânia', 'Brasília')
```

---

### ✔ IS NULL

Utilizado para localizar registros onde uma informação não foi cadastrada.

Exemplo:

```sql
WHERE cidade IS NULL
```

---

### ✔ IS NOT NULL

Utilizado para localizar registros que possuem informação cadastrada.

Exemplo:

```sql
WHERE cidade IS NOT NULL
```

---

## 💡 Dificuldades encontradas

Durante a resolução do desafio encontrei algumas dificuldades:

- Confundi `INSERT` com `UPDATE` na primeira questão.
- Inverti o uso de `IS NULL` e `IS NOT NULL`.
- Percebi a importância de observar a estrutura da tabela antes de inserir dados, principalmente quando existem campos definidos como `NOT NULL`.

Esses erros fizeram parte do aprendizado e foram corrigidos durante a revisão.

---

## 🚀 Evolução

Com este desafio já consigo utilizar com segurança:

- CREATE DATABASE
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
- COUNT
- MAX
- MIN
- AVG

A cada desafio sinto mais confiança para escrever consultas SQL sem precisar consultar material.

---

**Tecnologias utilizadas**

- SQL Server
- SQL
- SQL Server Management Studio (SSMS)
- Git
- GitHub
- Vscode

---

📅 **Objetivo:** fortalecer a base em SQL antes de avançar para conteúdos de Administração de Banco de Dados (DBA).