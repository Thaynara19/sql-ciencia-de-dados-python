-- Questão  1 : 
  select * from Alunos 
  where cidade = 'Goiânia'
  and idade >=20;

-- Questão  2 : 
  select * from Alunos 
  where cidade = 'Brasília'
  or cidade = 'Anápolis';

-- Questão  3 :
 select * from Professores 
 where disciplina = 'Matemática'
 and cidade = 'Anápolis';

-- Questão  4 :

 select * from Professores 
 where disciplina = 'Português'
 or cidade = 'Biologia'; 

-- Questão  5 : 
 select * from Alunos 
 where not cidade = 'Goiânia';

-- Questão  6 : 
 select * from Alunos 
 where cidade = 'Goiânia'
 and idade >=20;

-- Questão  7 : 
 select max(idade) from Alunos 
 where cidade = 'Goiânia' 
 or cidade = 'Brasília';

-- Questão  8 : 
 select avg(idade) from Alunos 
 where cidade = 'Goiânia'
 and idade between 18 and 25;

-- Questão  9 : 
 update Alunos 
 set cidade = 'Anápolis'
where nome = 'Pedro' 
and idade = 20;

-- Questão  10 : 
 select * from Alunos 
 order by nome;

-- Questão  11 : 
  create table Funcionarios(
  id int primary key identity(1,1),
  nome varchar(50) not null,
  cargo varchar(50) not null,
  cidade varchar(50),
  salario int
);
 insert into Funcionarios (nome,cargo,cidade,salario) values
('Pedro','Professor','Goiânia',6000),
('Maria','Coordenadora','Anápolis',10000),
('Gloria','Diretora','Brasília',15000),
('Arthur','Secretario','Belgica',7500),
('Gustavo','Auxiliar','Canada',2700);

 select * from Funcionarios
where cidade ='Goiânia'
and salario > 3000;

select * from Funcionarios
where cidade = ' Brasília'
or cidade = 'Anápolis';

select * from Funcionarios 
where not cargo = 'Analista';

Bônus : 
  select * from Funcionarios 
  where cidade = 'Goiânia'
  and salario between 3000 and 6000;
