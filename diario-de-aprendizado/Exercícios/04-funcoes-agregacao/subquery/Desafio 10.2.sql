-- Questão 1 : 
    select nomeAluno from Alunos 
    where idCurso in  (
        select id from Cursos
        where cargaHoraria = (
            select min(cargaHoraria) from Cursos
        )
    );

-- Questão 2 : 
    select * from Cursos
    where cargaHoraria > (
        select avg(cargaHoraria) from Cursos
    );

-- Questão 3 :
    select nomeAluno from Alunos
    where idCurso = (
        select id from Cursos
        where nomeCurso = 'Power BI' 
    );

-- Questão 4 :
    select * from Cursos -- CORREÇÃO
    where idAluno not in ( -- where id not in
        select id from Alunos -- select idCurso from Alunos 
    );

-- Questão 5 : -- CORREÇÃO
    select * from Alunos 
    where id =( -- idCurso
        select id from Cursos
        where cargaHoraria = (
            select max(cargaHoraria) from Cursos
        )
    );

-- Questão 6 : -- CORREÇÃO
    select * from Cursos 
    where cargaHoraria = (
        select max(cargaHoraria) from Cursos
        -- where cargaHoraria < (
                -- select max(cargaHoraria) from Cursos
        -- )
    
    );

-- Questão 7 : 
    select * from Alunos 
    where idCurso in (
        select id from Cursos
        where cargaHoraria > 50         
    );

-- Questão 8 :
    select * from Cursos
    where idMensalidade =(
        select id from Mensalidade 
        where valor = (
            select max(valor) from Mensalidades
        )
        );

-- Bônus : 
    select * from Alunos 
    where idCurso in (
        select id from Cursos
        where idMensalidade = (
            select id from Mensalidades
            where valor = (
                select max(valor) from Mensalidades
            )
        )
    );