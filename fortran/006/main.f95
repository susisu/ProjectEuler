! ProjectEuler 006
! Fortran / main.f95
! copyright (c) 2015 Susisu

! GNU Fortran (Homebrew gcc 4.9.2_1) 4.9.2
! `gfortran main.f95 -o bin/main`

program main
    implicit none
    integer s, t, n
    do n = 1, 100
        s = s + n
        t = t + n * n
    end do
    print *, s * s - t
end program main
