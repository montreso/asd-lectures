set terminal pdfcairo enhanced color

set xrange [0:2]
set yrange [0.8:5]

set xlabel "α"

set style line 1 lt 1 lc rgb "red" lw 2
set style line 2 dt "-" lt 1 lc rgb "red" lw 2
set style line 3 lt 1 lc rgb "blue" lw 2
set style line 4 dt "-" lt 1 lc rgb "blue" lw 2
set style line 5 lt 1 lc rgb '#006000' lw 2
set style line 6 dt "-" lt 1 lc rgb '#006000' lw 2

plot  \
   x <=1 ? ((1-x)*(1-x)+1)/(2*(1-x)*(1-x)) : 1/0 ls 1  title "Lineare - I(α)", \
	 (1-x/2)/(1-x) ls 2  title "Lineare - S(α)", \
	 1/(1-x) ls 3  title "Doppio hashing - I(α)", \
	 -1/x*log(1-x) ls 4 title "Doppio hashing - S(α)", \
   1+x ls 5 title "Liste trabocco - I(α)", \
	 1+x/2 ls 6 title "Liste trabocco - S(α)"