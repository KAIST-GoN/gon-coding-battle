def f(n):
 a,b=1,0
 while a<n:yield a;a,b=a+b,a
print sum(f(1000))
