var N: number = 100

function range(start: number, end: number): number[] {
  var ary: number[] = [];
  for (var i: number = start; i <= end; i++) { ary[i-start] = i }
  return ary;
};

var primes: any = range(2, Math.sqrt(N)).reduce(
  (nums: number[], sieve: number) => (
    (num: number) => (num % sieve) || (num == sieve)
  ),
  range(2, N)
);
