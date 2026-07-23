 -- Questão 2 : 
   select cidade, avg(idade) from Alunos 
   group by cidade 
    having avg(idade) > 20; 

 -- Questão 3 : 
   select c.nomeCurso, count(*) as Quantidade from Alunos as a 
   Join Cursos c on a.idCurso = c.id 
   group by c.nomeCurso
   having count(*) >= 2; 

 -- Questão 4 : 
    select c.nomeCurso, avg(idade) as MediaIdade from Alunos as a 
    join Cursos as c on a.idCurso = c.id 
    group by c.nomeCurso 
    having avg(idade) > 20;

 -- Questão 5 : 
   select c.nomeCurso, max(idade) as MaiorIdade from Alunos as a 
    join Cursos as c on a.idCurso = c.id 
    group by c.nomeCurso 
    having max(idade) > 22;

 -- Questão 6 : 
  select cidade, min(idade) as MenorIdade from Alunos
    group by cidade
    having min(idade) >= 20;

 -- Questão 7 : 
   select count(*),sum(valor) from Mensalidades ;
  
 -- Questão 8 : 
   create table Salas(
   id int primary key identity(1,1),
   numeroSala int not null,
   bloco varchar(50) not null); 

    insert into Salas (numeroSala,bloco) values
    (101,'Bloco A'),
    (102,'Bloco A'),
    (201,'Bloco B'),
    (202,'Bloco B');

    --select * from Salas
   --  order by bloco;

-- Questão 9 : 
  select c.nomeCurso,count(*) as Quantidade from Alunos as a
  join Cursos as c on  a.idCurso = c.id
  group by c.nomeCurso
  order by Quantidade desc; 

-- Bônus : 
  select c.nomeCurso,count(*) as Quantidade,avg(idade) as MediaIdade,max(idade) as MaiorIdade,min(idade) as MenorIdade from Alunos as a 
join Cursos as c on a.idCurso = c.id
group by c.nomeCurso
having count(*) >1;