-- Questão 1 : 
    select * from Alunos 
    where idade < (
        select avg(idade) from Alunos
    ) 

-- Questão 2 : 
    select * from Cursos
    where cargaHoraria = (
        select min(cargaHoraria) from Cursos
    )

-- Questão 3 : 
    select * from Alunos
    where idCurso = ( 
        select * from Cursos -- select id from Cursos
        where idCurso = 'ADS' -- nomeCurso = 'ADS'
    )

-- Questão 4 : 
    select * from Cursos
    where idAluno = ( -- where id in 
        select * from Alunos -- select idCurso from Alunos
        where in idCurso
    )

 -- Questão 5 : 
    select * from Cursos
    where id not in (
         select id from Alunos
    )

-- Questão 6 : 
    select * from Mensalidades 
    where valor >(
          select avg(valor) from Mensalidade
    )

-- Questão 7 : 
    select * from Mensalidade 
    where valor = (
        select min(valor) from Mensalidade
    )

-- Questão 8 : 
    select * from Cursos
    where cargaHoraria > (
        select avg(cargaHoraria) from Cursos
    )

-- Bônus 
    select * from Alunos 
    where idCurso = (
        select max(cargaHoraria) from Curso 
    )
-- Correção da questão Bônus
select *
from Alunos
where idCurso = (
    select id
    from Cursos
    where cargaHoraria = (
        select max(cargaHoraria)
        from Cursos
    )
);
