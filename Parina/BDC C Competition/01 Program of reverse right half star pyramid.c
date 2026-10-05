#include<stdio.h>
#include<conio.h>
int main()
{
  int i = 0, j = 0, RC = 0;

  printf("\n Enter Row and Column size:");
  scanf("%d",&RC);

  for(i = 1; i <= RC; i++)
  {
    for(j = 1; j <= RC; j++)
    {
      if(i == 1 || j == 1 || i+j == RC+1 || i+j <= RC+1)
      {
          printf(" * ");
      }
      else
      {
          printf("   ");
      }
    }
    printf("\n");
  }

  getch();
  return 0;
}
