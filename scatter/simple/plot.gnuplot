# output format
set terminal pdf size 20,10 enhanced font ",40"

# define the background grid
set grid lc rgb '#202020' lt 0 lw 1
set border back 3 lc rgb '#000000' lt 1
set tics nomirror in
set grid ytics xtics

# define the style of each line
set style line 1 dt 1 lc rgb '#0072bd' lw 3 pt 5 pi -1 ps 1.5
set style line 2 dt 1 lc rgb '#d95319' lw 3 pt 7 pi -1 ps 1.5
set style line 3 dt 1 lc rgb '#edb120' lw 3 pt 28 pi -1 ps 1.5
set style line 4 dt 1 lc rgb '#7e2f8e' lw 3 pt 9 pi -1 ps 1.5
set style line 5 dt 1 lc rgb '#77ac30' lw 3 pt 11 pi -1 ps 1.5
set style line 6 dt 1 lc rgb '#4dbeee' lw 3 pt 17 pi -1 ps 1.5
set style line 7 dt 1 lc rgb '#a2142f' lw 3 pt 19 pi -1 ps 1.5
set style line 8 dt 1 lc rgb '#a0ced9' lw 3 pt 68 pi -1 ps 1.5


# define labels, tics and legend
set pointintervalbox 3
set key above
set xlabel "Distance [m]"
set ylabel "Speed [km/h]"
set yrange [0:100]

# the plot command
plot \
"data.csv" u "Distance":"Method_1" w lp ls 1 title "Method 1", \
"data.csv" u "Distance":"Method_2" w lp ls 2 title "Method 2", \
"data.csv" u "Distance":"Method_3" w lp ls 3 title "Method 3", \
"data.csv" u "Distance":"Method_4" w lp ls 4 title "Method 4", \
"data.csv" u "Distance":"Method_5" w lp ls 5 title "Method 5", \
"data.csv" u "Distance":"Method_6" w lp ls 6 title "Method 6", \
"data.csv" u "Distance":"Method_7" w lp ls 7 title "Method 7", \
"data.csv" u "Distance":"Method_8" w lp ls 8 title "Method 8", \