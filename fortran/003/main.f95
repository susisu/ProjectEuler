! ProjectEuler 003
! Fortran / main.f95
! copyright (c) 2015 Susisu

! GNU Fortran (Homebrew gcc 4.9.2_1) 4.9.2
! `gfortran -fdefault-integer-8 main.f95 -o bin/main`

program main
    implicit none
    integer :: n = 600851475143
    integer :: d = 2
    do while (n > 1)
        if (mod(n, d) == 0) then
            n = n / d
        else
            d = d + 1
        end if
    end do
    print *, d
end program main
