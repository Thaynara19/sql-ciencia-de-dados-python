-- Questão 1 : 
  select cidade,count(*) from Alunos
  group by cidade;

-- Questão 2 : 
  select cidade,avg(idade) from Alunos as Quantidade
  group by cidade;

-- Questão 3 : 
   select cidade,max(idade) from Alunos as Quantidade
   group by cidade;

-- Questão 4 : 
   select cidade,min(idade) from Alunos as Quantidade 
   group by cidade;

-- Questão 5 : 
   select c.nomeCurso,count(*) as Quantidade from Alunos as a 
   join Cursos as c on a.idCurso = c.id
   group by c.nomeCurso;
   
-- Questão 6 : 
   select c.nomeCurso,avg(idade) as MédiaIdade from Alunos as a 
   join Cursos as c on a.idCurso = c.id
   group by c.nomeCurso;

-- Questão 7 : 
   select c.nomeCurso,max(idade) as MaximaIdade from Alunos as a 
   join Cursos as c on a.idCurso = c.id
   group by c.nomeCurso;

-- Questão 8 : 
   select c.nomeCurso,min(idade) as MenorIdade from Alunos as a 
   join Cursos as c on a.idCurso = c.id
   group by c.nomeCurso;

-- Questão 9 : 
   create table Mensalidades (
    id int primary key identity(1,1),
    nomeCurso varchar (50) not null,
    valor int not null
   );

   insert into Mensalidades (nomeCurso,valor) values 
   ('ADS',350),
   ('Ciência de Dados', 500),
   ('Engenharia de Dados',700),
   ('Power BI', 250);

-- Questão 10 : 
   select sum(valor) from Mensalidades;

-- Bônus : 
   select c.nomeCurso,count(*) as Quantidade,avg(idade) as MédiaIdade,max(idade) as MaximaIdade,min(idade) as MenorIdade from Alunos 
   as a 
   join Cursos as c on a.idCurso = c.id
   group by Cursos;