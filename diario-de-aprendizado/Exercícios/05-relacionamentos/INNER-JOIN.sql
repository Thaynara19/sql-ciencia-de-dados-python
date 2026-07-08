use EstudosDados;


alter table Alunos
add cursoPreferido int;

alter table Alunos 
add foreign key (cursoPreferido)
references Curso(idCursos);

insert into Curso (nomeCurso, cargaHoraria) values

('SQL Server',40),
('Power BI', 50),
('Python', 60),
('Excel', 20);

select * from Curso;

insert into Alunos (nomeAluno,idade) values 
('Agata',18),
('Vanessa',35), 
('Jaqueline',20),
('Junior',40),
('Marcelo',20),
('Maria',15),
('joão',23),
('Pedro',55),
('Maria',22);

delete from Alunos
where idAlunos > 9; --Inseri duas vezes os atributos da tabela, por isso foi usado um delete.


UPDATE Alunos
SET cursoPreferido = 2
WHERE nomeAluno = 'Jaqueline';

UPDATE Alunos
 SET cursoPreferido = 4
 WHERE nomeAluno = 'Junior';

 UPDATE Alunos
 SET cursoPreferido = 1
 WHERE nomeAluno = 'Marcelo';

 UPDATE Alunos
 SET cursoPreferido = 4
 WHERE nomeAluno = 'Rosa';

 UPDATE Alunos
 SET cursoPreferido = 2
 WHERE nomeAluno = 'João';

 UPDATE Alunos
 SET cursoPreferido = 1
 WHERE nomeAluno = 'Pedro';

 UPDATE Alunos
 SET cursoPreferido = 2
 WHERE nomeAluno = 'Maria' ;

 select * from Alunos;

 select a.nomeAluno,a.idade,c.nomeCurso,c.cargaHoraria from Alunos 
  as a join Curso as c 
  on c.idCursos = a.cursoPreferido
  WHERE a.nomeAluno = 'João';



select c.nomeCurso,count(*) as QuantidadeAlunos from Alunos as a 
join Curso as c on a.cursoPreferido = c.idCursos
group by c.nomeCurso
order by c.nomeCurso;