program main
  implicit none
  integer, parameter :: N = 100
  integer :: sieve = 2, i
  logical :: primes(2:N) = .true.

  do while (sieve ** 2 < N)
    forall (i = sieve ** 2:N:sieve, primes(sieve))
      primes(i) = .false.
    end forall
    sieve = sieve + 1
  end do

  do i = 2, N
    if (primes(i)) then
      print *, i
    end if
  end do
end program
