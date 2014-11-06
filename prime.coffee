N = 100

primes = [2..Math.sqrt(N)].reduce((nums, sieve) ->
  nums.filter (num) -> (num % sieve) or !(num - sieve)
, [2..N])

process.stdout.write primes.toString()
