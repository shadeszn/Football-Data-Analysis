copy (select "Player", "Squad", "90s", "PSxG+/-", "/90"
from pl_gkadv_2021_22
where "90s" >= 19
order by "/90") TO 'D:\stats project\finaldata_csv (for viz)\gk_psxg.csv' CSV HEADER; 

copy(select gk."Player", gk."Squad", gk."90s", "SoTA", "PSxG+/-", "/90",
round(("PSxG+/-"*100.0 / "SoTA")::decimal,2) as "GSAA%"
from pl_gk_2021_22 as gk
join pl_gkadv_2021_22 as gka
on gk."Player" = gka."Player"
and gk."90s" >= 19
order by "GSAA%") TO 'D:\stats project\finaldata_csv (for viz)\gk_gsaa.csv' CSV HEADER;