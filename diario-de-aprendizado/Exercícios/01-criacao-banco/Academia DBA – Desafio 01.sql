Questão 1 :
      create database EscolaDB;

Questão 2 : 
       use EscolaDB;

Questão 3: 
        create table Alunos(
      id int primary key identity(1,1) not null,
      nome varchar (100) not null,
      idade int not null,   
      cidade varchar (50) not null
);

Questão 4 : 
     insert into Alunos values 
     (‘João’, 20, ‘Goiânia’),
     (‘Maria’, 22, ‘Anápolis’),
      (‘Pedro’,19,‘Goiânia’),
      (‘Ana’,25,’Brasilia’),
      (‘Lucas’,18,‘Goiânia’);

Questão 5 : 
      select * from Alunos;

Questão 6 :
       select nome,cidade from Alunos; 

Questão 7 : 
    select * from Alunos
    where cidade = ‘Goiânia’;

Questão 8 : 
      select * from Alunos 
      Where idade > 20;

Questão 9 : 
     update Alunos 
     set idade = 20
     where nome = ‘Pedro’;

Questão 10 : 
      delete from Alunos
      where nome = ‘Lucas’;

Questão 11 : 
    select count(*) from Alunos;

Questão 12 : 
     select max(idade) from Alunos;

Questão 13 : 
      select min(idade) from Alunos;

Questão 14 : 
      select avg(idade) from Alunos;

Desafio final : 
       create table Cursos(
       id int primary key identity(1,1), 
       nomeCurso varchar (100) not null,
       cargaHoraria int not null
);

Final das questões.
