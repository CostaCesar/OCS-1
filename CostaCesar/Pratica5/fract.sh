#!/bin/bash
CON=51

DEN=0
FAC=1
X=0
HLD=0
for A in $(seq 0 $CON)
do
    DEN=$(($DEN+2**$A))
    B=$(($A+1))
    
    FAC=$(echo "(($A+1)*$FAC)" | bc -l)
    RES=$((-1**$A))

    HLD=$(echo "($FAC/$DEN)*$RES" | bc -l)
    X=$(echo "($X+$HLD)" | bc -l)
    echo "$A Ciclo = $FAC / $DEN * ($RES) += $X"
done
