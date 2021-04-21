# 1 "median.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "median.c"
# 1 "c:\\users\\skwit\\downloads\\riscv64-unknown-elf-toolchain-10.2.0-2020.12.8-x86_64-w64-mingw32\\lib\\gcc\\riscv64-unknown-elf\\10.2.0\\include\\stddef.h" 1 3 4
# 143 "c:\\users\\skwit\\downloads\\riscv64-unknown-elf-toolchain-10.2.0-2020.12.8-x86_64-w64-mingw32\\lib\\gcc\\riscv64-unknown-elf\\10.2.0\\include\\stddef.h" 3 4

# 143 "c:\\users\\skwit\\downloads\\riscv64-unknown-elf-toolchain-10.2.0-2020.12.8-x86_64-w64-mingw32\\lib\\gcc\\riscv64-unknown-elf\\10.2.0\\include\\stddef.h" 3 4
typedef long int ptrdiff_t;
# 209 "c:\\users\\skwit\\downloads\\riscv64-unknown-elf-toolchain-10.2.0-2020.12.8-x86_64-w64-mingw32\\lib\\gcc\\riscv64-unknown-elf\\10.2.0\\include\\stddef.h" 3 4
typedef long unsigned int size_t;
# 321 "c:\\users\\skwit\\downloads\\riscv64-unknown-elf-toolchain-10.2.0-2020.12.8-x86_64-w64-mingw32\\lib\\gcc\\riscv64-unknown-elf\\10.2.0\\include\\stddef.h" 3 4
typedef int wchar_t;
# 415 "c:\\users\\skwit\\downloads\\riscv64-unknown-elf-toolchain-10.2.0-2020.12.8-x86_64-w64-mingw32\\lib\\gcc\\riscv64-unknown-elf\\10.2.0\\include\\stddef.h" 3 4
typedef struct {
  long long __max_align_ll __attribute__((__aligned__(__alignof__(long long))));
  long double __max_align_ld __attribute__((__aligned__(__alignof__(long double))));
# 426 "c:\\users\\skwit\\downloads\\riscv64-unknown-elf-toolchain-10.2.0-2020.12.8-x86_64-w64-mingw32\\lib\\gcc\\riscv64-unknown-elf\\10.2.0\\include\\stddef.h" 3 4
} max_align_t;
# 2 "median.c" 2
# 1 "median.h" 1




# 4 "median.h"
int median(unsigned *array, size_t size);
# 3 "median.c" 2

int median(unsigned *array, size_t array_length)
{
    int count = 0;
    for (size_t i = 0; i < array_length; i++)
    {
        for (size_t j = 0; j < array_length; j++)
        {
            if (array[i] < array[j])
            {
                count++;
            }
            if (array[i] > array[j])
            {
                count--;
            }
        }
    if ((count == 0) | (count == 1))
    {
        return(array[i]);
        break;
    }
    count = 0;
    }
    return -1;
}
