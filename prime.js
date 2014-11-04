var N = 100

function isPrime(element, primes) {
  return primes.every(function(p){
    return element % p != 0;
  });
}

var primes = [2]
for(i = 3; i < N; i++) {
  if (isPrime(i,primes)) {
    primes.push(i);
  }
}

print(primes);
