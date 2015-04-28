! ProjectEuler 002
! Fortran / main.f95
! copyright (c) 2015 Susisu

! GNU Fortran (Homebrew gcc 4.9.2_1) 4.9.2
! `gfortran main.f95 -o bin/main`

program main
    implicit none
    integer :: s = 0
    integer :: a = 0
    integer :: b = 1
    integer :: t
    do while(b < 4000000)
        if (mod(b, 2) == 0) s = s + b
        t = a
        a = b
        b = t + b
    end do
    print *, s
end program main
