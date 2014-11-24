#!/usr/bin/zsh
function primes() {
  typeset -a primes
  typeset i j

  primes[1]=""
  for (( i=2; i<=$1; i++ )); do
    primes[$i]=$i
  done

  for (( i=2; i**2<=$1; i++ )); do
    if [[ ! -z $primes[$i] ]]; then
      for (( j=i**2; j<=$1; j+=i )); do
        primes[$j]=""
      done
    fi
  done
  for i in {2..100}; do
    if [ ${primes[$i]} ]; then
      echo $i
    fi
  done
}

primes 100
