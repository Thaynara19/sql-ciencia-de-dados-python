## Exercício 1

### Questão

Selecionar o nome de todas as pessoas cadastradas.

### Minha resposta

```sql
SELECT nome FROM cadastro;
```

✅ Correto

---

## Exercício 2

### Questão

Listar todos os dados das pessoas que nasceram após 01/01/2005.

### Minha resposta

```sql
SELECT * FROM cadastro WHERE nascimento > '2005/01/01';
```

### Correção

```sql
SELECT *
FROM cadastro
WHERE nascimento > '2005-01-01';
```

✅ Correto

---

## Exercício 3

### Questão

Listar o nome e a profissão de todas as mulheres cadastradas.

### Minha resposta

```sql
SELECT nome,profissão
FROM cadastro
WHERE sexo = 'F';
```

✅ Correto

---

## Exercício 4

### Questão

Listar pessoas com peso entre 60kg e 80kg.

### Minha resposta

```sql
SELECT *
FROM cadastro
WHERE peso BETWEEN 60 AND 80;
```

✅ Correto

---

## Exercício 5

### Questão

Listar o nome das pessoas que nasceram no Brasil.

### Minha resposta

```sql
SELECT nome
FROM cadastro
WHERE nacionalidade = 'Brasil';
```

✅ Correto

---

## Exercício 6

### Questão

Listar o nome das pessoas que não nasceram no Brasil.

### Minha resposta

```sql
SELECT nome
FROM cadastro
WHERE nacionalidade <> 'Brasil';
```

✅ Correto

---

## Exercício 7

### Questão

Listar pessoas cujo nome começa com a letra A.

### Minha resposta

```sql
SELECT * FROM cadastro LIKE nome '%A';
```

### Correção

```sql
SELECT *
FROM cadastro
WHERE nome LIKE 'A%';
```

❌ Errei a sintaxe do LIKE.

---

## Exercício 8

### Questão

Listar pessoas cujo nome termina com a letra A.

### Minha resposta

```sql
SELECT * FROM cadastro LIKE nome 'a%';
```

### Correção

```sql
SELECT *
FROM cadastro
WHERE nome LIKE '%a';
```

❌ Errei a posição do curinga `%`.

---

## Exercício 9

### Questão

Listar pessoas que possuem Silva no nome.

### Minha resposta

```sql
SELECT * FROM cadastro LIKE nome '%Silva%';
```

### Correção

```sql
SELECT *
FROM cadastro
WHERE nome LIKE '%Silva%';
```

❌ Esqueci de utilizar o WHERE.

---

## Exercício 10

### Questão

Listar profissões sem repetir valores.

### Minha resposta

```sql
SELECT DISTINCT(profissões)
FROM cadastro;
```

### Correção

```sql
SELECT DISTINCT profissao
FROM cadastro;
```

⚠️ Erro no nome da coluna.

---

## Exercício 11

### Questão

Contar quantas pessoas estão cadastradas.

### Minha resposta

```sql
SELECT COUNT(pessoas)
FROM cadastro;
```

### Correção

```sql
SELECT COUNT(*)
FROM cadastro;
```

❌ Ainda preciso praticar COUNT().

---

## Exercício 12

### Questão

Maior peso cadastrado.

### Minha resposta

```sql
SELECT MAX(peso)
FROM cadastro;
```

✅ Correto

---

## Exercício 13

### Questão

Menor altura cadastrada.

### Minha resposta

```sql
SELECT MIN(altura)
FROM cadastro;
```

✅ Correto

---

## Exercício 14

### Questão

Média de peso dos cadastrados.

### Minha resposta

```sql
SELECT AVG(peso)
FROM cadastro;
```

✅ Correto

---

## Exercício 15

### Questão

Quantidade de mulheres cadastradas.

### Minha resposta

```sql
SELECT COUNT(*)
FROM cadastro
WHERE sexo = 'F';
```

✅ Correto

---

## Exercício 16

### Questão

Listar homens brasileiros.

### Minha resposta

```sql
SELECT nome
FROM cadastro
WHERE sexo = 'M'
AND nacionalidade = 'Brasileiros';
```

### Correção

```sql
SELECT nome
FROM cadastro
WHERE sexo = 'M'
AND nacionalidade = 'Brasil';
```

⚠️ Valor incorreto na condição.

---

## Exercício 17

### Questão

Listar mulheres estrangeiras.

### Minha resposta

```sql
SELECT nome
FROM cadastro
WHERE sexo = 'F'
AND nascionalidade <> 'Brasil';
```

⚠️ Apenas erro de digitação na coluna.

---

## Exercício 18

### Questão

Listar homens brasileiros com menos de 90kg.

### Minha resposta

```sql
SELECT *
FROM cadastro
WHERE nacionalidade = 'Basil'
AND sexo = 'M'
AND peso < 90;
```

### Correção

```sql
SELECT *
FROM cadastro
WHERE nacionalidade = 'Brasil'
AND sexo = 'M'
AND peso < 90;
```

⚠️ Erro de digitação.

---

## Exercício 19

### Questão

Listar estrangeiros nascidos entre 1990 e 2005.

### Minha resposta

```sql
SELECT *
FROM cadastro
WHERE nacionalidade <> 'Brasil'
AND nascimento BETWEEN '1990' AND '2005';
```

### Correção

```sql
SELECT *
FROM cadastro
WHERE nacionalidade <> 'Brasil'
AND nascimento BETWEEN '1990-01-01' AND '2005-12-31';
```

⚠️ Melhor especificar datas completas.

---

## Exercício 20

### Questão

Contar homens brasileiros.

### Minha resposta

```sql
SELECT COUNT(*)
FROM cadastro
WHERE nascionalidade = 'Brasil';
```

### Correção

```sql
SELECT COUNT(*)
FROM cadastro
WHERE sexo = 'M'
AND nacionalidade = 'Brasil';
```

❌ Esqueci de filtrar pelo sexo.

---
