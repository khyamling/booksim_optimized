#!/bin/bash
#!/usr/bin/awk -f
DIRS=/home/khyam/booksim/booksimdiffere/mesh/booksim2-master/src
valgrind --tool=callgrind --log-file=mesh4.txt --I1=65536,4,64  --D1=65536,4,64 --LL=8388608,8,64 --cache-sim=yes ./booksim examples/mesh4>4.txt
valgrind --tool=callgrind --log-file=mesh6.txt --I1=65536,4,64  --D1=65536,4,64 --LL=8388608,8,64 --cache-sim=yes ./booksim examples/mesh6>6.txt
valgrind --tool=callgrind --log-file=mesh8.txt --I1=65536,4,64  --D1=65536,4,64 --LL=8388608,8,64 --cache-sim=yes ./booksim examples/mesh8>8.txt
valgrind --tool=callgrind --log-file=mesh10.txt --I1=65536,4,64  --D1=65536,4,64 --LL=8388608,8,64 --cache-sim=yes ./booksim examples/mesh10>10.txt
valgrind --tool=callgrind --log-file=mesh12.txt --I1=65536,4,64  --D1=65536,4,64 --LL=8388608,8,64 --cache-sim=yes ./booksim examples/mesh12>12.txt
valgrind --tool=callgrind --log-file=mesh14.txt --I1=65536,4,64  --D1=65536,4,64 --LL=8388608,8,64 --cache-sim=yes ./booksim examples/mesh14>14.txt
valgrind --tool=callgrind --log-file=mesh16.txt --I1=65536,4,64  --D1=65536,4,64 --LL=8388608,8,64 --cache-sim=yes ./booksim examples/mesh16>16.txt
valgrind --tool=callgrind --log-file=mesh18.txt --I1=65536,4,64  --D1=65536,4,64 --LL=8388608,8,64 --cache-sim=yes ./booksim examples/mesh18>18.txt
valgrind --tool=callgrind --log-file=mesh20.txt --I1=65536,4,64  --D1=65536,4,64 --LL=8388608,8,64 --cache-sim=yes ./booksim examples/mesh20>20.txt
valgrind --tool=callgrind --log-file=mesh22.txt --I1=65536,4,64  --D1=65536,4,64 --LL=8388608,8,64 --cache-sim=yes ./booksim examples/mesh22>22.txt
valgrind --tool=callgrind --log-file=mesh24.txt --I1=65536,4,64  --D1=65536,4,64 --LL=8388608,8,64 --cache-sim=yes ./booksim examples/mesh24>24.txt
valgrind --tool=callgrind --log-file=mesh26.txt --I1=65536,4,64  --D1=65536,4,64 --LL=8388608,8,64 --cache-sim=yes ./booksim examples/mesh26>26.txt
valgrind --tool=callgrind --log-file=mesh28.txt --I1=65536,4,64  --D1=65536,4,64 --LL=8388608,8,64 --cache-sim=yes ./booksim examples/mesh28>28.txt
valgrind --tool=callgrind --log-file=mesh30.txt --I1=65536,4,64  --D1=65536,4,64 --LL=8388608,8,64 --cache-sim=yes ./booksim examples/mesh30>30.txt
valgrind --tool=callgrind --log-file=mesh32.txt --I1=65536,4,64  --D1=65536,4,64 --LL=8388608,8,64 --cache-sim=yes ./booksim examples/mesh32>32.txt
awk '/I1  miss rate/ {print $5}' mesh4.txt mesh6.txt mesh8.txt mesh10.txt mesh12.txt mesh14.txt mesh16.txt mesh18.txt mesh20.txt mesh22.txt mesh24.txt mesh26.txt mesh28.txt mesh30.txt>mesh322way64I1.txt
awk '/D1  miss rate/ {print $5}' mesh4.txt mesh6.txt mesh8.txt mesh10.txt mesh12.txt mesh14.txt mesh16.txt mesh18.txt mesh20.txt mesh22.txt mesh24.txt mesh26.txt mesh28.txt mesh30.txt>mesh322way64D1.txt
awk '/LL miss rate/ {print $5}' mesh4.txt mesh6.txt mesh8.txt mesh10.txt mesh12.txt mesh14.txt mesh16.txt mesh18.txt mesh20.txt mesh22.txt mesh24.txt mesh26.txt mesh28.txt mesh30.txt>mesh322way64LL.txt
mkdir 83
mv 4.txt 6.txt 8.txt 10.txt 12.txt 14.txt 16.txt 18.txt 20.txt 22.txt 24.txt 26.txt 28.txt 30.txt 32.txt 83/
mkdir 84
mv mesh*.txt 84/

