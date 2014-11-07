var N = 100

range = function(start, end) {
  ary = [];
  for (i=start; i<=end; i++) { ary[i-start] = i }
  return ary;
};

primes = range(2, Math.sqrt(N)).reduce(function(nums, sieve){
  return nums.filter(function(num) {
    return (num % sieve) || (num == sieve);
  });
}, range(2, N))

print(primes);
