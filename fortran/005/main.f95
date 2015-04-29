! ProjectEuler 005
! Fortran / main.f95
! copyright (c) 2015 Susisu

! GNU Fortran (Homebrew gcc 4.9.2_1) 4.9.2
! `gfortran -fdefault-integer-8 main.f95 -o bin/main`

program main
    implicit none
    integer :: p = 1
    integer n
    do n = 1, 20
        p = p * n / gcd(p, n)
    end do
    print *, p
contains
    recursive pure function gcd(a, b) result(res)
        implicit none
        integer, intent(in) :: a, b
        integer res
        if (a < b) then
            res = gcd(b, a)
        else if (b == 0) then
            res = a
        else
            res = gcd(b, mod(a, b))
        end if
    end function gcd
end program main
