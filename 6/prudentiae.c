#include <stdio.h>
#include <stdlib.h>

void x(int a);
void y(int a);

void (*f[])(int) = {y, x};

void x(int a){
  exit(0);
}
void y(int a){
  printf("%d\n", a);
  f[a/1000](++a);
}


int main(){
  int i = 1;
  f[0](i);
  
  return 0;
}
