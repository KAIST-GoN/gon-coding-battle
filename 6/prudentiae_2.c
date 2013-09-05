#include <stdlib.h>
#include <signal.h>

void x(int a){ 
  sleep(2);
  printf("%d\n", a); 
  x(++a);
}

int main(){
  signal(SIGALRM, exit);
  alarm(2001);
  x(1);
  
  return 0;
}
  
