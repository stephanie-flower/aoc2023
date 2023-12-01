! no regex in fortran so saddd
! this is the same program it just uses a different file

program first
implicit none
    
    ! variable declaration
    integer :: io
    integer :: I = 0, IErr = 0
    character*64 :: chrs
    character*2 :: currentNumChrs
    character*1 :: currentChr
    integer :: converted
    integer :: total

    ! open file
    open(unit=io, file="p2.txt", status="old", action="read")

    ! set total, increment to zero
    total = 0

    ! read each line of file
    do while (IErr == 0)
        read(io, *, iostat=Ierr) chrs
        write(*,*) chrs ! debug

        ! look at each character within the line
        do i=1, len(chrs)
            currentChr = chrs(i:i)
            !write(*,*) currentChr ! debug

            ! if the current character is a valid integer
            if(verify(currentChr, "0123456789") == 0) then
                ! convert to integer
                read(currentChr,*) converted
                ! the first integer you find will be a multiple of 10
                write(*,*) converted * 10
                total = total + converted * 10
                ! and exit the loop
                exit
            end if
        end do

        ! now we do the same but backwards
        ! I literally cannot figure out how to call a function, funnily enough, so sorry for the repeated code
        ! I will get there
        ! I'm tired

        do i=1, len(chrs)
            currentChr = chrs(len(chrs)-i:len(chrs)-i)
           ! write(*,*) currentChr ! debug

            if(verify(currentChr, "0123456789") == 0) then
                read(currentChr,*) converted
                ! the second integer you find will be a multiple of 1
                write(*,*) converted
                total = total + converted
                exit
            end if
        end do

    end do

    write (*,*) total ! because the last line is read twice for some reason?
    
    ! close file
    close(io)

end program first