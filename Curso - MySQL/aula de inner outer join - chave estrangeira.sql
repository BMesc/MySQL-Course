use cadastro;
desc gafanhotos;

alter table gafanhotos
add column cursopreferido int;

alter table gafanhotos
add foreign key (cursopreferido)			/* determina a chave estrangeira */
references cursos(idcurso);

select * from gafanhotos;

update gafanhotos set cursopreferido = '6' where id = '1';


select g.nome, c.nome, c.ano
from gafanhotos as g inner join cursos as c				/*mostra apenas as pessoas que preferem algum curso + o nome do curso e o ano */
on c.idcurso = g.cursopreferido
order by g.nome;

select g.nome, c.nome, c.ano
from gafanhotos as g left outer join cursos as c		/*mostra pessoas que nao preferem nenhum curso e as que preferem tbm */
on c.idcurso = g.cursopreferido
order by g.nome;

select g.nome, c.nome, c.ano
from gafanhotos as g right outer join cursos as c   /*mostra cursos que ninguém prefere  */
on c.idcurso = g.cursopreferido
order by g.nome;



select nome, ano from cursos;