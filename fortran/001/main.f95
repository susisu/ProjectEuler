! ProjectEuler 001
! Fortran / main.f95
! copyright (c) 2015 Susisu

! GNU Fortran (Homebrew gcc 4.9.2_1) 4.9.2
! `gfortran main.f95 -o bin/main`

program main
    implicit none
    integer i
    integer :: s = 0
    do i = 1, 999
        if (mod(i, 3) == 0 .or. mod(i, 5) == 0) then
            s = s + i
        end if
    end do
    print *, s
end program main
