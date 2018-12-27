set xrange [0:10]
set key top left spacing 1.5
set arrow from 4.35,0 to 4.35,36.9 ls 9  nohead
set arrow from 2.5,0 to 2.5,6.8 ls 9  nohead
plot \
   2*x*x with lines ls 2 title "c_2g(n)", \
   x*x+3*x+8*sin(x*2) with lines ls 1 title "f(n)", \
   x*x with lines ls 3 title "c_1g(n)"
