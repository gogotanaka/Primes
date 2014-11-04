N = 100

primes =  [2..N]

sieve = 2
while sieve <= Math.sqrt(N)
  primes = primes.filter((num) ->
    (num % sieve isnt 0) or (num is sieve)
  )
  sieve++

process.stdout.write primes.toString()
