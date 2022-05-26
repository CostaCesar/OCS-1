#!/bin/bash

S=0
FRAC=1
T=0
U=0

for A in $(seq 1 50)
do
    FRAC=$(echo "$A*$FRAC" | bc -l)
    B=$[$S+1]
    S=$[$S+$B]
    U=$[A-1]
    U=$[-1**U]
    U=$(echo "$U*($FRAC/$S)" | bc -l)
    T=$(echo "$T+$U" | bc -l)
    echo "$A"
    echo "t $T"
done