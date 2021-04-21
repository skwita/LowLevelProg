#include <stddef.h>
#include <stdio.h>
#include "median.h"

static unsigned array[] = {2, 9, 10, 5, 6, 7, 3, 4, 1, 8};
static const size_t array_length = sizeof(array) / sizeof(array[0]);

int main( void )
{
    printf("array: \n");
    for (size_t i = 0; i < array_length; i++)
    {
        printf("%i, ", array[i]);
    }
    printf("\n");
    
    int temp = median(array, array_length);
    printf("median = %i",temp);
}
