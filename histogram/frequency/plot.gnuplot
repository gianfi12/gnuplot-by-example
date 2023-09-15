# output format
set terminal pdf size 20,10 enhanced font ",40"

# define the background grid
set grid lc rgb '#202020' lt 0 lw 1
set border back 3 lc rgb '#000000' lt 1
set tics nomirror in
set grid ytics noxtics

# define the data layout
set style data histograms
set style fill solid

# define labels, tics and legend
set xtics rotate by 45 right scale 0
set ylabel "Cumulative Frequency"
set xlabel "Absolute Error [mm]"
set key off

# set the yrange
set yrange [0:]

# plot command
plot 'data.csv' using 2:xtic(1) lc rgb '#1B9E77'