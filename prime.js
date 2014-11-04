var N = 100

primes = Array.apply(null, {length: N-1}).map(
  function(_e, index) { return index + 2 }
)

for(sieve=2; sieve<=Math.sqrt(N); sieve++) {
  primes = primes.filter(function(num) { return (num % sieve != 0) || (num == sieve); });
}

print(primes);
