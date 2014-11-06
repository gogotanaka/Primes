N = 100

primes = [*2..N]
(2..Math.sqrt(N)).each do |sieve|
  primes.reject! { |num| (num % sieve).zero? && !num.eql?(sieve) }
end

p primes
