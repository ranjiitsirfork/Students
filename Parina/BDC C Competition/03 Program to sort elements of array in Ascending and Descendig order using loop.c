#include<stdio.h>
#include<conio.h>
int main()
{
    int Arr[10] = {}, No = 0, i = 0, j = 0, Temp = 0;

    printf("Enter number of elements:");
    scanf("%d",&No);

    printf("\nEnter array elements:\n");

    for(i = 0; i < No; i++)
    {
        scanf("%d",&Arr[i]);
    }

     // Sorting in Ascending Order
    for(i = 0; i < (No - 1); i++)
    {
        for(j = i + 1; j < No; j++)
        {
            if(Arr[i] > Arr[j])
            {
                Temp = Arr[i];
                Arr[i] = Arr[j];
                Arr[j] = Temp;
            }
        }
    }

    // Sorting in Descending Order
    for(i = 0; i < (No - 1); i++)
    {
        for(j = i + 1; j < No; j++)
        {
            if(Arr[i] < Arr[j])
            {
                Temp = Arr[i];
                Arr[i] = Arr[j];
                Arr[j] = Temp;
            }
        }
    }

    printf("Array in Ascending Order:\n");

    for(i = 0; i < No; i++)
    {
        printf("%d \n",Arr[i]);
    }


    printf("Array in Descending Order:\n");

    for(i = 0; i < No; i++)
    {
        printf("%d \n",Arr[i]);
    }

    getch();
    return 0;
}
