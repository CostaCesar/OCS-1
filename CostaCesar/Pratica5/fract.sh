#!/bin/bash
CON=21

DEN=0
FAC=1
X=0
TWO=2
for A in $(seq 0 $CON)
do
    DEN=$(($DEN+2**$A))
    B=$(($A+1))
    
    FAC=1
    for C in $(seq 1 $B)
    do
        FAC=$(($FAC*$C))
    done

    RES=$(($A%2))
    #X=$(echo "scale=4;($FAC/$DEN)" | bc -l)
    #echo "$FAC / $DEN = $X"
    if [ $RES -eq 1 ]
    then
        X=$(echo "scale=5;($FAC/$DEN)+$X" | bc -l)
    else
        X=$(echo "scale=5;($FAC/$DEN)-$X" | bc -l)
    fi
    #echo "$A Ciclo = $X"
done
echo "$X"