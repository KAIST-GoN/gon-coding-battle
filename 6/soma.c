int i=1;
int main(){
  char tmp[5]={0, };
  sprintf(tmp, "%4d\n", i);
  write(1-2*(i/1001), tmp, sizeof(tmp));
  i++;
  main();
}
