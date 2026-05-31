# 📘 Diário de Aprendizado - Revisão de ALTER TABLE, PRIMARY KEY e Tipos de Dados

## Objetivo

Hoje revisei comandos de alteração de tabelas no SQL Server, praticando adição e remoção de colunas, alteração de nomes de tabelas, definição de chave primária e correção de erros de sintaxe.

---

## 1. Adicionando uma coluna

### Tentativa

```sql
ALTER TABLE teste
ADD professor VARCHAR(30);
```

### Resultado

✅ Funcionou corretamente.

### Aprendizado

O comando `ADD` é utilizado para adicionar novas colunas em uma tabela já existente.

---

## 2. Removendo uma coluna

### Tentativa

```sql
ALTER TABLE teste
DROP descricao;
```

### Correção

```sql
ALTER TABLE teste
DROP COLUMN descricao;
```

### Aprendizado

No SQL Server é necessário utilizar `DROP COLUMN` para remover uma coluna da tabela.

---

## 3. Adicionando uma coluna no início da tabela

### Tentativa

```sql
ALTER TABLE teste
ADD codigo INT FIRST;
```

### Erro

O SQL Server não reconhece a palavra `FIRST`.

### Correção

```sql
ALTER TABLE teste
ADD codigo INT;
```

### Aprendizado

O SQL Server adiciona novas colunas ao final da tabela e não permite definir a posição usando `FIRST`.

---

## 4. Adicionando uma coluna do tipo YEAR

### Tentativa

```sql
ALTER TABLE curso
ADD ano YEAR;
```

### Erro

O tipo de dado `YEAR` não existe no SQL Server.

### Correção

```sql
ALTER TABLE curso
ADD ano DATE;
```

### Aprendizado

Para armazenar apenas o ano, utiliza-se normalmente o tipo `INT`.

---

## 5. Renomeando uma tabela

### Tentativa

```sql
ALTER TABLE teste
RENAME TO curso;
```

### Erro

O SQL Server não suporta o comando `RENAME TO`.

### Correção

```sql
EXEC sp_rename 'teste', 'curso';
```

### Aprendizado

O SQL Server utiliza a procedure `sp_rename` para alterar nomes de tabelas.

---

## 6. Definindo chave primária

### Tentativa

```sql
ALTER TABLE curso
ADD PRIMARY KEY (codigo);
```

### Erro

```text
Não é possível definir a restrição PRIMARY KEY em coluna anulável.
```

### Motivo

A coluna `codigo` permitia valores `NULL`.

### Correção

```sql
ALTER TABLE curso
ALTER COLUMN codigo INT NOT NULL;

ALTER TABLE curso
ADD PRIMARY KEY (codigo);
```

### Aprendizado

Uma chave primária deve ser única e não pode aceitar valores nulos.

---

## Evolução

Hoje consegui revisar conceitos importantes sobre:

* ALTER TABLE
* ADD
* DROP COLUMN
* PRIMARY KEY
* ALTER COLUMN
* Tipos de dados
* Renomeação de tabelas
* Correção de erros comuns no SQL Server
