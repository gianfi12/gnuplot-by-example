# output format
set terminal pdf size 20,10 enhanced font ",40"

# background grid
set style line 11 lc rgb '#000000' lt 1
set border back 3 ls 11
set tics nomirror in
set style line 12 lc rgb '#202020' lt 0 lw 1
set grid ls 12
set grid ytics noxtics

# colors
set style line 1 lt 1 lc rgb '#1B9E77' # dark teal
set style line 2 lt 1 lc rgb '#D95F02' # dark orange
set style line 3 lt 1 lc rgb '#7570B3' # dark lilac
set style line 4 lt 1 lc rgb '#E7298A' # dark magenta
set style line 5 lt 1 lc rgb '#66A61E' # dark lime green
set style line 6 lt 1 lc rgb '#E6AB02' # dark banana
set style line 7 lt 1 lc rgb '#A6761D' # dark tan
set style line 8 lt 1 lc rgb '#666666' # dark gray

# define the data layout
set style data histograms
set style fill solid

# define labels and tics
set xtics rotate by 45 right scale 0
set xlabel "RMSD [A]"
set ylabel "Frequency"
set key above

# plot commands
plot '-' using 2:xtic(1) ls 6 title "Geneo SCORE",\
     '-' using 2:xtic(1) ls 7 title "Geneo with VWD"

"[0.0;0.5)" 0.028070175438596492
"[0.5;1.0)" 0.1824561403508772
"[1.0;1.5)" 0.21052631578947367
"[1.5;2.0)" 0.12631578947368421
"[2.0;2.5)" 0.10526315789473684
"[2.5;3.0)" 0.042105263157894736
"[3.0;3.5)" 0.02456140350877193
"[3.5;4.0)" 0.028070175438596492
"[4.0;4.5)" 0.0
"[4.5;5.0)" 0.0
"[5.0;5.5)" 0.0
"[5.5;6.0)" 0.0035087719298245615
"[6.0;6.5)" 0.0
"[6.5;7.0)" 0.0035087719298245615
"[7.0;7.5)" 0.0035087719298245615
">= 7.5" 0.24210526315789474

e

"[0.0;0.5)" 0.03859649122807018
"[0.5;1.0)" 0.1824561403508772
"[1.0;1.5)" 0.24912280701754386
"[1.5;2.0)" 0.12982456140350876
"[2.0;2.5)" 0.05263157894736842
"[2.5;3.0)" 0.05263157894736842
"[3.0;3.5)" 0.021052631578947368
"[3.5;4.0)" 0.017543859649122806
"[4.0;4.5)" 0.007017543859649123
"[4.5;5.0)" 0.0035087719298245615
"[5.0;5.5)" 0.0
"[5.5;6.0)" 0.0035087719298245615
"[6.0;6.5)" 0.0
"[6.5;7.0)" 0.0
"[7.0;7.5)" 0.0035087719298245615
">= 7.5" 0.23859649122807017
e
