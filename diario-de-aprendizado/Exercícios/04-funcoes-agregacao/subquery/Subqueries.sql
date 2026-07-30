-- Questão 1 :
    select nomeAluno from Alunos 
    where idCurso in  (
        select id from Cursos
        where idMensalidade = (
            select id from Mensalidades
            where valor = (
                select max(valor) from Mensalidades
            )
        )
    );

-- Questão 2 :
    select nomeCurso,cargaHoraria from Cursos
    where cargaHoraria > (
        select avg(cargaHoraria) from Cursos
    );

-- Questão 3 : 
    select nomeAluno from Alunos 
    where idCurso in (
        select id from Cursos 
        where idMensalidade in (
            select id from Mensalidades 
            where valor > 400
        )
    );

-- Questão 4 :
    select nomeCurso from Cursos 
    where id not in (
        select idCurso from Alunos 
        where idCurso is not null
    );

-- Questão 5 : 
    select nomeAluno from Alunos 
    where idCurso in (
        select id from Cursos
        where idMensalidade in (
            select id from Mensalidades 
            where valor = (
                select min(valor) from Mensalidades
            )
        )
    );

-- Questão 6 : 
    select nomeCurso from Cursos
    where idMensalidade in (
        select id from Mensalidades 
        where valor = (
            select max(valor) from Mensalidades 
            where valor < (
                select max(valor) from Mensalidades
            )
        )
    );

-- Questão 7 : 
    select nomeAluno from Alunos
    where idCurso in (
        select id from Cursos
        where cargaHoraria between ( 
            select avg(cargaHoraria) from Cursos)
            and 
            (select max(cargaHoraia) from Cursos )
        );   
-- Questão 8 : 
    select nomeAluno from Alunos 
    where idCurso = (
        select id from Cursos
        where nomeCurso = 'Ciência de Dados'
    ) and idade = (
        select max(idade) from Alunos 
        where idCurso =(
            select id from Cursos
            where nomeCurso = 'Ciência de Dados'
        )
    )
-- Bônus :
    select c.nomeCurso,m.valor,count(a.id) as QuantidadeAlunos 
    from Cursos as c 
    join Mensalidades as m on c.idMensalidade = m.id 
    join Alunos as a on a.idCurso = c.id 
    where m.valor = (
        select max(valor) from Mensalidades
    )
        group by c.nomeCurso,m.valor;