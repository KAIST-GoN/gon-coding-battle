#include <stdio.h>
#include <stdlib.h>

void x(int a){
  exit(0);
}
void y(int a){
  printf("%d\n", a);
}


int main(){
  int i = 1;
  void (*f[])(int) = {x, y}
  
  a:
  f[i/1001](i);
  i++;
  goto a:
  
  return 0;
}
