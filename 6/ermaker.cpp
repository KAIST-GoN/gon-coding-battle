#include <cstdio>
template<int n>void _(){printf("%d\n%d\n",n+1,n+2),_<n+2>();}
template<>void _<1000>(){}
main(){_<0>();}
