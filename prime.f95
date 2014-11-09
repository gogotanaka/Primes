program main
  implicit none
  integer, parameter :: N = 100
  integer :: sieve, i
  logical :: primes(2:N) = .true.

  forall (sieve = 2:N, sieve ** 2 < N)
    primes(sieve ** 2:N:sieve) = .false.
  end forall

  do i = 2, N
    if (primes(i)) then
      print *, i
    end if
  end do
end program
