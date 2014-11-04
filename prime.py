N = 100

from functools import reduce

def is_prime(n, primes):
  return all(n % prime != 0 for prime in primes)

def appendPrime(n, primes):
    if is_prime(n, primes):
        primes.append(n)
    return primes

print reduce((lambda primes, y: appendPrime(y, primes)), range(3, N), [2])
