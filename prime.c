// gcc -o primec prime.c
// ./primec 100


//FYI
// int main(int argc, char *argv[])
// {
//   int i;

//   printf("引数の総個数 = %d\n", argc);
//   for (i = 0; i < argc; i++) {
//     printf("%d番目の引数 = %s\n", i, argv[i]);
//   }
//   return 0;
// }

#include <stdio.h>
#include <stdlib.h>


int isPrime(int n, int *primes, int count);

int main()
{
  int n, count=0;
  printf("Enter the number of prime numbers required\n");
  scanf("%d",&n);

  int primes[n];
  primes[count] = 2;

  for (int i = 3; i <= n; i++) {
    if (isPrime(i, primes, count)) primes[++count] = i;
  }

  for (int i = 0; i <= count; i++) {
    printf("%d\n", primes[i]);
  }

  return 0;
}


int isPrime(int n, int *primes, int count)
{
  int rslt = 0;
  for (int j = 0; j <= count; j++) {
    if (n % (*(primes+j)) == 0) break;
    if (j == count) rslt = 1;
  }
  return rslt;
}
