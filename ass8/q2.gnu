#!/usr/bin/gnuplot

set terminal postscript eps enhanced color 22
set output 'q2.eps'

set style data histogram
set style histogram clustered gap 2

set style fill solid border rgb "black"
set auto x
set title "Frequency for different distributions"
set xlabel "Distribution"
set ylabel "Frequency"
set yrange [0:*]
plot 'table1.txt' using 2:xtic(1) title col, \
       '' using 3:xtic(1) title col, \
       '' using 4:xtic(1) title col, \
       '' using 5:xtic(1) title col
