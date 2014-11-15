#!/bin/sh
for i in {2..100}
do
    primes+=(1)
done
i=2
until [ $i -gt 100 ]
do
    if test $(( i*i )) -lt 100
    then
        if test ${primes[$i]} -eq 1
        then
            j=0
            until [ $((i*j+2)) -gt 100 ]
            do
                primes[$(( i*(j+2) ))]=0
                j=$(( j+1 ))
            done
        fi
    else
        break 
    fi
    i=$(( i+1 ))
done

for i in {2..100}
do
    if test ${primes[$i]} -eq 1
    then
        echo "$i"
    fi
done
