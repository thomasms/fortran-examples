moDULe soME_testerModule_Test
  implicit none

contains
  subroutine test_aaa
    assert_equals(1, 1, "asserts 1 is 1")
  end subroutine test_aaa

  subroutine test_aaa2nd
    assert_equals(3, 4, "asserts 3 is 4")
  end subroutine test_aaa2nd

  subroutine test_warned_if_argument(arg1)
  end subroutine test_warned_if_argument
end module soME_testerModule_Test

module second_module_test
end module second_module_test
