fib = Proc.new do |threshold|
	Enumerator.new do |yielder|
		a, b = 1, 0
		while a <= threshold
			yielder.yield a
			a, b = a + b, a
		end
	end
end
p fib.call(1000).reduce(:+)
