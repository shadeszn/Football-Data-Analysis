create table wsl_xgf_xga(
	match int,
	type varchar,
	ars numeric,
	che numeric,
	mun numeric,
	mci numeric,
	bha numeric,
	avl numeric,
	lei numeric,
	rea numeric,
	whu numeric,
	eve numeric,
	tot numeric
)

copy wsl_xgf_xga
from 'D:\stats project\Football-Data-Analysis\rawdata_csv (for pandas)\wsl_xGF_xGA.csv'
delimiter ','
csv header;
