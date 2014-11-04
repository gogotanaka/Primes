N = 100

primes = (2..N).inject([]) do |primes, i|
  primes.any?{ |p| i % p == 0 } ? primes : primes << i
end

p primes
