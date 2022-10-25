SELECT DISTINCT s."Player", s."90s", po."1/3" / d."90s", po."CPA" / d."90s", po."Prog" / d."90s", po."Att Pen" / d."90s", s."Sh" / d."90s", po."Att" / d."90s",
d."Tkl" / d."90s", d."Int" / d."90s", m."Recov" / d."90s", m."Won" / d."90s", c."SCA" / d."90s", pa."Prog" / d."90s", pa."PPA" / d."90s", pa."1/3" / d."90s"
from big5_shooting_2021_22 as s
join big5_defensive_2021_22 as d ON d."Player" = s."Player"
join big5_miscellaneous_2021_22 as m ON m."Player" = s."Player"
join big5_passing_2021_22 as pa ON pa."Player" = s."Player"
join big5_possession_2021_22 as po on po."Player" = s."Player"
JOIN creativity as c on c."Player" = s."Player" and s."90s" > 0;