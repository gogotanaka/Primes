// alias jsc="/System/Library/Frameworks/JavaScriptCore.framework/Versions/A/Resources/jsc"
// jsc prime.js

function isPrime(element, primes) {
  return primes.every(function(p){
    return element % p != 0;
  });
}

var N = 100
var primes = [2]

for(i = 3; i < N; i++) {
  if (isPrime(i,primes)) {
    primes.push(i);
  }
}
print(primes);
