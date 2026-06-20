

 create table Secretaria(
     idSecretaria int primary key identity (1,1),
     nomeFuncionario varchar(50),
     telefone varchar(15),
     email varchar(80)
 );

  insert into Secretaria(nomeFuncionario,telefone,email)values 
      ('Alberto','9999-0000','alberto@gmail.com'),
      ('Matheus','6666-8888','matheuss@gmail.com'),
      ('Lua','4442-7777','lua@gmail.com'),
      ('Amora','5555-7777','amora@gmail.com');

   create table Matriculas(
       idMatriculas int primary key identity(1,1),
       dataMatricula date,
       statusMatricula varchar(100)

   );
  
  alter table Matriculas 
  add idAlunos int;

  alter table Matriculas
  add idCursos int;

  alter table Matriculas 
  add idSecretaria int;

  alter table Matriculas 
  add FOREIGN KEY (idAlunos)
  references Alunos(idAlunos) ;

  alter table Matriculas 
  add foreign key (idCursos)
  references Curso(idCursos) ;

  alter table Matriculas 
  add foreign key (idSecretaria)
  references Secretaria(idSecretaria) ;
 
    insert into Matriculas (dataMatricula,statusMatricula,idAlunos,idCursos,idSecretaria) values 
   ('2026-06-18', 'Ativa', 3, 1, 1),
   ('2026-06-18', 'Ativa', 5, 2, 1),
   ('2026-06-19', 'Pendente', 3, 3, 2),
   ('2026-06-19', 'Ativa', 4, 1, 2),
   ('2026-06-20', 'Cancelada', 5, 2, 3),
   ('2026-06-20', 'Ativa', 6, 4, 3),
   ('2026-06-21', 'Pendente', 7, 3, 4),
   ('2026-06-21', 'Ativa', 8, 2, 4);
 
 select nomeAluno,dataMatricula,nomeCurso,nomeFuncionario 
   from Matriculas 
   join Alunos
   on Matriculas.idAlunos = Alunos.idAlunos
   join Curso
   on Matriculas.idCursos = Curso.idCursos
   join Secretaria 
   on Matriculas.idSecretaria = Secretaria.idSecretaria;


  select nomeAluno,dataMatricula,nomeCurso,nomeFuncionario 
  from Matriculas 
  join Alunos
  on Matriculas.idAlunos = Alunos.idAlunos
  join Curso
  on Matriculas.idCursos = Curso.idCursos
  join Secretaria 
  on Matriculas.idSecretaria = Secretaria.idSecretaria;


