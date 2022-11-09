copy(SELECT player_id, player, team, "position", "minute", "location", dribble_outcome
from isl_dribbles_2021_22
where player in (
select player from (
SELECT player_id, player, count(*)
from isl_dribbles_2021_22
group by player_id, player
order by count(*) desc
limit 6) as temp)) TO 'D:\stats project\Football-Data-Analysis\finaldata_csv (for viz)\isl_dribbling.csv' CSV HEADER;

copy(SELECT player_id, player, count(*) as dribbles,
count(case when dribble_outcome = 'Complete' then true else null end) as completed,
count(case when dribble_outcome = 'Incomplete' then true else null end) as failed
from isl_dribbles_2021_22
group by player_id, player
order by count(*) desc
limit 6) TO 'D:\stats project\Football-Data-Analysis\finaldata_csv (for viz)\isl_topdribblers.csv' CSV HEADER;