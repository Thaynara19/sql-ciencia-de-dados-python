Questão 1 : -- Aqui era para ser o insert .
            -- insert into Alunos (nome, idade, cidade)
            -- values ('Carlos', 23, NULL); e fiz o update por isso está errado, confundi o enunciado.
  update Alunos 
  set nome = 'Carlos'
  where idade = 23 and cidade is null;

Questão 2 : -- select * from Alunos where cidade is null; o correto é assim.
  select * from Alunos 
  where cidade is not null

Questão 3 : -- select * from Alunoos where cidade is not null;
  select * from Alunos 
  where cidade is null;

Questão 4 :
  select * from Alunos 
  where cidade in ('Goiânia','Brasília');

Questão 5 : 
  selcet * from Professores  -- Aqui houve um erro de sintaxe no select.
  where cidade in ('Goiânia','Anápolis');

Questão 6 : 
  select * from Professores 
  where cidade not in ('Goiânia','Brasília');

Questão 7 : 
  select count(*) from Alunos
  where cidade in ('Goiânia','Brasília');

Questão 8 : 
  select max(idade) from Alunos
  where cidade in ('Goiânia','Brasília');

Questão 9 : 
  select avg(idade) from Alunos
  where cidade in ('Goiânia','Brasília');

Questão 10 : 
  select * from Alunos 
  order by nome ;

Questão 11 : 
  create table Departamentos (
  id int primary key identity(1,1),
  nomeDepartamento varchar(50) not null,
  bloco varchar(50) not null
);
insert into Departamentos (nomeDepartamento) values --Aqui ficou incompleto,faltou colocar os blocos.
('Informática'),
('Matemática'),
('Administração'),
('Biblioteca'),
('Coordenação');

select * from Departamentos 
where nomeDepartamento in ('Informática','Biblioteca','Coordenação');

select * from Departamentos 
where nomeDepartamento in ('Informática','Matemática','Administração','Coordenação');
-- E aqui poderia ser : 
-- select * from Departamentos where nomeDepartamento not in ('Biblioteca');