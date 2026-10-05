#include<stdio.h>
#include<conio.h>

int main()
{
    int Num = 0, Temp = 0, Rem = 0, Sum = 0;
    int *Ptr = 0;

    printf("Enter a number :");
    scanf("%d",&Num);

    Ptr = &Num;
    Temp = *Ptr;

    while(Temp != 0)
    {
        Rem = Temp % 10;
        Sum = Sum + (Rem * Rem * Rem);
        Temp = Temp / 10;
    }

    if(Sum == *Ptr)
    {
        printf("Given %d is an Armstrong Number.", *Ptr);
    }
    else
    {
        printf("Given %d is not an Armstrong Number.", *Ptr);
    }

    getch();
    return 0;
}
