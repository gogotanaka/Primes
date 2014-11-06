var N = 100

range = function(start, end) {
  return Array.apply(null, {length: end-start}).map(
    function(_e, index) { return index + 2 }
  )
}

primes = range(2, Math.sqrt(N)).reduce(function(nums, sieve){
  return nums.filter(function(num) {
    return (num % sieve) || (num == sieve);
  });
}, range(2, N))

print(primes);
