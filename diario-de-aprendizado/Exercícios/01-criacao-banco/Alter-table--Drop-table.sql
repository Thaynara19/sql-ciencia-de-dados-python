CREATE TABLE teste(
    nome varchar (20),
    matricula varchar(10),
    descricao text,
    carga int,
    totalaulas int,
);

ALTER TABLE teste 
 add professor varchar(30);

ALTER TABLE teste 
drop  descricao;

SELECT * FROM teste;
