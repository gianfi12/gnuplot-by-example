# output format
set terminal pdf size 20,10 enhanced font ",40"

# define the background grid
set grid lc rgb '#202020' lt 0 lw 1
set border back 3 lc rgb '#000000' lt 1
set tics nomirror in
set grid ytics noxtics

# define the data layout
set style data boxplot
set style fill solid 0.5 border -1

# define labels, tics and legend
set xtics scale 0
set ylabel "Error [s]"
set key off
set xtics ("Method 1" 1, "Method 2" 2, "Method 3" 3, "Method 4" 4)

# plot command
plot \
"data.csv" u (1):"Method 1" lc rgb '#1e90ff' lw 3 fs border lc rgb '#406090',\
"data.csv" u (2):"Method 2" lc rgb '#fed8b1' lw 3 fs border lc rgb '#dd7538',\
"data.csv" u (3):"Method 3" lc rgb '#90ee90' lw 3 fs border lc rgb '#006400',\
"data.csv" u (4):"Method 4" lc rgb '#b19cd9' lw 3 fs border lc rgb '#966fd6',\
