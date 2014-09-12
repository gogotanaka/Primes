#include <iostream>
using namespace std;

bool isPrime(int n, int *primes, int count);

int main()
{
  int n;
  cout << "Enter the number of prime numbers required" << endl;
  cin >> n;

  int primes[n], count=0;;
  primes[count] = 2;

  for (int i = 3; i <= n; i++) {
    if (isPrime(i, primes, count)) primes[++count] = i;
  }

  for (int i = 0; i <= count; i++) {
    cout << primes[i] << " ";
  }
  cout << "" << endl;
}


bool isPrime(int n, int *primes, int count)
{
  int rslt = 0;
  for (int j = 0; j <= count; j++) {
    if (n % (*(primes+j)) == 0) break;
    if (j == count) rslt = 1;
  }
  return rslt;
}
