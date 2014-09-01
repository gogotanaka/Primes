# ruby prime.rb
def prime_simple(n)
  (2..n).inject([]) do |primes, i|
    primes.any?{ |p| i % p == 0 } ? primes : primes << i
  end
end

p prime_simple(100)
