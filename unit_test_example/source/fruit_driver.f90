program fruit_driver
    use fruit
    use gettersettermod

    integer :: failure_count
    type(gettersetter) :: gs

    call init_fruit()
    call init_fruit_xml()

    call gs%set(2)
    call assert_equals(gs%get(), 2, "Getter value should match setter")

    call fruit_summary()
    call fruit_summary_xml()
    call fruit_finalize()

    ! Check failures for return code
    failure_count = 0
    call get_failed_count(failure_count)
    if(failure_count .gt. 0)then
        print *, failure_count, " failure(s) occurred."
        stop 1
    endif

end program fruit_driver

