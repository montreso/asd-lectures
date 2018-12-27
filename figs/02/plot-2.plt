set xrange [0:6*3.1415]
set yrange [3:7]
set key top left spacing 1.5
plot \
   6 with lines ls 2 title "6", \
   5+sin(x) with lines ls 1 title "5+sin(n)", \
   4 with lines ls 3 title "4"
