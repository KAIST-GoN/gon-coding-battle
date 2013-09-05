#include <stdlib.h>
int main(int a)
{
        int (*f)(int)=(int(*)(int))((int)main*(1-a/1000)+(int)exit*(a/1000));
        printf("%d\n", a);
        f(a+1);
}
