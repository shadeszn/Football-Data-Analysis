copy(SELECT match, type,sum(ars) over(PARTITION by type order by match) as ars,
sum(che) over(PARTITION by type order by match) as che,
sum(mci) over(PARTITION by type order by match) as mci,
sum(mun) over(PARTITION by type order by match) as mun,
sum(lei) over(PARTITION by type order by match) as lei,
sum(avl) over(PARTITION by type order by match) as avl,
sum(bha) over(PARTITION by type order by match) as bha,
sum(eve) over(PARTITION by type order by match) as eve,
sum(whu) over(PARTITION by type order by match) as whu,
sum(rea) over(PARTITION by type order by match) as rea,
sum(tot) over(PARTITION by type order by match) as tot
from wsl_xgf_xga
limit 10) TO 'D:\stats project\Football-Data-Analysis\finaldata_csv (for viz)\wsl_xga.csv' CSV HEADER;

copy(SELECT match, type,sum(ars) over(PARTITION by type order by match) as ars,
sum(che) over(PARTITION by type order by match) as che,
sum(mci) over(PARTITION by type order by match) as mci,
sum(mun) over(PARTITION by type order by match) as mun,
sum(lei) over(PARTITION by type order by match) as lei,
sum(avl) over(PARTITION by type order by match) as avl,
sum(bha) over(PARTITION by type order by match) as bha,
sum(eve) over(PARTITION by type order by match) as eve,
sum(whu) over(PARTITION by type order by match) as whu,
sum(rea) over(PARTITION by type order by match) as rea,
sum(tot) over(PARTITION by type order by match) as tot
from wsl_xgf_xga
offset 10) TO 'D:\stats project\Football-Data-Analysis\finaldata_csv (for viz)\wsl_xgf.csv' CSV HEADER;