N = 100

import math
from functools import partial

primes = range(2, N+1)

for sieve in range(2, int(math.sqrt(N)) + 1):
  primes = filter(lambda num: (num % sieve != 0) or (num == sieve), primes)

print primes
