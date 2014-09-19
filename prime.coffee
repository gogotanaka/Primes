# coffee prime.coffee

isPrime = (element, primes) ->
  primes.every (p) ->
    element % p isnt 0

N = 100
primes = [2]
i = 3
while i < N
  primes.push i  if isPrime(i, primes)
  i++
process.stdout.write primes.toString()
