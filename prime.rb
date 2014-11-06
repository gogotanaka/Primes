N = 100

primes = (2..Math.sqrt(N)).inject([*2..N]) do |nums, sieve|
  nums.reject { |num| (num % sieve).zero? && !num.eql?(sieve) }
end

primes
