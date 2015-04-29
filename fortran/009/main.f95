! ProjectEuler 009
! Fortran / main.f95
! copyright (c) 2015 Susisu

! GNU Fortran (Homebrew gcc 4.9.2_1) 4.9.2
! `gfortran main.f95 -o bin/main`

program main
    implicit none
    integer a, b
    loop: do a = 1, 332
        do b = a + 1, (1000 - a - 1) / 2
            if (2 * a * b - 2000 * (a + b) + 1000000 == 0) then
                print *, a * b * (1000 - a - b)
                exit loop
            end if
        end do
    end do loop
end program main
