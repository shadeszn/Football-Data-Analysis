copy(select gk."Player", gk."Squad", gk."90s", round(("PSxG+/-"*100.0 / "SoTA")::decimal,2) as "GSAA%",
"Stp%", "Cmp%", "Launch%", "AvgLen", "#OPA/90", "AvgDist"
from big5_gk_2021_22 as gk
join big5_gkadv_2021_22 as gka
on gk."Player" = gka."Player"
and gk."90s" >= 17 and "SoTA" > 0) TO 'D:\stats project\Football-Data-Analysis\finaldata_csv (for viz)\gk_pizza.csv' CSV HEADER;;