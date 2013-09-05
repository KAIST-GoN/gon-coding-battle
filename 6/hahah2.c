#include <stdlib.h>
#include <signal.h>
int main(int j)
{
   int i=1;
   signal(SIGFPE,exit);
   while(1){
      printf("%d\n",i++);
      j=1/(i-1001);
   }
}
