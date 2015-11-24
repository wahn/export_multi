	oconv bedroom.rad > bedroom.oct
	rpict -vp 1.2976994033672042 1.1692030073135413 1.0478033976002763 -vd -0.005035980231255732 -0.008616947935142782 -0.0006221833313513545 -vh 60.00000430567895 -vv 46.82645251857602 -x 3200 -y 2400 -dp 256 -ar 13 -ds 0 -dt .2 -dc .25 -dr 0 -ss 0 -st .5 -af bedroom.amb -aa .25 -ad 512 -as 0 -av 0.46 0.46 0.46 -lr 6 -lw .003 -av 0.046 0.046 0.046 -ps 4 -pt .16 bedroom.oct > bedroom_1.unf
	pfilt -1 -e 1.095 -r .6 -x /4 -y /4 bedroom_1.unf > bedroom_1.hdr
	rm -f bedroom_1.unf
