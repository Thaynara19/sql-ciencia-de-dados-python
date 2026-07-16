-- Questão 1 : 
  select * from Alunos 
  where nome like %M; -- Correto é where nome like 'M%', eu esqueci de colocar as aspas e inverti a ordem do % 

-- Questão 2 : 
  select * from Alunos 
  where nome like a%; -- Correto é where nome like '%a'

-- Questão 3 : 
 select * from Alunos 
  where nome like %o%; -- Correto é where nome like '%o%'

-- Questão 4 : 
  select * from Alunos 
  where idade between 18 and 22;

-- Questão 5 : 
  select * from Alunos 
  where idade between 20 and 25
  order by idade desc;

-- Questão 6 :
  select * from Professores 
  where disciplina like %M; -- Correto é where nome like 'M%'

-- Questão 7 : 
  select * from Professores 
  where nome like %a%; -- Correto é where nome like '%a%'

-- Questão 8 : 
  select count(*) from Alunos
  where idade between 18 and 25 ;

-- Questão 9 : 
  select max(idade) from Alunos 
  where idade between 18 and 25;

-- Questão 10 : 
  select avg(idade) from Alunos
  where idade between 18 and 25;

-- Questão 11 : 
  create table Disciplinas (
   id int primary key identity(1,1),
   nomeDisciplina varchar (50) not null,
   cargaHoraria int not null
);
  insert into Disciplina (nomeDisciplina,cargaHoraria) values -- Errei a sintaxe faltou a letra no final da palavra Disciplina
  ('Analise e desenvolvimento de sistema', 80),
  ('Ciências de dados', 50),
  ('Engenharia de dados',40),
  ('Power BI', 40),
  ('Analista de dados',30);

  select * from Disciplina -- Errei a sintaxe faltou a letra no final da palavra Disciplina
  where cargaHoraria between 40 and 80
  order by cargaHoraria desc;



