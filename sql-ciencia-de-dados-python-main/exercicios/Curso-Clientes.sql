CREATE TABLE Clientes(
id INT not null IDENTITY (1,1),
-- id int not nuul, significa que é um identificador unico e precisa ser preenchido.
-- IDNTITY é um contador de cadastro.
-- (1,1) vai ser contado de 1 em 1, ex : 1,2,3 ...
 nome varchar (30) not null,
 nascimento date not null, 
 peso decimal(5,2) not null,  -- DECIMAL é usado para valores numéricos exatos
 altura decimal (2,2) not null,
 endereco varchar (20),

 PRIMARY KEY (id)
);