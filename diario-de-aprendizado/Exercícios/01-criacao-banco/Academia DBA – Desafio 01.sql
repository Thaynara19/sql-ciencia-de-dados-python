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
