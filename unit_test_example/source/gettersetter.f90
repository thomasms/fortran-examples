module gettersettermod
    implicit none
    private

    type, public :: gettersetter
    private
        integer :: a = 0
    contains
        procedure :: get
        procedure :: set
    end type gettersetter

contains

   function get(this) result(a)
       class(gettersetter), intent(in) :: this

       integer :: a
       
       a = this%a
   end function get

   subroutine set(this, a) 
       class(gettersetter), intent(inout) :: this
       integer, value, intent(in) :: a

       this%a = a
   end subroutine set

end module gettersettermod
