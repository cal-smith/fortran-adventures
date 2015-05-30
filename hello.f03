program hello
    implicit none
    character(LEN=80)::name
    write(*, fmt='(a)', advance="no") "Name: "
    read(*, *) name
    print*, "Hello, "//name
end program hello