#include <stddef.h>
#include "median.h"

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
    