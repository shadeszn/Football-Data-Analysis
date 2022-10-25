with temp as (
select distinct c."Player", c."90s", "SCA90", s."Gls", p."Ast", s."Gls" + p."Ast" as ga
from creativity as c
JOIN big5_shooting_2021_22 as s ON s."Player" = c."Player"
join big5_passing_2021_22 as p ON p."Player" = c."Player"
where c."90s" > 10
order by "SCA90" DESC, ga desc)

select "Player", count("Player")
from temp
group by "Player";
