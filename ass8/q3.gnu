#!/usr/bin/gnuplot

set term postscript eps enhanced color 20
set output 'q3.eps'

set style data histograms
set style histogram cluster errorbars gap 5 lw 3
set key left
set boxwidth 1 relative
#set style histogram cluster gap 1
#set style fill solid 1.0 border -1

#set multiplot layout 1,2
set key right
set size 1,1
set origin 0,0
set yrange [0:110]
set datafile separator " "
set xtics border in scale 0,0 nomirror rotate by -45  offset character 0, 0, 0 
set style fill pattern 1 border -1

set title "Comparison of {/Symbol a}, {/Symbol b}"
set xlabel "Groups" 
set xlabel  offset character 0, -2, 0 font "" textcolor lt -1 norotate
set ylabel "Frequency" 

plot \
newhistogram "Group 1" lt 2 fs pattern 1, \
'f1.txt' using 2:4:xtic(1) t col(2), '' u 3:5:xtic(1) t col(3), \
newhistogram "Group 2" lt 2 fs pattern 1, \
'f2.txt' using 2:4:xtic(1) t "", '' u 3:5 t ""

#set size 0.65,0.45
#set origin 0.1,0.35
#set title ""
#unset xtics
#set xrange [0.9:1.5]
#set yrange [0:0.015]
#set ytics 0,0.003, 0.015
#set xlabel ""
#set ylabel ""

#et style histogram rowstacked title offset character 0, -1.5, 0

#plot \
#newhistogram "g=2" lt 2 fs pattern 1, \
#'hist_complex_data.txt' using 2:xtic(1) notitle, '' u 3 notitle, \
#newhistogram "g=3" lt 2 fs pattern 1, \
#'hist_complex_data.txt' using 4:xtic(1) notitle, '' u 5 notitle, \
#newhistogram "g=5" lt 2 fs pattern 1, \
#'hist_complex_data.txt' using 6:xtic(1) notitle, '' u 7 notitle

unset multiplot

#replot
#set term x11
#set output

