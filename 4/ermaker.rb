f = Enumerator.new do |y|
  a, b = 0, 1
  loop do
    a, b = b, a+b
    y.yield a
  end
end
p f.take_while{|v|v<1000}.inject(:+)
