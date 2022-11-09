copy(select avg(def) as def, avg(mid) as mid, avg(att) as att
from(
select team, count(case when x <= 40 then true else null end) as def,
count(case when x > 40 and x <=80 then true else null end) as mid,
count(case when x > 80 then true else null end) as att
from (
select player, team,
split_part(split_part(split_part("location",'}',1),'{',2),',',1)::decimal as x,
split_part(split_part(split_part("location",'}',1),'{',2),',',2)::decimal as y
from isl_pressures_2021_22
) as temp
group by team) as temp1) TO 'D:\stats project\Football-Data-Analysis\finaldata_csv (for viz)\isl_press_leagueavg.csv' CSV HEADER;

copy(select team, def*100.0/(def+mid+att) as "def%",
mid*100.0/(def+mid+att) as "mid%",
att*100.0/(def+mid+att) as "att%"
from(
select team, count(case when x <= 40 then true else null end) as def,
count(case when x > 40 and x <=80 then true else null end) as mid,
count(case when x > 80 then true else null end) as att
from (
select player, team,
split_part(split_part(split_part("location",'}',1),'{',2),',',1)::decimal as x,
split_part(split_part(split_part("location",'}',1),'{',2),',',2)::decimal as y
from isl_pressures_2021_22
) as temp
group by team) as temp1) TO 'D:\stats project\Football-Data-Analysis\finaldata_csv (for viz)\isl_pressperc.csv' CSV HEADER;

copy(select team, count(case when x <= 40 then true else null end) as def,
count(case when x > 40 and x <=80 then true else null end) as mid,
count(case when x > 80 then true else null end) as att
from (
select player, team,
split_part(split_part(split_part("location",'}',1),'{',2),',',1)::decimal as x,
split_part(split_part(split_part("location",'}',1),'{',2),',',2)::decimal as y
from isl_pressures_2021_22
) as temp
group by team) TO 'D:\stats project\Football-Data-Analysis\finaldata_csv (for viz)\isl_teampress.csv' CSV HEADER;

select player, team, count(case when x > 40 then true else null end) as opp
from (
copy(select player, team, "position",
split_part(split_part(split_part("location",'}',1),'{',2),',',1)::decimal as x,
split_part(split_part(split_part("location",'}',1),'{',2),',',2)::decimal as y
from isl_pressures_2021_22) TO 'D:\stats project\Football-Data-Analysis\finaldata_csv (for viz)\isl_pressevents.csv' CSV HEADER;
) as temp
group by player, team
order by opp desc