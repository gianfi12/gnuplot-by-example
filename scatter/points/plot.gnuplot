# output format
set terminal pdf size 20,10 enhanced font ",40"

# define the background grid
set grid lc rgb '#202020' lt 0 lw 1
set border back 3 lc rgb '#000000' lt 1
set tics nomirror in
set grid ytics xtics

# define labels, tics and legend
set pointintervalbox 3
set xlabel "Walltime [ms]"
set ylabel "Error [s]"
unset key

# the plot command
plot "data.csv" w p lc rgb '#1e90ff' pt 7 ps 2