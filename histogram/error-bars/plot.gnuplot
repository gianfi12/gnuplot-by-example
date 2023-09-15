# output format
set terminal pdf size 20,10 enhanced font ",40"

# define the background grid
set grid lc rgb '#202020' lt 0 lw 1
set border back 3 lc rgb '#000000' lt 1
set tics nomirror in
set grid ytics noxtics

# define the data layout
set style data histogram
set style fill solid 0.8

# define the look of error bars
set style histogram errorbars
set errorbars lc rgb '#003200' lw 4
set bars front

# define labels, tics and legend
set xtics rotate by 45 right scale 0
set ylabel "Throughput [molecule/s]"
set key off

# set the yrange
set yrange [0:]

# plot command
plot 'data.csv' using "Mean":"Low":"High":xtic(1) lc rgb '#1B9E77'