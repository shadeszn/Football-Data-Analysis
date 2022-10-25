create table t1(
	player text,
	"90s" decimal,
	sca90 decimal,
	goals int,
	assists int,
	gi int
);

insert into t1
select c."Player", c."90s", "SCA90", s."Gls", p."Ast", s."Gls" + p."Ast" as ga
from creativity as c
JOIN big5_shooting_2021_22 as s ON s."Player" = c."Player"
join big5_passing_2021_22 as p ON p."Player" = c."Player"
where c."90s" > 10
order by "SCA90" DESC, ga desc;

delete from t1
where "player" in (
select "player"
from t1
group by "player"
having count("player") > 1);

copy(select *, round(gi / "90s", 2) as GI90 
from t1
limit 150) TO 'D:\stats project\finaldata_csv (for viz)\gi_vs_sca.csv' CSV HEADER;

select *, round(gi / "90s", 2) as GI90 
from t1
where round(gi / "90s", 2) > 1;