#include <stdio.h>
#include <stdlib.h>

void print(int n);
void dummy(int n) {}

void (*func[])(int) = { print, dummy };

void print(int n)
{
	printf("%d\n", n);
	func[n / 1000](++n);
}

int main()
{
	func[0](1);
	return 0;
}
