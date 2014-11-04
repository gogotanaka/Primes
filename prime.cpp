int  N=100;

#include <iostream>
using namespace std;

bool isPrime(int n, int *primes, int count);

int main()
{
  int primes[N], count=0;;
  primes[count] = 2;

  for (int i=3; i<=N; i++) {
    if (isPrime(i, primes, count)) primes[++count] = i;
  }

  for (int i=0; i<=count; i++) {
     cout << primes[i] << " ";
  }

}


bool isPrime(int n, int *primes, int count)
{
  int rslt = 0;
  for (int j=0; j<=count; j++) {
    if (n % (*(primes+j)) == 0) break;
    if (j == count) rslt = 1;
  }
  return rslt;
}
