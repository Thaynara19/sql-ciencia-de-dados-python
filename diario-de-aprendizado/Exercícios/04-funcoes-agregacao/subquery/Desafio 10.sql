-- Questão 1 :
    select * from Alunos 
    where idade >  ( 
        select avg(idade) from Alunos 
        where idade 
    );

-- Questão 2 :
    select * from Alunos 
    where nomeCurso = (
        select *  from Cursos
        where nomeCurso = 'Ciência de Dados'
    )
    
-- Questão 3 : 
    select * from Cursos
    where nomeCurso > (
        select max(cargaHoraria) from Cursos
    );

-- Questão 4 : 
    select a.nomeAlunos,c.nomeCurso from Alunos as a
    join Cursos as c on a.idCurso = c.id
    where a.nomeAlunos =(
        select max(cargaHoraria) from Cursos
    );
    
-- Questão 5 :
    select * from Cursos
    where idAluno = (
        select * from Alunos
        where idCurso = 1 
    )

-- Questão 6 : 
    select * from Cursos
    where idAlunos = (
        select * from Alunos 
        where idCurso is not null
    )

-- Questão 7 : 
    select max(mensalidade) from Mensalidade

-- Questão 8 : 
    select max(valor) from Cursos
    where nomeCurso = (
        select max(mensalidade) from Mensalidade
         );