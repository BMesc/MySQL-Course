select * from cursos
where nome like 'a%'; 


select * from cursos
where nome like '%a'; 


select * from cursos
where nome like '%a%'; 

select * from cursos
where nome like 'ph%p_'; 


select * from gafanhotos
where nome like '%_silva%'; 



select distinct nacionalidade from gafanhotos
order by nacionalidade;

select count(*) from cursos where carga > 40;

select max(carga) from cursos;

select nome, min(totaulas) from cursos where ano = '2016';

select sum(totaulas) from cursos where ano = '2016';

select AVG(totaulas) from cursos where ano = '2016';


update cursos set nome = 'PáOO' where idcurso = '9';