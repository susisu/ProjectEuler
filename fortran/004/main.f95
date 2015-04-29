! ProjectEuler 000
! Fortran / main.f95
! copyright (c) 2015 Susisu

! GNU Fortran (Homebrew gcc 4.9.2_1) 4.9.2
! `gfortran main.f95 -o bin/main`

program main
    implicit none
    character(6) :: s
    integer :: a, b, c, l, i, j
    integer :: m = 0
    do a = 100, 999
        do b = a, 999
            c = a * b
            write(s, "(i6)") c
            s = adjustl(s)
            l = len_trim(s)
            do i = 1, l / 2
                j = l + 1 - i
                if (s(i:i) /= s(j:j)) exit
            end do
            if (i == l / 2 + 1 .and. c > m) m = c
        end do
    end do
    print *, m
end program main
