## Exercício 1

### Questão

Listar as profissões dos cadastrados e seus respectivos quantitativos.

### Minha resposta

```sql
SELECT profissao, COUNT(*)
FROM cadastro
GROUP BY profissao;
```

### Resultado

✅ Correto

### Aprendizado

Aprendi que o `GROUP BY` agrupa os registros e o `COUNT(*)` conta quantas pessoas existem em cada grupo.

---

## Exercício 2

### Questão

Mostrar quantas pessoas existem de cada nacionalidade.

### Minha resposta

```sql
SELECT pessoas, COUNT(*)
FROM cadastro
WHERE nacionalidade
GROUP BY nacionalidade
ORDER BY nacionalidade ASC;
```

### Correção

```sql
SELECT nacionalidade, COUNT(*)
FROM cadastro
GROUP BY nacionalidade
ORDER BY nacionalidade ASC;
```

### Erro

- Utilizei uma coluna inexistente (`pessoas`).
- Usei `WHERE` sem necessidade.

### Aprendizado

Nem toda consulta agrupada precisa utilizar `WHERE`.

---

## Exercício 3

### Questão

Mostrar apenas as profissões que possuem mais de 3 pessoas cadastradas.

### Minha resposta

```sql
SELECT profissao
FROM cadastro
HAVING profissao > 3;
```

### Correção

```sql
SELECT profissao, COUNT(*)
FROM cadastro
GROUP BY profissao
HAVING COUNT(*) > 3;
```

### Erro

Confundi o funcionamento do `HAVING`.

### Aprendizado

O `HAVING` trabalha sobre resultados agrupados, normalmente utilizando:

```sql
COUNT()
AVG()
MIN()
MAX()
SUM()
```

---

## Exercício 4

### Questão

Mostrar a média de peso agrupada por sexo.

### Minha resposta

```sql
SELECT AVG(peso)
FROM cadastro
WHERE sexo
GROUP BY sexo;
```

### Correção

```sql
SELECT sexo, AVG(peso)
FROM cadastro
GROUP BY sexo;
```

### Erro

Não exibi a coluna utilizada no agrupamento.

### Aprendizado

Quando utilizo `GROUP BY`, normalmente preciso exibir a coluna agrupada juntamente com a função de agregação.

---

## Exercício 5

### Questão

Mostrar as nacionalidades que possuem mais de 2 cadastrados.

### Minha resposta

```sql
SELECT nacionalidade, COUNT(*)
FROM cadastro
WHERE nacionalidade > 2
GROUP BY
```

### Correção

```sql
SELECT nacionalidade, COUNT(*)
FROM cadastro
GROUP BY nacionalidade
HAVING COUNT(*) > 2
ORDER BY COUNT(*) DESC;
```

### Erro

Tentei aplicar a condição utilizando `WHERE`.

### Aprendizado

Quando a condição depende do resultado de um agrupamento, deve-se utilizar `HAVING`.
---
# Resumo dos Conceitos

## GROUP BY

Agrupa registros com valores iguais.

```sql
SELECT profissao, COUNT(*)
FROM cadastro
GROUP BY profissao;
```
---

## HAVING

Filtra grupos após o agrupamento.

```sql
SELECT profissao, COUNT(*)
FROM cadastro
GROUP BY profissao
HAVING COUNT(*) > 3;
```
---

## ORDER BY

Ordena os resultados.

Ordem crescente:

```sql
ORDER BY profissao ASC;
```
Ordem decrescente:
```sql
ORDER BY COUNT(*) DESC;
```
# Principais Dificuldades

- Entender quando utilizar `WHERE`.
- Entender quando utilizar `HAVING`.
- Identificar corretamente a coluna que deve ser agrupada.
- Montar consultas com `GROUP BY` e funções de agregação ao mesmo tempo.

# Conclusão

Hoje dei os primeiros passos com GROUP BY e HAVING. Apesar dos erros de sintaxe, consegui compreender a lógica de agrupamento e a diferença entre filtrar registros individuais (`WHERE`) e filtrar grupos (`HAVING`). Continuarei praticando para ganhar mais confiança na construção dessas consultas.
