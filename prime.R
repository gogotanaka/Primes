N = 100
primes = c(2:N)

for (sieve in c(2:as.integer(sqrt(N)))) {
  primes = Filter(function(x) { (x %% sieve != 0) || (x == sieve) }, primes)
}

print(primes)
