val N = 100

var primes = 2 until N toList

for( sieve <- 2 to math.sqrt(N).toInt ){
  primes = primes.filter(num => (num % sieve != 0) || (num == sieve))
}

println(primes)
