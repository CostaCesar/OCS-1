#!/bin/bash

A=$(($1**2))
B=$(($2**2))
C=$(($3**2))

X=$(echo "$A+$B+$C" | bc)
X=`echo "scale=4; sqrt($X)" | bc`

echo "Soma dos Sqrt's = $X"