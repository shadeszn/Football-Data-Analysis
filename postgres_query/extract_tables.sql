COPY (select "Player", "Squad", "Cmp%", round(("Cmp" / "90s")::decimal, 2) as pp90
from passing
where "90s" >= 19
order by "Cmp" desc
LIMIT 100) TO 'D:\stats project\finaldata_csv (for viz)\passing.csv' CSV HEADER;

select "Player", "Cmp%", round(("Cmp" / "90s")::decimal, 2) as pp90
from passing
where "90s" >= 19
and "Cmp%" = 48
order by "Cmp" desc
LIMIT 100;