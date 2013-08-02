print sum([i<1 or reduce(lambda a,b:a*b,range(1,i+1)) for i in range(101)])
