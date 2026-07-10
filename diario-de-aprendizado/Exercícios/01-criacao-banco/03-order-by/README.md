# 🎓 Academia DBA | Desafio 03 - ORDER BY

## 📅 Data : 10/07/2026

---

# 🎯 Objetivo

Neste desafio pratiquei o comando **ORDER BY**, aprendendo a organizar os resultados das consultas SQL em ordem crescente e decrescente.

O banco de dados utilizado foi o **EscolaDB**, criado nos desafios anteriores.

---

# 📝 Exercícios

## Questão 1

Liste todos os alunos.

### Conceito praticado

- `SELECT *`

---

## Questão 2

Liste os alunos em ordem alfabética pelo nome.

### Conceito praticado

- `ORDER BY`
- `ASC`

---

## Questão 3

Liste os alunos do mais velho para o mais novo.

### Conceito praticado

- `ORDER BY`
- `DESC`

---

## Questão 4

Liste todos os professores em ordem alfabética.

### Conceito praticado

- `ORDER BY`

---

## Questão 5

Liste os professores em ordem alfabética pela disciplina.

### Conceito praticado

- Ordenação por outra coluna

---

## Questão 6

Liste todas as turmas em ordem alfabética.

### Conceito praticado

- `ORDER BY`

---

## Questão 7

Liste apenas os alunos da cidade de Goiânia em ordem alfabética.

### Conceitos praticados

- `WHERE`
- `ORDER BY`

---

## Questão 8

Conte quantos professores existem cadastrados.

### Conceito praticado

- `COUNT`

---

## Questão 9

Atualize a cidade de um professor para Goiânia.

### Conceitos praticados

- `UPDATE`
- `SET`
- `WHERE`

---

## Questão 10

Liste novamente todos os professores em ordem alfabética para conferir a alteração.

### Conceitos praticados

- `SELECT`
- `ORDER BY`

---

# 📚 Novo conhecimento

Hoje aprendi o comando:

## ORDER BY

Utilizado para organizar o resultado das consultas.

### Ordem crescente

```sql
SELECT * FROM Alunos
ORDER BY nome;
```

### Ordem decrescente

```sql
SELECT * FROM Alunos
ORDER BY idade DESC;
```

---

# 💡 Aprendizados

Durante este desafio consegui compreender que:

- O `ORDER BY` organiza os registros.
- `ASC` representa ordem crescente.
- `DESC` representa ordem decrescente.
- A cláusula `WHERE` sempre vem antes do `ORDER BY`.
- O `ASC` é opcional, pois já é o padrão.

---

# ⚠️ Erros encontrados

Durante a correção identifiquei alguns pontos para melhorar:

- Confundi `GROUP BY` com `ORDER BY`.
- Escrevi `UPDATE FROM`, quando o correto é apenas `UPDATE`.
- Alterei um campo diferente do solicitado em uma das questões.
- Preciso reforçar a ordem correta das cláusulas SQL.

---

# 📈 Resultado

⭐ **Nota obtida: 9,3 / 10**

Fiquei bastante satisfeita com o resultado, pois consegui utilizar o comando **ORDER BY** praticamente sem consultar materiais, mostrando que a prática está fortalecendo minha memória dos comandos SQL.

---

# 🚀 Próximo desafio

Continuar a Academia DBA estudando o comando **LIKE**, mantendo o banco **EscolaDB** como projeto principal para consolidar os fundamentos de SQL Server e Administração de Banco de Dados.