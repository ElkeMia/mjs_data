#!/usr/bin/gnuplot -persist
# mjs_bodem_0417_t_04d.plt

set style data lines
set grid front
set key left top
set key font ",16"
set terminal pngcairo size 1920,320 transparent
set output "../png/mjs_bodem_0417_t_04d.png"
set xdata time
set timefmt "%Y-%m-%d.%H:%M:%S"
set format x "%H\n%d"
set autoscale xfix
set xtics 14400
set mxtics 4
set xtics font ", 18"
set ytics font ", 18"
set grid xtics ytics
set pointsize 0.1
set boxwidth 120
set style fill transparent solid 0.10 noborder


plot \
   "< cat ../lst/mjs_bodem_0417_t_04d.lst"  using 1:($3)  title 'Tref'  w lp  lw 6  lc rgbcolor '#FF0000'  dt 1  pt 3, \
   "< cat ../lst/mjs_bodem_0417_t_04d.lst"  using 1:($4)  title 'T10'   w lp  lw 5  lc rgbcolor '#DF0000'  dt 1  pt 3, \
   "< cat ../lst/mjs_bodem_0417_t_04d.lst"  using 1:($5)  title 'T40'   w lp  lw 4  lc rgbcolor '#9F0000'  dt 1  pt 3, \
   "< cat ../lst/mjs_bodem_0417_t_04d.lst"  using 1:($6)  title 'T80'   w lp  lw 3  lc rgbcolor '#4F0000'  dt 1  pt 3, \
   "< cat ../lst/mjs_bodem_0417_t_04d.lst"  using 1:($7)  title 'T120'  w lp  lw 2  lc rgbcolor '#000000'  dt 1  pt 3
