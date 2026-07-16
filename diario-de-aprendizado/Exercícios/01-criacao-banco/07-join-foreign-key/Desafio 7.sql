-- desafio 07 - relacionamento entre tabelas e join

-- Questão 1
create table Cursos(
    id int primary key identity(1,1),
    nomeCurso varchar(50) not null,
    cargaHoraria int not null
);

-- Questão 2
insert into Cursos (nomeCurso,cargaHoraria) values
('ADS',40),
('Ciência de Dados',30),
('Engenharia de Dados',80);

-- Questão 3
alter table Alunos
add idCurso int;

-- Questão 4
alter table Alunos
add constraint FK_Alunos_Cursos
foreign key (idCurso)
references Cursos(id);

-- Questão 5
update Alunos
set idCurso = 1
where nome = 'João';

update Alunos
set idCurso = 2
where nome = 'Maria';

update Alunos
set idCurso = 1
where nome = 'Pedro';

update Alunos
set idCurso = 3
where nome = 'Ana';

update Alunos
set idCurso = 2
where nome = 'Lucas';

-- Questão 6
select *
from Alunos;

-- Questão 7
select
a.nome,
c.nomeCurso
from Alunos as a
join Cursos as c
on a.idCurso = c.id;

-- Questão 8
select
a.nome,
a.cidade,
c.nomeCurso
from Alunos as a
join Cursos as c
on a.idCurso = c.id;

-- Questão 9
select
a.nome,
c.nomeCurso
from Alunos as a
join Cursos as c
on a.idCurso = c.id
where c.nomeCurso = 'Ciência de Dados';

-- Questão 10
select
a.nome,
c.nomeCurso
from Alunos as a
join Cursos as c
on a.idCurso = c.id
order by a.nome;

-- Questão 11
select
a.nome,
c.nomeCurso
from Alunos as a
join Cursos as c
on a.idCurso = c.id
order by c.nomeCurso,a.nome;

-- Questão 12
select
c.nomeCurso,
count(*) as Quantidade
from Alunos as a
join Cursos as c
on a.idCurso = c.id
group by c.nomeCurso;

-- Questão 13
select
c.nomeCurso,
avg(a.idade) as MediaIdade
from Alunos as a
join Cursos as c
on a.idCurso = c.id
group by c.nomeCurso;

-- Questão 14
select
a.nome
from Alunos as a
join Cursos as c
on a.idCurso = c.id
where c.cargaHoraria > 50;

-- Questão 15
select
a.nome,
c.nomeCurso
from Alunos as a
join Cursos as c
on a.idCurso = c.id
where a.cidade = 'Goiânia';