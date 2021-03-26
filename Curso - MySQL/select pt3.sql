select totaulas, count(*) from cursos
group by totaulas
order by totaulas desc;

select ano, count(*) from cursos
where totaulas > 30
group by ano
having ano > 2013
order by count(*) desc;