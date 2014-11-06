<?php
$N = 100;

$primes = range(2, $N);
for ($sieve=2; $sieve<=sqrt($N); $sieve++) {
  $primes = array_filter($primes, function($num) {
    global $sieve;
    return ($num % $sieve) || !($num - $sieve);
  });
}

echo join(', ', $primes) . "\n";
