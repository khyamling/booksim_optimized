# Calibrator v0.9e
# (by Stefan.Manegold@cwi.nl, http://www.cwi.nl/~manegold/)
 set term postscript portrait enhanced
 set output '/home/khyam/booksim/booksimdiffere/mesh/mesh/booksim2-master/src/booksim.TLB-miss-latency.ps'
#set term gif transparent interlace small size 500, 707 # xFFFFFF x333333 x333333 x0055FF x005522 x660000 xFF0000 x00FF00 x0000FF
#set output '/home/khyam/booksim/booksimdiffere/mesh/mesh/booksim2-master/src/booksim.TLB-miss-latency.gif'
set  style data linespoints
set key below
set title '/home/khyam/booksim/booksimdiffere/mesh/mesh/booksim2-master/src/booksim.TLB-miss-latency'
set xlabel 'spots accessed'
set x2label ''
set ylabel 'nanosecs per iteration'
set y2label 'cycles per iteration'
set logscale x 2
set logscale x2 2
set logscale y 10
set logscale y2 10
set format x '%1.0f'
set format x2 '%1.0f'
set format y '%1.0f'
set format y2 ''
set xrange[3.000000:256.000000]
#set x2range[3.000000:256.000000]
set yrange[1.000000:10.000000]
#set y2range[1.000000:1000.000000]
set grid x2tics
set xtics mirror ('1' 1, '2' 2, '4' 4, '8' 8, '16' 16, '32' 32, '64' 64, '128' 128, '256' 256)
set x2tics mirror ('[64]' 64, '<L1>' 512)
set y2tics ('(4)' 1.070000, '(18)' 5.150000, '3.4' 1, '34' 10, '340' 100, '3.4e+03' 1000)
set label 1 '(1.18)  ' at 3.000000,1.176471 right
set arrow 1 from 3.000000,1.176471 to 256.000000,1.176471 nohead lt 0
set label 2 '(5.29)  ' at 3.000000,5.294117 right
set arrow 2 from 3.000000,5.294117 to 256.000000,5.294117 nohead lt 0
 #set label 3 '^{ Calibrator v0.9e (Stefan.Manegold\@cwi.nl, www.cwi.nl/~manegold) }' at graph 0.5,graph 0.02 center
#set label 3    'Calibrator v0.9e (Stefan.Manegold@cwi.nl, www.cwi.nl/~manegold)'    at graph 0.5,graph 0.03 center
plot \
0.1 title 'stride:' with points pt 0 ps 0 , \
'/home/khyam/booksim/booksimdiffere/mesh/mesh/booksim2-master/src/booksim.TLB-miss-latency.data' using 1:($7-0.000000) title '\{4352\}' with linespoints lt 2 pt 4 , \
'/home/khyam/booksim/booksimdiffere/mesh/mesh/booksim2-master/src/booksim.TLB-miss-latency.data' using 1:($13-0.000000) title '2304' with linespoints lt 3 pt 5 , \
'/home/khyam/booksim/booksimdiffere/mesh/mesh/booksim2-master/src/booksim.TLB-miss-latency.data' using 1:($19-0.000000) title '1280' with linespoints lt 4 pt 6
set nolabel
set noarrow
