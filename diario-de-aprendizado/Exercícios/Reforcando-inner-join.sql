use EstudosDados;

  create table Livros(
      id int primary key identity(1,1),
      titulo varchar (80),
      autor varchar(60),
      categoria varchar(40),
      anoPublicaçao int
  );

  insert into Livros (titulo,autor,categoria,anoPublicaçao) values
  ('SQL Serve para iniciantes','Carlos Silva','Banco de dados',2022),
  ('Python Essencial','Ana Souza','Programação',2023),
  ('Power BI Completo','Gustavo Lima','Business Intelligence',2021),
  ('Excel Avançado','Fernanda Costa','Planilhas',2020),
  ('Banco de Dados Relacionais','João Pedro','Banco de Dados',2024);

 alter table Livros 
 

  update Livros 
  set quantidade = 10
  where titulo = 'Python Essencial';

  update Livros 
  set quantidade = 6 
  where titulo = 'Power BI completo';

  update Livros 
  set quantidade = 12 
  where titulo = 'Excel Avançado';

  update Livros
  set quantidade = 5
  where titulo = 'Banco de dados Relacionais' ;

 alter table Alunos
 add livroFavorito;

  ALTER TABLE Alunos
  ADD CONSTRAINT FK_Alunos_Livros -- Tive a juda do chat pois não estava conseguindo fazer o relacionamento das tabelas.
  FOREIGN KEY (livroFavorito) 
  REFERENCES Livros(idLivros);

UPDATE Alunos
 SET livroFavorito = 1
 WHERE nomeAluno = 'Agata';

 UPDATE Alunos
 SET livroFavorito = 2
 WHERE nomeAluno = 'Vanessa';

 UPDATE Alunos
 SET livroFavorito = 3
 WHERE nomeAluno = 'Jaqueline';

 UPDATE Alunos
 SET livroFavorito = 4
 WHERE nomeAluno = ' junior';

 UPDATE Alunos
 SET livroFavorito = 5
 WHERE nomeAluno = 'Marcelo';

 UPDATE Alunos
 SET livroFavorito = 6
 WHERE nomeAluno = 'Maria';

 UPDATE Alunos
 SET livroFavorito = 7
 WHERE nomeAluno = 'João';

 UPDATE Alunos
 SET livroFavorito = 8
 WHERE nomeAluno = 'Pedro';

 select * from Livros;

 select * from Livros 
 where anoPublicaçao > 2021;

select * from Livros 
 where categoria = 'Banco de dados';

select * from Livros  where titulo like  'P%';

select count(*) from Livros;

select max(anoPublicaçao)from Livros;

select avg(anoPublicaçao)from Livros;

select nomeAluno, idade, livroFavorito from Alunos
join Livros on Alunos.livroFavorito = Livros.idLivro;

-- Continuação do exercício 18-06

 select nomeAluno,nomeCurso,livroFavorito 
 from Alunos
 join Curso
 on Alunos.cursoPreferido = Curso.idCursos
 join Livros
 on Alunos.livroFavorito = Livros.id;

select nomeAluno,nomeCurso,cargaHoraria,titulo,categoria
from Alunos
join Curso
on Alunos.cursoPreferido = Curso.idCursos
join Livros 
on Alunos.livroFavorito = Livros.id
order by nomeAluno;
