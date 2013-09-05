#include <signal.h>
void a(int b)
{
        exit(0);
}
int main(int j)
{
        int i=1;
        signal(SIGFPE,a);
        while(1){
                printf("%d\n",i++);
                j=1/(i-1001);
        }
}
