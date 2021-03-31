#!/bin/bash
#!/usr/bin/awk -f
DIRS=/home/khyam/booksim/booksimdiffere/mesh/booksim2-master/src
./booksim examples/mesh34>34.txt
./booksim examples/mesh36>36.txt
./booksim examples/mesh38>38.txt
./booksim examples/mesh40>40.txt
./booksim examples/mesh42>42.txt
./booksim examples/mesh44>44.txt
./booksim examples/mesh46>46.txt
./booksim examples/mesh48>48.txt
./booksim examples/mesh50>50.txt
./booksim examples/mesh52>52.txt
./booksim examples/mesh54>54.txt
mkdir 83
mv 4.txt 6.txt 8.txt 10.txt 12.txt 14.txt 16.txt 18.txt 20.txt 22.txt 24.txt 26.txt 28.txt 30.txt 32.txt 34.txt 36.txt 38.txt 40.txt 42.txt 44.txt 46.txt 48.txt 50.txt 52.txt 54.txt 83/


