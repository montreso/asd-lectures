set xrange [0:3]
set key top left spacing 1.5
v = 7**(0.33)
set arrow from v,0 to v,91 ls 9  nohead
plot \
   10*x*x*x+2*x*x*x+x*x*x with lines ls 3 title "10n^3+2n^3+n^3", \
   10*x*x*x+2*x*x*x+7 with lines ls 2 title "10n^3+2n^3+7", \
   10*x*x*x+2*x*x+7 with lines ls 1 title "10n^3+2n^2+7"
