Questão 1: 
  create table Professores(
  id int primary key identity(1,1),
  nome varchar(100) not null,
  disciplina varchar(50) not null,
  cidade varchar(50) not null
);

Questão 2 : 
  insert into Professores (nome,disciplina,cidade) values 
  ('Adalto','Geografia','Goiânia'),
  ('Meire','Artes','Brasília'),
  ('Maria','Matemática','Anápolis'),
  ('Pedro','Biologia','Minas');

Questão 3 : 
  select * from Professores;

Questão 4 :
  select nome,disciplina from Professores;

Questão 5 : 
   select * from Professores
   where cidade = 'Goiânia';

Questão 6 :
 update Professores 
 set disciplina = 'Português'  
 where nome = 'Maria';

Questão 7 :
  delete from Professores
  where nome = 'Adalto';

Questão 8 :
  select count(*) from Professores;

Questão 9 : 
  create table Turmas(
  id int primary key identity(1,1),
  nomeTurma varchar(50) not null,
  periodo varchar(50) not null
);

Questão 10 : 
  insert into Turmas (nomeTurma,periodo) values 
  ('ADS','Matutino'),
  ('Ciência de dados','Vespertino'),
  ('Engenheiro de dados','Noturno');

