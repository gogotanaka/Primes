// gcc -o primec prime.c
// ./primec

#include <stdio.h>
#include <stdlib.h>

int isPrime(int n, int *primes, int count);

int main()
{
  int N=100, count=0, primes[N];

  primes[count] = 2;

  for (int i=3; i<=N; i++) {
    if (isPrime(i, primes, count)) primes[++count] = i;
  }

  for (int i=0; i<=count; i++) {
    printf("%d\n", primes[i]);
  }

  return 0;
}


int isPrime(int n, int *primes, int count)
{
  int rslt = 0;
  for (int j=0; j<=count; j++) {
    if (n % (*(primes+j)) == 0) break;
    if (j == count) rslt = 1;
  }
  return rslt;
}
