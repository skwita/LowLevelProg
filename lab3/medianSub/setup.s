# setup.s
.text
__start:
.globl __start
  call main
finish:
  li a0, 10
  ecall