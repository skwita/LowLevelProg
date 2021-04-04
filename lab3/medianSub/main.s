# main.s
.text
main:
.globl main
  la t2, array          
  lw t3, array_length  
  la t4, result         

  addi sp, sp, -16       
  sw ra, 12(sp)          
  
  call median
  
  lw ra, 12(sp)          
  addi sp, sp, 16        
    
  li a0, 0               
  ret                    
  
 .data   # секция изменяемых данных
result:
 .word 65535
 
 .rodata # секция неизменяемых данных
array_length:
 .word 14
array:
 .word 2, 0, 1, 8, 9, 4, 6, 7, 3, 10, 5, 7, 10, 10 