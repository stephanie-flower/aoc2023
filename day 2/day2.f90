! The Elf would first like to know which games would have been possible if the bag contained only 
! 12 red cubes, 
! 13 green cubes, and 
! 14 blue cubes?

program first
implicit none

    ! variable declaration
    integer :: io, i
    character*128 :: line
    integer :: IErr = 0
    integer :: valToAdd
    character*12, dimension(36) :: gamepulls
    character*2 :: gameNoTrunc

    !38 variables for columns lol
    character*12 :: game, gameno, g1c, g1n, g2c, g2n, g3c, g3n, g4c, g4n, g5c
    character*12 :: g5n, g6c, g6n, g7c, g7n, g8c, g8n, g9c, g9n, g10c, g10n
    character*12 :: g11c, g11n, g12c, g12n, g13c, g13n, g14c, g14n, g15c
    character*12 :: g15n, g16c, g16n, g17c, g17n, g18c, g18n 

    ! open file
    open(unit=io, file="day2.txt", status="old", action="read")

    do while (IErr == 0)

        read(io, *, iostat=Ierr) game, gameno, g1c, g1n, g2c, g2n, g3c, g3n, g4c, &
                                g4n, g5c, g5n, g6c, g6n, g7c, g7n, g8c, g8n, g9c, g9n, & 
                                g10c, g10n, g11c, g11n, g12c, g12n, g13c, g13n, g14c, & 
                                g14n, g15c, g15n, g16c, g16n, g17c, g17n, g18c, g18n
        
        gameNoTrunc = gameno(:len(gameno)-1)
        ! read(gameno,*) valToAdd
        write (*,*) gameNoTrunc
        
        gamepulls = (/ g1c, g1n, g2c, g2n, g3c, g3n, g4c, &
                                g4n, g5c, g5n, g6c, g6n, g7c, g7n, g8c, g8n, g9c, g9n, & 
                                g10c, g10n, g11c, g11n, g12c, g12n, g13c, g13n, g14c, & 
                                g14n, g15c, g15n, g16c, g16n, g17c, g17n, g18c, g18n /)
        
        ! do i = 1, size(gamepulls)
        !     write(*,*) gamepulls(i)
        ! end do

    end do

    write(*,*) gamepulls !debug ,, we are missing the last line for some reason

    ! close file
    close(io)

end program first