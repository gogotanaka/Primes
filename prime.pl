$n=100;

for($sieve=2; $sieve**2<$n; $sieve++) {
  if (!$primes[$sieve]) {
    for ($i=$sieve**2; $i<$n; $i+=$sieve) { $primes[$i]++ }
  }
}

for ($i=2; $i<$n; $i++) { $primes[$i] || print "$i "; }
