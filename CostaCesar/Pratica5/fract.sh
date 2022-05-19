#!/bin/bash
CON=20

DEN=0
FAC=1
X=0
HLD=0
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
    HLD=$(echo "($FAC/$DEN)" | bc -l)
    if [ $RES -eq 0 ]
    then
        X=$(echo "($X+$HLD)" | bc -l)
    else
        X=$(echo "($X-$HLD)" | bc -l)
    fi
    echo "$A Ciclo = $X"
done
echo "$X"