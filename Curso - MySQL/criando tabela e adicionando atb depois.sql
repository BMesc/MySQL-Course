create table if not exists curso(
nome varchar(30) not null unique,
descricao text,
carga int unsigned,
totaula int unsigned,
ano year default '2020'
) default charset = utf8; 

alter table curso
add column idcurso int first;

alter table curso
add primary key(idcurso);

desc curso;

drop table curso;
