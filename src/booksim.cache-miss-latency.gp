# Calibrator v0.9e
# (by Stefan.Manegold@cwi.nl, http://www.cwi.nl/~manegold/)
 set term postscript portrait enhanced
 set output '/home/khyam/booksim/booksimdiffere/mesh/mesh/booksim2-master/src/booksim.cache-miss-latency.ps'
#set term gif transparent interlace small size 500, 707 # xFFFFFF x333333 x333333 x0055FF x005522 x660000 xFF0000 x00FF00 x0000FF
#set output '/home/khyam/booksim/booksimdiffere/mesh/mesh/booksim2-master/src/booksim.cache-miss-latency.gif'
set  style data linespoints
set key below
set title '/home/khyam/booksim/booksimdiffere/mesh/mesh/booksim2-master/src/booksim.cache-miss-latency'
set xlabel 'memory range [bytes]'
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
set xrange[0.750000:1280.000000]
#set x2range[0.750000:1280.000000]
set yrange[1.000000:10.000000]
#set y2range[1.000000:1000.000000]
set grid x2tics
set xtics mirror ('1k' 1, '' 2, '4k' 4, '' 8, '16k' 16, '' 32, '64k' 64, '' 128, '256k' 256, '' 512, '1M' 1024)
set x2tics mirror ('[32k]' 32, '[192k]' 192)
set y2tics ('(4)' 1.030000, '(4)' 1.320000, '(12)' 3.610000, '3.4' 1, '34' 10, '340' 100, '3.4e+03' 1000)
set label 1 '(1.18)  ' at 0.750000,1.176471 right
set arrow 1 from 0.750000,1.176471 to 1280.000000,1.176471 nohead lt 0
set label 2 '(1.18)  ' at 0.750000,1.176471 right
set arrow 2 from 0.750000,1.176471 to 1280.000000,1.176471 nohead lt 0
set label 3 '(3.53)  ' at 0.750000,3.529412 right
set arrow 3 from 0.750000,3.529412 to 1280.000000,3.529412 nohead lt 0
 #set label 4 '^{ Calibrator v0.9e (Stefan.Manegold\@cwi.nl, www.cwi.nl/~manegold) }' at graph 0.5,graph 0.02 center
#set label 4    'Calibrator v0.9e (Stefan.Manegold@cwi.nl, www.cwi.nl/~manegold)'    at graph 0.5,graph 0.03 center
plot \
0.1 title 'stride:' with points pt 0 ps 0 , \
'/home/khyam/booksim/booksimdiffere/mesh/mesh/booksim2-master/src/booksim.cache-miss-latency.data' using 1:($7-26.250000) title '512' with linespoints lt 1 pt 3 , \
'/home/khyam/booksim/booksimdiffere/mesh/mesh/booksim2-master/src/booksim.cache-miss-latency.data' using 1:($13-26.250000) title '\{256\}' with linespoints lt 2 pt 4 , \
'/home/khyam/booksim/booksimdiffere/mesh/mesh/booksim2-master/src/booksim.cache-miss-latency.data' using 1:($19-26.250000) title '128' with linespoints lt 3 pt 5 , \
'/home/khyam/booksim/booksimdiffere/mesh/mesh/booksim2-master/src/booksim.cache-miss-latency.data' using 1:($25-26.250000) title '\{64\}' with linespoints lt 4 pt 6 , \
'/home/khyam/booksim/booksimdiffere/mesh/mesh/booksim2-master/src/booksim.cache-miss-latency.data' using 1:($31-26.250000) title '32' with linespoints lt 5 pt 7 , \
'/home/khyam/booksim/booksimdiffere/mesh/mesh/booksim2-master/src/booksim.cache-miss-latency.data' using 1:($37-26.250000) title '16' with linespoints lt 6 pt 8 , \
'/home/khyam/booksim/booksimdiffere/mesh/mesh/booksim2-master/src/booksim.cache-miss-latency.data' using 1:($43-26.250000) title '8' with linespoints lt 7 pt 9
set nolabel
set noarrow
