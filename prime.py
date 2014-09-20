# python prime.py
from functools import reduce

N = 1000

def is_prime(n, primes):
  return all(n % prime != 0 for prime in primes)

def appendPrime(n, primes):
    if is_prime(n, primes):
        primes.append(n)
    return primes

print reduce((lambda primes, y: appendPrime(y, primes)), range(3, N), [2])
