set term postscript enhanced eps 26
unset xtics
unset ytics
set border 3
unset key
set label '{/Times-Italic df(n)}' at 480,14700
set label '{/Times-Italic g(n)}' at 480,12000
set label '{/Times-Italic cf(n)}' at 480,8800
set label '{/Times-Italic f(n)}' at 480,5300
set label '{/Times-Italic m}' at 185,400
set arrow from 180,-100 to 180,180*180/15 ls 9  nohead
plot [0:500] \
  x**2/15 title "df(n)", \
  (x*x/20+x)+sin(0.2*x**0.9)*x+200 title "g(n)", \
  x**2/25 title "cf(n)", \
  x**2/40 title "f(n)"
