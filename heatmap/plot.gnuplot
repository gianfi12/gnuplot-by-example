# output format
set terminal pdf size 20,10 enhanced font ",40"

# define the background grid
set border back 3 lc rgb '#000000' lt 1
set tics nomirror in
set grid noytics noxtics

# define the data layout
set datafile separator comma
set style fill solid

# define labels, tics and legend
set xlabel "Number of CUDA workers"
set ylabel "Number of CPP workers"
set cblabel "Throughput (molecule/sec)"
set palette defined ( 0 "#ABDDA4", 1000  "#E6F598", 1500 "#FEE08B",  2000 "#FDAE61", 2150 "#D53E4F" )
set cbrange [0:2410]
unset key

# plot command
plot \
'data.csv' matrix rowheaders columnheaders using 1:2:3 with image, \
'data.csv' matrix rowheaders columnheaders using 1:2:($3 < 2260 ? "" : sprintf("%g",$3) ) with labels textcolor "white", \
'data.csv' matrix rowheaders columnheaders using 1:2:($3 < 2260 ? sprintf("%g",$3) : "" ) with labels textcolor "black"
