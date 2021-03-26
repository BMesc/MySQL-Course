describe pessoas; /* mostra a estrutura da tabela */
desc gafanhotos;

alter table pessoas /*altera o nome da tabela pessoas para gafanhotos */
rename to gafanhotos;

alter table pessoas                 /*altera a tabela pessoas para adicionar a coluna profissao no fim */
add column profissao varchar(10) ;

alter table pessoas				/*altera a tabela pessoas para adicionar a coluna profissao depois da coluna nome e nao aceita nulos e default em branco*/
add column profissao varchar(10) not null default '' after nome;

alter table pessoas				/*altera a tabela pessoas para adicionar a coluna codigo em primeiro lugar*/
add column codigo int first;

alter table pessoas				/*altera a tabela pessoas para apagar a coluna profissao */
drop column profissao;

alter table pessoas				/*altera a tabela pessoas para modificar a coluna profissao para 20 caracteres (not null e default reescritos) */
modify column profissao varchar(20) not null default '';

alter table	pessoas 			/*altera a tabela pessoas para renomar a coluna profissao para prof(not null e default reescritos) */				
change column profissao prof varchar(20) not null default '';

select * from pessoas;		/*mostra como está a tabela até agora */