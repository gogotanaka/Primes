#define N 100
#include <stdio.h>
#include <math.h>

int primes[N];

int main() {
  for (int i=0; i<N; i++) { primes[i] = 1; }

  for (int sieve=2; sieve<sqrt(N); sieve++) {
    if (primes[sieve]) {
      for (int j=0; sieve * (j + 2) < N; j++) {
        primes[sieve * (j + 2)] = 0;
      }
    }
  }

  for (int i=2; i<N; i++){
    if (primes[i]) printf("%d ", i);
  }
  return 0;
}
