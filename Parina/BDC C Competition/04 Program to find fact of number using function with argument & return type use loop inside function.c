#include<stdio.h>
#include<conio.h>

long int Factorial(int);

int main()
{
    int Num = 0;
    long int Res = 0;

    printf("Enter a number: ");
    scanf("%d",&Num);

    if(Num < 0)
    {
        printf("\nFactorial of a negative number is not possible.");
    }
    else
    {
        Res = Factorial(Num);

        printf("\n Factorial of %d = %ld", Num, Res);
    }

    getch();
    return 0;
}

// Function with argument and return type
long int Factorial(int No)
{
    long int Fact = 1;
    int i = 0;

    for(i = 1; i <= No; i++)
    {
        Fact = Fact * i;
    }

    return Fact;
}

