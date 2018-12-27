set term postscript enhanced eps color 26
set style line 4 lt 4 lc rgb "#000000" lw 3 ps 1.5
set style line 5 lt 5 lc rgb "#800000" lw 3 ps 1.5
set style line 6 lt 6 lc rgb "#000080" lw 3 ps 1.5
set style line 7 lt 7 lc rgb "#008000" lw 3 ps 1.5
set style line 8 lt 8 lc rgb "#006060" lw 3 ps 1.5
set style line 9 lt 9 lc rgb "#606000" lw 3 ps 1.5
unset xtics
unset ytics
set border 3
unset key
set label '{/Times-Italic g(n)}' at 480,12000
set label '{/Times-Italic f(n)}' at 480,5300
plot [0:500] \
  (x*x/20+x)+sin(0.2*x**0.9)*x+200 ls 4 title "g(n)", \
  x**2/40 ls 5 title "f(n)"
