-- Questão 01 : 
  select * from Alunos;

-- Questão 2 : 
   select * from Alunos 
   order by nome asc; 

-- Questão 3 : 
  select * from Alunos 
  order by idade desc;

-- Questão 4 : 
  select * from Professores 
  order by nome;

-- Questão 5 : 
  select * from Professores 
  order by disciplina;

-- Questão 6 : 
  select * from Turmas 
  order by nomeTurma;

-- Questão 7 : 

-- Aqui a um erro,o certo seria : 
-- select * from Alunos 
-- where cidade = 'Goiânia'
-- order by nome;

 select * from Alunos 
  group by cidade 
  order by nome asc
  where cidade = 'Goiânia'; 

-- Questão 8 :
  select count(nome) from Professores;

-- Questão 9 :

-- Aqui também há um erro, o correto seria : 
-- update Professores
-- set cidade = 'Goiânia'
-- where nome = 'Maria'; Nessa questão eu confundi o enunciado . 
 
  update from Professor 
  set disciplina = 'Ciências'
  where nome = 'Maria';

-- Questão 10 :
  select * from Professores 
  order by nome; 
