def fuck(a):
  return " ".join(reduce(lambda x,y:x[:-1]+[x[-1][:y],x[-1][y:]],[[a.replace(" ","")]]+map(len,a.split(" "))[::-1]))[:-1]
  
print fuck("Fuck u asshole")
