! ProjectEuler 010
! Fortran / main.f95
! copyright (c) 2015 Susisu

! GNU Fortran (Homebrew gcc 4.9.2_1) 4.9.2
! `gfortran -fdefault-integer-8 main.f95 -o bin/main`

program main
    implicit none
    logical, dimension(0 : 2000000 - 1) :: sieve = .true.
    integer i, j
    integer :: r = floor(sqrt(real(2000000)))
    integer :: s = 0
    sieve(0) = .false.
    sieve(1) = .false.
    do i = 2, r
        if (sieve(i)) then
            do j = i * i, 2000000, i
                sieve(j) = .false.
            end do
        end if
    end do
    do i = 2, 2000000
        if (sieve(i)) s = s + i
    end do
    print *, s
end program main
