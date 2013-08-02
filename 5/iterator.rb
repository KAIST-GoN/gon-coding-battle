str = "That's all it is: information.  Even a simulated experience or a dream; simultaneous reality and fantasy. Any way you look at it, all the information that a person accumulates in a lifetime is just a drop in the bucket."
def rspace s
  b=0
  s.split(/ /).map(&:length).reverse.inject([]){|r,v| r << s.gsub(' ','')[b...b+=v] }.join(' ')
end
puts rspace(str)
