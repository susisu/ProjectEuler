! ProjectEuler 007
! Fortran / main.f95
! copyright (c) 2015 Susisu

! GNU Fortran (Homebrew gcc 4.9.2_1) 4.9.2
! `gfortran main.f95 -o bin/main`

program main
    implicit none
    integer :: n = 1
    integer :: c = 0
    do while (c < 10001)
        n = n + 1
        if (is_prime(n)) c = c + 1
    end do
    print *, n
contains
    pure function is_prime(n)
        integer, intent(in) :: n
        logical is_prime
        integer i, r
        if (n < 2) then
            is_prime = .false.
        else
            r = floor(sqrt(real(n)))
            do i = 2, r
                if (mod(n, i) == 0) then
                    is_prime = .false.
                    exit
                end if
            end do
            if (i > r) is_prime = .true.
        end if
    end function
end program main
