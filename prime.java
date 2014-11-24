import java.util.LinkedList;
import java.util.BitSet;

public class Prime {
  public static void main(String[] args) { System.out.println(sieve(100)); }
  public static LinkedList<Integer> sieve(int n) {
    LinkedList<Integer> primes = new LinkedList<Integer>();
    BitSet nonPrimes = new BitSet(n+1);

    for (int p=2; p<=n; p=nonPrimes.nextClearBit(p+1)) {
      for (int i=p*p; i<=n; i+=p) { nonPrimes.set(i); }
      primes.add(p);
    }
    return primes;
  }
}
