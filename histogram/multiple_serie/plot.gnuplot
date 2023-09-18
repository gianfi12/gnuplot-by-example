# output format
set terminal pdf size 20,10 enhanced font ",40"

# define the background grid
set grid lc rgb '#202020' lt 0 lw 1
set border back 3 lc rgb '#000000' lt 1
set tics nomirror in
set grid ytics noxtics

# define the data layout
set style data histograms

# define labels, tics and legend
set xtics rotate by 45 right scale 0
set ylabel "Throughput [molecule/s]"
set key above

# set the yrange
set yrange [0:]

# plot command
plot \
'data.csv' using "Serie_1":xtic(1) lc rgb '#1B9E77' fill pattern 1 title "Serie 1",\
'data.csv' using "Serie_2":xtic(1) lc rgb '#D95F02' fill pattern 4 title "Serie 2",\
