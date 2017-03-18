#!/usr/bin/gnuplot

set terminal postscript eps enhanced color 23
set output 'q2.eps'

#set linestyle 1 lt 1 lc 7
set style data histogram
set style histogram clustered errorbars gap 2

set style fill solid border rgb "black"
set auto x
set title "Frequency for different distributions"
set xlabel "Distribution"
set ylabel "Frequency"
set yrange [0:*]
plot 'table1.txt' using 2:6:xtic(1) title col(2), \
       '' using 3:7:xtic(1) title col(3), \
       '' using 4:8:xtic(1) title col(4), \
       '' using 5:9:xtic(1) title col(5)
