set xrange [0:70]
set yrange [0:5000]
set key top left spacing 1.5
set arrow from 20,0 to 20,400 ls 9  nohead
set arrow from 40,0 to 40,1600 ls 9  nohead
set arrow from 60,0 to 60,3600 ls 9  nohead 
plot \
   x*x with lines ls 1 title "n^2", \
   60*x with lines ls 4 title "60n", \
   40*x with lines ls 3 title "40n", \
   20*x with lines ls 2 title "20n"
