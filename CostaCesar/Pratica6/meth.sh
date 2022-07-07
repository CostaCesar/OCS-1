#!/bin/bash

A=$2
B=$3
C=$4

diag()
{
    A=$(($A**2))
    B=$(($B**2))
    C=$(($B**2))

    X=$(echo "$A+$B+$C" | bc)
    X=`echo "scale=4; sqrt($X)" | bc`
    echo "Soma dos Sqrt's = $X"
}

mdc()
{
    RES=0
    I=1
    while [ $I -le $A ] && [ $I -le $B ] && [ $I -le $C ]
    do
        T1=$(($A%$I))
        T2=$(($B%$I))
        T3=$(($C%$I))
        if [ $T1 -eq 0 ] && [ $T2 -eq 0 ] && [ $T3 -eq 0 ];
        then
            RES=$I
        fi
        I=$(($I+1))
    done
    echo "MDC dos numeros = $RES"
}

case $1 in
mdc | MDC | Mdc) mdc ;;
diag | DIAG | Diag) diag ;;
*) echo "Tarefa inexistente!"
esac